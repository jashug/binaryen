	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/950710-1.c"
	.globl	g
	.type	g,@function
g:                                      # @g
	.param  	i32
# BB#0:                                 # %entry
	return
func_end0:
	.size	g, func_end0-g

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$2=, __stack_pointer
	i32.load	$2=, 0($2)
	i32.const	$3=, 32
	i32.sub 	$6=, $2, $3
	i32.const	$3=, __stack_pointer
	i32.store	$6=, 0($3), $6
	i32.const	$4=, 0
	i32.add 	$4=, $6, $4
	i32.const	$5=, 16
	i32.add 	$5=, $6, $5
	i32.sub 	$0=, $4, $5
	block   	BB1_2
	i32.const	$push0=, 31
	i32.shr_s	$1=, $0, $pop0
	i32.add 	$push1=, $0, $1
	i32.xor 	$push2=, $pop1, $1
	i32.const	$push3=, 11
	i32.gt_u	$push4=, $pop2, $pop3
	br_if   	$pop4, BB1_2
# BB#1:                                 # %if.then.i
	call    	abort
	unreachable
BB1_2:                                  # %f.exit
	i32.const	$push5=, 0
	call    	exit, $pop5
	unreachable
func_end1:
	.size	main, func_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
