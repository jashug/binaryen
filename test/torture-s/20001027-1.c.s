	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/20001027-1.c"
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	i32.load	$1=, p($0)
	block   	BB0_2
	i32.const	$push0=, 1
	i32.store	$discard=, x($0), $pop0
	i32.const	$push1=, 2
	i32.store	$1=, 0($1), $pop1
	i32.load	$push2=, x($0)
	i32.ne  	$push3=, $pop2, $1
	br_if   	$pop3, BB0_2
# BB#1:                                 # %if.end
	call    	exit, $0
	unreachable
BB0_2:                                  # %if.then
	call    	abort
	unreachable
func_end0:
	.size	main, func_end0-main

	.type	x,@object               # @x
	.bss
	.globl	x
	.align	2
x:
	.int32	0                       # 0x0
	.size	x, 4

	.type	p,@object               # @p
	.data
	.globl	p
	.align	2
p:
	.int32	x
	.size	p, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
