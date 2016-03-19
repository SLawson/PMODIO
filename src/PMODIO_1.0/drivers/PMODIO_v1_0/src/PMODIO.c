/*****************************************************************************/
/**
 * @file PMODIO.c
 *
 * @author      Scott Lawson
 * @copyright   Scott Lawson, 2016
 *
 * PMODIO peripheral driver API function implementations
 *
 * The PMODIO peripheral interfaces with the PMODIO hardware, which consists of
 * a KS0108-compatible 128 pixel x 64 pixel dot-matrix graphical LCD and a
 * quadrature rotary encoder.
 *
 * These functions allow an application to interface with the LCD and rotary
 * encoder hardware to draw on the LCD and obtain the rotary encoder's rotation
 * count, and configure the rotary encoder's step size per rotation, count
 * limits, and rotation increment/decrement directions.
 *
 * @note The LCD code is derived from the GLCD library from microchip.com.
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

#include "stdbool.h"

#include "xparameters.h"
#include "xil_types.h"
#include "xstatus.h"

#include "PMODIO.h"
#include "PMODIO_l.h"

/******************************************************************************
 *  Constant Definitions 
 *****************************************************************************/

/* Rotary Encoder */

/** rotary encoder pushbutton status */
#define ROT_BTN_MSK     0x00000001  
/** set the clear count bit mask     */
#define ROT_CLR_SET_MSK 0x00000002  
/** clear count bit mask */
#define ROT_CLR_CLR_MSK (ROT_CLR_SET_MSK ^ 0xFFFFFFFF)  

/* Self Test*/

/** number of registers being tested */
#define SELF_TEST_REG_CNT   3   
/** pattern written to registers and read back during self-test      */
#define SELF_TEST_PATTERN   0xF0F0F0F0  

/******************************************************************************
 *  Function Definitions 
 *****************************************************************************/

/****************************** Initialization *******************************/

/**
 * Initializes the PMODIO peripheral
 *
 * Configures rotary encoder defaults
 *      Count step is 1
 *      Negative counts are allowed
 *      Max count of 2^32
 *
 * @param   inst_p      PMODIO instance address
 * @param   base_addr   Base address of PMODIO instance
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    This must be the first function called for this peripheral
 * @note    This function calls PMODIO_SelfTest(), so it's notes apply for this
 * function as well
 */
XStatus PMODIO_init(PMODIO *inst_p, u32 base_addr)
{

	inst_p->base_addr = base_addr;

    if (PMODIO_selfTest(inst_p) != XST_SUCCESS)
        return XST_FAILURE;

    PMODIO_ROT_setMinCount(inst_p, ROT_CNT_ABS_MIN);
    PMODIO_ROT_setMaxCount(inst_p, ROT_CNT_ABS_MAX);
    PMODIO_ROT_setStep(inst_p, 1);

    PMODIO_LCD_init(inst_p);

	return XST_SUCCESS;
}

/**
 * Run a self-test on the driver/device
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   inst_p      PMODIO instance address
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work
 * @note    Self test may fail if data memory and device are not on the same bus
 */
XStatus PMODIO_selfTest(PMODIO *inst_p)
{
    /* registers to test */
    u32 target_regs [SELF_TEST_REG_CNT] = {ROT_RSVD0, LCD_RSVD0, GP_RSVD0};
    u32 base_addr = inst_p->base_addr;  
    u32 i;                             

    for (i=0; i<SELF_TEST_REG_CNT; ++i){

        /* write pattern */
        PMODIO_mWriteReg(base_addr, target_regs[i], SELF_TEST_PATTERN);

        /* read pattern back, bail if it doesn't match written pattern */
        if (PMODIO_mReadReg(base_addr, target_regs[i]) != SELF_TEST_PATTERN){

            return XST_FAILURE;
        }
        else{
            
            /* clear test pattern if read was successfull */
            PMODIO_mWriteReg(base_addr, target_regs[i], 0x0);
        }
    }

	return XST_SUCCESS;
}

/****************************** Rotary Encoder *******************************/

/**
 * Sets the number that the rotary encoder count is incremented or decremented by per rotation
 *
 *
 * @param   inst_p      PMODIO instance address
 * @param   step        sets number of "counts" to increment or decrement the
 * current count by when the rotary encoder is turned one click - can be
 * negative to invert which rotation direction increments/decrements the count
 *
 * @return  XST_SUCCESS
 */
XStatus PMODIO_ROT_setStep(PMODIO *inst_p, int step)
{

    PMODIO_mWriteReg(inst_p->base_addr, ROT_STEP, step);
    return XST_SUCCESS;
}

