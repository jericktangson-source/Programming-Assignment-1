.global _start
_start:
	
	MOV 	r0,#6		//load the value 6 because we need to compute the 6!=720
	MOV		r1,#1		//load value 1 to r1 first
 loop:
	cmp		r0,#1		//compare r0(n) with 1,n=0
	ble		end_loop	//If n<=1,exit the loop
	mul		r1,r1,r0	//r1 = r1*r0 (multiply the result by current n)
	sub		r0,r0,#1	//Decrement r0 by 1
	b		loop		//repeat the loop
end_loop:				//at this point,r1 contains the factorial result (6!=720)