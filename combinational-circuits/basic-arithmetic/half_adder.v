/****************************************
* Title   : half_addder.v
* Purpose : Describes a Half adder circuit in various styles
* Author  : Harish R EE20B044 <harishrajesh2002@gmail.com>
* Date    : Nov 29 2021
*****************************************/

`timescale 1ns/1ps

//Uncomment any one of the descriptions before validating with a test-bench

/**Gate-Level description***
module half_adder ( output S, C,
		input x, y);

	xor (S, x, y);
	and (C, x, y);

endmodule
***/

/**Data-flow description**/
module half_adder ( output S, C,
		input x, y);

	assign {C, S} = x + y;

endmodule
/***/

/**Behavioural description**
module half_adder ( output reg S, C,
		input x, y);
	
	always @ (x or y)
		{C, S} = x + y;

endmodule
***/


