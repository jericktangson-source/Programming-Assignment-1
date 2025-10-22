.global _start
_start:
		MOV		R0,#0x9F		//Input value is 0x9F (1001 1111)
		
						//Get the upper nibble (First 4 bits)
		AND 	R2,R0,#0xF0		//R2=R0 AND 0xF, which is 1001 0000 (upper nibble)
		LSR		R2,R2,#4		//Shift right by 4bits (0000 1001)
						//Get the lower nibble (last 4 bits of )x9F)
		
		AND		R3,R0,#0x0F		//R3=R0 AND 0x0F,which is 0000 1111 
		LSL		R3,R3,#4		//Shift left by 4bits (1111 0000)
		
						//Let's combine the upper and lower nibble
		ORR		R1,R2,R3		//r1=r2 OR r3 (1111  1001)
		
		
		MOV		R7,#1	//exit
		SWI		0		//end program