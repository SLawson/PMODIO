/*****************************************************************************/
/**
 * @file        PMODIO_l.c
 *
 * @author      Scott Lawson
 * @copyright   Scott Lawson, 2016
 *
 * Contains implementations of low-level driver functions. These functions
 * are used by the driver API functions.
 *
 * This code targets a KS0108-compatible, 128x64 pixel, graphical LCD.
 * It supports the API functions to provide 8-bit pattern writing to
 * arbitray positions on the LCD. For these LCDs, X is the long axis, and Y is
 * the short axis. The display is split into Chip 1 for the left half, and Chip
 * 2 for the right half. The display area is further split into eight rows of
 * pixels (8 pixels tall each), called "pages."
 *
 * <pre>
 *
 * Bit/Pin Mapping:
 *
 *  Abbreviation    Enum Name   Description
 *
 *  RST             RESET_N     Active-low reset
 *  EN              EN_OP       Falling-edge triggered operation enable
 *  RS              REG_SEL     Register select (0=instruction, 1=data)
 *  CS1             CS1         Chip-select 1
 *  CS2             CS2         Chip-select 2
 *
 * </pre>
 *
 * Implementation Note:
 * For the current hardware revision, there weren't enough pins available for
 * every pin on the LCD interface, so the read/write pin was tied to ground,
 * which sets it as write-only. Since we can't read from the LCD memory, we
 * can't do read-write-modify cycles. This is a problem when the application
 * layer wants to write new pixels in a page and column that already has some
 * pixels, or perform a write that is spread across two pages. In both cases,
 * previously written display data will be overwritten if the data byte is
 * simply put on the data bus and written out.
 *
 * This driver overcomes this limitation by maintaining its own 128-bit x
 * 64-bit array to keep track of display data. Every write to the LCD is also
 * reflected in this array, so read-modify-write cycles are performed using
 * this array to avoid clobbering existing display data in the LCD. This array
 * is maintained in the PMODIO structure that is allocated for each instance of
 * the PMODIO peripheral in the Vivado block diagram (it's the lcd_map
 * attribute).
 *
 * @warning These functions are not intended to be used directly by any code
 * except the PMODIO driver API functions. They may modify internal state or 
 * otherwise interfere with normal driver operation if called from the main
 * application.
 *
 * @note This code is derived from the GLCD library from microchip.com.
 * Download link: http://www.microchip.com/forums/download.axd?file=0;275906
 *
 * <pre>
 *
 * Modification History:
 *
 * Ver      Who     Date            Changes
 *
 * 1.0      SRL     16 Mar 2016     Initial release
 *
 * </pre>
 *****************************************************************************/

/******************************************************************************
 *  Include Files 
 *****************************************************************************/

#include "xil_types.h"
#include "xstatus.h"

#include "PMODIO.h"
#include "PMODIO_l.h"

/******************************************************************************
 *  Constant Definitions 
 *****************************************************************************/

/* Masks for setting LCD control bits */

/** LCD control pin set mask: reset */
#define LCD_SET_CNTL_RST_N      0x00000001
/** LCD control pin set mask: enable */
#define LCD_SET_CNTL_EN_OP      0x00000002
/** LCD control pin set mask: register select */
#define LCD_SET_CNTL_REG_SEL    0x00000004
/** LCD control pin set mask: chip select 1 */
#define LCD_SET_CNTL_CS_1       0x00000008
/** LCD control pin set mask: chip select 2 */
#define LCD_SET_CNTL_CS_2       0x00000010

/* Masks for clearing LCD control bits */

/** LCD control pin clear mask: reset */
#define LCD_CLR_CNTL_RST_N      (LCD_clear_CNTL_RST_N ^ 0xFFFFFFFF)
/** LCD control pin clear mask: enable */
#define LCD_CLR_CNTL_EN_OP      (LCD_clear_CNTL_EN_OP ^ 0xFFFFFFFF)
/** LCD control pin clear mask: register select */
#define LCD_CLR_CNTL_REG_SEL    (LCD_clear_CNTL_REG_SEL ^ 0xFFFFFFFF)
/** LCD control pin clear mask: chip select 1 */
#define LCD_CLR_CNTL_CS_1       (LCD_clear_CNTL_CS_1 ^ 0xFFFFFFFF)
/** LCD control pin clear mask: chip select 2 */
#define LCD_CLR_CNTL_CS_2       (LCD_SET_CNTL_CS_2 ^ 0xFFFFFFFF)

/** sets number of iterations for nop() delay loop in PMODIO_LCD_exec */
#define DELAY_LEN		600		