/**
 * Sets the maximum count allowed
 *
 * @param   inst_p      PMODIO instance address
 * @param   count       the maximum allowed count
 *
 * @return
 *
 *    - XST_SUCCESS   if max count input is valid (<= 2^31 - 1)
 *    - XST_FAILURE   if count value is invalid
 */
XStatus PMODIO_ROT_setMaxCount(PMODIO *inst_p, int count)
{

    if (count > ROT_CNT_ABS_MAX)
        return XST_FAILURE;

    PMODIO_mWriteReg(inst_p->base_addr, ROT_MAX_CNT, count);
    return XST_SUCCESS;
}

/**
 * Sets the minimum count allowed
 *
 * @param   inst_p      PMODIO instance address
 * @param   count       the maximum allowed count
 *
 * @return
 *
 *    - XST_SUCCESS   if min count input is valid (>= -2^31)
 *    - XST_FAILURE   if count value is invalid
 */
XStatus PMODIO_ROT_setMinCount(PMODIO *inst_p, int count)
{

    if (count < ROT_CNT_ABS_MIN)
        return XST_FAILURE;

    PMODIO_mWriteReg(inst_p->base_addr, ROT_MIN_CNT, count);
    return XST_SUCCESS;
}

/**
 * Resets the current count to zero
 *
 * @param   inst_p      PMODIO instance address
 *
 * @return  XST_SUCCESS
 */
XStatus PMODIO_ROT_clr(PMODIO *inst_p)
{
    u32 sts_reg;
    u32 base_addr = inst_p->base_addr;

    /* performs a read-write-modify cycle on the status register of the rotary
     * encoder to clear the count */
    sts_reg = PMODIO_mReadReg(base_addr, ROT_STS) | ROT_CLR_SET_MSK;
    PMODIO_mWriteReg(base_addr, ROT_STS, sts_reg);
    sts_reg &= ROT_CLR_CLR_MSK;
    PMODIO_mWriteReg(base_addr, ROT_STS, sts_reg);

    return XST_SUCCESS;
}

/**
 * Retrieves the current rotary encoder count
 *
 * @param   inst_p          PMODIO instance address
 * @param   rotary_cnt_p    pointer to the location to populate with the count
 *
 * @return  XST_SUCCESS
 */
XStatus PMODIO_ROT_read(PMODIO *inst_p, int* rotary_cnt_p)
{

    int count;

    count = PMODIO_mReadReg(inst_p->base_addr, ROT_CNT);
    *rotary_cnt_p = count;

    return XST_SUCCESS;
}

/**
 * Returns the current state of the rotary encoder pushbutton
 *
 * @param   inst_p      PMODIO instance address
 *
 * @return  true if the button is pressed, false otherwise
 */
bool PMODIO_ROT_isBtnPressed(PMODIO *inst_p)
{

    u32 rot_sts;

    rot_sts = PMODIO_mReadReg(inst_p->base_addr, ROT_STS);

    return ((rot_sts & ROT_BTN_MSK) != 0) ? true : false;
}

/************************************ LCD ************************************/

/**
 * Sets the X-Y position for the next data write
 *
 * X coordinate valid range is 0 - 127, inclusive
 * Y coordinate valid range is 0 - 63, inclusive
 *
 * @param   inst_p      PMODIO instance address
 * @param   x           x-coordinate
 * @param   y           y-coordinate
 *
 * @return
 *
 *    - XST_SUCCESS   if X and Y coordinates are in the valid range
 *    (x < 128 and Y < 64)
 *    - XST_FAILURE   if either coordinate is out of range
 */
XStatus PMODIO_LCD_setPos(PMODIO *inst_p, u8 x, u8 y)
{

	u8 cmd; 
	LCD_CHIP chip = CHIP1;  
	LCD_pos *current_position = &(inst_p->current_pos);

    /* check position validity */
	if ((x > LCD_X_MAX) || (y > LCD_Y_MAX))
        return XST_FAILURE;

    /* store local copy of position */
	current_position->x = x;
	current_position->y = y;
	current_position->page = y/8;

    /* choose chip according to X coordinate and adjust if necessary for 
     * chip 2 */
	if (x >=64) {
		x -= 64;
		chip = CHIP2;
	}

    /* apply X-coordinate mask - DATA[7:6] are loaded with instruction bits
     * that instruct the LCD to use DATA[5:0] as column select */
	cmd = LCD_ROW_SET | current_position->x;
	PMODIO_LCD_execCmd(inst_p, cmd, chip);      /* execute command */

    /* apply Y-coordinate mask to selected page - DATA[7:3] are loaded with
     * instruction bits that instruct the LCD to use DATA[2:0] as page 
     * select */
	cmd = LCD_COL_SET | current_position->page;
    /* apply page select to both chips */
	PMODIO_LCD_execCmd(inst_p, cmd, CHIP1);     
	PMODIO_LCD_execCmd(inst_p, cmd, CHIP2);

    return XST_SUCCESS;
}

