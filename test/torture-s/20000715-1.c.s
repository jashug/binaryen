	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/20000715-1.c"
	.globl	test1
	.type	test1,@function
test1:                                  # @test1
# BB#0:                                 # %entry
	return
func_end0:
	.size	test1, func_end0-test1

	.globl	test2
	.type	test2,@function
test2:                                  # @test2
# BB#0:                                 # %entry
	return
func_end1:
	.size	test2, func_end1-test2

	.globl	test3
	.type	test3,@function
test3:                                  # @test3
# BB#0:                                 # %entry
	return
func_end2:
	.size	test3, func_end2-test3

	.globl	test4
	.type	test4,@function
test4:                                  # @test4
	.local  	i32
# BB#0:                                 # %if.end8
	i32.const	$0=, 0
	i32.const	$push0=, 3
	i32.store	$push1=, x($0), $pop0
	i32.store	$discard=, y($0), $pop1
	return
func_end3:
	.size	test4, func_end3-test4

	.globl	test5
	.type	test5,@function
test5:                                  # @test5
	.local  	i32
# BB#0:                                 # %if.end8
	i32.const	$0=, 0
	i32.const	$push0=, 3
	i32.store	$push1=, x($0), $pop0
	i32.store	$discard=, y($0), $pop1
	return
func_end4:
	.size	test5, func_end4-test5

	.globl	test6
	.type	test6,@function
test6:                                  # @test6
	.local  	i32
# BB#0:                                 # %if.end8
	i32.const	$0=, 0
	i32.const	$push0=, 3
	i32.store	$push1=, x($0), $pop0
	i32.store	$discard=, y($0), $pop1
	return
func_end5:
	.size	test6, func_end5-test6

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	i32.const	$push0=, 3
	i32.store	$push1=, x($0), $pop0
	i32.store	$discard=, y($0), $pop1
	call    	exit, $0
	unreachable
func_end6:
	.size	main, func_end6-main

	.type	x,@object               # @x
	.bss
	.globl	x
	.align	2
x:
	.int32	0                       # 0x0
	.size	x, 4

	.type	y,@object               # @y
	.globl	y
	.align	2
y:
	.int32	0                       # 0x0
	.size	y, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
