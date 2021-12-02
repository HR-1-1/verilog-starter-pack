/****************************************
* Title   : t_half_addder.v
* Purpose : Test bench for a Half adder circuit
* Author  : Harish R EE20B044 <harishrajesh2002@gmail.com>
* Date    : Nov 29 2021
*****************************************/

`timescale 1ns/1ps
/*******************TIMING VERIFICATION*********
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
		#10 $display("Time = %0d", $time, " x = %b y = %b S = %b C = %b", x, y, S, C); 
		//Pro-tip : Use %0d to format time --> will avoid the leading spaces
	end

endmodule

*******************************************/

/*****************FUNCTIONAL VERIFICATION********/
module t_half_adder ;
	reg [1:0] D;
	wire S, C;

half_adder DUT (S, C, D[1], D[0]);

initial begin
	D = 2'b00;
	repeat (3) #10 D = D + 1'b1;
end

initial
	$monitor("xy = %b S = %b C = %b", D, S, C); 

endmodule

