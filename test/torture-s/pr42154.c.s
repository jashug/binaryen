	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr42154.c"
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
# BB#0:                                 # %entry
	block   	BB0_2
	i32.const	$push0=, 255
	i32.and 	$push1=, $0, $pop0
	i32.const	$push2=, 97
	i32.ne  	$push3=, $pop1, $pop2
	br_if   	$pop3, BB0_2
# BB#1:                                 # %if.end
	return
BB0_2:                                  # %if.then
	call    	abort
	unreachable
func_end0:
	.size	foo, func_end0-foo

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 97
	call    	foo, $pop0
	i32.const	$push1=, 0
	return  	$pop1
func_end1:
	.size	main, func_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
