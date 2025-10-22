.global _start
_start:
							//For this sample Intially,I use use a+48 and b=18		
	MOV	R0,#99				//load 99 in register 0
	MOV R1,#78				//load 78 in register 1
gcd_loop:					//Loop for greatest Coomon divisor
	CMP	R0,R1				//let us compare the value of a and b
	BEQ	done				// Kung equal na ang a and b ,ok na,We already get the gcd
	BGT	a_greater			//Kung mas malaki si a,continue to a_greater
	SUB	R1,R1,R0			//Otherwise (b > a): b = b - a
	B 	gcd_loop			//Go back and repeat the loop
a_greater:					//If a is greater than b
	SUB R0,R0,R1			//Subtract R0 and R1 or (a-b_
	B	gcd_loop			//Go back to the loop until they become equal
done:						//If they become equal (R0=R1),the system will exit
	MOV r7,#1	
	SWI	0