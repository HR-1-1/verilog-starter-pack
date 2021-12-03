/****************************************
* Title   : ripple_carry_addder.v
* Purpose : Add four-bit binary numbers with 
* Author  : Harish R EE20B044 <harishrajesh2002@gmail.com>
* Date    : Dec 2 2021
*****************************************/

`timescale 1ns/1ps

module ripple_carry_adder ( output [3:0] S,
							output C,
							input [3:0] x, y,
							input c);

	assign {C, S} = x + y + c;

endmodule

