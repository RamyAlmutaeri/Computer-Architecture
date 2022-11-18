module counter3(clk,hold,counter2);
    input clk,hold;
reg [7:0] count;
output [15:0]counter2;	
initial count =8'b11111111 ;
	
        always@(posedge clk)
        begin
          if(hold)
                         count = count;
                else
                         count = count - 1;
        end
		assign counter2 = count;

endmodule