/**
 * Retrieves the current LCD write position
 *
 * @param   inst_p      PMODIO instance address
 *
 * @return  LCD_pos     current write position of the LCD
 */
LCD_pos PMODIO_LCD_getPos(PMODIO *inst_p)
{

    return inst_p->current_pos;
}

/**
 * Writes data to LCD at the current position
 *
 *
 * @param   inst_p      PMODIO instance address
 * @param   data        data to write
 * @param   mask        mask to select which bits are written 
 *
 * @return  XST_SUCESS
 *
 * @note The PMODIO instance's current X position will be automatically
 * incremented by 1 on every write.
 *
 * @note Since writes to the LCD must be done a full byte at a time, the mask
 * argument is provided to prevent the caller from having to perform
 * read-modify-write cycles when a data write overlaps with a previous write.
 * The driver tracks all writes internally, and when writing new data, it
 * handles the read-modify-write cyles to only write bits to the LCD that are
 * enabled by a set bit in the mask.
 */
XStatus PMODIO_LCD_write(PMODIO *inst_p, u8 data, u8 mask)
{

	u8 current_x = inst_p->current_pos.x;
	u8 current_y = inst_p->current_pos.y;
	u8 current_page = inst_p->current_pos.page;

	u8 page_offset;
	u8 current_data;

	u8 clear_mask = mask ^ 0xFF;

    /* ignore write if current X position is off the LCD
     * A check of the Y position is not necessary since the setPos function
     * won't allow the application to set a y-coordinate that is off the LCD,
     * but X-coordinates are automatically incremented after a write. The
     * datasheet does not specify if the NT7108 LCD controller checks if X is
     * valid when this happens, so this check is done to be sure.
     */
	if (current_x > LCD_X_MAX) {
		return;
	}

    /* check for an offset if a write is about to occur that crosses page
     * boundaries */
	page_offset = current_y % LCD_PAGE_HEIGHT;

    /* Writes are done with a read-modify-write cycle using the driver's
     * internal copy of the current LCD data, regardless of whether we're
     * writing across page boundaries or not. This is done so the calling
     * application does not need to maintain its own map of previously written
     * LCD data when it wants to write within 8 pixels of existing data. Bits
     * that are not set in the mask will instead be read from the stored map,
     * OR'd with the new data to write, and the resulting byte will be written
     * to the LCD and committed to the LCD map. */

	if (page_offset != 0) {

        /* we're handling a write that crosses page boundaries */

        /* handle first page */

        /* get previously written data at this page/column */
        current_data = inst_p->lcd_map[current_page][current_x];

        /* for the data retrieved from the driver's LCD map, clear the bits
         * specified by the mask */
        current_data &= ((mask << page_offset) ^ 0xFF);

        /* set new bits and shift as needed to align the write with the page */
        current_data |= data << page_offset;

        /* write the resulting data byte to the LCD and internal LCD map */
		PMODIO_LCD_writeCommit(inst_p, current_data);

        /* set position for other page write */
        PMODIO_LCD_setPos(inst_p, current_x, current_y+8);

        /* repeat mask and shift for second page write */
        current_data = inst_p->lcd_map[current_page+1][current_x];
        current_data &= ((mask >> (LCD_PAGE_HEIGHT-page_offset)) ^ 0xFF);
        current_data |= data >> (LCD_PAGE_HEIGHT-page_offset);
		PMODIO_LCD_writeCommit(inst_p, current_data);

        /* reset position to original page and next column */
        PMODIO_LCD_setPos(inst_p, current_x+1, current_y);
	}

	else {

        /* this write does not cross page boundaries, so just do the
         * read-modify-write cycle to correctly apply the write mask */
        current_data = inst_p->lcd_map[current_page][current_x];
        current_data &= clear_mask;
        current_data |= (data & mask);
		PMODIO_LCD_writeCommit(inst_p, current_data);

        /* increment column */
        ++(inst_p->current_pos.x);
	}

    /* clear LCD data bus */
    PMODIO_LCD_writeDataBits(inst_p, 0x00);

    return XST_SUCCESS;
}

/**
 * Clears all pixels on the LCD
 *
 * @param   inst_p      PMODIO instance address
 *
 * @return  XST_SUCESS
 */
XStatus PMODIO_LCD_clr(PMODIO *inst_p)
{
	u8 x, y;

	for (y=0; y<64; y+=8){

		PMODIO_LCD_setPos(inst_p, 0, y);

		for (x=0; x<128; ++x){
			PMODIO_LCD_write(inst_p, 0x00, 0x00);
		}
	}

    return XST_SUCCESS;
}

