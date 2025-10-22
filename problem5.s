.global _start
_start:
	
	LDR		R0,=my_array		//address of the first element
	LDR		R1,=array_size		//address of the array size
	LDR		R1,[R1]				//register r1 contains the total count of numbers in the array
	
	LDR		R1,[R0],#4			// load the value from the memory addressin r0 into r2,then move R0 forward by 4bytes
	SUB		R1,R1,#1			//Subtract 1 from the value in register r1,and store the result back in r1
	
loop:
	CMP		R1,#0				//check wether the loop is finished		
	BEQ		done				//if r1=0 then it is done	
	
	LDR		R3,[R0],#4			//proceed to the next number
	CMP		R3,R2				//compare the current number vs the current max
	MOVGT	R2,R3				//If r3 is greater than r2,the value of r3 will be moved to r2
	SUB		R1,R1,#1			//subtract 1 from r1 to count how many array elements are left,stop when it reaches 0/
	B		loop				

done:

	MOV		R7,#1				//system exit 
	SWI		0					//end program
	
	.data
my_array:	.word -8, 3, 15, -2, 7, 0, 12
array_size:	.word 7