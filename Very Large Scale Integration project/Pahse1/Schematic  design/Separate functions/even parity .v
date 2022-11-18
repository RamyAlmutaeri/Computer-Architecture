module even_parity (N,O) ;
	input 	[7:0] N  ; 
	output  [15:0]  O ;
	wire 	[6:0] C  ; 
	
	assign O[0] =  N[0] ;
	assign O[1] =  N[1] ;
	assign O[2] =  N[2] ;
	assign O[3] =  N[3] ;
	assign O[4] =  N[4] ;
	assign O[5] =  N[5] ;
	assign O[6] =  N[6] ;
	assign O[7] =  N[7] ;
	
	 assign O[8] = 0 ;  
	 assign O[9] = 0 ;
	 assign O[10] = 0 ;
	 assign O[11] = 0 ;
	 assign O[12] = 0 ;
	 assign O[13] = 0 ;
	 assign O[14] = 0 ;
	 
	assign C [0] = N[0]^N[1] ;
	assign C [1] = N[2]^N[3] ;
	assign C [2] = N[4]^N[5] ;
	assign C [3] = N[6]^N[7] ;
	assign C [4] = C[0]^C[1] ;
	assign C [5] = C[2]^C[3] ;
	assign C [6] = C[4]^C[5] ; 
	
	assign O[15] = C[6] ; 

endmodule