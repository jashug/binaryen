	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/920810-1.c"
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32, i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.call	$2=, malloc, $1
	i32.load	$push0=, 8($0)
	call    	memcpy, $2, $0, $pop0
	i32.store	$discard=, 0($2), $0
	i32.const	$push1=, 0
	i32.store	$discard=, 4($2), $pop1
	i32.store	$discard=, 8($2), $1
	return  	$2
func_end0:
	.size	f, func_end0-f

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end
	i32.const	$push0=, 0
	call    	exit, $pop0
	unreachable
func_end1:
	.size	main, func_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
