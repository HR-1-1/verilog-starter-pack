/****************************************
* Title   : t_D_flip_flop.v
* Purpose : Test Bench for a D Flip Flop with asynchronous reset
* Author  : Harish R EE20B044 <harishrajesh2002@gmail.com>
* Date    : Nov 25 2021
*****************************************/

module DFF_tb;
	reg CLK = 0;
	reg D, RST;
	wire Q;

	D_FF dut(.CLK(CLK), .RST(RST), .D(D), .Q(Q));

	always
		#10 CLK = ~CLK;

	initial
		begin
			RST = 0;
			#10 RST = 1;
			#10 D = 0;
			#20 D = 1;
			#70 RST = 0;
			#90 RST = 1;
		end
	
	initial
		begin 
            		$dumpfile("example.vcd");
            		$dumpvars(0, DFF_tb);
			$monitor("At time = %g, CLK = %b, RST = %b, D = %b, Q = %b", $time, CLK, RST, D, Q);
		end

	initial
		#200 $finish;
endmodule

