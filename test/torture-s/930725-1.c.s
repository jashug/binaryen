	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/930725-1.c"
	.globl	g
	.type	g,@function
g:                                      # @g
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, .str
	return  	$pop0
func_end0:
	.size	g, func_end0-g

	.globl	f
	.type	f,@function
f:                                      # @f
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	i32.load	$push1=, v($pop0)
	i32.const	$push3=, .str.1
	i32.const	$push2=, .str
	i32.select	$push4=, $pop1, $pop3, $pop2
	return  	$pop4
func_end1:
	.size	f, func_end1-f

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	i32.const	$push0=, 1
	i32.store	$discard=, v($0), $pop0
	call    	exit, $0
	unreachable
func_end2:
	.size	main, func_end2-main

	.type	.str,@object            # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.zero	1
	.size	.str, 1

	.type	v,@object               # @v
	.bss
	.globl	v
	.align	2
v:
	.int32	0                       # 0x0
	.size	v, 4

	.type	.str.1,@object          # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.str.1:
	.asciz	"abc"
	.size	.str.1, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