/***************************** Function Macros *******************************/

/**
 *
 * Implements a Microblaze nop
 *
 * @return  NONE
 *
 * @note
 * C-style signature:
 * 	void nop()
 */
#define nop()	__asm__ __volatile__ ("nop")

/******************************************************************************
 *  Function Definitions 
 *****************************************************************************/

/**
 *
 * Initializes the LCD
 *
 * @param   inst_p      PMODIO instance address
 *
 * @return  XST_SUCCESS
 */
XStatus PMODIO_LCD_init(PMODIO *inst_p){

	/* clear all control bits, entering reset */
	PMODIO_LCD_clrCntlBit(inst_p, RESET_N);
	PMODIO_LCD_clrCntlBit(inst_p, CS1);
	PMODIO_LCD_clrCntlBit(inst_p, CS2);
	PMODIO_LCD_clrCntlBit(inst_p, EN_OP);
	PMODIO_LCD_clrCntlBit(inst_p, REG_SEL);
	PMODIO_LCD_writeDataBits(inst_p, 0x00);

    /* pause before bringing LCD out of reset */
    PMODIO_LCD_delay();

	/* deassert active-low reset */
	PMODIO_LCD_setCntlBit(inst_p, RESET_N);

	/* enable chips */
	PMODIO_LCD_execCmd(inst_p, LCD_CHIP_ON, CHIP1);
	PMODIO_LCD_execCmd(inst_p, LCD_CHIP_ON, CHIP2);

	/* initialize LCD display RAM */
	PMODIO_LCD_execCmd(inst_p, LCD_DISP_START, CHIP1);
	PMODIO_LCD_execCmd(inst_p, LCD_DISP_START, CHIP2);

    /* clear the LCD */
	PMODIO_LCD_clr(inst_p);

	return XST_SUCCESS;
}

/**
 *
 * Writes a command to the specified LCD chip
 *
 * @param   inst_p      PMODIO instance address
 * @param	cmd			the command to execute
 * @param	chip        the chip to execute the command for
 *
 * @return	XST_SUCCESS
 *
 * @note The LCD uses its 8-bit data bus both for data and for commands.
 */
XStatus PMODIO_LCD_execCmd(PMODIO *inst_p, u8 cmd, LCD_CHIP chip)
{

    /* assert the correct CS bit */
	if (chip == CHIP1) {
        PMODIO_LCD_setCntlBit(inst_p, CS1);
        PMODIO_LCD_clrCntlBit(inst_p, CS2);

    } else {
        PMODIO_LCD_clrCntlBit(inst_p, CS1);
        PMODIO_LCD_setCntlBit(inst_p, CS2);
    }

    PMODIO_LCD_clrCntlBit(inst_p, REG_SEL); /* enable instruction mode  */
    PMODIO_LCD_writeDataBits(inst_p, cmd);  /* put command on data bus  */
    PMODIO_LCD_exec(inst_p);                /* execute the command      */
    PMODIO_LCD_clrCntlBit(inst_p, CS1);     /* clear both CS bits       */
    PMODIO_LCD_clrCntlBit(inst_p, CS2);
    PMODIO_LCD_writeDataBits(inst_p, 0x00); /* clear data bus           */

    return XST_SUCCESS;
}

/**
 *
 * Commits data to LCD display RAM and driver LCD map
 *
 * @param   inst_p      PMODIO instance address
 * @param   data        data to write
 *
 * @return  XST_SUCESS
 *
 * @note The LCD's current X position will be automatically incremented by 
 * 1 on every write.
 */
XStatus PMODIO_LCD_writeCommit(PMODIO *inst_p, u8 data)
{

    /* store local pointer to current position structure for this PMODIO 
     * instance */
	LCD_pos *current_position = &(inst_p->current_pos);

    /* ignore write if we're off the LCD */
	if (current_position->x >= 128) {
		return;
	}

    /* if we're writing to the left half of the LCD, we need chip 1, and
     * we need chip 2 for the right half - assert the CS bits accordingly */
	if (current_position->x < 64) {
        PMODIO_LCD_clrCntlBit(inst_p, CS2);
        PMODIO_LCD_setCntlBit(inst_p, CS1);

	} else {
        PMODIO_LCD_clrCntlBit(inst_p, CS1);
        PMODIO_LCD_setCntlBit(inst_p, CS2);
	}

	PMODIO_LCD_setCntlBit(inst_p, REG_SEL); /* enable data mode     */
	PMODIO_LCD_writeDataBits(inst_p, data); /* put data on data bus */
	PMODIO_LCD_exec(inst_p);                /* load data in LCD     */
    PMODIO_LCD_clrCntlBit(inst_p, CS1);     /* clear both CS bits   */
    PMODIO_LCD_clrCntlBit(inst_p, CS2);
	PMODIO_LCD_writeDataBits(inst_p, 0x00); /* clear data bus       */

	/* update driver LCD map */
	inst_p->lcd_map[current_position->page][current_position->x] = data;

    return XST_SUCCESS;
}

