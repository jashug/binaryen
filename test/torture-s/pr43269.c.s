	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr43269.c"
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	call    	func_32
	i32.const	$0=, 0
	block   	BB0_2
	i32.load	$push0=, g_261($0)
	i32.const	$push1=, -1
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	$pop2, BB0_2
# BB#1:                                 # %if.end
	return  	$0
BB0_2:                                  # %if.then
	call    	abort
	unreachable
func_end0:
	.size	main, func_end0-main

	.type	func_32,@function
func_32:                                # @func_32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	block   	BB1_2
	i32.load	$push2=, g_211($0)
	i32.const	$push0=, -1
	i32.store	$push1=, g_261($0), $pop0
	i32.eq  	$push3=, $pop2, $pop1
	br_if   	$pop3, BB1_2
# BB#1:                                 # %for.end
	return
BB1_2:                                  # %if.else
                                        # =>This Inner Loop Header: Depth=1
	loop    	BB1_3
	br      	BB1_2
BB1_3:
func_end1:
	.size	func_32, func_end1-func_32

	.type	g_261,@object           # @g_261
	.bss
	.globl	g_261
	.align	2
g_261:
	.int32	0                       # 0x0
	.size	g_261, 4

	.type	g_21,@object            # @g_21
	.globl	g_21
	.align	2
g_21:
	.int32	0                       # 0x0
	.size	g_21, 4

	.type	g_211,@object           # @g_211
	.globl	g_211
	.align	2
g_211:
	.int32	0                       # 0x0
	.size	g_211, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
