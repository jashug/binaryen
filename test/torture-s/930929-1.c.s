	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/930929-1.c"
	.globl	sub1
	.type	sub1,@function
sub1:                                   # @sub1
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 1
	i32.shl 	$push1=, $0, $pop0
	i32.const	$push2=, -5
	i32.add 	$push3=, $pop1, $pop2
	return  	$pop3
func_end0:
	.size	sub1, func_end0-sub1

	.globl	sub2
	.type	sub2,@function
sub2:                                   # @sub2
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 1
	i32.shl 	$push1=, $0, $pop0
	i32.const	$push2=, 5
	i32.add 	$push3=, $pop1, $pop2
	return  	$pop3
func_end1:
	.size	sub2, func_end1-sub2

	.globl	sub3
	.type	sub3,@function
sub3:                                   # @sub3
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, -5
	return  	$pop0
func_end2:
	.size	sub3, func_end2-sub3

	.globl	sub4
	.type	sub4,@function
sub4:                                   # @sub4
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 5
	return  	$pop0
func_end3:
	.size	sub4, func_end3-sub4

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end4
	i32.const	$push0=, 0
	call    	exit, $pop0
	unreachable
func_end4:
	.size	main, func_end4-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
