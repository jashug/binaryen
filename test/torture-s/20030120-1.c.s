	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/20030120-1.c"
	.globl	test1
	.type	test1,@function
test1:                                  # @test1
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 2
	i32.select	$push1=, $0, $0, $pop0
	return  	$pop1
func_end0:
	.size	test1, func_end0-test1

	.globl	test2
	.type	test2,@function
test2:                                  # @test2
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 2
	i32.select	$push1=, $0, $0, $pop0
	return  	$pop1
func_end1:
	.size	test2, func_end1-test2

	.globl	test3
	.type	test3,@function
test3:                                  # @test3
	.param  	i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$1=, 1
	i32.and 	$push0=, $0, $1
	i32.const	$push1=, 0
	i32.ne  	$push2=, $0, $pop1
	i32.select	$push3=, $pop0, $1, $pop2
	return  	$pop3
func_end2:
	.size	test3, func_end2-test3

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end11
	i32.const	$push0=, 0
	call    	exit, $pop0
	unreachable
func_end3:
	.size	main, func_end3-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
