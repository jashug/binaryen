	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/memcpy-1.c"
	.globl	copy
	.type	copy,@function
copy:                                   # @copy
	.param  	i32, i32, i32
	.result 	i32
# BB#0:                                 # %entry
	call    	memcpy, $0, $1, $2
	return  	$0
func_end0:
	.size	copy, func_end0-copy

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$8=, __stack_pointer
	i32.load	$8=, 0($8)
	i32.const	$9=, 262144
	i32.sub 	$28=, $8, $9
	i32.const	$9=, __stack_pointer
	i32.store	$28=, 0($9), $28
	i32.const	$4=, 0
	copy_local	$2=, $4
BB1_1:                                  # %for.body
                                        # =>This Inner Loop Header: Depth=1
	loop    	BB1_2
	i32.const	$10=, 131072
	i32.add 	$10=, $28, $10
	i32.add 	$push0=, $10, $2
	i32.store8	$discard=, 0($pop0), $2
	i32.const	$11=, 0
	i32.add 	$11=, $28, $11
	i32.add 	$push1=, $11, $2
	i32.store8	$discard=, 0($pop1), $4
	i32.const	$7=, 1
	i32.add 	$2=, $2, $7
	i32.const	$0=, 131072
	i32.ne  	$push2=, $2, $0
	br_if   	$pop2, BB1_1
BB1_2:                                  # %for.end
	i32.const	$1=, 1024
	i32.const	$12=, 0
	i32.add 	$12=, $28, $12
	i32.const	$13=, 131072
	i32.add 	$13=, $28, $13
	call    	memcpy, $12, $13, $1
	i32.const	$4=, 0
BB1_3:                                  # %for.body6
                                        # =>This Inner Loop Header: Depth=1
	block   	BB1_26
	loop    	BB1_5
	i32.const	$2=, 255
	i32.const	$14=, 0
	i32.add 	$14=, $28, $14
	i32.add 	$push3=, $14, $4
	i32.load8_u	$push4=, 0($pop3)
	i32.and 	$push5=, $4, $2
	i32.ne  	$push6=, $pop4, $pop5
	br_if   	$pop6, BB1_26
# BB#4:                                 # %for.cond3
                                        #   in Loop: Header=BB1_3 Depth=1
	i32.add 	$4=, $4, $7
	i32.const	$3=, 1023
	i32.le_u	$push7=, $4, $3
	br_if   	$pop7, BB1_3
BB1_5:                                  # %for.end15
	i32.const	$15=, 0
	i32.add 	$15=, $28, $15
	call    	memset, $15, $7, $1
BB1_6:                                  # %for.cond17
                                        # =>This Inner Loop Header: Depth=1
	block   	BB1_9
	loop    	BB1_8
	i32.gt_u	$push8=, $7, $3
	br_if   	$pop8, BB1_9
# BB#7:                                 # %for.cond17.for.body20_crit_edge
                                        #   in Loop: Header=BB1_6 Depth=1
	i32.const	$16=, 0
	i32.add 	$16=, $28, $16
	i32.add 	$5=, $16, $7
	i32.const	$4=, 1
	i32.add 	$7=, $7, $4
	i32.load8_u	$push28=, 0($5)
	i32.eq  	$push29=, $pop28, $4
	br_if   	$pop29, BB1_6
BB1_8:                                  # %if.then25
	call    	abort
	unreachable
BB1_9:                                  # %for.end29
	i32.const	$17=, 0
	i32.add 	$17=, $28, $17
	i32.const	$18=, 131072
	i32.add 	$18=, $28, $18
	call    	memcpy, $17, $18, $0
	i32.const	$5=, 0
BB1_10:                                 # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	block   	BB1_25
	loop    	BB1_12
	i32.const	$19=, 0
	i32.add 	$19=, $28, $19
	i32.add 	$push9=, $19, $5
	i32.load8_u	$push10=, 0($pop9)
	i32.and 	$push11=, $5, $2
	i32.ne  	$push12=, $pop10, $pop11
	br_if   	$pop12, BB1_25
