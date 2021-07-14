
.data
	start : .asciiz "\nplease enter one integer.\n"
	result : .asciiz "Result of the "
	result2 : .asciiz " factorial is : "
	maxvalueBranch_1 : .asciiz "\nyou can enter max 19!\n"  
	exit: .asciiz "\nProgram is closing.\n"
	
.text

MAIN:
	#  start
	li $v0, 4
	la $a0, start
	syscall
	
	#  calculating factorial.
	li $v0, 5
	syscall
	move $t0, $v0		
	

	
	#  result
	li $v0, 4
	la $a0, result
	syscall
	
	#  number. 
	li $v0, 1
	move $a0, $t0
	syscall

	#  result2
	li $v0, 4
	la $a0, result2
	syscall
	
	li $t1, 1		# l defined to the 2 value for (forloop)....
	
	li $t2, 1

	
	
# For(int i = 1 ; i <= input ; i++)
LOOP:
	bgt $t2,$t0, Exit		
	mulo $t1, $t1, $t2	
	addi $t2, $t2, 1	
	j LOOP


# exiting for max value 
maxvalueBranch:
	
	li $v0, 4
	la $a0, maxvalueBranch_1
	syscall
	
	j Exit

# Exit 
Exit:
	li $v0, 1
	move $a0, $t1 
	syscall
	
	li $v0, 4
	la $a0, exit
	syscall
	
	li $v0, 10
	syscall 
	#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
	# 1-32 bits mean that regarding to the my calculating  +2,147,483,647  Integer variables can't bigger than  this value, this is called maxvalueBranch .
	
	
