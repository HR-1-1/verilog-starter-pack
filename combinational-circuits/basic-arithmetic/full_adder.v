/****************************************
* Title   : full_addder.v
* Purpose : Add two bits with a carry
* Author  : Harish R EE20B044 <harishrajesh2002@gmail.com>
* Date    : Dec 2 2021
*****************************************/

`timescale 1ns/1ps

module full_adder ( output S, C,
					input x, y, c);

	assign {C, S} = x + y + c;

endmodule

