/****************************************
* Title   : t_half_addder.v
* Purpose : Test bench for a Half adder circuit
* Author  : Harish R EE20B044 <harishrajesh2002@gmail.com>
* Date    : Nov 29 2021
*****************************************/

`timescale 1ns/1ps

module t_half_adder ;
	reg x, y;
	wire S, C;
	parameter stop_time = 50;

// Device under test - named port mapping - preferred since order doesn't matter
half_adder DUT ( .S(S),
				 .C(C),
				 .x(x),
				 .y(y));

//Stop watch
initial
	#stop_time $finish;

//Dump vars to be used later  
initial begin
	$dumpfile ("half_adder.vcd");
	$dumpvars;
end

//Stimulus generator
initial begin
		x=0;y=0;
	#10 x=0;y=1;
	#10 x=1;y=0;
	#10 x=1;y=1;
	#10 x=1;y=1'bx;
end

//Response monitor
always 
	begin
		#10 $display("Time =", $time, " x = %b y = %b S = %b C = %b", x, y, S, C);
	end

endmodule
