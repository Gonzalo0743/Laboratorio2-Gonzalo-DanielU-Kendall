module ALU_tb();

	logic[3:0] a,b,opCode, out, ZFlag, NFlag, CFlag, VFlag, dispOut;
	
	ALU modulo(a,b,opCode, out, ZFlag, NFlag, CFlag, VFlag, dispOut);
	
	initial begin
	//SUMA
	a = 4'b0000;
	b = 4'b0000;
	opCode = 4'b1111;
	#40
	a = 4'b1111;
	b = 4'b1111;
	opCode = 4'b1111;
	#40
	//RESTA
	a = 4'b0010;
	b = 4'b0001;
	opCode = 4'b1110;
	#40
	a = 4'b0000;
	b = 4'b0001;
	opCode = 4'b1110;
	#40	
	//MULTIPLICACION
	a = 4'b0010;
	b = 4'b0010;
	opCode = 4'b1101;
	#40
	a = 4'b1111;
	b = 4'b1111;
	opCode = 4'b1101;
	#40		
	//DIVISION
	a = 4'b0010;
	b = 4'b0000;
	opCode = 4'b1100;
	#40
	a = 4'b0100;
	b = 4'b0010;
	opCode = 4'b1100;
	#40		
	//MODULO
	a = 4'b0010;
	b = 4'b0001;
	opCode = 4'b1011;
	#40
	a = 4'b0100;
	b = 4'b0010;
	opCode = 4'b1011;
	#40
	//SHIFTLEFT
	a = 4'b1010;
	opCode = 4'b1010;
	#40
	a = 4'b0101;
	opCode = 4'b1010;
	#40	
	//SHIFTRIGHT
	a = 4'b0010;
	opCode = 4'b1001;
	#40
	a = 4'b0101;
	opCode = 4'b1001;
	#40	
	//AND
	a = 4'b0001;
	b = 4'b0001;
	opCode = 4'b1000;
	#40
	a = 4'b0001;
	b = 4'b0000;
	opCode = 4'b1000;
	#40			
	//OR
	a = 4'b0001;
	b = 4'b0001;
	opCode = 4'b0111;
	#40
	a = 4'b0001;
	b = 4'b0000;
	opCode = 4'b0111;	
	#40
	//XOR
	a = 4'b0001;
	b = 4'b0001;
	opCode = 4'b0110;
	#40
	a = 4'b0001;
	b = 4'b0000;
	opCode = 4'b0110;
	
	end
endmodule