
`timescale 1 ns / 1 ps

	module PMODIO_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface PMODIO
		parameter integer C_PMODIO_DATA_WIDTH	= 32,
		parameter integer C_PMODIO_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here

        input   wire            ROT_ENC_A, ROT_ENC_B, ROT_ENC_BTN,  // rotary encoder inputs

        output  wire    [7:0]   LCD_DATA,       // LCD data bus
        output  wire            LCD_EN_OP,      // LCD enable operation
        output  wire            LCD_RESET_N,    // LCD active-low reset
        output  wire            LCD_REG_SEL,    // LCD register select (data/instruction)
        output  wire            LCD_CS_1,       // LCD chip select 1
        output  wire            LCD_CS_2,       // LCD chip select 2

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface PMODIO
		input wire  pmodio_aclk,
		input wire  pmodio_aresetn,
		input wire [C_PMODIO_ADDR_WIDTH-1 : 0] pmodio_awaddr,
		input wire [2 : 0] pmodio_awprot,
		input wire  pmodio_awvalid,
		output wire  pmodio_awready,
		input wire [C_PMODIO_DATA_WIDTH-1 : 0] pmodio_wdata,
		input wire [(C_PMODIO_DATA_WIDTH/8)-1 : 0] pmodio_wstrb,
		input wire  pmodio_wvalid,
		output wire  pmodio_wready,
		output wire [1 : 0] pmodio_bresp,
		output wire  pmodio_bvalid,
		input wire  pmodio_bready,
		input wire [C_PMODIO_ADDR_WIDTH-1 : 0] pmodio_araddr,
		input wire [2 : 0] pmodio_arprot,
		input wire  pmodio_arvalid,
		output wire  pmodio_arready,
		output wire [C_PMODIO_DATA_WIDTH-1 : 0] pmodio_rdata,
		output wire [1 : 0] pmodio_rresp,
		output wire  pmodio_rvalid,
		input wire  pmodio_rready
	);
// Instantiation of Axi Bus Interface PMODIO
	PMODIO_v1_0_PMODIO # ( 
		.C_S_AXI_DATA_WIDTH(C_PMODIO_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_PMODIO_ADDR_WIDTH)
	) PMODIO_v1_0_PMODIO_inst (

        // PMODIO ports
        .ROT_ENC_A(ROT_ENC_A),
        .ROT_ENC_B(ROT_ENC_B),
        .ROT_ENC_BTN(ROT_ENC_BTN),

        .LCD_DATA(LCD_DATA),  
        .LCD_RESET_N(LCD_RESET_N),
        .LCD_EN_OP(LCD_EN_OP), 
        .LCD_REG_SEL(LCD_REG_SEL),
        .LCD_CS_1(LCD_CS_1),  
        .LCD_CS_2(LCD_CS_2),  

        // AXI ports
		.S_AXI_ACLK(pmodio_aclk),
		.S_AXI_ARESETN(pmodio_aresetn),
		.S_AXI_AWADDR(pmodio_awaddr),
		.S_AXI_AWPROT(pmodio_awprot),
		.S_AXI_AWVALID(pmodio_awvalid),
		.S_AXI_AWREADY(pmodio_awready),
		.S_AXI_WDATA(pmodio_wdata),
		.S_AXI_WSTRB(pmodio_wstrb),
		.S_AXI_WVALID(pmodio_wvalid),
		.S_AXI_WREADY(pmodio_wready),
		.S_AXI_BRESP(pmodio_bresp),
		.S_AXI_BVALID(pmodio_bvalid),
		.S_AXI_BREADY(pmodio_bready),
		.S_AXI_ARADDR(pmodio_araddr),
		.S_AXI_ARPROT(pmodio_arprot),
		.S_AXI_ARVALID(pmodio_arvalid),
		.S_AXI_ARREADY(pmodio_arready),
		.S_AXI_RDATA(pmodio_rdata),
		.S_AXI_RRESP(pmodio_rresp),
		.S_AXI_RVALID(pmodio_rvalid),
		.S_AXI_RREADY(pmodio_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
