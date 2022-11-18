module shiftANDadd(product,multiplier,multiplicand);

   input [7:0] multiplier, multiplicand;
   output product;
   reg [15:0] product;
   reg c;
   reg [7:0] m;
   integer i;
   always @( multiplier or multiplicand )
     begin
        product[15:8] = 8'd0;
        product[7:0] = multiplier;
        m = multiplicand;
        c = 1'd0;
         for(i=0; i<8; i=i+1)
           begin
               if(product[0])
                 begin 
                   {c,product[15:8]} = product[15:8] + m ;
                       //shift
                     product[15:0] = {c,product[15:1]};
                       c = 0;
                 end
               else
                 begin
                     product[15:0] = {c,product[15:1]};
                      c = 0;
                 end 
			  
      end

 		
  end

endmodule