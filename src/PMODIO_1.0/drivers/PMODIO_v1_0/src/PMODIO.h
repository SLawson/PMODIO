/*****************************************************************************/
/**
 * @file PMODIO.h
 *
 * @author      Scott Lawson
 * @copyright   Scott Lawson, 2016
 *
 * Header file for PMODIO driver API
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

#ifndef PMODIO_H
#define PMODIO_H

/******************************************************************************
 *  Include Files 
 *****************************************************************************/

#include "stdbool.h"

/******************************************************************************
 *  Constant Definitions 
 *****************************************************************************/

/* Rotary Encoder Count Absolute Limits */

/** Rotary encoder absolute maximum count (2^(32 - 1) - 1) */
#define ROT_CNT_ABS_MAX 2147483647
/** Rotary encoder absolute minimum count (-2^(32 - 1)) */
#define ROT_CNT_ABS_MIN (-2147483648)

/* LCD Maximum Dimensions */

/** LCD maximum X coordinate */
#define LCD_X_MAX   127
/** LCD maximum y coordinate */
#define LCD_Y_MAX   63

/* LCD Commands */

/** LCD command bit pattern: chip on */
#define	LCD_CHIP_ON		0x3F
/** LCD command bit pattern: chip off */
#define	LCD_CHIP_OFF	0x3E
/** LCD command bit pattern: display start */
#define LCD_DISP_START	0xC0
/** LCD command bit pattern: column set */
#define LCD_COL_SET		0xB8
/** LCD command bit pattern: row set */
#define LCD_ROW_SET		0x40

/** number of columns on the LCD */
#define LCD_COLS		128
/** number of pages on the LCD */
#define LCD_PAGES		8
/** pixel height of one page */
#define LCD_PAGE_HEIGHT	8

/******************************************************************************
 *  Typedefs
 *****************************************************************************/

/**
 * Tracks current LCD write position
 */
typedef struct {
    u8  x;          /**< current X coordinate */
    u8  y;          /**< current Y coordinate */
    u8  page;       /**< current page */
} LCD_pos;

/**
 * One instance of this type must be instantiated for each instance of the
 * PMODIO peripheral in the system
 */
typedef struct {
        u32     base_addr;      				/**< device base address */
        LCD_pos current_pos;    				/**< current LCD write position */
        u8		lcd_map[LCD_PAGES][LCD_COLS];	/**< static array to track
                                                      writes to LCD */
} PMODIO;

/******************************************************************************
 *  Function Prototypes
 *****************************************************************************/

/* Peripheral-Wide */
XStatus PMODIO_init(PMODIO *inst_p, u32 base_addr);
XStatus PMODIO_selfTest(PMODIO *inst_p);

/* Rotary Encoder */
XStatus PMODIO_ROT_setStep(PMODIO *inst_p, int step);
XStatus PMODIO_ROT_setMaxCount(PMODIO *inst_p, int count);
XStatus PMODIO_ROT_setMinCount(PMODIO *inst_p, int count);
XStatus PMODIO_ROT_clr(PMODIO *inst_p);
XStatus PMODIO_ROT_read(PMODIO *inst_p, int *rotary_cnt_p);
bool PMODIO_ROT_isBtnPressed(PMODIO *inst_p);

/* LCD */
XStatus PMODIO_LCD_setPos(PMODIO *inst_p, u8 x, u8 y);
XStatus PMODIO_LCD_write(PMODIO *inst_p, u8 data, u8 mask);
XStatus PMODIO_LCD_clr(PMODIO *inst_p);
LCD_pos PMODIO_LCD_getPos(PMODIO *inst_p);

#endif // PMODIO_H