# BB#11:                                # %for.cond32
                                        #   in Loop: Header=BB1_10 Depth=1
	i32.const	$7=, 1
	i32.add 	$5=, $5, $7
	i32.const	$4=, 131071
	i32.le_u	$push13=, $5, $4
	br_if   	$pop13, BB1_10
BB1_12:                                 # %for.end46
	i32.const	$6=, 0
	i32.const	$20=, 0
	i32.add 	$20=, $28, $20
	call    	memset, $20, $6, $0
BB1_13:                                 # %for.cond48
                                        # =>This Inner Loop Header: Depth=1
	block   	BB1_16
	loop    	BB1_15
	i32.gt_u	$push14=, $7, $4
	br_if   	$pop14, BB1_16
# BB#14:                                # %for.cond48.for.body51_crit_edge
                                        #   in Loop: Header=BB1_13 Depth=1
	i32.const	$21=, 0
	i32.add 	$21=, $28, $21
	i32.add 	$5=, $21, $7
	i32.const	$push27=, 1
	i32.add 	$7=, $7, $pop27
	i32.load8_u	$push26=, 0($5)
	i32.const	$push30=, 0
	i32.eq  	$push31=, $pop26, $pop30
	br_if   	$pop31, BB1_13
BB1_15:                                 # %if.then56
	call    	abort
	unreachable
BB1_16:                                 # %for.end60
	i32.const	$22=, 0
	i32.add 	$22=, $28, $22
	i32.const	$23=, 131072
	i32.add 	$23=, $28, $23
	call    	memcpy, $22, $23, $1
BB1_17:                                 # %for.body66
                                        # =>This Inner Loop Header: Depth=1
	block   	BB1_24
	loop    	BB1_19
	i32.const	$24=, 0
	i32.add 	$24=, $28, $24
	i32.add 	$push15=, $24, $6
	i32.load8_u	$push16=, 0($pop15)
	i32.and 	$push17=, $6, $2
	i32.ne  	$push18=, $pop16, $pop17
	br_if   	$pop18, BB1_24
# BB#18:                                # %for.cond63
                                        #   in Loop: Header=BB1_17 Depth=1
	i32.const	$5=, 1
	i32.add 	$6=, $6, $5
	i32.le_u	$push19=, $6, $3
	br_if   	$pop19, BB1_17
BB1_19:                                 # %for.end77
	i32.const	$25=, 0
	i32.add 	$25=, $28, $25
	i32.const	$26=, 131072
	i32.add 	$26=, $28, $26
	call    	memcpy, $25, $26, $0
	i32.const	$7=, 0
BB1_20:                                 # %for.body85
                                        # =>This Inner Loop Header: Depth=1
	block   	BB1_23
	loop    	BB1_22
	i32.const	$27=, 0
	i32.add 	$27=, $28, $27
	i32.add 	$push20=, $27, $7
	i32.load8_u	$push21=, 0($pop20)
	i32.and 	$push22=, $7, $2
	i32.ne  	$push23=, $pop21, $pop22
	br_if   	$pop23, BB1_23
# BB#21:                                # %for.cond82
                                        #   in Loop: Header=BB1_20 Depth=1
	i32.add 	$7=, $7, $5
	i32.le_u	$push24=, $7, $4
	br_if   	$pop24, BB1_20
BB1_22:                                 # %for.end96
	i32.const	$push25=, 0
	call    	exit, $pop25
	unreachable
BB1_23:                                 # %if.then92
	call    	abort
	unreachable
BB1_24:                                 # %if.then73
	call    	abort
	unreachable
BB1_25:                                 # %if.then42
	call    	abort
	unreachable
BB1_26:                                 # %if.then
	call    	abort
	unreachable
func_end1:
	.size	main, func_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
