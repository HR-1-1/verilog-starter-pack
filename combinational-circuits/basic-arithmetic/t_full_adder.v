/****************************************
* Title   : t_full_addder.v
* Purpose : Test bench for a full adder model
* Author  : Harish R EE20B044 <harishrajesh2002@gmail.com>
* Date    : Dec 2 2021
*****************************************/

`timescale 1ns/1ps

module t_full_adder ;

reg [2:0] D;
wire S, C;

full_adder DUT  ( .S(S),
				.C(C),
				.x(D[2]),
				.y(D[1]),
				.c(D[0]));

initial begin

	D = 3'b000;
	repeat (7) #10 D = D + 3'b001;

end

initial 
	$monitor("x = %d y = %d z = %d S = %d C = %d", D[2], D[1], D[0], S, C);

endmodule

