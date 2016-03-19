PMODIO Function Test

The purpose of these files is to:

    A) Provide the basis for Xilinx Vivado and SDK projects that can check the functionality of a
       PMODIO breadboard or PCB

    B) Provide initialization and usage examples for the PMDIO driver

Included:

    pmodio_top_level.v:

        Top-level Verilog module for the Vivado function test project.  The block diagram should be
        named "system" and have a PMODIO peripheral instantiated in it, attached to a MicroBlaze via
        the AXI4_Lite bus. The peripheral's ports should be mapped externally. See source for expected
        port names.

    pmodio_function_test.xdc:

        Stub contraints files with appropriate pin mappings for a PMODIO hardware device to be
        attached to the Nexys4DDR JA and JB headers, as well as system clock generation and LED
        mappings.

    pmodio_function_test.c:

        C source file for a function test SDK project. If the PMODIO hardware is set up correctly
        and the PMODIO peripheral is configured correctly, this program will illuminate the LCD in a
        checkerboard pattern. The LEDs will display the current rotary encoder count in binary, and
        the count will be reset to zero when the rotary encoder button is pressed, clearing the
        LEDs.

