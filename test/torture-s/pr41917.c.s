	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr41917.c"
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	i32.const	$1=, -942519458
	block   	BB0_2
	i32.load	$push0=, a($0)
	i32.const	$push1=, -2
	i32.or  	$push2=, $pop0, $pop1
	i32.rem_u	$push3=, $1, $pop2
	i32.ne  	$push4=, $pop3, $1
	br_if   	$pop4, BB0_2
# BB#1:                                 # %if.end
	return  	$0
BB0_2:                                  # %if.then
	call    	abort
	unreachable
func_end0:
	.size	main, func_end0-main

	.type	a,@object               # @a
	.data
	.globl	a
	.align	2
a:
	.int32	1                       # 0x1
	.size	a, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
