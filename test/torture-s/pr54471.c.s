	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr54471.c"
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32, i64, i64, i32
	.local  	i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$7=, __stack_pointer
	i32.load	$7=, 0($7)
	i32.const	$8=, 32
	i32.sub 	$10=, $7, $8
	i32.const	$8=, __stack_pointer
	i32.store	$10=, 0($8), $10
	i64.const	$6=, 0
	i64.const	$5=, 1
	block   	BB0_4
	i32.const	$push7=, 0
	i32.eq  	$push8=, $3, $pop7
	br_if   	$pop8, BB0_4
BB0_1:                                  # %for.body
                                        # =>This Inner Loop Header: Depth=1
	loop    	BB0_2
	i32.const	$10=, 0
	i32.add 	$10=, $10, $10
	call    	__multi3, $10, $1, $2, $5, $6
	i32.const	$4=, 8
	i32.const	$11=, 0
	i32.add 	$11=, $10, $11
	i32.add 	$push0=, $11, $4
	i64.load	$6=, 0($pop0)
	i64.load	$5=, 0($10)
	i32.const	$12=, 16
	i32.add 	$12=, $10, $12
	call    	__multi3, $12, $1, $2, $1, $2
	i32.const	$13=, 16
	i32.add 	$13=, $10, $13
	i32.add 	$push1=, $13, $4
	i64.load	$2=, 0($pop1)
	i64.load	$1=, 16($10)
	i32.const	$push2=, -1
	i32.add 	$3=, $3, $pop2
	br_if   	$3, BB0_1
BB0_2:                                  # %for.end
	i64.const	$2=, 14348907
	i64.const	$1=, 0
	i64.xor 	$push3=, $5, $2
	i64.or  	$push4=, $pop3, $6
	i64.ne  	$push5=, $pop4, $1
	br_if   	$pop5, BB0_4
# BB#3:                                 # %if.end
	i64.store	$discard=, 0($0), $2
	i32.add 	$push6=, $0, $4
	i64.store	$discard=, 0($pop6), $1
	i32.const	$9=, 32
	i32.add 	$10=, $10, $9
	i32.const	$9=, __stack_pointer
	i32.store	$10=, 0($9), $10
	return
BB0_4:                                  # %if.then
	call    	abort
	unreachable
func_end0:
	.size	foo, func_end0-foo

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, __stack_pointer
	i32.load	$0=, 0($0)
	i32.const	$1=, 16
	i32.sub 	$4=, $0, $1
	i32.const	$1=, __stack_pointer
	i32.store	$4=, 0($1), $4
	i64.const	$push2=, 3
	i64.const	$push1=, 0
	i32.const	$push0=, 4
	i32.const	$3=, 0
	i32.add 	$3=, $4, $3
	call    	foo, $3, $pop2, $pop1, $pop0
	i32.const	$push3=, 0
	i32.const	$2=, 16
	i32.add 	$4=, $4, $2
	i32.const	$2=, __stack_pointer
	i32.store	$4=, 0($2), $4
	return  	$pop3
func_end1:
	.size	main, func_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
