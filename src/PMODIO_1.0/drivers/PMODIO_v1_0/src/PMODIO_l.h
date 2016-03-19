/*****************************************************************************/
/**
 * @file PMODIO_l.h
 *
 * @author      Scott Lawson
 * @copyright   Scott Lawson, 2016
 *
 * Header file for low-level driver functions in the PMODIO peripheral driver.
 *
 * @warning This file is only intended for PMODIO driver use, and should not be
 * directly included by applications. Use PMODIO.h for API access.
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

#ifndef PMODIO_L_H
#define PMODIO_L_H

/******************************************************************************
 *  Include Files 
 *****************************************************************************/

#include "PMODIO.h"

/******************************************************************************
 *  Constant Definitions 
 *****************************************************************************/

/* Register Offsets */

/** Register offset: Rotary encoder count */
#define ROT_CNT     0
/** Register offset: Rotary encoder step size */
#define ROT_STEP    4
/** Register offset: Rotary encoder status */
#define ROT_STS     8
/** Register offset: Rotary encoder maximum allowed count */
#define ROT_MAX_CNT 12
/** Register offset: Rotary encoder minimum allowed count */
#define ROT_MIN_CNT 16
/** Register offset: Rotary encoder reserved 0*/
#define ROT_RSVD0   20
/** Register offset: LCD data */
#define LCD_DATA    24
/** Register offset: LCD control */
#define LCD_CNTL    28
/** Register offset: LCD reserved 0 */
#define LCD_RSVD0   32
/** Register offset: General purpose reserved */
#define GP_RSVD0    36
/** Register offset: General purpose reserved */
#define GP_RSVD1    40
/** Register offset: General purpose reserved */
#define GP_RSVD2    44

/****************************** Function Macros ******************************/

/* Read/write register macros */

/**
 * Write a value to a PMODIO register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the PMODIOdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void PMODIO_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 */
#define PMODIO_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 * Read a value from a PMODIO register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the PMODIO device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 PMODIO_mReadReg(u32 BaseAddress, unsigned RegOffset)
 */
#define PMODIO_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/******************************************************************************
 *  Enums
 *****************************************************************************/

/*! LCD Control Bits */
typedef enum CNTL_BIT {
	RESET_N,			/*!< Active-low reset                               */
	EN_OP,				/*!< Falling edge triggered operation enable        */
	REG_SEL,			/*!< Register select (0 = instruction, 1 = command) */
	CS1,				/*!< Chip Select 1 (left)                           */
	CS2,				/*!< Chip Select 2 (right)                          */
} LCD_CNTL_BIT;

/*! Available LCD Chips */
typedef enum CHIP {
	CHIP1, 				/*!< Chip 1 (left)  */
	CHIP2,				/*!< Chip 2 (right) */
} LCD_CHIP;

/******************************************************************************
 *  Function Prototypes
 *****************************************************************************/

XStatus PMODIO_LCD_init(PMODIO *inst_p);
XStatus PMODIO_LCD_execCmd(PMODIO *inst_p, u8 cmd, LCD_CHIP chip);
XStatus PMODIO_LCD_writeDataBits(PMODIO *inst_p, u8 pattern);
XStatus PMODIO_LCD_writeCommit(PMODIO *inst_p, u8 data);
XStatus PMODIO_LCD_setCntlBit(PMODIO *inst_p, LCD_CNTL_BIT bit);
XStatus PMODIO_LCD_clrCntlBit(PMODIO *inst_p, LCD_CNTL_BIT bit);
XStatus PMODIO_LCD_exec(PMODIO *inst_p);
void PMODIO_LCD_delay();

#endif // PMODIO_L_H

