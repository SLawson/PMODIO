`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////////////////
// Module       top_level
// Project      PMODIO Hardware Function Test
// Author       Scott Lawson
// Copyright    Scott Lawson, 2016
//
// Description
// This file is the top-level module for the PMODIO Hardware Function test project. The design tests
// the functionality of a PCB or breadboard prototype of the PMODIO device. 
// 
//
// Modification History:
//
// Ver      Who     Date            Changes
//
// 1.0      SRL     16 Mar 2016     Initial release
///////////////////////////////////////////////////////////////////////////////////////////////////

module top_level
(

    input               clk,            // 100 MHz clock
    input               reset_n,        // Active-low reset from Nexys4DDR

    input               rotary_a,       // rotary encoder A
    input               rotary_b,       // rotary encoder B
    input               rotary_btn,     // rotary encoder pushbutton

    output      [7:0]   lcd_data,       // LCD data bus
    output              lcd_en_op,      // LCD enable operation
    output              lcd_reset_n,    // LCD active-low reset
    output              lcd_reg_sel,    // LCD register select (data/instruction)
    output              lcd_cs_1,       // LCD chip select 1
    output              lcd_cs_2,       // LCD chip select 2

    output      [15:0]  led             // Nexys4DDR LEDs
);

///////////////////////////////////////////////////////////////////////////////////////////////////
//  Module Instantiations
///////////////////////////////////////////////////////////////////////////////////////////////////


// Microblaze System
system system_i (
    .SYS_CLK(clk),
    .RESET_N(reset_n),
    .ROT_ENC_A(rotary_a),
    .ROT_ENC_B(rotary_b),
    .ROT_ENC_BTN(rotary_btn),
    .LCD_DATA(lcd_data),
    .LCD_RESET_N(lcd_reset_n),
    .LCD_EN_OP(lcd_en_op),
    .LCD_REG_SEL(lcd_reg_sel),
    .LCD_CS_1(lcd_cs_1),
    .LCD_CS_2(lcd_cs_2),
    .LED_tri_o(led)
);

endmodule

