`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////////////////
// Module       rot_enc_counter
// Author       Scott Lawson
// Copyright    Scott Lawson, 2016
//
// Description
// This module is a counter for a rotary encoder. It uses a rotary filter module ((C) Roy Kravitz
// and Ken Chapman) to interpret a quadrature rotary encoder's A and B outputs and
// increment/decrement a counter accordingly.
//
//
// Modification History:
//
// Ver      Who     Date            Changes
//
// 1.0      SRL     16 Mar 2016     Initial release
///////////////////////////////////////////////////////////////////////////////////////////////////

module rotary_enc_counter
(
    input                   clk,            // system clock
    input                   reset_n,        // active-low reset
    input                   rotary_a,       // rotary encoder a input
    input                   rotary_b,       // rotary encoder b input
    input                   clr_cnt,        // while asserted, count is zero
    input   signed  [31:0]  step,           // number of "counts" to increment or decrement
                                            // per rotary encoder event
    input   signed  [31:0]  max_cnt,        // maximum allowed count
    input   signed  [31:0]  min_cnt,        // maximum allowed count

    output          [31:0]  rotary_count    // current rotary encoder count
);

///////////////////////////////////////////////////////////////////////////////////////////////////
//  Internal Variables
///////////////////////////////////////////////////////////////////////////////////////////////////

reg signed  [31:0]  current_count;      // current rotary encoder count

///////////////////////////////////////////////////////////////////////////////////////////////////
//  Wires & Assignments
///////////////////////////////////////////////////////////////////////////////////////////////////

wire    rotary_event;   // indicates the rotary encoder was turned 
wire    rotary_left;    // indicates the rotary encoder was turned counter-clockwise

assign  rotary_count = current_count;

///////////////////////////////////////////////////////////////////////////////////////////////////
//  Execution Blocks
///////////////////////////////////////////////////////////////////////////////////////////////////

always @(posedge clk) begin

    if ((~reset_n) || clr_cnt) 
        current_count <= 0;

    // Note on the below clauses:
    // Before incrementing or decrementing the counter, the change has to be checked against the
    // specified limits. Negative steps must be accounted for as well. When the step size is
    // negative, current_count + step could result in a value below the minimum, and the result of
    // current_count - step could be larger than the maximum.
    
    else if (rotary_event && (~rotary_left)) begin
        // right (clockwise) rotation has occurred

        if ((current_count + step) > max_cnt)
            current_count <= max_cnt;
        else if ((current_count + step) < min_cnt) 
            current_count <= min_cnt;
        else
            current_count <= current_count + step;
    end

    else if (rotary_event)
        // left (counter-clockwise) rotation has occurred

        if ((current_count - step) > max_cnt) 
            current_count <= max_cnt;
        else if ((current_count - step) < min_cnt) 
            current_count <= min_cnt;
        else
            current_count <= current_count - step;

    else
        // no rotation event - maintain count
        current_count <= current_count;

end

///////////////////////////////////////////////////////////////////////////////////////////////////
//  Module Instantiations
///////////////////////////////////////////////////////////////////////////////////////////////////

// Rotary Encoder Filter
rotary_filter rotary_filter_i (
    .clk(clk),
    .rotary_a(rotary_a),
    .rotary_b(rotary_b),
    .rotary_event(rotary_event),
    .rotary_left(rotary_left)
);

endmodule

