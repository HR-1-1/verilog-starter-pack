/****************************************
* Title   : t_ripple_carry_addder.v
* Purpose : Test bench for 4-bit ripple carry adder model
* Author  : Harish R EE20B044 <harishrajesh2002@gmail.com>
* Date    : Dec 4 2021
*****************************************/

`timescale 1ns/1ps

module t_ripple_carry_adder ;

reg [3:0] x, y;
reg c;
wire [3:0] S;
wire C;

integer i, j;

ripple_carry_adder DUT  ( .S(S),
						.C(C),
						.x(x),
						.y(y),
						.c(c));

initial begin

	c = 1'b0;
	x = 4'b0000;
	y = 4'b0000;
	for (i=0; i<15; i++) begin
		#10 x = x + 4'b0001;
		for (j=0; j<15; j++) begin
			#10 y = y + 4'b0001;
		end
	end
end

initial 
	$monitor("x = %d y = %d c = %d S = %d C = %d", x, y, c, S, C);

endmodule