/**
 *
 * Writes a specified pattern to the LCD data bus
 *
 * @param   inst_p      	PMODIO instance address
 * @param	pattern         bit pattern to write to LCD data bus
 *
 * @return	XST_SUCCESS
 *
 * @note The LCD uses its 8-bit data bus both for data and for commands.
 */
XStatus PMODIO_LCD_writeDataBits(PMODIO *inst_p, u8 pattern)
{

    PMODIO_mWriteReg(inst_p->base_addr, LCD_DATA, pattern);

	return XST_SUCCESS;
}

/**
 *
 * Clears the specified LCD control bit without modifying others
 *
 * @param   inst_p      	PMODIO instance address
 * @param	bit             bit to clear
 *
 * @return	XST_SUCCESS
 */
XStatus PMODIO_LCD_clrCntlBit(PMODIO *inst_p, LCD_CNTL_BIT bit)
{

	u8 sts; 

    /* using a simple read-modify-write cycle to change the specified bit
     * without affecting others */

    sts = PMODIO_mReadReg(inst_p->base_addr, LCD_CNTL);

    switch (bit) {
        case RESET_N: 	sts &= LCD_CLR_CNTL_RST_N; 		break;
        case EN_OP: 	sts &= LCD_CLR_CNTL_EN_OP; 		break;
        case REG_SEL: 	sts &= LCD_CLR_CNTL_REG_SEL; 	break;
        case CS1: 		sts &= LCD_CLR_CNTL_CS_1; 		break;
        case CS2: 		sts &= LCD_CLR_CNTL_CS_2; 		break;
    }

    PMODIO_mWriteReg(inst_p->base_addr, LCD_CNTL, sts);

	return XST_SUCCESS;
}

/**
 *
 * Sets the specified LCD control bit without modifying others
 *
 * @param   inst_p      	PMODIO instance address
 * @param	bit             bit to set
 *
 * @return	XST_SUCCESS
 */
XStatus PMODIO_LCD_setCntlBit(PMODIO *inst_p, LCD_CNTL_BIT bit) {

	u8 sts;

    /* using a simple read-modify-write cycle to change the specified bit
     * without affecting others */

    sts = PMODIO_mReadReg(inst_p->base_addr, LCD_CNTL);

    switch (bit) {
        case RESET_N: 	sts |= LCD_SET_CNTL_RST_N; 		break;
        case EN_OP: 	sts |= LCD_SET_CNTL_EN_OP; 		break;
        case REG_SEL: 	sts |= LCD_SET_CNTL_REG_SEL; 	break;
        case CS1: 		sts |= LCD_SET_CNTL_CS_1; 		break;
        case CS2: 		sts |= LCD_SET_CNTL_CS_2; 		break;
    }

    PMODIO_mWriteReg(inst_p->base_addr, LCD_CNTL, sts);

	return XST_SUCCESS;
}

/**
 *
 * Instructs the LCD to act on the data/command on the data bus
 *
 * The LCD uses the falling edge of the EN pin as an indicator that the data
 * bus has data to be consumed. The RS pin indicates if the data bus 
 * contains an instruction (0) to be executed, or data (1) to be written
 * to display ram. Delay no-op loops are used to meet the LCD timing 
 * requirements.
 *
 * @param   inst_p      	PMODIO instance address
 *
 * @return	XST_SUCCESS
 */
XStatus PMODIO_LCD_exec(PMODIO *inst_p){

    PMODIO_LCD_delay();                     /* delay to meet timing */
	PMODIO_LCD_setCntlBit(inst_p, EN_OP);   /* set EN               */
    PMODIO_LCD_delay();
	PMODIO_LCD_clrCntlBit(inst_p, EN_OP);   /* clear EN             */
    PMODIO_LCD_delay();

	return XST_SUCCESS;
}

/**
 *
 * Executes a NOP loop to meet LCD timing requirements
 *
 * @return	NONE
 */
void PMODIO_LCD_delay(){

	u32 i;

	for (i=0; i<DELAY_LEN; ++i){
		nop();
	}

	return;
}

