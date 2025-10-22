.global _start
_start:
	MOV 	R0,#30	//Choose 30 as an example which is 11110 in binary sytem 
	MOV		R1,#0	//In r1=parity result (0=even,1=odd)
					//begin by assuming that it's parity is even (0)
check_loop:

	CMP		R0,#0	//Check if all the bits have already been used up.
	BEQ		done	//If r0 is equal to 0,then were done
	
	AND		R2,R0,#1	//Get the last bit (Least Significant Bit) of the number.
	EOR		R1,R1,R2	//Flip (or change) the parity value if the bit is 1.
	LSR		R0,R0,#1	//shift bits to the right for the next bit
	B		check_loop	//return to the loop
done:
						
	MOV		R7,#1			//R1=0,even number of 1s
	SWI		0				//r1=1,odd number of 1s