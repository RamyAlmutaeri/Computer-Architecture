module inverter(a,b,q);
	
	input [7:0]a;
	input [7:0]b;
	output [15:0]q;
   
	for(genvar i = 0; i<16; i=i+1)begin
			if (i<8)
				assign q[i]= ~a[i];
			else
				assign q[i] = 0;
		end
endmodule