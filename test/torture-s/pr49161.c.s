	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr49161.c"
	.globl	bar
	.type	bar,@function
bar:                                    # @bar
	.param  	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$1=, 0
	i32.load	$2=, c($1)
	block   	BB0_2
	i32.const	$push0=, 1
	i32.add 	$push1=, $2, $pop0
	i32.store	$discard=, c($1), $pop1
	i32.ne  	$push2=, $2, $0
	br_if   	$pop2, BB0_2
# BB#1:                                 # %if.end
	return
BB0_2:                                  # %if.then
	call    	abort
	unreachable
func_end0:
	.size	bar, func_end0-bar

	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$1=, 2
	block   	BB1_7
	block   	BB1_6
	block   	BB1_5
	block   	BB1_3
	i32.const	$push0=, -3
	i32.add 	$push1=, $0, $pop0
	i32.ge_u	$push2=, $pop1, $1
	br_if   	$pop2, BB1_3
# BB#1:                                 # %l4
	i32.const	$push8=, 0
	call    	bar, $pop8
	i32.const	$push9=, 4
	i32.eq  	$push10=, $0, $pop9
	br_if   	$pop10, BB1_5
# BB#2:                                 # %if.then.thread
	i32.const	$push11=, 1
	call    	bar, $pop11
	br      	BB1_6
BB1_3:                                  # %entry
	i32.const	$push3=, 6
	i32.ne  	$push4=, $0, $pop3
	br_if   	$pop4, BB1_7
# BB#4:                                 # %if.then
	i32.const	$push5=, -1
	call    	bar, $pop5
	i32.const	$push6=, 0
	call    	bar, $pop6
	i32.const	$push7=, 1
	call    	bar, $pop7
BB1_5:                                  # %if.then4
	i32.const	$push12=, -1
	call    	bar, $pop12
BB1_6:                                  # %if.end5
	call    	bar, $1
BB1_7:                                  # %return
	return
func_end1:
	.size	foo, func_end1-foo

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 3
	call    	foo, $0
	i32.const	$1=, 0
	block   	BB2_2
	i32.load	$push0=, c($1)
	i32.ne  	$push1=, $pop0, $0
	br_if   	$pop1, BB2_2
# BB#1:                                 # %if.end
	return  	$1
BB2_2:                                  # %if.then
	call    	abort
	unreachable
func_end2:
	.size	main, func_end2-main

	.type	c,@object               # @c
	.bss
	.globl	c
	.align	2
c:
	.int32	0                       # 0x0
	.size	c, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
