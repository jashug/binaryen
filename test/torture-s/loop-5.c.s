	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/loop-5.c"
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i64, i32, i32, i32, i32, i32, i32, i32, i64
# BB#0:                                 # %entry
	i32.const	$2=, 0
	i32.load	$0=, t($2)
	i32.const	$3=, 4
	block   	BB0_13
	i32.ge_s	$push3=, $0, $3
	br_if   	$pop3, BB0_13
# BB#1:                                 # %ap.exit.i
	i32.const	$4=, 1
	i32.add 	$push0=, $0, $4
	i32.store	$5=, t($2), $pop0
	i32.const	$6=, 2
	i32.const	$7=, a
	i32.shl 	$push4=, $0, $6
	i32.add 	$push5=, $7, $pop4
	i32.store	$discard=, 0($pop5), $2
	i32.gt_s	$push6=, $0, $6
	br_if   	$pop6, BB0_13
# BB#2:                                 # %ap.exit.1.i
	i32.shl 	$push7=, $5, $6
	i32.add 	$push8=, $7, $pop7
	i32.const	$push9=, 3
	i32.store	$5=, 0($pop8), $pop9
	i32.add 	$push1=, $0, $6
	i32.store	$8=, t($2), $pop1
	i32.gt_s	$push10=, $8, $5
	br_if   	$pop10, BB0_13
# BB#3:                                 # %ap.exit.2.i
	i32.shl 	$push11=, $8, $6
	i32.add 	$push12=, $7, $pop11
	i32.store	$discard=, 0($pop12), $6
	i32.add 	$push2=, $0, $5
	i32.store	$5=, t($2), $pop2
	i32.gt_s	$push13=, $0, $2
	br_if   	$pop13, BB0_13
# BB#4:                                 # %testit.exit
	i32.shl 	$push15=, $5, $6
	i32.add 	$push16=, $7, $pop15
	i32.store	$discard=, 0($pop16), $4
	i64.load	$1=, a($2)
	block   	BB0_12
	i32.add 	$push14=, $0, $3
	i32.store	$discard=, t($2), $pop14
	i32.wrap/i64	$push17=, $1
	br_if   	$pop17, BB0_12
# BB#5:                                 # %if.end
	i64.const	$9=, -4294967296
	block   	BB0_11
	i64.and 	$push18=, $1, $9
	i64.const	$push19=, 12884901888
	i64.ne  	$push20=, $pop18, $pop19
	br_if   	$pop20, BB0_11
# BB#6:                                 # %if.end3
	i64.load	$1=, a+8($2)
	block   	BB0_10
	i32.wrap/i64	$push21=, $1
	i32.ne  	$push22=, $pop21, $6
	br_if   	$pop22, BB0_10
# BB#7:                                 # %if.end6
	block   	BB0_9
	i64.and 	$push23=, $1, $9
	i64.const	$push24=, 4294967296
	i64.ne  	$push25=, $pop23, $pop24
	br_if   	$pop25, BB0_9
# BB#8:                                 # %if.end9
	call    	exit, $2
	unreachable
BB0_9:                                  # %if.then8
	call    	abort
	unreachable
BB0_10:                                 # %if.then5
	call    	abort
	unreachable
BB0_11:                                 # %if.then2
	call    	abort
	unreachable
BB0_12:                                 # %if.then
	call    	abort
	unreachable
BB0_13:                                 # %if.then.i.i
	call    	abort
	unreachable
func_end0:
	.size	main, func_end0-main

	.type	a,@object               # @a
	.lcomm	a,16,4
	.type	t,@object               # @t
	.lcomm	t,4,2

	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
