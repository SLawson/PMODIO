/*****************************************************************************/
/**
 * @file 		pmodio_function_test.c
 *
 * @author		Scott Lawson
 * @copyright	Scott Lawson, 2016
 *
 * This file serves two purposes:
 * 		1. Serve as an example of how to utilize the PMODIO peripheral in a
 * 			MicroBlaze system.
 * 		2. Provide a program to quickly test the connectivity and
 * 			functionality of a newly assembled PMODIO board.
 *
 * When this program is run in a MicroBlaze system with a PMODIO peripheral
 * and a PMODIO board attached to the Nexys4DDR, the LCD should illuminate
 * with a checkerboard pattern, and the rotary encoder should behave in the
 * following manner:
 *
 * 	- The current rotary encoder count is displayed on the 16 LEDs of the
 * 		Nexys4DDR in binary, where the LED[0] is the LSB.
 * 	- Rotating counterclockwise increments the count by two up to a maximum
 * 		of 32 (base 10).
 * 	- Rotating clockwise decrements the count by two, down to a minimum of
 * 		-32 (base 10).
 * 	- Pushing the rotary encoder pushbutton resets the count to zero.
 *
 * If both the LCD and rotary encoder behave as described, then the hardware
 * assembly and pin mappings are correct.
 *
 * <pre>
 * MODIFICATION HISTORY:
 *
 * Ver   	Who		Date     		Changes
 *
 * 1.0		srl		16 Mar 2016		Initial release
 *
 * </pre>
 *****************************************************************************/

/******************************************************************************
 *	Include Files
 *****************************************************************************/

#include "xparameters.h"
#include "xgpio.h"

#include "PMODIO.h"

/******************************************************************************
 *	Constant Definitions
 *****************************************************************************/

/* LED GPIO */
#define LED_GPIO_BASE_ADDR		XPAR_LED_GPIO_BASEADDR
#define LED_GPIO_DEVICE_ID		XPAR_LED_GPIO_DEVICE_ID

/* PMODIO Peripheral */
#define PMODIO_BASEADDR			XPAR_PMODIO_PMODIO_BASEADDR

/******************************************************************************
 *	Variable Definitions
 *****************************************************************************/

static XGpio LED_gpio;
static PMODIO pmodio_inst;

/******************************************************************************
 *	Main
 *****************************************************************************/
int main(){

	u8 x, y;			/* coordinates on the LCD */
	int rotary_count;	/* current rotary encoder count */

	/* initialize the PMODIO peripheral*/
	PMODIO_init(&pmodio_inst, PMODIO_BASEADDR);

	/* Initialize LED GPIO */
	XGpio_Initialize(&LED_gpio, LED_GPIO_DEVICE_ID);
	XGpio_SetDataDirection(&LED_gpio, 1, 0x0);

	/* Configure rotary encoder */
	PMODIO_ROT_setMaxCount(&pmodio_inst, 32);	/* set upper count limit */
	PMODIO_ROT_setMinCount(&pmodio_inst, -32);	/* set lower count limit */

	/* set step size - note the negative: this flips the default
	 * increment/decrement rotation directions, so clockwise rotation now
	 * decreases the count */
	PMODIO_ROT_setStep(&pmodio_inst, -2);

	/* creates a checkerboard pattern of 8x8 squares on the LCD */
	for (y=0; y<64; y+=8){

		PMODIO_LCD_setPos(&pmodio_inst, 0, y);

		for (x=0; x<128; ++x){

			if (((x & 0x08) && !(y & 0x08)) || (!(x & 0x08) && (y & 0x08))){
				PMODIO_LCD_write(&pmodio_inst, 0x00, 0xFF);
			}
			else{
				PMODIO_LCD_write(&pmodio_inst, 0xFF, 0xFF);
			}
		}
	}


	/* infinite loop polling the rotary count and updating the LEDs */
	while (1){

        PMODIO_ROT_read(&pmodio_inst, &rotary_count); /* get current count */

        /* reset the count to zero if the button is pressed */
        if (PMODIO_ROT_isBtnPressed(&pmodio_inst)){
        	PMODIO_ROT_clr(&pmodio_inst);
        }

        XGpio_DiscreteWrite(&LED_gpio, 1, rotary_count); /* update LEDs */
	}

	return (0);
}
