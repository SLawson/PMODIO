`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////////////////
// Module       single_debounce
// Author       Scott Lawson
// Copyright    Scott Lawson, 2016
//
// Description
// Debounces potentially noisy input signals by sampling the input and only changing the
// corresponding output after the same level has been sampled a specified number of times.
//
// Note - this module was renamed from debounce to single_debounce to elimnate module name
// conflicts when used in a project with instances of the debounce module.
//
// This file is adapted from debounce.v, (C) Roy Kravitz, PSU
//
//
// Modification History:
//
// Ver      Who     Date            Changes
//
// 1.0      SRL     16 Mar 2016     Initial release
///////////////////////////////////////////////////////////////////////////////////////////////////

module single_debounce
#(
	// parameters
	parameter integer	CLK_FREQUENCY_HZ		= 100000000, 
	parameter integer	DEBOUNCE_FREQUENCY_HZ	= 250,
	parameter integer 	CNTR_WIDTH 				= 32,
	
	parameter integer	SIMULATE				= 0,
	parameter integer	SIMULATE_FREQUENCY_CNT	= 5
)
(
    input	    clk,		// clock
    input       reset_n,    // active-low reset
    input       signal_in,  // noisy signal input
    output reg  signal_out  // debounced output
);

///////////////////////////////////////////////////////////////////////////////////////////////////
//  Internal Variables
///////////////////////////////////////////////////////////////////////////////////////////////////

reg     [3:0]	            db_shift_reg;   // shift register for debounce
reg	    [CNTR_WIDTH-1:0]    db_count;       // debounce clock divider 

///////////////////////////////////////////////////////////////////////////////////////////////////
//  Wires & Assignments
///////////////////////////////////////////////////////////////////////////////////////////////////

wire    [CNTR_WIDTH-1:0]    top_cnt = SIMULATE ? 
            SIMULATE_FREQUENCY_CNT : 
            ((CLK_FREQUENCY_HZ / DEBOUNCE_FREQUENCY_HZ) - 1);

///////////////////////////////////////////////////////////////////////////////////////////////////
//  Execution Blocks
///////////////////////////////////////////////////////////////////////////////////////////////////

// increment debounce counter
always @(posedge clk, negedge reset_n)
begin 
    if (~reset_n)
        db_count <= 32'b0;

    else if (db_count == top_cnt)
        db_count <= 32'b0;	

    else
        db_count <= db_count + 1'b1;
end	

// run input signal shift register and update output
always @(posedge clk, negedge reset_n)
begin

    if (~reset_n)
        db_shift_reg <= {3'b0, signal_in};

    else if (db_count == top_cnt)
        db_shift_reg <= {db_shift_reg[2:0], signal_in};		

    else 
        db_shift_reg <= db_shift_reg;
   
    if (~reset_n)
        signal_out <= 1'b0;

    else if (db_shift_reg == 4'b0000)
        signal_out <= 1'b0; 

    else if (db_shift_reg == 4'b1111)
        signal_out <= 1'b1; 
    
    else
        signal_out <= signal_out;
end
	
endmodule

