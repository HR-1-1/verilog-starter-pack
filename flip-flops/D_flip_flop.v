/****************************************
* Title   : D_flip_flop.v
* Purpose : D Flip Flop with asynchronous reset
* Author  : Harish R EE20B044 <harishrajesh2002@gmail.com>
* Date    : Nov 25 2021
*****************************************/

`timescale 1ns/1ps

module D_FF( Q,		//port list
			 D,
			 CLK,
			 RST);

	//Argument classification
	output Q;
	input D, CLK, RST;
	reg Q;

	always @ (posedge CLK, //sensitivity list 
			  negedge RST)
	
		if(!RST) Q <= 1'b0; //one bit binary number with a value of zero
		else Q <= D;
	

		
endmodule
