	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/20051215-1.c"
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$7=, 0
	i32.const	$3=, 1
	block   	BB0_5
	i32.lt_s	$push0=, $1, $3
	br_if   	$pop0, BB0_5
# BB#1:                                 # %for.body.lr.ph
	i32.const	$5=, 0
	copy_local	$6=, $5
	copy_local	$7=, $5
BB0_2:                                  # %for.body
                                        # =>This Inner Loop Header: Depth=1
	loop    	BB0_5
	block   	BB0_4
	i32.const	$push6=, 0
	i32.eq  	$push7=, $2, $pop6
	br_if   	$pop7, BB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
	i32.load	$push1=, 0($2)
	i32.mul 	$6=, $pop1, $5
BB0_4:                                  # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	i32.const	$4=, 0
	i32.gt_s	$push2=, $0, $4
	i32.mul 	$push3=, $6, $0
	i32.select	$push4=, $pop2, $pop3, $4
	i32.add 	$7=, $7, $pop4
	i32.add 	$5=, $5, $3
	i32.ne  	$push5=, $1, $5
	br_if   	$pop5, BB0_2
BB0_5:                                  # %for.end6
	return  	$7
func_end0:
	.size	foo, func_end0-foo

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	block   	BB1_2
	i32.const	$push1=, 3
	i32.const	$push0=, 2
	i32.call	$push2=, foo, $pop1, $pop0, $0
	br_if   	$pop2, BB1_2
# BB#1:                                 # %if.end
	return  	$0
BB1_2:                                  # %if.then
	call    	abort
	unreachable
func_end1:
	.size	main, func_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
