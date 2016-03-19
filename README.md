## PMODIO

#### Project Description
The PMODIO device is an IO expansion for use with the Digilent Nexys4DDR board. It has a 128x64 dot-matrix graphical display and a quadrature rotary encoder. It connects to to Nexys4DDR's expansion headers (JA & JB by default, but this can be configured).

This project contains a CadSoft EAGLE schematic and board layout, and bill of materials for constructing them from scratch. It also contains a Xilinx custom peripheral IP with drivers for interfacing with the board.

#### Repository Layout

	/doc
    	/datasheets						Third-party datasheets for all BOM components
        BOM.xlsx						Bill of materials
        PMODIO_DriverReference.pdf		PMODIO driver reference
        PMODIO_UserGuide.pdf			User guide for hardware and the peripheral
    /src
    	/doc							Documentation source files
        /function_test					Source code for a Vivado and Xilinx SDK project 
        								to verify breadboard/PCB functionality
                                        	- also provides driver usage examples
        /physical						Eagle schematic and board layout, solder stencil
        /PMODIO_1.0						Peripheral IP block
    /LICENSE							License description (GPL v3)
        
 ### Repository Branches
 
| Branch Name 	|	Purpose 												|
|---------------|-----------------------------------------------------------|
| master	  	| release branch 											|
| rev1			| latest development for board revision 1.x					|
| dev			| development - will always correspond to latest board rev	|

