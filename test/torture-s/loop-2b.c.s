	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/loop-2b.c"
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	block   	BB0_4
	i32.const	$push0=, 2147483647
	i32.eq  	$push1=, $0, $pop0
	br_if   	$pop1, BB0_4
# BB#1:                                 # %for.body.preheader
	i32.const	$push4=, a
	i32.const	$push2=, 2
	i32.shl 	$push3=, $0, $pop2
	i32.add 	$2=, $pop4, $pop3
	i32.const	$push5=, 2147483646
	i32.sub 	$1=, $pop5, $0
BB0_2:                                  # %for.body
                                        # =>This Inner Loop Header: Depth=1
	loop    	BB0_4
	i32.const	$push6=, -2
	i32.store	$discard=, 0($2), $pop6
	copy_local	$0=, $1
	i32.const	$push7=, 2147483645
	i32.eq  	$push8=, $0, $pop7
	br_if   	$pop8, BB0_4
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	i32.const	$push9=, 4
	i32.add 	$2=, $2, $pop9
	i32.const	$push10=, -1
	i32.add 	$1=, $0, $pop10
	br_if   	$0, BB0_2
BB0_4:                                  # %for.end
	return  	$0
func_end0:
	.size	f, func_end0-f

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %if.end
	i32.const	$0=, 0
	i32.const	$push0=, -2
	i32.store	$push1=, a($0), $pop0
	i32.store	$discard=, a+4($0), $pop1
	call    	exit, $0
	unreachable
func_end1:
	.size	main, func_end1-main

	.type	a,@object               # @a
	.bss
	.globl	a
	.align	2
a:
	.zero	8
	.size	a, 8


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
