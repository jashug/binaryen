	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/950512-1.c"
	.globl	f1
	.type	f1,@function
f1:                                     # @f1
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push1=, 2147483647
	i32.const	$push0=, 2147483646
	i32.select	$push2=, $0, $pop1, $pop0
	return  	$pop2
func_end0:
	.size	f1, func_end0-f1

	.globl	f2
	.type	f2,@function
f2:                                     # @f2
	.param  	i32
	.result 	i64
# BB#0:                                 # %entry
	i64.const	$push1=, 9223372036854775807
	i64.const	$push0=, 9223372036854775806
	i64.select	$push2=, $0, $pop1, $pop0
	return  	$pop2
func_end1:
	.size	f2, func_end1-f2

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end12
	i32.const	$push0=, 0
	call    	exit, $pop0
	unreachable
func_end2:
	.size	main, func_end2-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
