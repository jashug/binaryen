	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr17078-1.c"
	.globl	test
	.type	test,@function
test:                                   # @test
	.param  	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	i32.store	$discard=, 0($0), $pop0
	return
func_end0:
	.size	test, func_end0-test

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end
	i32.const	$push0=, 0
	return  	$pop0
func_end1:
	.size	main, func_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
