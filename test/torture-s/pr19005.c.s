	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr19005.c"
	.globl	bar
	.type	bar,@function
bar:                                    # @bar
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$5=, 0
	i32.load	$2=, v($5)
	i32.load	$3=, s($5)
	i32.const	$6=, 255
	i32.and 	$4=, $2, $6
	block   	BB0_7
	block   	BB0_6
	block   	BB0_4
	i32.const	$push12=, 0
	i32.eq  	$push13=, $3, $pop12
	br_if   	$pop13, BB0_4
# BB#1:                                 # %if.else
	block   	BB0_3
	i32.ne  	$push3=, $4, $1
	br_if   	$pop3, BB0_3
# BB#2:                                 # %if.else
	i32.const	$push1=, 1
	i32.add 	$push2=, $2, $pop1
	i32.and 	$push0=, $pop2, $6
	i32.eq  	$push4=, $pop0, $0
	br_if   	$pop4, BB0_6
BB0_3:                                  # %if.then19
	call    	abort
	unreachable
BB0_4:                                  # %if.then
	i32.ne  	$push5=, $4, $0
	br_if   	$pop5, BB0_7
# BB#5:                                 # %lor.lhs.false
	i32.const	$push6=, 1
	i32.add 	$push7=, $2, $pop6
	i32.and 	$push8=, $pop7, $6
	i32.ne  	$push9=, $pop8, $1
	br_if   	$pop9, BB0_7
BB0_6:                                  # %if.end21
	i32.const	$push10=, 1
	i32.xor 	$push11=, $3, $pop10
	i32.store	$discard=, s($5), $pop11
	return
BB0_7:                                  # %if.then8
	call    	abort
	unreachable
func_end0:
	.size	bar, func_end0-bar

	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$5=, 1
	i32.const	$6=, 255
	i32.const	$7=, 0
	i32.load	$3=, v($7)
	i32.load	$4=, s($7)
	i32.and 	$1=, $0, $6
	i32.add 	$push0=, $0, $5
	i32.and 	$2=, $pop0, $6
	i32.and 	$0=, $3, $6
	block   	BB1_12
	block   	BB1_11
	block   	BB1_10
	block   	BB1_8
	block   	BB1_5
	i32.const	$push11=, 0
	i32.eq  	$push12=, $4, $pop11
	br_if   	$pop12, BB1_5
# BB#1:                                 # %if.else.i
	block   	BB1_4
	i32.ne  	$push2=, $0, $2
	br_if   	$pop2, BB1_4
# BB#2:                                 # %if.else.i
	i32.add 	$push1=, $3, $5
	i32.and 	$6=, $pop1, $6
	i32.ne  	$push3=, $6, $1
	br_if   	$pop3, BB1_4
# BB#3:                                 # %bar.exit
	i32.xor 	$push4=, $4, $5
	i32.store	$discard=, s($7), $pop4
	i32.eq  	$push5=, $4, $5
	br_if   	$pop5, BB1_10
	br      	BB1_8
BB1_4:                                  # %if.then19.i
	call    	abort
	unreachable
BB1_5:                                  # %if.then.i
	i32.ne  	$push6=, $0, $1
	br_if   	$pop6, BB1_12
# BB#6:                                 # %lor.lhs.false.i
	i32.add 	$push7=, $3, $5
	i32.and 	$6=, $pop7, $6
	i32.ne  	$push8=, $6, $2
	br_if   	$pop8, BB1_12
# BB#7:                                 # %bar.exit.thread
	i32.store	$discard=, s($7), $5
BB1_8:                                  # %if.else.i40
	i32.ne  	$push9=, $0, $1
	br_if   	$pop9, BB1_11
# BB#9:                                 # %if.else.i40
	i32.ne  	$push10=, $6, $2
	br_if   	$pop10, BB1_11
BB1_10:                                 # %bar.exit43
	i32.store	$discard=, s($7), $4
	return  	$7
BB1_11:                                 # %if.then19.i41
	call    	abort
	unreachable
BB1_12:                                 # %if.then8.i
	call    	abort
	unreachable
func_end1:
	.size	foo, func_end1-foo

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	i32.const	$push1=, -10
	i32.store	$1=, v($0), $pop1
BB2_1:                                  # %for.body
                                        # =>This Inner Loop Header: Depth=1
	loop    	BB2_2
	i32.call	$discard=, foo, $1
	i32.load	$push2=, v($0)
	i32.const	$push3=, 1
	i32.add 	$push0=, $pop2, $pop3
	i32.store	$1=, v($0), $pop0
	i32.const	$push4=, 266
	i32.lt_s	$push5=, $1, $pop4
	br_if   	$pop5, BB2_1
BB2_2:                                  # %for.end
	return  	$0
func_end2:
	.size	main, func_end2-main

	.type	v,@object               # @v
	.bss
	.globl	v
	.align	2
v:
	.int32	0                       # 0x0
	.size	v, 4

	.type	s,@object               # @s
	.globl	s
	.align	2
s:
	.int32	0                       # 0x0
	.size	s, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
