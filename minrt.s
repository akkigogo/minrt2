	flui	$fi50, 16230
	fori	$fi50, $fi50, 26214
	flui	$fi49, 17174
	fori	$fi49, $fi49, 0
	flui	$fi48, -15594
	fori	$fi48, $fi48, 0
	flui	$fi47, 15820
	fori	$fi47, $fi47, 52429
	flui	$fi46, -16384
	fori	$fi46, $fi46, 0
	flui	$fi45, 15232
	fori	$fi45, $fi45, 0
	flui	$fi44, 16800
	fori	$fi44, $fi44, 0
	flui	$fi43, 15692
	fori	$fi43, $fi43, 52429
	flui	$fi42, 16000
	fori	$fi42, $fi42, 0
	flui	$fi41, 16672
	fori	$fi41, $fi41, 0
	flui	$fi40, 16025
	fori	$fi40, $fi40, 39322
	flui	$fi39, 15897
	fori	$fi39, $fi39, 39322
	flui	$fi38, 16457
	fori	$fi38, $fi38, 4059
	flui	$fi37, 16880
	fori	$fi37, $fi37, 0
	flui	$fi36, 16412
	fori	$fi36, $fi36, 0
	flui	$fi35, 16201
	fori	$fi35, $fi35, 4059
	flui	$fi34, 15733
	fori	$fi34, $fi34, 59333
	flui	$fi33, 15799
	fori	$fi33, $fi33, 54894
	flui	$fi32, 15843
	fori	$fi32, $fi32, 36408
	flui	$fi31, 15890
	fori	$fi31, $fi31, 18725
	flui	$fi30, 15948
	fori	$fi30, $fi30, 52429
	flui	$fi29, 16042
	fori	$fi29, $fi29, 43690
	flui	$fi28, 16329
	fori	$fi28, $fi28, 4059
	flui	$fi27, 16096
	fori	$fi27, $fi27, 0
	flui	$fi26, 16752
	fori	$fi26, $fi26, 0
	flui	$fi25, 14545
	fori	$fi25, $fi25, 46871
	flui	$fi24, 19646
	fori	$fi24, $fi24, 48160
	flui	$fi23, -16948
	fori	$fi23, $fi23, 52429
	flui	$fi22, 15395
	fori	$fi22, $fi22, 55050
	flui	$fi21, -16820
	fori	$fi21, $fi21, 52429
	flui	$fi20, -16512
	fori	$fi20, $fi20, 0
	flui	$fi19, 16201
	fori	$fi19, $fi19, 4059
	flui	$fi18, 14669
	fori	$fi18, $fi18, 25782
	flui	$fi17, 15368
	fori	$fi17, $fi17, 34406
	flui	$fi16, 15914
	fori	$fi16, $fi16, 43692
	flui	$fi15, 15027
	fori	$fi15, $fi15, 33030
	flui	$fi14, 15658
	fori	$fi14, $fi14, 42889
	flui	$fi13, 16128
	fori	$fi13, $fi13, 0
	flui	$fi12, 16406
	fori	$fi12, $fi12, 52196
	flui	$fi11, 16329
	fori	$fi11, $fi11, 4059
	flui	$fi10, 16457
	fori	$fi10, $fi10, 4059
	flui	$fi9, 16585
	fori	$fi9, $fi9, 4059
	flui	$fi8, 16384
	fori	$fi8, $fi8, 0
	flui	$fi7, 16256
	fori	$fi7, $fi7, 0
	flui	$fi6, -15544
	fori	$fi6, $fi6, 0
	flui	$fi5, 17224
	fori	$fi5, $fi5, 0
	flui	$fi4, 15502
	fori	$fi4, $fi4, 64053
	flui	$fi3, 17152
	fori	$fi3, $fi3, 0
	flui	$fi2, 20078
	fori	$fi2, $fi2, 27432
	flui	$fi1, 17279
	fori	$fi1, $fi1, 0
	flui	$fi0, 0
	fori	$fi0, $fi0, 0
	j	_min_caml_start
min_caml_create_array:
	addi	$s0, $a0, 0
	addi	$a0, $gp, 0
create_array_loop:
	bne	$s0, $zero, create_array_cont
	jr	$ra
create_array_cont:
	sw	$a1, 0($gp)
	addi	$s0, $s0, -1
	addi	$gp, $gp, 1
	j	create_array_loop
min_caml_create_float_array:
	addi	$s0, $a0, 0
	addi	$a0, $gp, 0
create_float_array_loop:
	bne	$s0, $zero, create_float_array_cont
	jr	$ra
create_float_array_cont:
	swc1	$f0, 0($gp)
	addi	$s0, $s0, -1
	addi	$gp, $gp, 1
	j	create_float_array_loop
cos.2638:
	bflt	$f0, $fzero, bflt_true.22470
	bflti1	$fi9, $f0, bflt_true.22471
	bflti2	$f0, $fi10, bflt_true.22472
	fsubi	$f0, $f0, $fi10
	bflti2	$f0, $fi11, bflt_true.22473
	bflti2	$f0, $fi12, bflt_true.22474
	fsubi2	$f0, $fi10, $f0
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi15
	fsubi2	$f1, $fi14, $f1
	mul.s	$f1, $f0, $f1
	fsubi2	$f1, $fi13, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi7, $f0
	jr	$ra
bflt_true.22474:
	fsubi	$f0, $f0, $fi11
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi18
	fsubi2	$f2, $fi17, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi16, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	jr	$ra
bflt_true.22473:
	bflti2	$f0, $fi19, bflt_true.22475
	fsubi2	$f0, $fi11, $f0
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi15
	fsubi2	$f1, $fi14, $f1
	mul.s	$f1, $f0, $f1
	fsubi2	$f1, $fi13, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi7, $f0
	sub.s	$f0, $fzero, $f0
	jr	$ra
bflt_true.22475:
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi18
	fsubi2	$f2, $fi17, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi16, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	jr	$ra
bflt_true.22472:
	bflti2	$f0, $fi11, bflt_true.22476
	bflti2	$f0, $fi12, bflt_true.22477
	fsubi2	$f0, $fi10, $f0
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi15
	fsubi2	$f1, $fi14, $f1
	mul.s	$f1, $f0, $f1
	fsubi2	$f1, $fi13, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi7, $f0
	sub.s	$f0, $fzero, $f0
	jr	$ra
bflt_true.22477:
	fsubi	$f0, $f0, $fi11
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi18
	fsubi2	$f2, $fi17, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi16, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	jr	$ra
bflt_true.22476:
	bflti2	$f0, $fi19, bflt_true.22478
	fsubi2	$f0, $fi11, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi18
	fsubi2	$f2, $fi17, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi16, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	jr	$ra
bflt_true.22478:
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi15
	fsubi2	$f1, $fi14, $f1
	mul.s	$f1, $f0, $f1
	fsubi2	$f1, $fi13, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi7, $f0
	jr	$ra
bflt_true.22471:
	fsubi	$f0, $f0, $fi9
	j	cos.2638
bflt_true.22470:
	sub.s	$f0, $fzero, $f0
	j	cos.2638
sin.2640:
	bflt	$f0, $fzero, bflt_true.22479
	bflti1	$fi9, $f0, bflt_true.22480
	bflti2	$f0, $fi10, bflt_true.22481
	fsubi	$f0, $f0, $fi10
	bflti2	$f0, $fi11, bflt_true.22482
	bflti2	$f0, $fi12, bflt_true.22483
	fsubi2	$f0, $fi10, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi18
	fsubi2	$f2, $fi17, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi16, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	jr	$ra
bflt_true.22483:
	fsubi	$f0, $f0, $fi11
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi15
	fsubi2	$f1, $fi14, $f1
	mul.s	$f1, $f0, $f1
	fsubi2	$f1, $fi13, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi7, $f0
	sub.s	$f0, $fzero, $f0
	jr	$ra
bflt_true.22482:
	bflti2	$f0, $fi19, bflt_true.22484
	fsubi2	$f0, $fi11, $f0
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi15
	fsubi2	$f1, $fi14, $f1
	mul.s	$f1, $f0, $f1
	fsubi2	$f1, $fi13, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi7, $f0
	sub.s	$f0, $fzero, $f0
	jr	$ra
bflt_true.22484:
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi18
	fsubi2	$f2, $fi17, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi16, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	jr	$ra
bflt_true.22481:
	bflti2	$f0, $fi11, bflt_true.22485
	bflti2	$f0, $fi12, bflt_true.22486
	fsubi2	$f0, $fi10, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi18
	fsubi2	$f2, $fi17, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi16, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	jr	$ra
bflt_true.22486:
	fsubi	$f0, $f0, $fi11
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi15
	fsubi2	$f1, $fi14, $f1
	mul.s	$f1, $f0, $f1
	fsubi2	$f1, $fi13, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi7, $f0
	jr	$ra
bflt_true.22485:
	bflti2	$f0, $fi19, bflt_true.22487
	fsubi2	$f0, $fi11, $f0
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi15
	fsubi2	$f1, $fi14, $f1
	mul.s	$f1, $f0, $f1
	fsubi2	$f1, $fi13, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi7, $f0
	jr	$ra
bflt_true.22487:
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi18
	fsubi2	$f2, $fi17, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi16, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	jr	$ra
bflt_true.22480:
	fsubi	$f0, $f0, $fi9
	j	sin.2640
bflt_true.22479:
	sub.s	$f0, $fzero, $f0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 5
	jal	sin.2640
	addi	$sp, $sp, -5
	lw	$ra, 4($sp)
	sub.s	$f0, $fzero, $f0
	jr	$ra
read_object.2785:
	addi	$a1, $zero, 112
	slti	$s0, $a0, 60
	beq	$s0, $zero, bne_else.22488
	sw	$a0, 0($sp)
	sw	$a1, 1($sp)
	readi	$a0
	addi	$s1, $zero, -1
	bne	$a0, $s1, beq_else.22489
	addi	$a0, $zero, 0
	j	beq_cont.22490
beq_else.22489:
	sw	$a0, 2($sp)
	readi	$a0
	sw	$a0, 3($sp)
	readi	$a0
	sw	$a0, 4($sp)
	readi	$a0
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 5($sp)
	add	$a0, $zero, $a1
	sw	$ra, 10($sp)
	jal	min_caml_create_float_array
	lw	$ra, 10($sp)
	sw	$a0, 6($sp)
	readf	$f0
	lw	$a0, 6($sp)
	swc1	$f0, 0($a0)
	readf	$f0
	lw	$a0, 6($sp)
	swc1	$f0, 1($a0)
	readf	$f0
	lw	$a0, 6($sp)
	swc1	$f0, 2($a0)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	add	$a0, $zero, $a1
	sw	$ra, 7($sp)
	jal	min_caml_create_float_array
	lw	$ra, 7($sp)
	sw	$a0, 7($sp)
	readf	$f0
	lw	$a0, 7($sp)
	swc1	$f0, 0($a0)
	readf	$f0
	lw	$a0, 7($sp)
	swc1	$f0, 1($a0)
	readf	$f0
	lw	$a0, 7($sp)
	swc1	$f0, 2($a0)
	readf	$f0
	bflt	$f0, $fzero, beq_else.22491
	addi	$a0, $zero, 0
	j	beq_cont.22492
beq_else.22491:
	addi	$a0, $zero, 1
beq_cont.22492:
	addi	$a1, $zero, 2
	faddi	$f0, $fzero, $fi0
	sw	$a0, 8($sp)
	add	$a0, $zero, $a1
	sw	$ra, 13($sp)
	jal	min_caml_create_float_array
	lw	$ra, 13($sp)
	sw	$a0, 9($sp)
	readf	$f0
	lw	$a0, 9($sp)
	swc1	$f0, 0($a0)
	readf	$f0
	lw	$a0, 9($sp)
	swc1	$f0, 1($a0)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	add	$a0, $zero, $a1
	sw	$ra, 14($sp)
	jal	min_caml_create_float_array
	lw	$ra, 14($sp)
	sw	$a0, 10($sp)
	readf	$f0
	lw	$a0, 10($sp)
	swc1	$f0, 0($a0)
	readf	$f0
	lw	$a0, 10($sp)
	swc1	$f0, 1($a0)
	readf	$f0
	lw	$a0, 10($sp)
	swc1	$f0, 2($a0)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	add	$a0, $zero, $a1
	sw	$ra, 15($sp)
	jal	min_caml_create_float_array
	lw	$ra, 15($sp)
	lw	$a1, 5($sp)
	bnei	$a1, 0, beq_else.22493
	j	beq_cont.22494
beq_else.22493:
	sw	$a0, 11($sp)
	readf	$f0
	fmuli	$f0, $f0, $fi4
	lw	$a0, 11($sp)
	swc1	$f0, 0($a0)
	readf	$f0
	fmuli	$f0, $f0, $fi4
	lw	$a0, 11($sp)
	swc1	$f0, 1($a0)
	readf	$f0
	fmuli	$f0, $f0, $fi4
	lw	$a0, 11($sp)
	swc1	$f0, 2($a0)
beq_cont.22494:
	lw	$a1, 3($sp)
	bnei	$a1, 2, beq_else.22495
	addi	$a2, $zero, 1
	j	beq_cont.22496
beq_else.22495:
	lw	$a2, 8($sp)
beq_cont.22496:
	addi	$a3, $zero, 4
	faddi	$f0, $fzero, $fi0
	sw	$a2, 12($sp)
	sw	$a0, 11($sp)
	add	$a0, $zero, $a3
	sw	$ra, 17($sp)
	jal	min_caml_create_float_array
	lw	$ra, 17($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 15
	sw	$a0, 10($a1)
	lw	$a0, 11($sp)
	sw	$a0, 9($a1)
	lw	$a2, 10($sp)
	sw	$a2, 8($a1)
	lw	$a2, 9($sp)
	sw	$a2, 7($a1)
	lw	$a2, 12($sp)
	sw	$a2, 6($a1)
	lw	$a2, 7($sp)
	sw	$a2, 5($a1)
	lw	$a2, 6($sp)
	sw	$a2, 4($a1)
	lw	$a3, 5($sp)
	sw	$a3, 3($a1)
	lw	$t0, 4($sp)
	sw	$t0, 2($a1)
	lw	$t0, 3($sp)
	sw	$t0, 1($a1)
	lw	$t1, 2($sp)
	sw	$t1, 0($a1)
	lw	$t1, 0($sp)
	lw	$t2, 1($sp)
	sw2	$a1, $t2, $t1
	bnei	$t0, 3, beq_else.22497
	lwc1	$f0, 0($a2)
	bfeq	$f0, $fzero, c.eq_else.22499
	addi	$a1, $zero, 0
	j	c.eq_cont.22500
c.eq_else.22499:
	addi	$a1, $zero, 1
c.eq_cont.22500:
	bnei	$a1, 0, beq_else.22501
	bfeq	$f0, $fzero, c.eq_else.22503
	j	c.eq_cont.22504
c.eq_else.22503:
	addi	$a1, $zero, 1
c.eq_cont.22504:
	bnei	$a1, 0, beq_else.22505
	bflt	$fzero, $f0, beq_else.22507
	j	beq_cont.22508
beq_else.22507:
	addi	$a1, $zero, 1
beq_cont.22508:
	bnei	$a1, 0, beq_else.22509
	faddi	$f1, $fzero, $fi20
	j	beq_cont.22510
beq_else.22509:
	faddi	$f1, $fzero, $fi7
beq_cont.22510:
	j	beq_cont.22506
beq_else.22505:
	faddi	$f1, $fzero, $fi0
beq_cont.22506:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
	j	beq_cont.22502
beq_else.22501:
	faddi	$f0, $fzero, $fi0
beq_cont.22502:
	swc1	$f0, 0($a2)
	lwc1	$f0, 1($a2)
	bfeq	$f0, $fzero, c.eq_else.22511
	addi	$a1, $zero, 0
	j	c.eq_cont.22512
c.eq_else.22511:
	addi	$a1, $zero, 1
c.eq_cont.22512:
	bnei	$a1, 0, beq_else.22513
	bfeq	$f0, $fzero, c.eq_else.22515
	j	c.eq_cont.22516
c.eq_else.22515:
	addi	$a1, $zero, 1
c.eq_cont.22516:
	bnei	$a1, 0, beq_else.22517
	bflt	$fzero, $f0, beq_else.22519
	j	beq_cont.22520
beq_else.22519:
	addi	$a1, $zero, 1
beq_cont.22520:
	bnei	$a1, 0, beq_else.22521
	faddi	$f1, $fzero, $fi20
	j	beq_cont.22522
beq_else.22521:
	faddi	$f1, $fzero, $fi7
beq_cont.22522:
	j	beq_cont.22518
beq_else.22517:
	faddi	$f1, $fzero, $fi0
beq_cont.22518:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
	j	beq_cont.22514
beq_else.22513:
	faddi	$f0, $fzero, $fi0
beq_cont.22514:
	swc1	$f0, 1($a2)
	lwc1	$f0, 2($a2)
	bfeq	$f0, $fzero, c.eq_else.22523
	addi	$a1, $zero, 0
	j	c.eq_cont.22524
c.eq_else.22523:
	addi	$a1, $zero, 1
c.eq_cont.22524:
	bnei	$a1, 0, beq_else.22525
	bfeq	$f0, $fzero, c.eq_else.22527
	j	c.eq_cont.22528
c.eq_else.22527:
	addi	$a1, $zero, 1
c.eq_cont.22528:
	bnei	$a1, 0, beq_else.22529
	bflt	$fzero, $f0, beq_else.22531
	j	beq_cont.22532
beq_else.22531:
	addi	$a1, $zero, 1
beq_cont.22532:
	bnei	$a1, 0, beq_else.22533
	faddi	$f1, $fzero, $fi20
	j	beq_cont.22534
beq_else.22533:
	faddi	$f1, $fzero, $fi7
beq_cont.22534:
	j	beq_cont.22530
beq_else.22529:
	faddi	$f1, $fzero, $fi0
beq_cont.22530:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
	j	beq_cont.22526
beq_else.22525:
	faddi	$f0, $fzero, $fi0
beq_cont.22526:
	swc1	$f0, 2($a2)
	j	beq_cont.22498
beq_else.22497:
	bnei	$t0, 2, beq_cont.22536
	lw	$a1, 8($sp)
	bnei	$a1, 0, beq_else.22537
	addi	$a1, $zero, 1
	j	beq_cont.22538
beq_else.22537:
	addi	$a1, $zero, 0
beq_cont.22538:
	lwc1	$f0, 0($a2)
	mul.s	$f0, $f0, $f0
	lwc1	$f1, 1($a2)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 2($a2)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sw	$a1, 13($sp)
	sqrt	$f0, $f0
	bfeq	$f0, $fzero, c.eq_else.22539
	addi	$a0, $zero, 0
	j	c.eq_cont.22540
c.eq_else.22539:
	addi	$a0, $zero, 1
c.eq_cont.22540:
	bnei	$a0, 0, beq_else.22541
	lw	$a0, 13($sp)
	bnei	$a0, 0, beq_else.22543
	fdivi2	$f0, $fi7, $f0
	j	beq_cont.22544
beq_else.22543:
	fdivi2	$f0, $fi20, $f0
beq_cont.22544:
	j	beq_cont.22542
beq_else.22541:
	faddi	$f0, $fzero, $fi7
beq_cont.22542:
	lw	$a0, 6($sp)
	lwc1	$f1, 0($a0)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 0($a0)
	lwc1	$f1, 1($a0)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 1($a0)
	lwc1	$f1, 2($a0)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 2($a0)
beq_cont.22536:
beq_cont.22498:
	lw	$a0, 5($sp)
	bnei	$a0, 0, beq_else.22545
	j	beq_cont.22546
beq_else.22545:
	lw	$a0, 11($sp)
	lwc1	$f0, 0($a0)
	sw	$ra, 18($sp)
	addi	$sp, $sp, 19
	jal	cos.2638
	addi	$sp, $sp, -19
	lw	$ra, 18($sp)
	lw	$a0, 11($sp)
	lwc1	$f1, 0($a0)
	swc1	$f0, 14($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 21
	jal	sin.2640
	addi	$sp, $sp, -21
	lw	$ra, 20($sp)
	lw	$a0, 11($sp)
	lwc1	$f1, 1($a0)
	swc1	$f0, 16($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 22($sp)
	addi	$sp, $sp, 23
	jal	cos.2638
	addi	$sp, $sp, -23
	lw	$ra, 22($sp)
	lw	$a0, 11($sp)
	lwc1	$f1, 1($a0)
	swc1	$f0, 18($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 24($sp)
	addi	$sp, $sp, 25
	jal	sin.2640
	addi	$sp, $sp, -25
	lw	$ra, 24($sp)
	lw	$a0, 11($sp)
	lwc1	$f1, 2($a0)
	swc1	$f0, 20($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 26($sp)
	addi	$sp, $sp, 27
	jal	cos.2638
	addi	$sp, $sp, -27
	lw	$ra, 26($sp)
	lw	$a0, 11($sp)
	lwc1	$f1, 2($a0)
	swc1	$f0, 22($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 29
	jal	sin.2640
	addi	$sp, $sp, -29
	lw	$ra, 28($sp)
	lwc1	$f1, 22($sp)
	lwc1	$f2, 18($sp)
	mul.s	$f3, $f2, $f1
	lwc1	$f4, 20($sp)
	lwc1	$f5, 16($sp)
	mul.s	$f6, $f5, $f4
	mul.s	$f7, $f6, $f1
	lwc1	$f8, 14($sp)
	mul.s	$f9, $f8, $f0
	sub.s	$f7, $f7, $f9
	mul.s	$f9, $f8, $f4
	mul.s	$f10, $f9, $f1
	mul.s	$f11, $f5, $f0
	add.s	$f10, $f10, $f11
	mul.s	$f11, $f2, $f0
	mul.s	$f6, $f6, $f0
	mul.s	$f12, $f8, $f1
	add.s	$f6, $f6, $f12
	mul.s	$f0, $f9, $f0
	mul.s	$f1, $f5, $f1
	sub.s	$f0, $f0, $f1
	sub.s	$f1, $fzero, $f4
	mul.s	$f4, $f5, $f2
	mul.s	$f2, $f8, $f2
	lw	$a0, 6($sp)
	lwc1	$f5, 0($a0)
	lwc1	$f8, 1($a0)
	lwc1	$f9, 2($a0)
	mul.s	$f12, $f3, $f3
	mul.s	$f12, $f5, $f12
	mul.s	$f13, $f11, $f11
	mul.s	$f13, $f8, $f13
	add.s	$f12, $f12, $f13
	mul.s	$f13, $f1, $f1
	mul.s	$f13, $f9, $f13
	add.s	$f12, $f12, $f13
	swc1	$f12, 0($a0)
	mul.s	$f12, $f7, $f7
	mul.s	$f12, $f5, $f12
	mul.s	$f13, $f6, $f6
	mul.s	$f13, $f8, $f13
	add.s	$f12, $f12, $f13
	mul.s	$f13, $f4, $f4
	mul.s	$f13, $f9, $f13
	add.s	$f12, $f12, $f13
	swc1	$f12, 1($a0)
	mul.s	$f12, $f10, $f10
	mul.s	$f12, $f5, $f12
	mul.s	$f13, $f0, $f0
	mul.s	$f13, $f8, $f13
	add.s	$f12, $f12, $f13
	mul.s	$f13, $f2, $f2
	mul.s	$f13, $f9, $f13
	add.s	$f12, $f12, $f13
	swc1	$f12, 2($a0)
	mul.s	$f12, $f5, $f7
	mul.s	$f12, $f12, $f10
	mul.s	$f13, $f8, $f6
	mul.s	$f13, $f13, $f0
	add.s	$f12, $f12, $f13
	mul.s	$f13, $f9, $f4
	mul.s	$f13, $f13, $f2
	add.s	$f12, $f12, $f13
	fmuli	$f12, $f12, $fi8
	lw	$a0, 11($sp)
	swc1	$f12, 0($a0)
	mul.s	$f3, $f5, $f3
	mul.s	$f5, $f3, $f10
	mul.s	$f8, $f8, $f11
	mul.s	$f0, $f8, $f0
	add.s	$f0, $f5, $f0
	mul.s	$f1, $f9, $f1
	mul.s	$f2, $f1, $f2
	add.s	$f0, $f0, $f2
	fmuli	$f0, $f0, $fi8
	swc1	$f0, 1($a0)
	mul.s	$f0, $f3, $f7
	mul.s	$f2, $f8, $f6
	add.s	$f0, $f0, $f2
	mul.s	$f1, $f1, $f4
	add.s	$f0, $f0, $f1
	fmuli	$f0, $f0, $fi8
	swc1	$f0, 2($a0)
beq_cont.22546:
	addi	$a0, $zero, 1
beq_cont.22490:
	bnei	$a0, 0, bne_else.22547
	lw	$a0, 0($sp)
	sw	$a0, 100($zero)
	jr	$ra
bne_else.22547:
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	j	read_object.2785
bne_else.22488:
	jr	$ra
read_net_item.2789:
	sw	$a0, 0($sp)
	readi	$a0
	addi	$s1, $zero, -1
	bne	$a0, $s1, bne_else.22550
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	addi	$a1, $zero, -1
	j	min_caml_create_array
bne_else.22550:
	lw	$a1, 0($sp)
	addi	$a2, $a1, 1
	sw	$a0, 1($sp)
	add	$a0, $zero, $a2
	sw	$ra, 6($sp)
	addi	$sp, $sp, 7
	jal	read_net_item.2789
	addi	$sp, $sp, -7
	lw	$ra, 6($sp)
	lw	$a1, 0($sp)
	lw	$a2, 1($sp)
	sw2	$a2, $a0, $a1
	jr	$ra
read_or_network.2791:
	addi	$a1, $zero, 0
	sw	$a0, 0($sp)
	add	$a0, $zero, $a1
	sw	$ra, 5($sp)
	addi	$sp, $sp, 6
	jal	read_net_item.2789
	addi	$sp, $sp, -6
	lw	$ra, 5($sp)
	add	$a1, $a0, $zero
	lw	$v0, 0($a1)
	addi	$s1, $zero, -1
	bne	$v0, $s1, bne_else.22551
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	j	min_caml_create_array
bne_else.22551:
	lw	$a0, 0($sp)
	addi	$a2, $a0, 1
	sw	$a1, 1($sp)
	add	$a0, $zero, $a2
	sw	$ra, 6($sp)
	addi	$sp, $sp, 7
	jal	read_or_network.2791
	addi	$sp, $sp, -7
	lw	$ra, 6($sp)
	lw	$a1, 0($sp)
	lw	$a2, 1($sp)
	sw2	$a2, $a0, $a1
	jr	$ra
read_and_network.2793:
	addi	$a1, $zero, 183
	addi	$a2, $zero, 0
	sw	$a0, 0($sp)
	sw	$a1, 1($sp)
	add	$a0, $zero, $a2
	sw	$ra, 6($sp)
	addi	$sp, $sp, 7
	jal	read_net_item.2789
	addi	$sp, $sp, -7
	lw	$ra, 6($sp)
	lw	$v0, 0($a0)
	addi	$s1, $zero, -1
	bne	$v0, $s1, bne_else.22552
	jr	$ra
bne_else.22552:
	lw	$a1, 0($sp)
	lw	$a2, 1($sp)
	sw2	$a0, $a2, $a1
	addi	$a0, $a1, 1
	j	read_and_network.2793
iter_setup_dirvec_constants.2890:
	addi	$a2, $zero, 112
	blti	$a1, 0, blti_true.22554
	lw2	$v0, $a2, $a1
	lw	$v1, 1($a0)
	lw	$at, 0($a0)
	lw	$s2, 1($v0)
	sw	$a0, 0($sp)
	bnei	$s2, 1, beq_else.22555
	addi	$a2, $zero, 6
	faddi	$f0, $fzero, $fi0
	sw	$a1, 1($sp)
	sw	$v1, 2($sp)
	sw	$v0, 3($sp)
	sw	$at, 4($sp)
	add	$a0, $zero, $a2
	sw	$ra, 9($sp)
	jal	min_caml_create_float_array
	lw	$ra, 9($sp)
	lw	$a1, 4($sp)
	lwc1	$f0, 0($a1)
	bfeq	$f0, $fzero, c.eq_else.22557
	addi	$a2, $zero, 0
	j	c.eq_cont.22558
c.eq_else.22557:
	addi	$a2, $zero, 1
c.eq_cont.22558:
	bnei	$a2, 0, beq_else.22559
	lw	$a2, 3($sp)
	lw	$v0, 6($a2)
	lwc1	$f0, 0($a1)
	bflt	$f0, $fzero, beq_else.22561
	addi	$a3, $zero, 0
	j	beq_cont.22562
beq_else.22561:
	addi	$a3, $zero, 1
beq_cont.22562:
	bnei	$v0, 0, beq_else.22563
	j	beq_cont.22564
beq_else.22563:
	bnei	$a3, 0, beq_else.22565
	addi	$a3, $zero, 1
	j	beq_cont.22566
beq_else.22565:
	addi	$a3, $zero, 0
beq_cont.22566:
beq_cont.22564:
	lw	$v0, 4($a2)
	lwc1	$f0, 0($v0)
	bnei	$a3, 0, beq_else.22567
	sub.s	$f0, $fzero, $f0
	j	beq_cont.22568
beq_else.22567:
beq_cont.22568:
	swc1	$f0, 0($a0)
	lwc1	$f0, 0($a1)
	fdivi2	$f0, $fi7, $f0
	swc1	$f0, 1($a0)
	j	beq_cont.22560
beq_else.22559:
	swc1	$fzero, 1($a0)
beq_cont.22560:
	lwc1	$f0, 1($a1)
	bfeq	$f0, $fzero, c.eq_else.22569
	addi	$a2, $zero, 0
	j	c.eq_cont.22570
c.eq_else.22569:
	addi	$a2, $zero, 1
c.eq_cont.22570:
	bnei	$a2, 0, beq_else.22571
	lw	$a2, 3($sp)
	lw	$v0, 6($a2)
	lwc1	$f0, 1($a1)
	bflt	$f0, $fzero, beq_else.22573
	addi	$a3, $zero, 0
	j	beq_cont.22574
beq_else.22573:
	addi	$a3, $zero, 1
beq_cont.22574:
	bnei	$v0, 0, beq_else.22575
	j	beq_cont.22576
beq_else.22575:
	bnei	$a3, 0, beq_else.22577
	addi	$a3, $zero, 1
	j	beq_cont.22578
beq_else.22577:
	addi	$a3, $zero, 0
beq_cont.22578:
beq_cont.22576:
	lw	$v0, 4($a2)
	lwc1	$f0, 1($v0)
	bnei	$a3, 0, beq_else.22579
	sub.s	$f0, $fzero, $f0
	j	beq_cont.22580
beq_else.22579:
beq_cont.22580:
	swc1	$f0, 2($a0)
	lwc1	$f0, 1($a1)
	fdivi2	$f0, $fi7, $f0
	swc1	$f0, 3($a0)
	j	beq_cont.22572
beq_else.22571:
	swc1	$fzero, 3($a0)
beq_cont.22572:
	lwc1	$f0, 2($a1)
	bfeq	$f0, $fzero, c.eq_else.22581
	addi	$a2, $zero, 0
	j	c.eq_cont.22582
c.eq_else.22581:
	addi	$a2, $zero, 1
c.eq_cont.22582:
	bnei	$a2, 0, beq_else.22583
	lw	$a2, 3($sp)
	lw	$v0, 6($a2)
	lwc1	$f0, 2($a1)
	bflt	$f0, $fzero, beq_else.22585
	addi	$a3, $zero, 0
	j	beq_cont.22586
beq_else.22585:
	addi	$a3, $zero, 1
beq_cont.22586:
	bnei	$v0, 0, beq_else.22587
	j	beq_cont.22588
beq_else.22587:
	bnei	$a3, 0, beq_else.22589
	addi	$a3, $zero, 1
	j	beq_cont.22590
beq_else.22589:
	addi	$a3, $zero, 0
beq_cont.22590:
beq_cont.22588:
	lw	$v0, 4($a2)
	lwc1	$f0, 2($v0)
	bnei	$a3, 0, beq_else.22591
	sub.s	$f0, $fzero, $f0
	j	beq_cont.22592
beq_else.22591:
beq_cont.22592:
	swc1	$f0, 4($a0)
	lwc1	$f0, 2($a1)
	fdivi2	$f0, $fi7, $f0
	swc1	$f0, 5($a0)
	j	beq_cont.22584
beq_else.22583:
	swc1	$fzero, 5($a0)
beq_cont.22584:
	lw	$a1, 1($sp)
	lw	$a2, 2($sp)
	sw2	$a0, $a2, $a1
	j	beq_cont.22556
beq_else.22555:
	bnei	$s2, 2, beq_else.22593
	addi	$a2, $zero, 4
	faddi	$f0, $fzero, $fi0
	sw	$a1, 1($sp)
	sw	$v1, 2($sp)
	sw	$v0, 3($sp)
	sw	$at, 4($sp)
	add	$a0, $zero, $a2
	sw	$ra, 9($sp)
	jal	min_caml_create_float_array
	lw	$ra, 9($sp)
	lw	$a1, 4($sp)
	lwc1	$f0, 0($a1)
	lw	$a2, 3($sp)
	lw	$v0, 4($a2)
	lwc1	$f1, 0($v0)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 1($a1)
	lwc1	$f2, 1($v0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 2($a1)
	lwc1	$f2, 2($v0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	bflt	$fzero, $f0, beq_else.22595
	addi	$a1, $zero, 0
	j	beq_cont.22596
beq_else.22595:
	addi	$a1, $zero, 1
beq_cont.22596:
	bnei	$a1, 0, beq_else.22597
	swc1	$fzero, 0($a0)
	j	beq_cont.22598
beq_else.22597:
	fdivi2	$f1, $fi20, $f0
	swc1	$f1, 0($a0)
	lwc1	$f1, 0($v0)
	div.s	$f1, $f1, $f0
	sub.s	$f1, $fzero, $f1
	swc1	$f1, 1($a0)
	lwc1	$f1, 1($v0)
	div.s	$f1, $f1, $f0
	sub.s	$f1, $fzero, $f1
	swc1	$f1, 2($a0)
	lwc1	$f1, 2($v0)
	div.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 3($a0)
beq_cont.22598:
	lw	$a1, 1($sp)
	lw	$a2, 2($sp)
	sw2	$a0, $a2, $a1
	j	beq_cont.22594
beq_else.22593:
	addi	$a2, $zero, 5
	faddi	$f0, $fzero, $fi0
	sw	$a1, 1($sp)
	sw	$v1, 2($sp)
	sw	$v0, 3($sp)
	sw	$at, 4($sp)
	add	$a0, $zero, $a2
	sw	$ra, 9($sp)
	jal	min_caml_create_float_array
	lw	$ra, 9($sp)
	lw	$a1, 4($sp)
	lwc1	$f0, 0($a1)
	lwc1	$f1, 1($a1)
	lwc1	$f2, 2($a1)
	mul.s	$f3, $f0, $f0
	lw	$a2, 3($sp)
	lw	$v0, 4($a2)
	lwc1	$f4, 0($v0)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lwc1	$f5, 1($v0)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lwc1	$f5, 2($v0)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$v0, 3($a2)
	bnei	$v0, 0, beq_else.22599
	add.s	$f0, $f3, $fzero
	j	beq_cont.22600
beq_else.22599:
	mul.s	$f4, $f1, $f2
	lw	$v0, 9($a2)
	lwc1	$f5, 0($v0)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lwc1	$f4, 1($v0)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 2($v0)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
beq_cont.22600:
	lwc1	$f1, 0($a1)
	lw	$v0, 4($a2)
	lwc1	$f2, 0($v0)
	mul.s	$f1, $f1, $f2
	sub.s	$f1, $fzero, $f1
	lwc1	$f2, 1($a1)
	lwc1	$f3, 1($v0)
	mul.s	$f2, $f2, $f3
	sub.s	$f2, $fzero, $f2
	lwc1	$f3, 2($a1)
	lwc1	$f4, 2($v0)
	mul.s	$f3, $f3, $f4
	sub.s	$f3, $fzero, $f3
	swc1	$f0, 0($a0)
	lw	$v0, 3($a2)
	bnei	$v0, 0, beq_else.22601
	swc1	$f1, 1($a0)
	swc1	$f2, 2($a0)
	swc1	$f3, 3($a0)
	j	beq_cont.22602
beq_else.22601:
	lwc1	$f4, 2($a1)
	lw	$v0, 9($a2)
	lwc1	$f5, 1($v0)
	mul.s	$f4, $f4, $f5
	lwc1	$f5, 1($a1)
	lwc1	$f6, 2($v0)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	fmuli	$f4, $f4, $fi13
	sub.s	$f1, $f1, $f4
	swc1	$f1, 1($a0)
	lwc1	$f1, 2($a1)
	lwc1	$f4, 0($v0)
	mul.s	$f1, $f1, $f4
	lwc1	$f4, 0($a1)
	lwc1	$f5, 2($v0)
	mul.s	$f4, $f4, $f5
	add.s	$f1, $f1, $f4
	fmuli	$f1, $f1, $fi13
	sub.s	$f1, $f2, $f1
	swc1	$f1, 2($a0)
	lwc1	$f1, 1($a1)
	lwc1	$f2, 0($v0)
	mul.s	$f1, $f1, $f2
	lwc1	$f2, 0($a1)
	lwc1	$f4, 1($v0)
	mul.s	$f2, $f2, $f4
	add.s	$f1, $f1, $f2
	fmuli	$f1, $f1, $fi13
	sub.s	$f1, $f3, $f1
	swc1	$f1, 3($a0)
beq_cont.22602:
	bfeq	$f0, $fzero, c.eq_else.22603
	addi	$a1, $zero, 0
	j	c.eq_cont.22604
c.eq_else.22603:
	addi	$a1, $zero, 1
c.eq_cont.22604:
	bnei	$a1, 0, beq_cont.22606
	fdivi2	$f0, $fi7, $f0
	swc1	$f0, 4($a0)
beq_cont.22606:
	lw	$a1, 1($sp)
	lw	$a2, 2($sp)
	sw2	$a0, $a2, $a1
beq_cont.22594:
beq_cont.22556:
	addi	$a1, $a1, -1
	lw	$a0, 0($sp)
	j	iter_setup_dirvec_constants.2890
blti_true.22554:
	jr	$ra
setup_startp_constants.2895:
	addi	$a2, $zero, 112
	blti	$a1, 0, blti_true.22608
	lw2	$v0, $a2, $a1
	lw	$v1, 10($v0)
	lw	$at, 1($v0)
	lwc1	$f0, 0($a0)
	lw	$s2, 5($v0)
	lwc1	$f1, 0($s2)
	sub.s	$f0, $f0, $f1
	swc1	$f0, 0($v1)
	lwc1	$f0, 1($a0)
	lwc1	$f1, 1($s2)
	sub.s	$f0, $f0, $f1
	swc1	$f0, 1($v1)
	lwc1	$f0, 2($a0)
	lwc1	$f1, 2($s2)
	sub.s	$f0, $f0, $f1
	swc1	$f0, 2($v1)
	bnei	$at, 2, beq_else.22609
	lw	$v0, 4($v0)
	lwc1	$f0, 0($v1)
	lwc1	$f1, 1($v1)
	lwc1	$f2, 2($v1)
	lwc1	$f3, 0($v0)
	mul.s	$f0, $f3, $f0
	lwc1	$f3, 1($v0)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 2($v0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 3($v1)
	j	beq_cont.22610
beq_else.22609:
	addi	$a2, $zero, 2
	blt	$a2, $at, beq_else.22611
	j	beq_cont.22612
beq_else.22611:
	lwc1	$f0, 0($v1)
	lwc1	$f1, 1($v1)
	lwc1	$f2, 2($v1)
	mul.s	$f3, $f0, $f0
	lw	$s2, 4($v0)
	lwc1	$f4, 0($s2)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lwc1	$f5, 1($s2)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lwc1	$f5, 2($s2)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$s2, 3($v0)
	bnei	$s2, 0, beq_else.22613
	add.s	$f0, $f3, $fzero
	j	beq_cont.22614
beq_else.22613:
	mul.s	$f4, $f1, $f2
	lw	$s2, 9($v0)
	lwc1	$f5, 0($s2)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lwc1	$f4, 1($s2)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$v0, 9($v0)
	lwc1	$f1, 2($v0)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
beq_cont.22614:
	bnei	$at, 3, beq_else.22615
	fsubi	$f0, $f0, $fi7
	j	beq_cont.22616
beq_else.22615:
beq_cont.22616:
	swc1	$f0, 3($v1)
beq_cont.22612:
beq_cont.22610:
	addi	$a1, $a1, -1
	j	setup_startp_constants.2895
blti_true.22608:
	jr	$ra
check_all_inside.2920:
	addi	$a2, $zero, 112
	lw2	$v0, $a1, $a0
	addi	$s1, $zero, -1
	bne	$v0, $s1, bne_else.22618
	addi	$a0, $zero, 1
	jr	$ra
bne_else.22618:
	lw2	$v0, $a2, $v0
	lw	$v1, 5($v0)
	lwc1	$f3, 0($v1)
	sub.s	$f3, $f0, $f3
	lwc1	$f4, 1($v1)
	sub.s	$f4, $f1, $f4
	lwc1	$f5, 2($v1)
	sub.s	$f5, $f2, $f5
	lw	$v1, 1($v0)
	bnei	$v1, 1, beq_else.22619
	bflt	$f3, $fzero, beq_else.22621
	j	beq_cont.22622
beq_else.22621:
	sub.s	$f3, $fzero, $f3
beq_cont.22622:
	lw	$v1, 4($v0)
	lwc1	$f6, 0($v1)
	bflt	$f3, $f6, beq_else.22623
	addi	$a2, $zero, 0
	j	beq_cont.22624
beq_else.22623:
	addi	$a2, $zero, 1
beq_cont.22624:
	bnei	$a2, 0, beq_else.22625
	j	beq_cont.22626
beq_else.22625:
	bflt	$f4, $fzero, beq_else.22627
	add.s	$f3, $f4, $fzero
	j	beq_cont.22628
beq_else.22627:
	sub.s	$f3, $fzero, $f4
beq_cont.22628:
	lwc1	$f4, 1($v1)
	bflt	$f3, $f4, beq_else.22629
	addi	$a2, $zero, 0
	j	beq_cont.22630
beq_else.22629:
	addi	$a2, $zero, 1
beq_cont.22630:
	bnei	$a2, 0, beq_else.22631
	j	beq_cont.22632
beq_else.22631:
	bflt	$f5, $fzero, beq_else.22633
	add.s	$f3, $f5, $fzero
	j	beq_cont.22634
beq_else.22633:
	sub.s	$f3, $fzero, $f5
beq_cont.22634:
	lwc1	$f4, 2($v1)
	bflt	$f3, $f4, beq_else.22635
	addi	$a2, $zero, 0
	j	beq_cont.22636
beq_else.22635:
	addi	$a2, $zero, 1
beq_cont.22636:
beq_cont.22632:
beq_cont.22626:
	bnei	$a2, 0, beq_else.22637
	lw	$v0, 6($v0)
	bnei	$v0, 0, beq_else.22639
	addi	$a2, $zero, 1
	j	beq_cont.22640
beq_else.22639:
	addi	$a2, $zero, 0
beq_cont.22640:
	j	beq_cont.22638
beq_else.22637:
	lw	$v0, 6($v0)
	add	$a2, $v0, $zero
beq_cont.22638:
	j	beq_cont.22620
beq_else.22619:
	bnei	$v1, 2, beq_else.22641
	lw	$v1, 4($v0)
	lwc1	$f6, 0($v1)
	mul.s	$f3, $f6, $f3
	lwc1	$f6, 1($v1)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwc1	$f4, 2($v1)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$v0, 6($v0)
	bflt	$f3, $fzero, beq_else.22643
	addi	$a2, $zero, 0
	j	beq_cont.22644
beq_else.22643:
	addi	$a2, $zero, 1
beq_cont.22644:
	bnei	$v0, 0, beq_else.22645
	j	beq_cont.22646
beq_else.22645:
	bnei	$a2, 0, beq_else.22647
	addi	$a2, $zero, 1
	j	beq_cont.22648
beq_else.22647:
	addi	$a2, $zero, 0
beq_cont.22648:
beq_cont.22646:
	bnei	$a2, 0, beq_else.22649
	addi	$a2, $zero, 1
	j	beq_cont.22650
beq_else.22649:
	addi	$a2, $zero, 0
beq_cont.22650:
	j	beq_cont.22642
beq_else.22641:
	mul.s	$f6, $f3, $f3
	lw	$v1, 4($v0)
	lwc1	$f7, 0($v1)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lwc1	$f8, 1($v1)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lwc1	$f8, 2($v1)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$v1, 3($v0)
	bnei	$v1, 0, beq_else.22651
	add.s	$f3, $f6, $fzero
	j	beq_cont.22652
beq_else.22651:
	mul.s	$f7, $f4, $f5
	lw	$v1, 9($v0)
	lwc1	$f8, 0($v1)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lwc1	$f7, 1($v1)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 2($v1)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
beq_cont.22652:
	lw	$v1, 1($v0)
	bnei	$v1, 3, beq_else.22653
	fsubi	$f3, $f3, $fi7
	j	beq_cont.22654
beq_else.22653:
beq_cont.22654:
	lw	$v0, 6($v0)
	bflt	$f3, $fzero, beq_else.22655
	addi	$a2, $zero, 0
	j	beq_cont.22656
beq_else.22655:
	addi	$a2, $zero, 1
beq_cont.22656:
	bnei	$v0, 0, beq_else.22657
	j	beq_cont.22658
beq_else.22657:
	bnei	$a2, 0, beq_else.22659
	addi	$a2, $zero, 1
	j	beq_cont.22660
beq_else.22659:
	addi	$a2, $zero, 0
beq_cont.22660:
beq_cont.22658:
	bnei	$a2, 0, beq_else.22661
	addi	$a2, $zero, 1
	j	beq_cont.22662
beq_else.22661:
	addi	$a2, $zero, 0
beq_cont.22662:
beq_cont.22642:
beq_cont.22620:
	bnei	$a2, 0, bne_else.22663
	addi	$a0, $a0, 1
	j	check_all_inside.2920
bne_else.22663:
	addi	$a0, $zero, 0
	jr	$ra
shadow_check_and_group.2926:
	addi	$a2, $zero, 112
	lw2	$v0, $a1, $a0
	addi	$s1, $zero, -1
	bne	$v0, $s1, bne_else.22664
	addi	$a0, $zero, 0
	jr	$ra
bne_else.22664:
	lw2	$v1, $a2, $v0
	lwc1	$f0, 238($zero)
	lw	$at, 5($v1)
	lwc1	$f1, 0($at)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 239($zero)
	lwc1	$f2, 1($at)
	sub.s	$f1, $f1, $f2
	lwc1	$f2, 240($zero)
	lwc1	$f3, 2($at)
	sub.s	$f2, $f2, $f3
	lw	$a3, 348($zero)
	lw2	$at, $a3, $v0
	lw	$s2, 1($v1)
	sw	$a1, 0($sp)
	sw	$a0, 1($sp)
	sw	$v0, 2($sp)
	sw	$a2, 3($sp)
	bnei	$s2, 1, beq_else.22665
	lw	$a3, 347($zero)
	lwc1	$f3, 0($at)
	sub.s	$f3, $f3, $f0
	lwc1	$f4, 1($at)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 1($a3)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	bflt	$f4, $fzero, beq_else.22667
	j	beq_cont.22668
beq_else.22667:
	sub.s	$f4, $fzero, $f4
beq_cont.22668:
	lw	$s2, 4($v1)
	lwc1	$f5, 1($s2)
	bflt	$f4, $f5, beq_else.22669
	addi	$t0, $zero, 0
	j	beq_cont.22670
beq_else.22669:
	addi	$t0, $zero, 1
beq_cont.22670:
	bnei	$t0, 0, beq_else.22671
	j	beq_cont.22672
beq_else.22671:
	lwc1	$f4, 2($a3)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	bflt	$f4, $fzero, beq_else.22673
	j	beq_cont.22674
beq_else.22673:
	sub.s	$f4, $fzero, $f4
beq_cont.22674:
	lwc1	$f5, 2($s2)
	bflt	$f4, $f5, beq_else.22675
	addi	$t0, $zero, 0
	j	beq_cont.22676
beq_else.22675:
	addi	$t0, $zero, 1
beq_cont.22676:
	bnei	$t0, 0, beq_else.22677
	j	beq_cont.22678
beq_else.22677:
	lwc1	$f4, 1($at)
	bfeq	$f4, $fzero, c.eq_else.22679
	addi	$t0, $zero, 0
	j	c.eq_cont.22680
c.eq_else.22679:
	addi	$t0, $zero, 1
c.eq_cont.22680:
	bnei	$t0, 0, beq_else.22681
	addi	$t0, $zero, 1
	j	beq_cont.22682
beq_else.22681:
	addi	$t0, $zero, 0
beq_cont.22682:
beq_cont.22678:
beq_cont.22672:
	bnei	$t0, 0, beq_else.22683
	lwc1	$f3, 2($at)
	sub.s	$f3, $f3, $f1
	lwc1	$f4, 3($at)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 0($a3)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	bflt	$f4, $fzero, beq_else.22685
	j	beq_cont.22686
beq_else.22685:
	sub.s	$f4, $fzero, $f4
beq_cont.22686:
	lw	$s2, 4($v1)
	lwc1	$f5, 0($s2)
	bflt	$f4, $f5, beq_else.22687
	j	beq_cont.22688
beq_else.22687:
	addi	$t0, $zero, 1
beq_cont.22688:
	bnei	$t0, 0, beq_else.22689
	j	beq_cont.22690
beq_else.22689:
	lwc1	$f4, 2($a3)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	bflt	$f4, $fzero, beq_else.22691
	j	beq_cont.22692
beq_else.22691:
	sub.s	$f4, $fzero, $f4
beq_cont.22692:
	lwc1	$f5, 2($s2)
	bflt	$f4, $f5, beq_else.22693
	addi	$t0, $zero, 0
	j	beq_cont.22694
beq_else.22693:
	addi	$t0, $zero, 1
beq_cont.22694:
	bnei	$t0, 0, beq_else.22695
	j	beq_cont.22696
beq_else.22695:
	lwc1	$f4, 3($at)
	bfeq	$f4, $fzero, c.eq_else.22697
	addi	$t0, $zero, 0
	j	c.eq_cont.22698
c.eq_else.22697:
	addi	$t0, $zero, 1
c.eq_cont.22698:
	bnei	$t0, 0, beq_else.22699
	addi	$t0, $zero, 1
	j	beq_cont.22700
beq_else.22699:
	addi	$t0, $zero, 0
beq_cont.22700:
beq_cont.22696:
beq_cont.22690:
	bnei	$t0, 0, beq_else.22701
	lwc1	$f3, 4($at)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 5($at)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0($a3)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	bflt	$f0, $fzero, beq_else.22703
	j	beq_cont.22704
beq_else.22703:
	sub.s	$f0, $fzero, $f0
beq_cont.22704:
	lw	$s2, 4($v1)
	lwc1	$f3, 0($s2)
	bflt	$f0, $f3, beq_else.22705
	j	beq_cont.22706
beq_else.22705:
	addi	$t0, $zero, 1
beq_cont.22706:
	bnei	$t0, 0, beq_else.22707
	addi	$a3, $zero, 0
	j	beq_cont.22708
beq_else.22707:
	lwc1	$f0, 1($a3)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.22709
	j	beq_cont.22710
beq_else.22709:
	sub.s	$f0, $fzero, $f0
beq_cont.22710:
	lw	$v1, 4($v1)
	lwc1	$f1, 1($v1)
	bflt	$f0, $f1, beq_else.22711
	addi	$a3, $zero, 0
	j	beq_cont.22712
beq_else.22711:
	addi	$a3, $zero, 1
beq_cont.22712:
	bnei	$a3, 0, beq_else.22713
	j	beq_cont.22714
beq_else.22713:
	lwc1	$f0, 5($at)
	bfeq	$f0, $fzero, c.eq_else.22715
	addi	$a3, $zero, 0
	j	c.eq_cont.22716
c.eq_else.22715:
	addi	$a3, $zero, 1
c.eq_cont.22716:
	bnei	$a3, 0, beq_else.22717
	addi	$a3, $zero, 1
	j	beq_cont.22718
beq_else.22717:
	addi	$a3, $zero, 0
beq_cont.22718:
beq_cont.22714:
beq_cont.22708:
	bnei	$a3, 0, beq_else.22719
	addi	$a0, $zero, 0
	j	beq_cont.22720
beq_else.22719:
	swc1	$f2, 235($zero)
	addi	$a0, $zero, 3
beq_cont.22720:
	j	beq_cont.22702
beq_else.22701:
	swc1	$f3, 235($zero)
	addi	$a0, $zero, 2
beq_cont.22702:
	j	beq_cont.22684
beq_else.22683:
	swc1	$f3, 235($zero)
	addi	$a0, $zero, 1
beq_cont.22684:
	j	beq_cont.22666
beq_else.22665:
	bnei	$s2, 2, beq_else.22721
	lwc1	$f3, 0($at)
	bflt	$f3, $fzero, beq_else.22723
	addi	$a3, $zero, 0
	j	beq_cont.22724
beq_else.22723:
	addi	$a3, $zero, 1
beq_cont.22724:
	bnei	$a3, 0, beq_else.22725
	addi	$a0, $zero, 0
	j	beq_cont.22726
beq_else.22725:
	lwc1	$f3, 1($at)
	mul.s	$f0, $f3, $f0
	lwc1	$f3, 2($at)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 3($at)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
	addi	$a0, $zero, 1
beq_cont.22726:
	j	beq_cont.22722
beq_else.22721:
	lwc1	$f3, 0($at)
	bfeq	$f3, $fzero, c.eq_else.22727
	addi	$a3, $zero, 0
	j	c.eq_cont.22728
c.eq_else.22727:
	addi	$a3, $zero, 1
c.eq_cont.22728:
	bnei	$a3, 0, beq_else.22729
	lwc1	$f4, 1($at)
	mul.s	$f4, $f4, $f0
	lwc1	$f5, 2($at)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwc1	$f5, 3($at)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$s2, 4($v1)
	lwc1	$f6, 0($s2)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lwc1	$f7, 1($s2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lwc1	$f7, 2($s2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$s2, 3($v1)
	bnei	$s2, 0, beq_else.22731
	add.s	$f0, $f5, $fzero
	j	beq_cont.22732
beq_else.22731:
	mul.s	$f6, $f1, $f2
	lw	$s2, 9($v1)
	lwc1	$f7, 0($s2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lwc1	$f6, 1($s2)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 2($s2)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
beq_cont.22732:
	lw	$s2, 1($v1)
	bnei	$s2, 3, beq_else.22733
	fsubi	$f0, $f0, $fi7
	j	beq_cont.22734
beq_else.22733:
beq_cont.22734:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	bflt	$fzero, $f0, beq_else.22735
	addi	$a3, $zero, 0
	j	beq_cont.22736
beq_else.22735:
	addi	$a3, $zero, 1
beq_cont.22736:
	bnei	$a3, 0, beq_else.22737
	addi	$a0, $zero, 0
	j	beq_cont.22738
beq_else.22737:
	lw	$v1, 6($v1)
	bnei	$v1, 0, beq_else.22739
	sw	$at, 4($sp)
	swc1	$f4, 6($sp)
	sqrt	$f0, $f0
	lwc1	$f1, 6($sp)
	sub.s	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lwc1	$f1, 4($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
	j	beq_cont.22740
beq_else.22739:
	sw	$at, 4($sp)
	swc1	$f4, 6($sp)
	sqrt	$f0, $f0
	lwc1	$f1, 6($sp)
	add.s	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lwc1	$f1, 4($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
beq_cont.22740:
	addi	$a0, $zero, 1
beq_cont.22738:
	j	beq_cont.22730
beq_else.22729:
	addi	$a0, $zero, 0
beq_cont.22730:
beq_cont.22722:
beq_cont.22666:
	lwc1	$f0, 235($zero)
	bnei	$a0, 0, beq_else.22742
	j	beq_cont.22743
beq_else.22742:
	bflti2	$f0, $fi21, beq_else.22744
	addi	$a0, $zero, 0
	j	beq_cont.22745
beq_else.22744:
	addi	$a0, $zero, 1
beq_cont.22745:
beq_cont.22743:
	bnei	$a0, 0, bne_else.22746
	lw	$a0, 2($sp)
	lw	$a1, 3($sp)
	lw2	$v0, $a1, $a0
	lw	$v0, 6($v0)
	bnei	$v0, 0, bne_else.22747
	addi	$a0, $zero, 0
	jr	$ra
bne_else.22747:
	lw	$a0, 1($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_and_group.2926
bne_else.22746:
	faddi	$f0, $f0, $fi22
	lwc1	$f1, 178($zero)
	mul.s	$f1, $f1, $f0
	lwc1	$f2, 238($zero)
	add.s	$f1, $f1, $f2
	lwc1	$f2, 179($zero)
	mul.s	$f2, $f2, $f0
	lwc1	$f3, 239($zero)
	add.s	$f2, $f2, $f3
	lwc1	$f3, 180($zero)
	mul.s	$f0, $f3, $f0
	lwc1	$f3, 240($zero)
	add.s	$f0, $f0, $f3
	addi	$a0, $zero, 0
	lw	$a1, 0($sp)
	add.s	$f30, $fzero, $f2
	add.s	$f2, $fzero, $f0
	add.s	$f0, $fzero, $f1
	add.s	$f1, $fzero, $f30
	sw	$ra, 12($sp)
	addi	$sp, $sp, 13
	jal	check_all_inside.2920
	addi	$sp, $sp, -13
	lw	$ra, 12($sp)
	bnei	$a0, 0, bne_else.22748
	lw	$a0, 1($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_and_group.2926
bne_else.22748:
	addi	$a0, $zero, 1
	jr	$ra
shadow_check_one_or_group.2929:
	addi	$a2, $zero, 183
	lw2	$v0, $a1, $a0
	addi	$s1, $zero, -1
	bne	$v0, $s1, bne_else.22749
	addi	$a0, $zero, 0
	jr	$ra
bne_else.22749:
	lw2	$v0, $a2, $v0
	addi	$a2, $zero, 0
	sw	$a1, 0($sp)
	sw	$a0, 1($sp)
	add	$a1, $zero, $v0
	add	$a0, $zero, $a2
	sw	$ra, 6($sp)
	addi	$sp, $sp, 7
	jal	shadow_check_and_group.2926
	addi	$sp, $sp, -7
	lw	$ra, 6($sp)
	bnei	$a0, 0, bne_else.22750
	lw	$a0, 1($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_one_or_group.2929
bne_else.22750:
	addi	$a0, $zero, 1
	jr	$ra
shadow_check_one_or_matrix.2932:
	addi	$a2, $zero, 112
	lw2	$v0, $a1, $a0
	lw	$v1, 0($v0)
	addi	$s1, $zero, -1
	bne	$v1, $s1, bne_else.22751
	addi	$a0, $zero, 0
	jr	$ra
bne_else.22751:
	sw	$v0, 0($sp)
	sw	$a1, 1($sp)
	sw	$a0, 2($sp)
	addi	$s1, $zero, 99
	bne	$v1, $s1, beq_else.22752
	addi	$a0, $zero, 1
	j	beq_cont.22753
beq_else.22752:
	lw2	$at, $a2, $v1
	lwc1	$f0, 238($zero)
	lw	$s2, 5($at)
	lwc1	$f1, 0($s2)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 239($zero)
	lwc1	$f2, 1($s2)
	sub.s	$f1, $f1, $f2
	lwc1	$f2, 240($zero)
	lwc1	$f3, 2($s2)
	sub.s	$f2, $f2, $f3
	lw	$a2, 348($zero)
	lw2	$v1, $a2, $v1
	lw	$s2, 1($at)
	bnei	$s2, 1, beq_else.22754
	lw	$a2, 347($zero)
	lwc1	$f3, 0($v1)
	sub.s	$f3, $f3, $f0
	lwc1	$f4, 1($v1)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 1($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	bflt	$f4, $fzero, beq_else.22756
	j	beq_cont.22757
beq_else.22756:
	sub.s	$f4, $fzero, $f4
beq_cont.22757:
	lw	$s2, 4($at)
	lwc1	$f5, 1($s2)
	bflt	$f4, $f5, beq_else.22758
	addi	$a3, $zero, 0
	j	beq_cont.22759
beq_else.22758:
	addi	$a3, $zero, 1
beq_cont.22759:
	bnei	$a3, 0, beq_else.22760
	j	beq_cont.22761
beq_else.22760:
	lwc1	$f4, 2($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	bflt	$f4, $fzero, beq_else.22762
	j	beq_cont.22763
beq_else.22762:
	sub.s	$f4, $fzero, $f4
beq_cont.22763:
	lwc1	$f5, 2($s2)
	bflt	$f4, $f5, beq_else.22764
	addi	$a3, $zero, 0
	j	beq_cont.22765
beq_else.22764:
	addi	$a3, $zero, 1
beq_cont.22765:
	bnei	$a3, 0, beq_else.22766
	j	beq_cont.22767
beq_else.22766:
	lwc1	$f4, 1($v1)
	bfeq	$f4, $fzero, c.eq_else.22768
	addi	$a3, $zero, 0
	j	c.eq_cont.22769
c.eq_else.22768:
	addi	$a3, $zero, 1
c.eq_cont.22769:
	bnei	$a3, 0, beq_else.22770
	addi	$a3, $zero, 1
	j	beq_cont.22771
beq_else.22770:
	addi	$a3, $zero, 0
beq_cont.22771:
beq_cont.22767:
beq_cont.22761:
	bnei	$a3, 0, beq_else.22772
	lwc1	$f3, 2($v1)
	sub.s	$f3, $f3, $f1
	lwc1	$f4, 3($v1)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 0($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	bflt	$f4, $fzero, beq_else.22774
	j	beq_cont.22775
beq_else.22774:
	sub.s	$f4, $fzero, $f4
beq_cont.22775:
	lw	$s2, 4($at)
	lwc1	$f5, 0($s2)
	bflt	$f4, $f5, beq_else.22776
	j	beq_cont.22777
beq_else.22776:
	addi	$a3, $zero, 1
beq_cont.22777:
	bnei	$a3, 0, beq_else.22778
	j	beq_cont.22779
beq_else.22778:
	lwc1	$f4, 2($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	bflt	$f4, $fzero, beq_else.22780
	j	beq_cont.22781
beq_else.22780:
	sub.s	$f4, $fzero, $f4
beq_cont.22781:
	lwc1	$f5, 2($s2)
	bflt	$f4, $f5, beq_else.22782
	addi	$a3, $zero, 0
	j	beq_cont.22783
beq_else.22782:
	addi	$a3, $zero, 1
beq_cont.22783:
	bnei	$a3, 0, beq_else.22784
	j	beq_cont.22785
beq_else.22784:
	lwc1	$f4, 3($v1)
	bfeq	$f4, $fzero, c.eq_else.22786
	addi	$a3, $zero, 0
	j	c.eq_cont.22787
c.eq_else.22786:
	addi	$a3, $zero, 1
c.eq_cont.22787:
	bnei	$a3, 0, beq_else.22788
	addi	$a3, $zero, 1
	j	beq_cont.22789
beq_else.22788:
	addi	$a3, $zero, 0
beq_cont.22789:
beq_cont.22785:
beq_cont.22779:
	bnei	$a3, 0, beq_else.22790
	lwc1	$f3, 4($v1)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 5($v1)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0($a2)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	bflt	$f0, $fzero, beq_else.22792
	j	beq_cont.22793
beq_else.22792:
	sub.s	$f0, $fzero, $f0
beq_cont.22793:
	lw	$s2, 4($at)
	lwc1	$f3, 0($s2)
	bflt	$f0, $f3, beq_else.22794
	j	beq_cont.22795
beq_else.22794:
	addi	$a3, $zero, 1
beq_cont.22795:
	bnei	$a3, 0, beq_else.22796
	addi	$a2, $zero, 0
	j	beq_cont.22797
beq_else.22796:
	lwc1	$f0, 1($a2)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.22798
	j	beq_cont.22799
beq_else.22798:
	sub.s	$f0, $fzero, $f0
beq_cont.22799:
	lw	$at, 4($at)
	lwc1	$f1, 1($at)
	bflt	$f0, $f1, beq_else.22800
	addi	$a2, $zero, 0
	j	beq_cont.22801
beq_else.22800:
	addi	$a2, $zero, 1
beq_cont.22801:
	bnei	$a2, 0, beq_else.22802
	j	beq_cont.22803
beq_else.22802:
	lwc1	$f0, 5($v1)
	bfeq	$f0, $fzero, c.eq_else.22804
	addi	$a2, $zero, 0
	j	c.eq_cont.22805
c.eq_else.22804:
	addi	$a2, $zero, 1
c.eq_cont.22805:
	bnei	$a2, 0, beq_else.22806
	addi	$a2, $zero, 1
	j	beq_cont.22807
beq_else.22806:
	addi	$a2, $zero, 0
beq_cont.22807:
beq_cont.22803:
beq_cont.22797:
	bnei	$a2, 0, beq_else.22808
	addi	$a0, $zero, 0
	j	beq_cont.22809
beq_else.22808:
	swc1	$f2, 235($zero)
	addi	$a0, $zero, 3
beq_cont.22809:
	j	beq_cont.22791
beq_else.22790:
	swc1	$f3, 235($zero)
	addi	$a0, $zero, 2
beq_cont.22791:
	j	beq_cont.22773
beq_else.22772:
	swc1	$f3, 235($zero)
	addi	$a0, $zero, 1
beq_cont.22773:
	j	beq_cont.22755
beq_else.22754:
	bnei	$s2, 2, beq_else.22810
	lwc1	$f3, 0($v1)
	bflt	$f3, $fzero, beq_else.22812
	addi	$a2, $zero, 0
	j	beq_cont.22813
beq_else.22812:
	addi	$a2, $zero, 1
beq_cont.22813:
	bnei	$a2, 0, beq_else.22814
	addi	$a0, $zero, 0
	j	beq_cont.22815
beq_else.22814:
	lwc1	$f3, 1($v1)
	mul.s	$f0, $f3, $f0
	lwc1	$f3, 2($v1)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 3($v1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
	addi	$a0, $zero, 1
beq_cont.22815:
	j	beq_cont.22811
beq_else.22810:
	lwc1	$f3, 0($v1)
	bfeq	$f3, $fzero, c.eq_else.22816
	addi	$a2, $zero, 0
	j	c.eq_cont.22817
c.eq_else.22816:
	addi	$a2, $zero, 1
c.eq_cont.22817:
	bnei	$a2, 0, beq_else.22818
	lwc1	$f4, 1($v1)
	mul.s	$f4, $f4, $f0
	lwc1	$f5, 2($v1)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwc1	$f5, 3($v1)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$s2, 4($at)
	lwc1	$f6, 0($s2)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lwc1	$f7, 1($s2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lwc1	$f7, 2($s2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$s2, 3($at)
	bnei	$s2, 0, beq_else.22820
	add.s	$f0, $f5, $fzero
	j	beq_cont.22821
beq_else.22820:
	mul.s	$f6, $f1, $f2
	lw	$s2, 9($at)
	lwc1	$f7, 0($s2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lwc1	$f6, 1($s2)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 2($s2)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
beq_cont.22821:
	lw	$s2, 1($at)
	bnei	$s2, 3, beq_else.22822
	fsubi	$f0, $f0, $fi7
	j	beq_cont.22823
beq_else.22822:
beq_cont.22823:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	bflt	$fzero, $f0, beq_else.22824
	addi	$a2, $zero, 0
	j	beq_cont.22825
beq_else.22824:
	addi	$a2, $zero, 1
beq_cont.22825:
	bnei	$a2, 0, beq_else.22826
	addi	$a0, $zero, 0
	j	beq_cont.22827
beq_else.22826:
	lw	$at, 6($at)
	bnei	$at, 0, beq_else.22828
	sw	$v1, 3($sp)
	swc1	$f4, 4($sp)
	sqrt	$f0, $f0
	lwc1	$f1, 4($sp)
	sub.s	$f0, $f1, $f0
	lw	$a0, 3($sp)
	lwc1	$f1, 4($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
	j	beq_cont.22829
beq_else.22828:
	sw	$v1, 3($sp)
	swc1	$f4, 4($sp)
	sqrt	$f0, $f0
	lwc1	$f1, 4($sp)
	add.s	$f0, $f1, $f0
	lw	$a0, 3($sp)
	lwc1	$f1, 4($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
beq_cont.22829:
	addi	$a0, $zero, 1
beq_cont.22827:
	j	beq_cont.22819
beq_else.22818:
	addi	$a0, $zero, 0
beq_cont.22819:
beq_cont.22811:
beq_cont.22755:
	bnei	$a0, 0, beq_else.22830
	j	beq_cont.22831
beq_else.22830:
	lwc1	$f0, 235($zero)
	bflti2	$f0, $fi23, beq_else.22832
	addi	$a0, $zero, 0
	j	beq_cont.22833
beq_else.22832:
	addi	$a0, $zero, 1
beq_cont.22833:
	bnei	$a0, 0, beq_else.22834
	j	beq_cont.22835
beq_else.22834:
	addi	$a0, $zero, 1
	lw	$a1, 0($sp)
	sw	$ra, 10($sp)
	addi	$sp, $sp, 11
	jal	shadow_check_one_or_group.2929
	addi	$sp, $sp, -11
	lw	$ra, 10($sp)
	bnei	$a0, 0, beq_else.22836
	j	beq_cont.22837
beq_else.22836:
	addi	$a0, $zero, 1
beq_cont.22837:
beq_cont.22835:
beq_cont.22831:
beq_cont.22753:
	bnei	$a0, 0, bne_else.22838
	lw	$a0, 2($sp)
	addi	$a0, $a0, 1
	lw	$a1, 1($sp)
	j	shadow_check_one_or_matrix.2932
bne_else.22838:
	addi	$a0, $zero, 1
	lw	$a1, 0($sp)
	sw	$ra, 10($sp)
	addi	$sp, $sp, 11
	jal	shadow_check_one_or_group.2929
	addi	$sp, $sp, -11
	lw	$ra, 10($sp)
	bnei	$a0, 0, bne_else.22839
	lw	$a0, 2($sp)
	addi	$a0, $a0, 1
	lw	$a1, 1($sp)
	j	shadow_check_one_or_matrix.2932
bne_else.22839:
	addi	$a0, $zero, 1
	jr	$ra
solve_each_element.2935:
	addi	$a3, $zero, 112
	lw2	$v0, $a1, $a0
	addi	$s1, $zero, -1
	bne	$v0, $s1, bne_else.22840
	jr	$ra
bne_else.22840:
	lw2	$v1, $a3, $v0
	lwc1	$f0, 259($zero)
	lw	$at, 5($v1)
	lwc1	$f1, 0($at)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 260($zero)
	lwc1	$f2, 1($at)
	sub.s	$f1, $f1, $f2
	lwc1	$f2, 261($zero)
	lwc1	$f3, 2($at)
	sub.s	$f2, $f2, $f3
	lw	$at, 1($v1)
	sw	$a2, 0($sp)
	sw	$a1, 1($sp)
	sw	$a0, 2($sp)
	sw	$v0, 3($sp)
	sw	$a3, 4($sp)
	bnei	$at, 1, beq_else.22842
	lwc1	$f3, 0($a2)
	bfeq	$f3, $fzero, c.eq_else.22844
	addi	$t0, $zero, 0
	j	c.eq_cont.22845
c.eq_else.22844:
	addi	$t0, $zero, 1
c.eq_cont.22845:
	bnei	$t0, 0, beq_else.22846
	lw	$at, 4($v1)
	lw	$s2, 6($v1)
	lwc1	$f3, 0($a2)
	bflt	$f3, $fzero, beq_else.22848
	j	beq_cont.22849
beq_else.22848:
	addi	$t0, $zero, 1
beq_cont.22849:
	bnei	$s2, 0, beq_else.22850
	j	beq_cont.22851
beq_else.22850:
	bnei	$t0, 0, beq_else.22852
	addi	$t0, $zero, 1
	j	beq_cont.22853
beq_else.22852:
	addi	$t0, $zero, 0
beq_cont.22853:
beq_cont.22851:
	lwc1	$f3, 0($at)
	bnei	$t0, 0, beq_else.22854
	sub.s	$f3, $fzero, $f3
	j	beq_cont.22855
beq_else.22854:
beq_cont.22855:
	sub.s	$f3, $f3, $f0
	lwc1	$f4, 0($a2)
	div.s	$f3, $f3, $f4
	lwc1	$f4, 1($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	bflt	$f4, $fzero, beq_else.22856
	j	beq_cont.22857
beq_else.22856:
	sub.s	$f4, $fzero, $f4
beq_cont.22857:
	lwc1	$f5, 1($at)
	bflt	$f4, $f5, beq_else.22858
	addi	$t0, $zero, 0
	j	beq_cont.22859
beq_else.22858:
	addi	$t0, $zero, 1
beq_cont.22859:
	bnei	$t0, 0, beq_else.22860
	j	beq_cont.22861
beq_else.22860:
	lwc1	$f4, 2($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	bflt	$f4, $fzero, beq_else.22862
	j	beq_cont.22863
beq_else.22862:
	sub.s	$f4, $fzero, $f4
beq_cont.22863:
	lwc1	$f5, 2($at)
	bflt	$f4, $f5, beq_else.22864
	addi	$t0, $zero, 0
	j	beq_cont.22865
beq_else.22864:
	addi	$t0, $zero, 1
beq_cont.22865:
	bnei	$t0, 0, beq_else.22866
	j	beq_cont.22867
beq_else.22866:
	swc1	$f3, 235($zero)
	addi	$t0, $zero, 1
beq_cont.22867:
beq_cont.22861:
	j	beq_cont.22847
beq_else.22846:
	addi	$t0, $zero, 0
beq_cont.22847:
	bnei	$t0, 0, beq_else.22868
	lwc1	$f3, 1($a2)
	bfeq	$f3, $fzero, c.eq_else.22870
	j	c.eq_cont.22871
c.eq_else.22870:
	addi	$t0, $zero, 1
c.eq_cont.22871:
	bnei	$t0, 0, beq_else.22872
	lw	$at, 4($v1)
	lw	$s2, 6($v1)
	lwc1	$f3, 1($a2)
	bflt	$f3, $fzero, beq_else.22874
	j	beq_cont.22875
beq_else.22874:
	addi	$t0, $zero, 1
beq_cont.22875:
	bnei	$s2, 0, beq_else.22876
	j	beq_cont.22877
beq_else.22876:
	bnei	$t0, 0, beq_else.22878
	addi	$t0, $zero, 1
	j	beq_cont.22879
beq_else.22878:
	addi	$t0, $zero, 0
beq_cont.22879:
beq_cont.22877:
	lwc1	$f3, 1($at)
	bnei	$t0, 0, beq_else.22880
	sub.s	$f3, $fzero, $f3
	j	beq_cont.22881
beq_else.22880:
beq_cont.22881:
	sub.s	$f3, $f3, $f1
	lwc1	$f4, 1($a2)
	div.s	$f3, $f3, $f4
	lwc1	$f4, 2($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	bflt	$f4, $fzero, beq_else.22882
	j	beq_cont.22883
beq_else.22882:
	sub.s	$f4, $fzero, $f4
beq_cont.22883:
	lwc1	$f5, 2($at)
	bflt	$f4, $f5, beq_else.22884
	addi	$t0, $zero, 0
	j	beq_cont.22885
beq_else.22884:
	addi	$t0, $zero, 1
beq_cont.22885:
	bnei	$t0, 0, beq_else.22886
	j	beq_cont.22887
beq_else.22886:
	lwc1	$f4, 0($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	bflt	$f4, $fzero, beq_else.22888
	j	beq_cont.22889
beq_else.22888:
	sub.s	$f4, $fzero, $f4
beq_cont.22889:
	lwc1	$f5, 0($at)
	bflt	$f4, $f5, beq_else.22890
	addi	$t0, $zero, 0
	j	beq_cont.22891
beq_else.22890:
	addi	$t0, $zero, 1
beq_cont.22891:
	bnei	$t0, 0, beq_else.22892
	j	beq_cont.22893
beq_else.22892:
	swc1	$f3, 235($zero)
	addi	$t0, $zero, 1
beq_cont.22893:
beq_cont.22887:
	j	beq_cont.22873
beq_else.22872:
	addi	$t0, $zero, 0
beq_cont.22873:
	bnei	$t0, 0, beq_else.22894
	lwc1	$f3, 2($a2)
	bfeq	$f3, $fzero, c.eq_else.22896
	j	c.eq_cont.22897
c.eq_else.22896:
	addi	$t0, $zero, 1
c.eq_cont.22897:
	bnei	$t0, 0, beq_else.22898
	lw	$at, 4($v1)
	lw	$v1, 6($v1)
	lwc1	$f3, 2($a2)
	bflt	$f3, $fzero, beq_else.22900
	j	beq_cont.22901
beq_else.22900:
	addi	$t0, $zero, 1
beq_cont.22901:
	bnei	$v1, 0, beq_else.22902
	j	beq_cont.22903
beq_else.22902:
	bnei	$t0, 0, beq_else.22904
	addi	$t0, $zero, 1
	j	beq_cont.22905
beq_else.22904:
	addi	$t0, $zero, 0
beq_cont.22905:
beq_cont.22903:
	lwc1	$f3, 2($at)
	bnei	$t0, 0, beq_else.22906
	sub.s	$f3, $fzero, $f3
	j	beq_cont.22907
beq_else.22906:
beq_cont.22907:
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 2($a2)
	div.s	$f2, $f2, $f3
	lwc1	$f3, 0($a2)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	bflt	$f0, $fzero, beq_else.22908
	j	beq_cont.22909
beq_else.22908:
	sub.s	$f0, $fzero, $f0
beq_cont.22909:
	lwc1	$f3, 0($at)
	bflt	$f0, $f3, beq_else.22910
	addi	$t0, $zero, 0
	j	beq_cont.22911
beq_else.22910:
	addi	$t0, $zero, 1
beq_cont.22911:
	bnei	$t0, 0, beq_else.22912
	j	beq_cont.22913
beq_else.22912:
	lwc1	$f0, 1($a2)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.22914
	j	beq_cont.22915
beq_else.22914:
	sub.s	$f0, $fzero, $f0
beq_cont.22915:
	lwc1	$f1, 1($at)
	bflt	$f0, $f1, beq_else.22916
	addi	$t0, $zero, 0
	j	beq_cont.22917
beq_else.22916:
	addi	$t0, $zero, 1
beq_cont.22917:
	bnei	$t0, 0, beq_else.22918
	j	beq_cont.22919
beq_else.22918:
	swc1	$f2, 235($zero)
	addi	$t0, $zero, 1
beq_cont.22919:
beq_cont.22913:
	j	beq_cont.22899
beq_else.22898:
	addi	$t0, $zero, 0
beq_cont.22899:
	bnei	$t0, 0, beq_else.22920
	addi	$a0, $zero, 0
	j	beq_cont.22921
beq_else.22920:
	addi	$a0, $zero, 3
beq_cont.22921:
	j	beq_cont.22895
beq_else.22894:
	addi	$a0, $zero, 2
beq_cont.22895:
	j	beq_cont.22869
beq_else.22868:
	addi	$a0, $zero, 1
beq_cont.22869:
	j	beq_cont.22843
beq_else.22842:
	bnei	$at, 2, beq_else.22922
	lw	$v1, 4($v1)
	lwc1	$f3, 0($a2)
	lwc1	$f4, 0($v1)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 1($a2)
	lwc1	$f5, 1($v1)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lwc1	$f4, 2($a2)
	lwc1	$f5, 2($v1)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	bflt	$fzero, $f3, beq_else.22924
	addi	$t0, $zero, 0
	j	beq_cont.22925
beq_else.22924:
	addi	$t0, $zero, 1
beq_cont.22925:
	bnei	$t0, 0, beq_else.22926
	addi	$a0, $zero, 0
	j	beq_cont.22927
beq_else.22926:
	lwc1	$f4, 0($v1)
	mul.s	$f0, $f4, $f0
	lwc1	$f4, 1($v1)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 2($v1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	div.s	$f0, $f0, $f3
	swc1	$f0, 235($zero)
	addi	$a0, $zero, 1
beq_cont.22927:
	j	beq_cont.22923
beq_else.22922:
	lwc1	$f3, 0($a2)
	lwc1	$f4, 1($a2)
	lwc1	$f5, 2($a2)
	mul.s	$f6, $f3, $f3
	lw	$at, 4($v1)
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lwc1	$f8, 1($at)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lwc1	$f8, 2($at)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$at, 3($v1)
	bnei	$at, 0, beq_else.22928
	add.s	$f3, $f6, $fzero
	j	beq_cont.22929
beq_else.22928:
	mul.s	$f7, $f4, $f5
	lw	$at, 9($v1)
	lwc1	$f8, 0($at)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lwc1	$f7, 1($at)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 2($at)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
beq_cont.22929:
	bfeq	$f3, $fzero, c.eq_else.22930
	addi	$t0, $zero, 0
	j	c.eq_cont.22931
c.eq_else.22930:
	addi	$t0, $zero, 1
c.eq_cont.22931:
	bnei	$t0, 0, beq_else.22932
	lwc1	$f4, 0($a2)
	lwc1	$f5, 1($a2)
	lwc1	$f6, 2($a2)
	mul.s	$f7, $f4, $f0
	lw	$at, 4($v1)
	lwc1	$f8, 0($at)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f1
	lwc1	$f9, 1($at)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f2
	lwc1	$f9, 2($at)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$at, 3($v1)
	bnei	$at, 0, beq_else.22934
	add.s	$f4, $f7, $fzero
	j	beq_cont.22935
beq_else.22934:
	mul.s	$f8, $f6, $f1
	mul.s	$f9, $f5, $f2
	add.s	$f8, $f8, $f9
	lw	$at, 9($v1)
	lwc1	$f9, 0($at)
	mul.s	$f8, $f8, $f9
	mul.s	$f9, $f4, $f2
	mul.s	$f6, $f6, $f0
	add.s	$f6, $f9, $f6
	lwc1	$f9, 1($at)
	mul.s	$f6, $f6, $f9
	add.s	$f6, $f8, $f6
	mul.s	$f4, $f4, $f1
	mul.s	$f5, $f5, $f0
	add.s	$f4, $f4, $f5
	lwc1	$f5, 2($at)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
	fmuli	$f4, $f4, $fi13
	add.s	$f4, $f7, $f4
beq_cont.22935:
	mul.s	$f5, $f0, $f0
	lw	$at, 4($v1)
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lwc1	$f7, 1($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lwc1	$f7, 2($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$at, 3($v1)
	bnei	$at, 0, beq_else.22936
	add.s	$f0, $f5, $fzero
	j	beq_cont.22937
beq_else.22936:
	mul.s	$f6, $f1, $f2
	lw	$at, 9($v1)
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lwc1	$f6, 1($at)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 2($at)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
beq_cont.22937:
	lw	$at, 1($v1)
	bnei	$at, 3, beq_else.22938
	fsubi	$f0, $f0, $fi7
	j	beq_cont.22939
beq_else.22938:
beq_cont.22939:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	bflt	$fzero, $f0, beq_else.22940
	addi	$t0, $zero, 0
	j	beq_cont.22941
beq_else.22940:
	addi	$t0, $zero, 1
beq_cont.22941:
	bnei	$t0, 0, beq_else.22942
	addi	$a0, $zero, 0
	j	beq_cont.22943
beq_else.22942:
	swc1	$f3, 6($sp)
	swc1	$f4, 8($sp)
	sw	$v1, 10($sp)
	sqrt	$f0, $f0
	lw	$a0, 10($sp)
	lw	$v0, 6($a0)
	bnei	$v0, 0, beq_else.22945
	sub.s	$f0, $fzero, $f0
	j	beq_cont.22946
beq_else.22945:
beq_cont.22946:
	lwc1	$f1, 8($sp)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 6($sp)
	div.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
	addi	$a0, $zero, 1
beq_cont.22943:
	j	beq_cont.22933
beq_else.22932:
	addi	$a0, $zero, 0
beq_cont.22933:
beq_cont.22923:
beq_cont.22843:
	bnei	$a0, 0, bne_else.22947
	lw	$a0, 3($sp)
	lw	$a1, 4($sp)
	lw2	$v0, $a1, $a0
	lw	$v0, 6($v0)
	bnei	$v0, 0, bne_else.22948
	jr	$ra
bne_else.22948:
	lw	$a0, 2($sp)
	addi	$a0, $a0, 1
	lw	$a1, 1($sp)
	lw	$a2, 0($sp)
	j	solve_each_element.2935
bne_else.22947:
	lwc1	$f0, 235($zero)
	bflt	$fzero, $f0, beq_else.22950
	addi	$a1, $zero, 0
	j	beq_cont.22951
beq_else.22950:
	addi	$a1, $zero, 1
beq_cont.22951:
	bnei	$a1, 0, beq_else.22952
	j	beq_cont.22953
beq_else.22952:
	lwc1	$f1, 237($zero)
	bflt	$f0, $f1, beq_else.22954
	addi	$a1, $zero, 0
	j	beq_cont.22955
beq_else.22954:
	addi	$a1, $zero, 1
beq_cont.22955:
	bnei	$a1, 0, beq_else.22956
	j	beq_cont.22957
beq_else.22956:
	faddi	$f0, $f0, $fi22
	lw	$a1, 0($sp)
	lwc1	$f1, 0($a1)
	mul.s	$f1, $f1, $f0
	lwc1	$f2, 259($zero)
	add.s	$f1, $f1, $f2
	lwc1	$f2, 1($a1)
	mul.s	$f2, $f2, $f0
	lwc1	$f3, 260($zero)
	add.s	$f2, $f2, $f3
	lwc1	$f3, 2($a1)
	mul.s	$f3, $f3, $f0
	lwc1	$f4, 261($zero)
	add.s	$f3, $f3, $f4
	addi	$a2, $zero, 0
	lw	$a3, 1($sp)
	sw	$a0, 11($sp)
	swc1	$f3, 12($sp)
	swc1	$f2, 14($sp)
	swc1	$f1, 16($sp)
	swc1	$f0, 18($sp)
	add	$a1, $zero, $a3
	add	$a0, $zero, $a2
	add.s	$f0, $fzero, $f1
	add.s	$f1, $fzero, $f2
	add.s	$f2, $fzero, $f3
	sw	$ra, 24($sp)
	addi	$sp, $sp, 25
	jal	check_all_inside.2920
	addi	$sp, $sp, -25
	lw	$ra, 24($sp)
	bnei	$a0, 0, beq_else.22958
	j	beq_cont.22959
beq_else.22958:
	lwc1	$f0, 18($sp)
	swc1	$f0, 237($zero)
	lwc1	$f0, 16($sp)
	swc1	$f0, 238($zero)
	lwc1	$f0, 14($sp)
	swc1	$f0, 239($zero)
	lwc1	$f0, 12($sp)
	swc1	$f0, 240($zero)
	lw	$a0, 3($sp)
	sw	$a0, 241($zero)
	lw	$a0, 11($sp)
	sw	$a0, 236($zero)
beq_cont.22959:
beq_cont.22957:
beq_cont.22953:
	lw	$a0, 2($sp)
	addi	$a0, $a0, 1
	lw	$a1, 1($sp)
	lw	$a2, 0($sp)
	j	solve_each_element.2935
solve_one_or_network.2939:
	addi	$a3, $zero, 183
	lw2	$v0, $a1, $a0
	addi	$s1, $zero, -1
	bne	$v0, $s1, bne_else.22960
	jr	$ra
bne_else.22960:
	lw2	$v0, $a3, $v0
	addi	$a3, $zero, 0
	sw	$a2, 0($sp)
	sw	$a1, 1($sp)
	sw	$a0, 2($sp)
	add	$a1, $zero, $v0
	add	$a0, $zero, $a3
	sw	$ra, 7($sp)
	addi	$sp, $sp, 8
	jal	solve_each_element.2935
	addi	$sp, $sp, -8
	lw	$ra, 7($sp)
	lw	$a0, 2($sp)
	addi	$a0, $a0, 1
	lw	$a1, 1($sp)
	lw	$a2, 0($sp)
	j	solve_one_or_network.2939
trace_or_matrix.2943:
	addi	$a3, $zero, 112
	lw2	$v0, $a1, $a0
	lw	$v1, 0($v0)
	addi	$s1, $zero, -1
	bne	$v1, $s1, bne_else.22962
	jr	$ra
bne_else.22962:
	sw	$a2, 0($sp)
	sw	$a1, 1($sp)
	sw	$a0, 2($sp)
	addi	$s1, $zero, 99
	bne	$v1, $s1, beq_else.22964
	addi	$a3, $zero, 1
	add	$a1, $zero, $v0
	add	$a0, $zero, $a3
	sw	$ra, 7($sp)
	addi	$sp, $sp, 8
	jal	solve_one_or_network.2939
	addi	$sp, $sp, -8
	lw	$ra, 7($sp)
	j	beq_cont.22965
beq_else.22964:
	lw2	$v1, $a3, $v1
	lwc1	$f0, 259($zero)
	lw	$at, 5($v1)
	lwc1	$f1, 0($at)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 260($zero)
	lwc1	$f2, 1($at)
	sub.s	$f1, $f1, $f2
	lwc1	$f2, 261($zero)
	lwc1	$f3, 2($at)
	sub.s	$f2, $f2, $f3
	lw	$at, 1($v1)
	sw	$v0, 3($sp)
	bnei	$at, 1, beq_else.22966
	lwc1	$f3, 0($a2)
	bfeq	$f3, $fzero, c.eq_else.22968
	addi	$a3, $zero, 0
	j	c.eq_cont.22969
c.eq_else.22968:
	addi	$a3, $zero, 1
c.eq_cont.22969:
	bnei	$a3, 0, beq_else.22970
	lw	$at, 4($v1)
	lw	$s2, 6($v1)
	lwc1	$f3, 0($a2)
	bflt	$f3, $fzero, beq_else.22972
	j	beq_cont.22973
beq_else.22972:
	addi	$a3, $zero, 1
beq_cont.22973:
	bnei	$s2, 0, beq_else.22974
	j	beq_cont.22975
beq_else.22974:
	bnei	$a3, 0, beq_else.22976
	addi	$a3, $zero, 1
	j	beq_cont.22977
beq_else.22976:
	addi	$a3, $zero, 0
beq_cont.22977:
beq_cont.22975:
	lwc1	$f3, 0($at)
	bnei	$a3, 0, beq_else.22978
	sub.s	$f3, $fzero, $f3
	j	beq_cont.22979
beq_else.22978:
beq_cont.22979:
	sub.s	$f3, $f3, $f0
	lwc1	$f4, 0($a2)
	div.s	$f3, $f3, $f4
	lwc1	$f4, 1($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	bflt	$f4, $fzero, beq_else.22980
	j	beq_cont.22981
beq_else.22980:
	sub.s	$f4, $fzero, $f4
beq_cont.22981:
	lwc1	$f5, 1($at)
	bflt	$f4, $f5, beq_else.22982
	addi	$a3, $zero, 0
	j	beq_cont.22983
beq_else.22982:
	addi	$a3, $zero, 1
beq_cont.22983:
	bnei	$a3, 0, beq_else.22984
	j	beq_cont.22985
beq_else.22984:
	lwc1	$f4, 2($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	bflt	$f4, $fzero, beq_else.22986
	j	beq_cont.22987
beq_else.22986:
	sub.s	$f4, $fzero, $f4
beq_cont.22987:
	lwc1	$f5, 2($at)
	bflt	$f4, $f5, beq_else.22988
	addi	$a3, $zero, 0
	j	beq_cont.22989
beq_else.22988:
	addi	$a3, $zero, 1
beq_cont.22989:
	bnei	$a3, 0, beq_else.22990
	j	beq_cont.22991
beq_else.22990:
	swc1	$f3, 235($zero)
	addi	$a3, $zero, 1
beq_cont.22991:
beq_cont.22985:
	j	beq_cont.22971
beq_else.22970:
	addi	$a3, $zero, 0
beq_cont.22971:
	bnei	$a3, 0, beq_else.22992
	lwc1	$f3, 1($a2)
	bfeq	$f3, $fzero, c.eq_else.22994
	j	c.eq_cont.22995
c.eq_else.22994:
	addi	$a3, $zero, 1
c.eq_cont.22995:
	bnei	$a3, 0, beq_else.22996
	lw	$at, 4($v1)
	lw	$s2, 6($v1)
	lwc1	$f3, 1($a2)
	bflt	$f3, $fzero, beq_else.22998
	j	beq_cont.22999
beq_else.22998:
	addi	$a3, $zero, 1
beq_cont.22999:
	bnei	$s2, 0, beq_else.23000
	j	beq_cont.23001
beq_else.23000:
	bnei	$a3, 0, beq_else.23002
	addi	$a3, $zero, 1
	j	beq_cont.23003
beq_else.23002:
	addi	$a3, $zero, 0
beq_cont.23003:
beq_cont.23001:
	lwc1	$f3, 1($at)
	bnei	$a3, 0, beq_else.23004
	sub.s	$f3, $fzero, $f3
	j	beq_cont.23005
beq_else.23004:
beq_cont.23005:
	sub.s	$f3, $f3, $f1
	lwc1	$f4, 1($a2)
	div.s	$f3, $f3, $f4
	lwc1	$f4, 2($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	bflt	$f4, $fzero, beq_else.23006
	j	beq_cont.23007
beq_else.23006:
	sub.s	$f4, $fzero, $f4
beq_cont.23007:
	lwc1	$f5, 2($at)
	bflt	$f4, $f5, beq_else.23008
	addi	$a3, $zero, 0
	j	beq_cont.23009
beq_else.23008:
	addi	$a3, $zero, 1
beq_cont.23009:
	bnei	$a3, 0, beq_else.23010
	j	beq_cont.23011
beq_else.23010:
	lwc1	$f4, 0($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	bflt	$f4, $fzero, beq_else.23012
	j	beq_cont.23013
beq_else.23012:
	sub.s	$f4, $fzero, $f4
beq_cont.23013:
	lwc1	$f5, 0($at)
	bflt	$f4, $f5, beq_else.23014
	addi	$a3, $zero, 0
	j	beq_cont.23015
beq_else.23014:
	addi	$a3, $zero, 1
beq_cont.23015:
	bnei	$a3, 0, beq_else.23016
	j	beq_cont.23017
beq_else.23016:
	swc1	$f3, 235($zero)
	addi	$a3, $zero, 1
beq_cont.23017:
beq_cont.23011:
	j	beq_cont.22997
beq_else.22996:
	addi	$a3, $zero, 0
beq_cont.22997:
	bnei	$a3, 0, beq_else.23018
	lwc1	$f3, 2($a2)
	bfeq	$f3, $fzero, c.eq_else.23020
	j	c.eq_cont.23021
c.eq_else.23020:
	addi	$a3, $zero, 1
c.eq_cont.23021:
	bnei	$a3, 0, beq_else.23022
	lw	$at, 4($v1)
	lw	$v1, 6($v1)
	lwc1	$f3, 2($a2)
	bflt	$f3, $fzero, beq_else.23024
	j	beq_cont.23025
beq_else.23024:
	addi	$a3, $zero, 1
beq_cont.23025:
	bnei	$v1, 0, beq_else.23026
	j	beq_cont.23027
beq_else.23026:
	bnei	$a3, 0, beq_else.23028
	addi	$a3, $zero, 1
	j	beq_cont.23029
beq_else.23028:
	addi	$a3, $zero, 0
beq_cont.23029:
beq_cont.23027:
	lwc1	$f3, 2($at)
	bnei	$a3, 0, beq_else.23030
	sub.s	$f3, $fzero, $f3
	j	beq_cont.23031
beq_else.23030:
beq_cont.23031:
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 2($a2)
	div.s	$f2, $f2, $f3
	lwc1	$f3, 0($a2)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	bflt	$f0, $fzero, beq_else.23032
	j	beq_cont.23033
beq_else.23032:
	sub.s	$f0, $fzero, $f0
beq_cont.23033:
	lwc1	$f3, 0($at)
	bflt	$f0, $f3, beq_else.23034
	addi	$a3, $zero, 0
	j	beq_cont.23035
beq_else.23034:
	addi	$a3, $zero, 1
beq_cont.23035:
	bnei	$a3, 0, beq_else.23036
	j	beq_cont.23037
beq_else.23036:
	lwc1	$f0, 1($a2)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.23038
	j	beq_cont.23039
beq_else.23038:
	sub.s	$f0, $fzero, $f0
beq_cont.23039:
	lwc1	$f1, 1($at)
	bflt	$f0, $f1, beq_else.23040
	addi	$a3, $zero, 0
	j	beq_cont.23041
beq_else.23040:
	addi	$a3, $zero, 1
beq_cont.23041:
	bnei	$a3, 0, beq_else.23042
	j	beq_cont.23043
beq_else.23042:
	swc1	$f2, 235($zero)
	addi	$a3, $zero, 1
beq_cont.23043:
beq_cont.23037:
	j	beq_cont.23023
beq_else.23022:
	addi	$a3, $zero, 0
beq_cont.23023:
	bnei	$a3, 0, beq_else.23044
	addi	$a0, $zero, 0
	j	beq_cont.23045
beq_else.23044:
	addi	$a0, $zero, 3
beq_cont.23045:
	j	beq_cont.23019
beq_else.23018:
	addi	$a0, $zero, 2
beq_cont.23019:
	j	beq_cont.22993
beq_else.22992:
	addi	$a0, $zero, 1
beq_cont.22993:
	j	beq_cont.22967
beq_else.22966:
	bnei	$at, 2, beq_else.23046
	lw	$v1, 4($v1)
	lwc1	$f3, 0($a2)
	lwc1	$f4, 0($v1)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 1($a2)
	lwc1	$f5, 1($v1)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lwc1	$f4, 2($a2)
	lwc1	$f5, 2($v1)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	bflt	$fzero, $f3, beq_else.23048
	addi	$a3, $zero, 0
	j	beq_cont.23049
beq_else.23048:
	addi	$a3, $zero, 1
beq_cont.23049:
	bnei	$a3, 0, beq_else.23050
	addi	$a0, $zero, 0
	j	beq_cont.23051
beq_else.23050:
	lwc1	$f4, 0($v1)
	mul.s	$f0, $f4, $f0
	lwc1	$f4, 1($v1)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 2($v1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	div.s	$f0, $f0, $f3
	swc1	$f0, 235($zero)
	addi	$a0, $zero, 1
beq_cont.23051:
	j	beq_cont.23047
beq_else.23046:
	lwc1	$f3, 0($a2)
	lwc1	$f4, 1($a2)
	lwc1	$f5, 2($a2)
	mul.s	$f6, $f3, $f3
	lw	$at, 4($v1)
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lwc1	$f8, 1($at)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lwc1	$f8, 2($at)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$at, 3($v1)
	bnei	$at, 0, beq_else.23052
	add.s	$f3, $f6, $fzero
	j	beq_cont.23053
beq_else.23052:
	mul.s	$f7, $f4, $f5
	lw	$at, 9($v1)
	lwc1	$f8, 0($at)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lwc1	$f7, 1($at)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 2($at)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
beq_cont.23053:
	bfeq	$f3, $fzero, c.eq_else.23054
	addi	$a3, $zero, 0
	j	c.eq_cont.23055
c.eq_else.23054:
	addi	$a3, $zero, 1
c.eq_cont.23055:
	bnei	$a3, 0, beq_else.23056
	lwc1	$f4, 0($a2)
	lwc1	$f5, 1($a2)
	lwc1	$f6, 2($a2)
	mul.s	$f7, $f4, $f0
	lw	$at, 4($v1)
	lwc1	$f8, 0($at)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f1
	lwc1	$f9, 1($at)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f2
	lwc1	$f9, 2($at)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$at, 3($v1)
	bnei	$at, 0, beq_else.23058
	add.s	$f4, $f7, $fzero
	j	beq_cont.23059
beq_else.23058:
	mul.s	$f8, $f6, $f1
	mul.s	$f9, $f5, $f2
	add.s	$f8, $f8, $f9
	lw	$at, 9($v1)
	lwc1	$f9, 0($at)
	mul.s	$f8, $f8, $f9
	mul.s	$f9, $f4, $f2
	mul.s	$f6, $f6, $f0
	add.s	$f6, $f9, $f6
	lwc1	$f9, 1($at)
	mul.s	$f6, $f6, $f9
	add.s	$f6, $f8, $f6
	mul.s	$f4, $f4, $f1
	mul.s	$f5, $f5, $f0
	add.s	$f4, $f4, $f5
	lwc1	$f5, 2($at)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
	fmuli	$f4, $f4, $fi13
	add.s	$f4, $f7, $f4
beq_cont.23059:
	mul.s	$f5, $f0, $f0
	lw	$at, 4($v1)
	lwc1	$f6, 0($at)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lwc1	$f7, 1($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lwc1	$f7, 2($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$at, 3($v1)
	bnei	$at, 0, beq_else.23060
	add.s	$f0, $f5, $fzero
	j	beq_cont.23061
beq_else.23060:
	mul.s	$f6, $f1, $f2
	lw	$at, 9($v1)
	lwc1	$f7, 0($at)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lwc1	$f6, 1($at)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 2($at)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
beq_cont.23061:
	lw	$at, 1($v1)
	bnei	$at, 3, beq_else.23062
	fsubi	$f0, $f0, $fi7
	j	beq_cont.23063
beq_else.23062:
beq_cont.23063:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	bflt	$fzero, $f0, beq_else.23064
	addi	$a3, $zero, 0
	j	beq_cont.23065
beq_else.23064:
	addi	$a3, $zero, 1
beq_cont.23065:
	bnei	$a3, 0, beq_else.23066
	addi	$a0, $zero, 0
	j	beq_cont.23067
beq_else.23066:
	swc1	$f3, 4($sp)
	swc1	$f4, 6($sp)
	sw	$v1, 8($sp)
	sqrt	$f0, $f0
	lw	$a0, 8($sp)
	lw	$v0, 6($a0)
	bnei	$v0, 0, beq_else.23068
	sub.s	$f0, $fzero, $f0
	j	beq_cont.23069
beq_else.23068:
beq_cont.23069:
	lwc1	$f1, 6($sp)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 4($sp)
	div.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
	addi	$a0, $zero, 1
beq_cont.23067:
	j	beq_cont.23057
beq_else.23056:
	addi	$a0, $zero, 0
beq_cont.23057:
beq_cont.23047:
beq_cont.22967:
	bnei	$a0, 0, beq_else.23070
	j	beq_cont.23071
beq_else.23070:
	lwc1	$f0, 235($zero)
	lwc1	$f1, 237($zero)
	bflt	$f0, $f1, beq_else.23072
	addi	$a0, $zero, 0
	j	beq_cont.23073
beq_else.23072:
	addi	$a0, $zero, 1
beq_cont.23073:
	bnei	$a0, 0, beq_else.23074
	j	beq_cont.23075
beq_else.23074:
	addi	$a0, $zero, 1
	lw	$a1, 3($sp)
	lw	$a2, 0($sp)
	sw	$ra, 13($sp)
	addi	$sp, $sp, 14
	jal	solve_one_or_network.2939
	addi	$sp, $sp, -14
	lw	$ra, 13($sp)
beq_cont.23075:
beq_cont.23071:
beq_cont.22965:
	lw	$a0, 2($sp)
	addi	$a0, $a0, 1
	lw	$a1, 1($sp)
	lw	$a2, 0($sp)
	j	trace_or_matrix.2943
solve_each_element_fast.2949:
	addi	$a3, $zero, 112
	lw	$v0, 0($a2)
	lw2	$v1, $a1, $a0
	addi	$s1, $zero, -1
	bne	$v1, $s1, bne_else.23076
	jr	$ra
bne_else.23076:
	lw2	$at, $a3, $v1
	lw	$s2, 10($at)
	lwc1	$f0, 0($s2)
	lwc1	$f1, 1($s2)
	lwc1	$f2, 2($s2)
	lw	$s3, 1($a2)
	lw2	$s3, $s3, $v1
	lw	$s4, 1($at)
	sw	$v0, 0($sp)
	sw	$a2, 1($sp)
	sw	$a1, 2($sp)
	sw	$a0, 3($sp)
	sw	$v1, 4($sp)
	sw	$a3, 5($sp)
	bnei	$s4, 1, beq_else.23078
	lw	$s2, 0($a2)
	lwc1	$f3, 0($s3)
	sub.s	$f3, $f3, $f0
	lwc1	$f4, 1($s3)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 1($s2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	bflt	$f4, $fzero, beq_else.23080
	j	beq_cont.23081
beq_else.23080:
	sub.s	$f4, $fzero, $f4
beq_cont.23081:
	lw	$s4, 4($at)
	lwc1	$f5, 1($s4)
	bflt	$f4, $f5, beq_else.23082
	addi	$t0, $zero, 0
	j	beq_cont.23083
beq_else.23082:
	addi	$t0, $zero, 1
beq_cont.23083:
	bnei	$t0, 0, beq_else.23084
	j	beq_cont.23085
beq_else.23084:
	lwc1	$f4, 2($s2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	bflt	$f4, $fzero, beq_else.23086
	j	beq_cont.23087
beq_else.23086:
	sub.s	$f4, $fzero, $f4
beq_cont.23087:
	lwc1	$f5, 2($s4)
	bflt	$f4, $f5, beq_else.23088
	addi	$t0, $zero, 0
	j	beq_cont.23089
beq_else.23088:
	addi	$t0, $zero, 1
beq_cont.23089:
	bnei	$t0, 0, beq_else.23090
	j	beq_cont.23091
beq_else.23090:
	lwc1	$f4, 1($s3)
	bfeq	$f4, $fzero, c.eq_else.23092
	addi	$t0, $zero, 0
	j	c.eq_cont.23093
c.eq_else.23092:
	addi	$t0, $zero, 1
c.eq_cont.23093:
	bnei	$t0, 0, beq_else.23094
	addi	$t0, $zero, 1
	j	beq_cont.23095
beq_else.23094:
	addi	$t0, $zero, 0
beq_cont.23095:
beq_cont.23091:
beq_cont.23085:
	bnei	$t0, 0, beq_else.23096
	lwc1	$f3, 2($s3)
	sub.s	$f3, $f3, $f1
	lwc1	$f4, 3($s3)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 0($s2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	bflt	$f4, $fzero, beq_else.23098
	j	beq_cont.23099
beq_else.23098:
	sub.s	$f4, $fzero, $f4
beq_cont.23099:
	lw	$s4, 4($at)
	lwc1	$f5, 0($s4)
	bflt	$f4, $f5, beq_else.23100
	j	beq_cont.23101
beq_else.23100:
	addi	$t0, $zero, 1
beq_cont.23101:
	bnei	$t0, 0, beq_else.23102
	j	beq_cont.23103
beq_else.23102:
	lwc1	$f4, 2($s2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	bflt	$f4, $fzero, beq_else.23104
	j	beq_cont.23105
beq_else.23104:
	sub.s	$f4, $fzero, $f4
beq_cont.23105:
	lwc1	$f5, 2($s4)
	bflt	$f4, $f5, beq_else.23106
	addi	$t0, $zero, 0
	j	beq_cont.23107
beq_else.23106:
	addi	$t0, $zero, 1
beq_cont.23107:
	bnei	$t0, 0, beq_else.23108
	j	beq_cont.23109
beq_else.23108:
	lwc1	$f4, 3($s3)
	bfeq	$f4, $fzero, c.eq_else.23110
	addi	$t0, $zero, 0
	j	c.eq_cont.23111
c.eq_else.23110:
	addi	$t0, $zero, 1
c.eq_cont.23111:
	bnei	$t0, 0, beq_else.23112
	addi	$t0, $zero, 1
	j	beq_cont.23113
beq_else.23112:
	addi	$t0, $zero, 0
beq_cont.23113:
beq_cont.23109:
beq_cont.23103:
	bnei	$t0, 0, beq_else.23114
	lwc1	$f3, 4($s3)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 5($s3)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0($s2)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	bflt	$f0, $fzero, beq_else.23116
	j	beq_cont.23117
beq_else.23116:
	sub.s	$f0, $fzero, $f0
beq_cont.23117:
	lw	$s4, 4($at)
	lwc1	$f3, 0($s4)
	bflt	$f0, $f3, beq_else.23118
	j	beq_cont.23119
beq_else.23118:
	addi	$t0, $zero, 1
beq_cont.23119:
	bnei	$t0, 0, beq_else.23120
	j	beq_cont.23121
beq_else.23120:
	lwc1	$f0, 1($s2)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.23122
	j	beq_cont.23123
beq_else.23122:
	sub.s	$f0, $fzero, $f0
beq_cont.23123:
	lw	$at, 4($at)
	lwc1	$f1, 1($at)
	bflt	$f0, $f1, beq_else.23124
	addi	$t0, $zero, 0
	j	beq_cont.23125
beq_else.23124:
	addi	$t0, $zero, 1
beq_cont.23125:
	bnei	$t0, 0, beq_else.23126
	j	beq_cont.23127
beq_else.23126:
	lwc1	$f0, 5($s3)
	bfeq	$f0, $fzero, c.eq_else.23128
	addi	$t0, $zero, 0
	j	c.eq_cont.23129
c.eq_else.23128:
	addi	$t0, $zero, 1
c.eq_cont.23129:
	bnei	$t0, 0, beq_else.23130
	addi	$t0, $zero, 1
	j	beq_cont.23131
beq_else.23130:
	addi	$t0, $zero, 0
beq_cont.23131:
beq_cont.23127:
beq_cont.23121:
	bnei	$t0, 0, beq_else.23132
	addi	$a0, $zero, 0
	j	beq_cont.23133
beq_else.23132:
	swc1	$f2, 235($zero)
	addi	$a0, $zero, 3
beq_cont.23133:
	j	beq_cont.23115
beq_else.23114:
	swc1	$f3, 235($zero)
	addi	$a0, $zero, 2
beq_cont.23115:
	j	beq_cont.23097
beq_else.23096:
	swc1	$f3, 235($zero)
	addi	$a0, $zero, 1
beq_cont.23097:
	j	beq_cont.23079
beq_else.23078:
	bnei	$s4, 2, beq_else.23134
	lwc1	$f0, 0($s3)
	bflt	$f0, $fzero, beq_else.23136
	addi	$t0, $zero, 0
	j	beq_cont.23137
beq_else.23136:
	addi	$t0, $zero, 1
beq_cont.23137:
	bnei	$t0, 0, beq_else.23138
	addi	$a0, $zero, 0
	j	beq_cont.23139
beq_else.23138:
	lwc1	$f0, 0($s3)
	lwc1	$f1, 3($s2)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
	addi	$a0, $zero, 1
beq_cont.23139:
	j	beq_cont.23135
beq_else.23134:
	lwc1	$f3, 0($s3)
	bfeq	$f3, $fzero, c.eq_else.23140
	addi	$t0, $zero, 0
	j	c.eq_cont.23141
c.eq_else.23140:
	addi	$t0, $zero, 1
c.eq_cont.23141:
	bnei	$t0, 0, beq_else.23142
	lwc1	$f4, 1($s3)
	mul.s	$f0, $f4, $f0
	lwc1	$f4, 2($s3)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 3($s3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 3($s2)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	bflt	$fzero, $f1, beq_else.23144
	j	beq_cont.23145
beq_else.23144:
	addi	$t0, $zero, 1
beq_cont.23145:
	bnei	$t0, 0, beq_else.23146
	addi	$a0, $zero, 0
	j	beq_cont.23147
beq_else.23146:
	lw	$at, 6($at)
	bnei	$at, 0, beq_else.23148
	sw	$s3, 6($sp)
	swc1	$f0, 8($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 8($sp)
	sub.s	$f0, $f1, $f0
	lw	$a0, 6($sp)
	lwc1	$f1, 4($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
	j	beq_cont.23149
beq_else.23148:
	sw	$s3, 6($sp)
	swc1	$f0, 8($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 8($sp)
	add.s	$f0, $f1, $f0
	lw	$a0, 6($sp)
	lwc1	$f1, 4($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
beq_cont.23149:
	addi	$a0, $zero, 1
beq_cont.23147:
	j	beq_cont.23143
beq_else.23142:
	addi	$a0, $zero, 0
beq_cont.23143:
beq_cont.23135:
beq_cont.23079:
	bnei	$a0, 0, bne_else.23151
	lw	$a0, 4($sp)
	lw	$a1, 5($sp)
	lw2	$v0, $a1, $a0
	lw	$v0, 6($v0)
	bnei	$v0, 0, bne_else.23152
	jr	$ra
bne_else.23152:
	lw	$a0, 3($sp)
	addi	$a0, $a0, 1
	lw	$a1, 2($sp)
	lw	$a2, 1($sp)
	j	solve_each_element_fast.2949
bne_else.23151:
	lwc1	$f0, 235($zero)
	bflt	$fzero, $f0, beq_else.23154
	addi	$a1, $zero, 0
	j	beq_cont.23155
beq_else.23154:
	addi	$a1, $zero, 1
beq_cont.23155:
	bnei	$a1, 0, beq_else.23156
	j	beq_cont.23157
beq_else.23156:
	lwc1	$f1, 237($zero)
	bflt	$f0, $f1, beq_else.23158
	addi	$a1, $zero, 0
	j	beq_cont.23159
beq_else.23158:
	addi	$a1, $zero, 1
beq_cont.23159:
	bnei	$a1, 0, beq_else.23160
	j	beq_cont.23161
beq_else.23160:
	faddi	$f0, $f0, $fi22
	lw	$a1, 0($sp)
	lwc1	$f1, 0($a1)
	mul.s	$f1, $f1, $f0
	lwc1	$f2, 262($zero)
	add.s	$f1, $f1, $f2
	lwc1	$f2, 1($a1)
	mul.s	$f2, $f2, $f0
	lwc1	$f3, 263($zero)
	add.s	$f2, $f2, $f3
	lwc1	$f3, 2($a1)
	mul.s	$f3, $f3, $f0
	lwc1	$f4, 264($zero)
	add.s	$f3, $f3, $f4
	addi	$a1, $zero, 0
	lw	$a2, 2($sp)
	sw	$a0, 10($sp)
	swc1	$f3, 12($sp)
	swc1	$f2, 14($sp)
	swc1	$f1, 16($sp)
	swc1	$f0, 18($sp)
	add	$a0, $zero, $a1
	add	$a1, $zero, $a2
	add.s	$f0, $fzero, $f1
	add.s	$f1, $fzero, $f2
	add.s	$f2, $fzero, $f3
	sw	$ra, 24($sp)
	addi	$sp, $sp, 25
	jal	check_all_inside.2920
	addi	$sp, $sp, -25
	lw	$ra, 24($sp)
	bnei	$a0, 0, beq_else.23163
	j	beq_cont.23164
beq_else.23163:
	lwc1	$f0, 18($sp)
	swc1	$f0, 237($zero)
	lwc1	$f0, 16($sp)
	swc1	$f0, 238($zero)
	lwc1	$f0, 14($sp)
	swc1	$f0, 239($zero)
	lwc1	$f0, 12($sp)
	swc1	$f0, 240($zero)
	lw	$a0, 4($sp)
	sw	$a0, 241($zero)
	lw	$a0, 10($sp)
	sw	$a0, 236($zero)
beq_cont.23164:
beq_cont.23161:
beq_cont.23157:
	lw	$a0, 3($sp)
	addi	$a0, $a0, 1
	lw	$a1, 2($sp)
	lw	$a2, 1($sp)
	j	solve_each_element_fast.2949
solve_one_or_network_fast.2953:
	addi	$a3, $zero, 183
	lw2	$v0, $a1, $a0
	addi	$s1, $zero, -1
	bne	$v0, $s1, bne_else.23165
	jr	$ra
bne_else.23165:
	lw2	$v0, $a3, $v0
	addi	$a3, $zero, 0
	sw	$a2, 0($sp)
	sw	$a1, 1($sp)
	sw	$a0, 2($sp)
	add	$a1, $zero, $v0
	add	$a0, $zero, $a3
	sw	$ra, 7($sp)
	addi	$sp, $sp, 8
	jal	solve_each_element_fast.2949
	addi	$sp, $sp, -8
	lw	$ra, 7($sp)
	lw	$a0, 2($sp)
	addi	$a0, $a0, 1
	lw	$a1, 1($sp)
	lw	$a2, 0($sp)
	j	solve_one_or_network_fast.2953
trace_or_matrix_fast.2957:
	addi	$a3, $zero, 112
	lw2	$v0, $a1, $a0
	lw	$v1, 0($v0)
	addi	$s1, $zero, -1
	bne	$v1, $s1, bne_else.23167
	jr	$ra
bne_else.23167:
	sw	$a2, 0($sp)
	sw	$a1, 1($sp)
	sw	$a0, 2($sp)
	addi	$s1, $zero, 99
	bne	$v1, $s1, beq_else.23169
	addi	$a3, $zero, 1
	add	$a1, $zero, $v0
	add	$a0, $zero, $a3
	sw	$ra, 7($sp)
	addi	$sp, $sp, 8
	jal	solve_one_or_network_fast.2953
	addi	$sp, $sp, -8
	lw	$ra, 7($sp)
	j	beq_cont.23170
beq_else.23169:
	lw2	$at, $a3, $v1
	lw	$s2, 10($at)
	lwc1	$f0, 0($s2)
	lwc1	$f1, 1($s2)
	lwc1	$f2, 2($s2)
	lw	$s3, 1($a2)
	lw2	$v1, $s3, $v1
	lw	$s3, 1($at)
	sw	$v0, 3($sp)
	bnei	$s3, 1, beq_else.23171
	lw	$s2, 0($a2)
	lwc1	$f3, 0($v1)
	sub.s	$f3, $f3, $f0
	lwc1	$f4, 1($v1)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 1($s2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	bflt	$f4, $fzero, beq_else.23173
	j	beq_cont.23174
beq_else.23173:
	sub.s	$f4, $fzero, $f4
beq_cont.23174:
	lw	$s3, 4($at)
	lwc1	$f5, 1($s3)
	bflt	$f4, $f5, beq_else.23175
	addi	$a3, $zero, 0
	j	beq_cont.23176
beq_else.23175:
	addi	$a3, $zero, 1
beq_cont.23176:
	bnei	$a3, 0, beq_else.23177
	j	beq_cont.23178
beq_else.23177:
	lwc1	$f4, 2($s2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	bflt	$f4, $fzero, beq_else.23179
	j	beq_cont.23180
beq_else.23179:
	sub.s	$f4, $fzero, $f4
beq_cont.23180:
	lwc1	$f5, 2($s3)
	bflt	$f4, $f5, beq_else.23181
	addi	$a3, $zero, 0
	j	beq_cont.23182
beq_else.23181:
	addi	$a3, $zero, 1
beq_cont.23182:
	bnei	$a3, 0, beq_else.23183
	j	beq_cont.23184
beq_else.23183:
	lwc1	$f4, 1($v1)
	bfeq	$f4, $fzero, c.eq_else.23185
	addi	$a3, $zero, 0
	j	c.eq_cont.23186
c.eq_else.23185:
	addi	$a3, $zero, 1
c.eq_cont.23186:
	bnei	$a3, 0, beq_else.23187
	addi	$a3, $zero, 1
	j	beq_cont.23188
beq_else.23187:
	addi	$a3, $zero, 0
beq_cont.23188:
beq_cont.23184:
beq_cont.23178:
	bnei	$a3, 0, beq_else.23189
	lwc1	$f3, 2($v1)
	sub.s	$f3, $f3, $f1
	lwc1	$f4, 3($v1)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 0($s2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	bflt	$f4, $fzero, beq_else.23191
	j	beq_cont.23192
beq_else.23191:
	sub.s	$f4, $fzero, $f4
beq_cont.23192:
	lw	$s3, 4($at)
	lwc1	$f5, 0($s3)
	bflt	$f4, $f5, beq_else.23193
	j	beq_cont.23194
beq_else.23193:
	addi	$a3, $zero, 1
beq_cont.23194:
	bnei	$a3, 0, beq_else.23195
	j	beq_cont.23196
beq_else.23195:
	lwc1	$f4, 2($s2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	bflt	$f4, $fzero, beq_else.23197
	j	beq_cont.23198
beq_else.23197:
	sub.s	$f4, $fzero, $f4
beq_cont.23198:
	lwc1	$f5, 2($s3)
	bflt	$f4, $f5, beq_else.23199
	addi	$a3, $zero, 0
	j	beq_cont.23200
beq_else.23199:
	addi	$a3, $zero, 1
beq_cont.23200:
	bnei	$a3, 0, beq_else.23201
	j	beq_cont.23202
beq_else.23201:
	lwc1	$f4, 3($v1)
	bfeq	$f4, $fzero, c.eq_else.23203
	addi	$a3, $zero, 0
	j	c.eq_cont.23204
c.eq_else.23203:
	addi	$a3, $zero, 1
c.eq_cont.23204:
	bnei	$a3, 0, beq_else.23205
	addi	$a3, $zero, 1
	j	beq_cont.23206
beq_else.23205:
	addi	$a3, $zero, 0
beq_cont.23206:
beq_cont.23202:
beq_cont.23196:
	bnei	$a3, 0, beq_else.23207
	lwc1	$f3, 4($v1)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 5($v1)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0($s2)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	bflt	$f0, $fzero, beq_else.23209
	j	beq_cont.23210
beq_else.23209:
	sub.s	$f0, $fzero, $f0
beq_cont.23210:
	lw	$s3, 4($at)
	lwc1	$f3, 0($s3)
	bflt	$f0, $f3, beq_else.23211
	j	beq_cont.23212
beq_else.23211:
	addi	$a3, $zero, 1
beq_cont.23212:
	bnei	$a3, 0, beq_else.23213
	j	beq_cont.23214
beq_else.23213:
	lwc1	$f0, 1($s2)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.23215
	j	beq_cont.23216
beq_else.23215:
	sub.s	$f0, $fzero, $f0
beq_cont.23216:
	lw	$at, 4($at)
	lwc1	$f1, 1($at)
	bflt	$f0, $f1, beq_else.23217
	addi	$a3, $zero, 0
	j	beq_cont.23218
beq_else.23217:
	addi	$a3, $zero, 1
beq_cont.23218:
	bnei	$a3, 0, beq_else.23219
	j	beq_cont.23220
beq_else.23219:
	lwc1	$f0, 5($v1)
	bfeq	$f0, $fzero, c.eq_else.23221
	addi	$a3, $zero, 0
	j	c.eq_cont.23222
c.eq_else.23221:
	addi	$a3, $zero, 1
c.eq_cont.23222:
	bnei	$a3, 0, beq_else.23223
	addi	$a3, $zero, 1
	j	beq_cont.23224
beq_else.23223:
	addi	$a3, $zero, 0
beq_cont.23224:
beq_cont.23220:
beq_cont.23214:
	bnei	$a3, 0, beq_else.23225
	addi	$a0, $zero, 0
	j	beq_cont.23226
beq_else.23225:
	swc1	$f2, 235($zero)
	addi	$a0, $zero, 3
beq_cont.23226:
	j	beq_cont.23208
beq_else.23207:
	swc1	$f3, 235($zero)
	addi	$a0, $zero, 2
beq_cont.23208:
	j	beq_cont.23190
beq_else.23189:
	swc1	$f3, 235($zero)
	addi	$a0, $zero, 1
beq_cont.23190:
	j	beq_cont.23172
beq_else.23171:
	bnei	$s3, 2, beq_else.23227
	lwc1	$f0, 0($v1)
	bflt	$f0, $fzero, beq_else.23229
	addi	$a3, $zero, 0
	j	beq_cont.23230
beq_else.23229:
	addi	$a3, $zero, 1
beq_cont.23230:
	bnei	$a3, 0, beq_else.23231
	addi	$a0, $zero, 0
	j	beq_cont.23232
beq_else.23231:
	lwc1	$f0, 0($v1)
	lwc1	$f1, 3($s2)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
	addi	$a0, $zero, 1
beq_cont.23232:
	j	beq_cont.23228
beq_else.23227:
	lwc1	$f3, 0($v1)
	bfeq	$f3, $fzero, c.eq_else.23233
	addi	$a3, $zero, 0
	j	c.eq_cont.23234
c.eq_else.23233:
	addi	$a3, $zero, 1
c.eq_cont.23234:
	bnei	$a3, 0, beq_else.23235
	lwc1	$f4, 1($v1)
	mul.s	$f0, $f4, $f0
	lwc1	$f4, 2($v1)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 3($v1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 3($s2)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	bflt	$fzero, $f1, beq_else.23237
	j	beq_cont.23238
beq_else.23237:
	addi	$a3, $zero, 1
beq_cont.23238:
	bnei	$a3, 0, beq_else.23239
	addi	$a0, $zero, 0
	j	beq_cont.23240
beq_else.23239:
	lw	$at, 6($at)
	bnei	$at, 0, beq_else.23241
	sw	$v1, 4($sp)
	swc1	$f0, 6($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 6($sp)
	sub.s	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lwc1	$f1, 4($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
	j	beq_cont.23242
beq_else.23241:
	sw	$v1, 4($sp)
	swc1	$f0, 6($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 6($sp)
	add.s	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lwc1	$f1, 4($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 235($zero)
beq_cont.23242:
	addi	$a0, $zero, 1
beq_cont.23240:
	j	beq_cont.23236
beq_else.23235:
	addi	$a0, $zero, 0
beq_cont.23236:
beq_cont.23228:
beq_cont.23172:
	bnei	$a0, 0, beq_else.23244
	j	beq_cont.23245
beq_else.23244:
	lwc1	$f0, 235($zero)
	lwc1	$f1, 237($zero)
	bflt	$f0, $f1, beq_else.23246
	addi	$a0, $zero, 0
	j	beq_cont.23247
beq_else.23246:
	addi	$a0, $zero, 1
beq_cont.23247:
	bnei	$a0, 0, beq_else.23248
	j	beq_cont.23249
beq_else.23248:
	addi	$a0, $zero, 1
	lw	$a1, 3($sp)
	lw	$a2, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 13
	jal	solve_one_or_network_fast.2953
	addi	$sp, $sp, -13
	lw	$ra, 12($sp)
beq_cont.23249:
beq_cont.23245:
beq_cont.23170:
	lw	$a0, 2($sp)
	addi	$a0, $a0, 1
	lw	$a1, 1($sp)
	lw	$a2, 0($sp)
	j	trace_or_matrix_fast.2957
trace_reflections.2979:
	addi	$a2, $zero, 358
	blti	$a0, 0, blti_true.23250
	lw2	$v0, $a2, $a0
	lw	$a2, 1($v0)
	faddi	$f2, $fzero, $fi2
	swc1	$f2, 237($zero)
	addi	$a3, $zero, 0
	lw	$t0, 234($zero)
	sw	$a0, 0($sp)
	swc1	$f1, 2($sp)
	sw	$a1, 4($sp)
	swc1	$f0, 6($sp)
	sw	$a2, 8($sp)
	sw	$v0, 9($sp)
	add	$a1, $zero, $t0
	add	$a0, $zero, $a3
	sw	$ra, 14($sp)
	addi	$sp, $sp, 15
	jal	trace_or_matrix_fast.2957
	addi	$sp, $sp, -15
	lw	$ra, 14($sp)
	lwc1	$f0, 237($zero)
	bflti1	$fi23, $f0, beq_else.23253
	addi	$a0, $zero, 0
	j	beq_cont.23254
beq_else.23253:
	addi	$a0, $zero, 1
beq_cont.23254:
	bnei	$a0, 0, beq_else.23255
	j	beq_cont.23256
beq_else.23255:
	bflti2	$f0, $fi24, beq_else.23257
	addi	$a0, $zero, 0
	j	beq_cont.23258
beq_else.23257:
	addi	$a0, $zero, 1
beq_cont.23258:
beq_cont.23256:
	bnei	$a0, 0, beq_else.23259
	j	beq_cont.23260
beq_else.23259:
	lw	$a0, 241($zero)
	sll	$a0, $a0, 2
	lw	$a1, 236($zero)
	add	$a0, $a0, $a1
	lw	$a1, 9($sp)
	lw	$v0, 0($a1)
	bne	$a0, $v0, beq_cont.23262
	addi	$a0, $zero, 0
	lw	$a2, 234($zero)
	add	$a1, $zero, $a2
	sw	$ra, 14($sp)
	addi	$sp, $sp, 15
	jal	shadow_check_one_or_matrix.2932
	addi	$sp, $sp, -15
	lw	$ra, 14($sp)
	bnei	$a0, 0, beq_cont.23264
	lw	$a0, 8($sp)
	lw	$v0, 0($a0)
	lwc1	$f0, 242($zero)
	lwc1	$f1, 0($v0)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 243($zero)
	lwc1	$f2, 1($v0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 244($zero)
	lwc1	$f2, 2($v0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lw	$a1, 9($sp)
	lwc1	$f1, 6($a1)
	lwc1	$f2, 6($sp)
	mul.s	$f3, $f1, $f2
	mul.s	$f0, $f3, $f0
	lw	$a1, 4($sp)
	lwc1	$f3, 0($a1)
	lwc1	$f4, 0($v0)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 1($a1)
	lwc1	$f5, 1($v0)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lwc1	$f4, 2($a1)
	lwc1	$f5, 2($v0)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	bflt	$fzero, $f0, beq_else.23265
	j	beq_cont.23266
beq_else.23265:
	addi	$a0, $zero, 1
beq_cont.23266:
	bnei	$a0, 0, beq_else.23267
	j	beq_cont.23268
beq_else.23267:
	lwc1	$f3, 251($zero)
	lwc1	$f4, 245($zero)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swc1	$f3, 251($zero)
	lwc1	$f3, 252($zero)
	lwc1	$f4, 246($zero)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swc1	$f3, 252($zero)
	lwc1	$f3, 253($zero)
	lwc1	$f4, 247($zero)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f3, $f0
	swc1	$f0, 253($zero)
beq_cont.23268:
	bflt	$fzero, $f1, beq_else.23269
	addi	$a0, $zero, 0
	j	beq_cont.23270
beq_else.23269:
	addi	$a0, $zero, 1
beq_cont.23270:
	bnei	$a0, 0, beq_else.23271
	j	beq_cont.23272
beq_else.23271:
	mul.s	$f0, $f1, $f1
	mul.s	$f0, $f0, $f0
	lwc1	$f1, 2($sp)
	mul.s	$f0, $f0, $f1
	lwc1	$f3, 251($zero)
	add.s	$f3, $f3, $f0
	swc1	$f3, 251($zero)
	lwc1	$f3, 252($zero)
	add.s	$f3, $f3, $f0
	swc1	$f3, 252($zero)
	lwc1	$f3, 253($zero)
	add.s	$f0, $f3, $f0
	swc1	$f0, 253($zero)
beq_cont.23272:
beq_cont.23264:
beq_cont.23262:
beq_cont.23260:
	lw	$a0, 0($sp)
	addi	$a0, $a0, -1
	lwc1	$f0, 6($sp)
	lwc1	$f1, 2($sp)
	lw	$a1, 4($sp)
	j	trace_reflections.2979
blti_true.23250:
	jr	$ra
trace_ray.2984:
	addi	$a3, $zero, 112
	addi	$t0, $zero, 242
	addi	$t1, $zero, 238
	addi	$t2, $zero, 4
	blt	$t2, $a0, blt_true.23274
	lw	$v0, 2($a2)
	faddi	$f2, $fzero, $fi2
	swc1	$f2, 237($zero)
	addi	$t2, $zero, 0
	lw	$t3, 234($zero)
	swc1	$f1, 0($sp)
	sw	$t1, 2($sp)
	sw	$a2, 3($sp)
	sw	$t0, 4($sp)
	sw	$a3, 5($sp)
	swc1	$f0, 6($sp)
	sw	$a1, 8($sp)
	sw	$a0, 9($sp)
	sw	$v0, 10($sp)
	add	$a2, $zero, $a1
	add	$a0, $zero, $t2
	add	$a1, $zero, $t3
	sw	$ra, 15($sp)
	addi	$sp, $sp, 16
	jal	trace_or_matrix.2943
	addi	$sp, $sp, -16
	lw	$ra, 15($sp)
	lwc1	$f0, 237($zero)
	bflti1	$fi23, $f0, beq_else.23275
	addi	$a0, $zero, 0
	j	beq_cont.23276
beq_else.23275:
	addi	$a0, $zero, 1
beq_cont.23276:
	bnei	$a0, 0, beq_else.23277
	j	beq_cont.23278
beq_else.23277:
	bflti2	$f0, $fi24, beq_else.23279
	addi	$a0, $zero, 0
	j	beq_cont.23280
beq_else.23279:
	addi	$a0, $zero, 1
beq_cont.23280:
beq_cont.23278:
	bnei	$a0, 0, bne_else.23281
	addi	$a0, $zero, -1
	lw	$a1, 9($sp)
	lw	$a2, 10($sp)
	sw2	$a0, $a2, $a1
	bnei	$a1, 0, bne_else.23282
	jr	$ra
bne_else.23282:
	lw	$a0, 8($sp)
	lwc1	$f0, 0($a0)
	lwc1	$f1, 178($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 1($a0)
	lwc1	$f2, 179($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 2($a0)
	lwc1	$f2, 180($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	bflt	$fzero, $f0, beq_else.23284
	addi	$a0, $zero, 0
	j	beq_cont.23285
beq_else.23284:
	addi	$a0, $zero, 1
beq_cont.23285:
	bnei	$a0, 0, bne_else.23286
	jr	$ra
bne_else.23286:
	mul.s	$f1, $f0, $f0
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 6($sp)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 181($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 251($zero)
	add.s	$f1, $f1, $f0
	swc1	$f1, 251($zero)
	lwc1	$f1, 252($zero)
	add.s	$f1, $f1, $f0
	swc1	$f1, 252($zero)
	lwc1	$f1, 253($zero)
	add.s	$f0, $f1, $f0
	swc1	$f0, 253($zero)
	jr	$ra
bne_else.23281:
	lw	$a0, 241($zero)
	lw	$a1, 5($sp)
	lw2	$v0, $a1, $a0
	lw	$v1, 2($v0)
	lw	$at, 7($v0)
	lwc1	$f0, 0($at)
	lwc1	$f1, 6($sp)
	mul.s	$f0, $f0, $f1
	lw	$at, 1($v0)
	sw	$v1, 11($sp)
	swc1	$f0, 12($sp)
	sw	$a0, 14($sp)
	sw	$v0, 15($sp)
	bnei	$at, 1, beq_else.23289
	lw	$a1, 236($zero)
	swc1	$fzero, 242($zero)
	swc1	$fzero, 243($zero)
	swc1	$fzero, 244($zero)
	addi	$a2, $a1, -1
	addi	$a1, $a1, -1
	lw	$a3, 8($sp)
	add	$s1, $a3, $a1
	lwc1	$f2, 0($s1)
	bfeq	$f2, $fzero, c.eq_else.23291
	addi	$a1, $zero, 0
	j	c.eq_cont.23292
c.eq_else.23291:
	addi	$a1, $zero, 1
c.eq_cont.23292:
	bnei	$a1, 0, beq_else.23293
	bflt	$fzero, $f2, beq_else.23295
	j	beq_cont.23296
beq_else.23295:
	addi	$a1, $zero, 1
beq_cont.23296:
	bnei	$a1, 0, beq_else.23297
	faddi	$f2, $fzero, $fi20
	j	beq_cont.23298
beq_else.23297:
	faddi	$f2, $fzero, $fi7
beq_cont.23298:
	j	beq_cont.23294
beq_else.23293:
	faddi	$f2, $fzero, $fi0
beq_cont.23294:
	sub.s	$f2, $fzero, $f2
	lw	$a1, 4($sp)
	add	$s1, $a1, $a2
	swc1	$f2, 0($s1)
	j	beq_cont.23290
beq_else.23289:
	bnei	$at, 2, beq_else.23299
	lw	$at, 4($v0)
	lwc1	$f2, 0($at)
	sub.s	$f2, $fzero, $f2
	swc1	$f2, 242($zero)
	lwc1	$f2, 1($at)
	sub.s	$f2, $fzero, $f2
	swc1	$f2, 243($zero)
	lwc1	$f2, 2($at)
	sub.s	$f2, $fzero, $f2
	swc1	$f2, 244($zero)
	j	beq_cont.23300
beq_else.23299:
	lwc1	$f2, 238($zero)
	lw	$at, 5($v0)
	lwc1	$f3, 0($at)
	sub.s	$f2, $f2, $f3
	lwc1	$f3, 239($zero)
	lwc1	$f4, 1($at)
	sub.s	$f3, $f3, $f4
	lwc1	$f4, 240($zero)
	lwc1	$f5, 2($at)
	sub.s	$f4, $f4, $f5
	lw	$at, 4($v0)
	lwc1	$f5, 0($at)
	mul.s	$f5, $f2, $f5
	lwc1	$f6, 1($at)
	mul.s	$f6, $f3, $f6
	lwc1	$f7, 2($at)
	mul.s	$f7, $f4, $f7
	lw	$at, 3($v0)
	bnei	$at, 0, beq_else.23301
	swc1	$f5, 242($zero)
	swc1	$f6, 243($zero)
	swc1	$f7, 244($zero)
	j	beq_cont.23302
beq_else.23301:
	lw	$at, 9($v0)
	lwc1	$f8, 2($at)
	mul.s	$f8, $f3, $f8
	lwc1	$f9, 1($at)
	mul.s	$f9, $f4, $f9
	add.s	$f8, $f8, $f9
	fmuli	$f8, $f8, $fi13
	add.s	$f5, $f5, $f8
	swc1	$f5, 242($zero)
	lwc1	$f5, 2($at)
	mul.s	$f5, $f2, $f5
	lwc1	$f8, 0($at)
	mul.s	$f4, $f4, $f8
	add.s	$f4, $f5, $f4
	fmuli	$f4, $f4, $fi13
	add.s	$f4, $f6, $f4
	swc1	$f4, 243($zero)
	lwc1	$f4, 1($at)
	mul.s	$f2, $f2, $f4
	lwc1	$f4, 0($at)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	fmuli	$f2, $f2, $fi13
	add.s	$f2, $f7, $f2
	swc1	$f2, 244($zero)
beq_cont.23302:
	lw	$at, 6($v0)
	lwc1	$f2, 242($zero)
	mul.s	$f2, $f2, $f2
	lwc1	$f3, 243($zero)
	mul.s	$f3, $f3, $f3
	add.s	$f2, $f2, $f3
	lwc1	$f3, 244($zero)
	mul.s	$f3, $f3, $f3
	add.s	$f2, $f2, $f3
	sw	$at, 16($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	bfeq	$f0, $fzero, c.eq_else.23303
	addi	$a0, $zero, 0
	j	c.eq_cont.23304
c.eq_else.23303:
	addi	$a0, $zero, 1
c.eq_cont.23304:
	bnei	$a0, 0, beq_else.23305
	lw	$a0, 16($sp)
	bnei	$a0, 0, beq_else.23307
	fdivi2	$f0, $fi7, $f0
	j	beq_cont.23308
beq_else.23307:
	fdivi2	$f0, $fi20, $f0
beq_cont.23308:
	j	beq_cont.23306
beq_else.23305:
	faddi	$f0, $fzero, $fi7
beq_cont.23306:
	lwc1	$f1, 242($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 242($zero)
	lwc1	$f1, 243($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 243($zero)
	lwc1	$f1, 244($zero)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 244($zero)
beq_cont.23300:
beq_cont.23290:
	lwc1	$f0, 238($zero)
	swc1	$f0, 259($zero)
	lwc1	$f0, 239($zero)
	swc1	$f0, 260($zero)
	lwc1	$f0, 240($zero)
	swc1	$f0, 261($zero)
	lw	$a0, 15($sp)
	lw	$v0, 0($a0)
	lw	$v1, 8($a0)
	lwc1	$f0, 0($v1)
	swc1	$f0, 245($zero)
	lwc1	$f0, 1($v1)
	swc1	$f0, 246($zero)
	lwc1	$f0, 2($v1)
	swc1	$f0, 247($zero)
	bnei	$v0, 1, beq_else.23309
	lwc1	$f0, 238($zero)
	lw	$v0, 5($a0)
	lwc1	$f1, 0($v0)
	sub.s	$f0, $f0, $f1
	fmuli	$f1, $f0, $fi43
	swc1	$f0, 18($sp)
	add.s	$f0, $fzero, $f1
	floor	$f0, $f0
	fmuli	$f0, $f0, $fi44
	lwc1	$f1, 18($sp)
	sub.s	$f0, $f1, $f0
	bflti2	$f0, $fi41, beq_else.23312
	addi	$a0, $zero, 0
	j	beq_cont.23313
beq_else.23312:
	addi	$a0, $zero, 1
beq_cont.23313:
	lwc1	$f0, 240($zero)
	lw	$a1, 15($sp)
	lw	$v0, 5($a1)
	lwc1	$f1, 2($v0)
	sub.s	$f0, $f0, $f1
	fmuli	$f1, $f0, $fi43
	sw	$a0, 20($sp)
	swc1	$f0, 22($sp)
	add.s	$f0, $fzero, $f1
	floor	$f0, $f0
	fmuli	$f0, $f0, $fi44
	lwc1	$f1, 22($sp)
	sub.s	$f0, $f1, $f0
	bflti2	$f0, $fi41, beq_else.23315
	addi	$a0, $zero, 0
	j	beq_cont.23316
beq_else.23315:
	addi	$a0, $zero, 1
beq_cont.23316:
	lw	$a1, 20($sp)
	bnei	$a1, 0, beq_else.23317
	bnei	$a0, 0, beq_else.23319
	faddi	$f0, $fzero, $fi1
	j	beq_cont.23320
beq_else.23319:
	faddi	$f0, $fzero, $fi0
beq_cont.23320:
	j	beq_cont.23318
beq_else.23317:
	bnei	$a0, 0, beq_else.23321
	faddi	$f0, $fzero, $fi0
	j	beq_cont.23322
beq_else.23321:
	faddi	$f0, $fzero, $fi1
beq_cont.23322:
beq_cont.23318:
	swc1	$f0, 246($zero)
	j	beq_cont.23310
beq_else.23309:
	bnei	$v0, 2, beq_else.23323
	lwc1	$f0, 239($zero)
	fmuli	$f0, $f0, $fi42
	sw	$ra, 28($sp)
	addi	$sp, $sp, 29
	jal	sin.2640
	addi	$sp, $sp, -29
	lw	$ra, 28($sp)
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi1
	swc1	$f1, 245($zero)
	fsubi2	$f0, $fi7, $f0
	fmuli	$f0, $f0, $fi1
	swc1	$f0, 246($zero)
	j	beq_cont.23324
beq_else.23323:
	bnei	$v0, 3, beq_else.23325
	lwc1	$f0, 238($zero)
	lw	$v0, 5($a0)
	lwc1	$f1, 0($v0)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 240($zero)
	lwc1	$f2, 2($v0)
	sub.s	$f1, $f1, $f2
	mul.s	$f0, $f0, $f0
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	fdivi	$f0, $f0, $fi41
	swc1	$f0, 24($sp)
	floor	$f0, $f0
	lwc1	$f1, 24($sp)
	sub.s	$f0, $f1, $f0
	fmuli	$f0, $f0, $fi38
	sw	$ra, 30($sp)
	addi	$sp, $sp, 31
	jal	cos.2638
	addi	$sp, $sp, -31
	lw	$ra, 30($sp)
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi1
	swc1	$f1, 246($zero)
	fsubi2	$f0, $fi7, $f0
	fmuli	$f0, $f0, $fi1
	swc1	$f0, 247($zero)
	j	beq_cont.23326
beq_else.23325:
	bnei	$v0, 4, beq_cont.23328
	lwc1	$f0, 238($zero)
	lw	$v0, 5($a0)
	lwc1	$f1, 0($v0)
	sub.s	$f0, $f0, $f1
	lw	$v0, 4($a0)
	lwc1	$f1, 0($v0)
	swc1	$f0, 26($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 26($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 240($zero)
	lw	$a0, 15($sp)
	lw	$v0, 5($a0)
	lwc1	$f2, 2($v0)
	sub.s	$f1, $f1, $f2
	lw	$v0, 4($a0)
	lwc1	$f2, 2($v0)
	swc1	$f0, 28($sp)
	swc1	$f1, 30($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 30($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 28($sp)
	mul.s	$f2, $f1, $f1
	mul.s	$f3, $f0, $f0
	add.s	$f2, $f2, $f3
	bflt	$f1, $fzero, beq_else.23329
	add.s	$f3, $f1, $fzero
	j	beq_cont.23330
beq_else.23329:
	sub.s	$f3, $fzero, $f1
beq_cont.23330:
	bflti2	$f3, $fi25, beq_else.23331
	addi	$a0, $zero, 0
	j	beq_cont.23332
beq_else.23331:
	addi	$a0, $zero, 1
beq_cont.23332:
	bnei	$a0, 0, beq_else.23333
	div.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.23335
	j	beq_cont.23336
beq_else.23335:
	sub.s	$f0, $fzero, $f0
beq_cont.23336:
	bflt	$fzero, $f0, beq_else.23337
	sub.s	$f0, $fzero, $f0
	bflti2	$f0, $fi27, beq_else.23339
	fdivi2	$f0, $fi7, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi28, $f0
	sub.s	$f0, $fzero, $f0
	j	beq_cont.23340
beq_else.23339:
	fsubi	$f1, $f0, $fi7
	faddi	$f0, $f0, $fi7
	div.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	faddi	$f0, $f0, $fi35
	sub.s	$f0, $fzero, $f0
beq_cont.23340:
	j	beq_cont.23338
beq_else.23337:
	bflti2	$f0, $fi27, beq_else.23341
	bflti2	$f0, $fi36, beq_else.23343
	fdivi2	$f0, $fi7, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi28, $f0
	j	beq_cont.23344
beq_else.23343:
	fsubi	$f1, $f0, $fi7
	faddi	$f0, $f0, $fi7
	div.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	faddi	$f0, $f0, $fi35
beq_cont.23344:
	j	beq_cont.23342
beq_else.23341:
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
beq_cont.23342:
beq_cont.23338:
	fmuli	$f0, $f0, $fi37
	fdivi	$f0, $f0, $fi38
	j	beq_cont.23334
beq_else.23333:
	faddi	$f0, $fzero, $fi26
beq_cont.23334:
	swc1	$f2, 32($sp)
	swc1	$f0, 34($sp)
	floor	$f0, $f0
	lwc1	$f1, 34($sp)
	sub.s	$f0, $f1, $f0
	lwc1	$f1, 239($zero)
	lw	$a0, 15($sp)
	lw	$v0, 5($a0)
	lwc1	$f2, 1($v0)
	sub.s	$f1, $f1, $f2
	lw	$v0, 4($a0)
	lwc1	$f2, 1($v0)
	swc1	$f0, 36($sp)
	swc1	$f1, 38($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 38($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 32($sp)
	bflt	$f1, $fzero, beq_else.23345
	add.s	$f2, $f1, $fzero
	j	beq_cont.23346
beq_else.23345:
	sub.s	$f2, $fzero, $f1
beq_cont.23346:
	bflti2	$f2, $fi25, beq_else.23347
	addi	$a0, $zero, 0
	j	beq_cont.23348
beq_else.23347:
	addi	$a0, $zero, 1
beq_cont.23348:
	bnei	$a0, 0, beq_else.23349
	div.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.23351
	j	beq_cont.23352
beq_else.23351:
	sub.s	$f0, $fzero, $f0
beq_cont.23352:
	bflt	$fzero, $f0, beq_else.23353
	sub.s	$f0, $fzero, $f0
	bflti2	$f0, $fi27, beq_else.23355
	fdivi2	$f0, $fi7, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi28, $f0
	sub.s	$f0, $fzero, $f0
	j	beq_cont.23356
beq_else.23355:
	fsubi	$f1, $f0, $fi7
	faddi	$f0, $f0, $fi7
	div.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	faddi	$f0, $f0, $fi35
	sub.s	$f0, $fzero, $f0
beq_cont.23356:
	j	beq_cont.23354
beq_else.23353:
	bflti2	$f0, $fi27, beq_else.23357
	bflti2	$f0, $fi36, beq_else.23359
	fdivi2	$f0, $fi7, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi28, $f0
	j	beq_cont.23360
beq_else.23359:
	fsubi	$f1, $f0, $fi7
	faddi	$f0, $f0, $fi7
	div.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	faddi	$f0, $f0, $fi35
beq_cont.23360:
	j	beq_cont.23358
beq_else.23357:
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
beq_cont.23358:
beq_cont.23354:
	fmuli	$f0, $f0, $fi37
	fdivi	$f0, $f0, $fi38
	j	beq_cont.23350
beq_else.23349:
	faddi	$f0, $fzero, $fi26
beq_cont.23350:
	swc1	$f0, 40($sp)
	floor	$f0, $f0
	lwc1	$f1, 40($sp)
	sub.s	$f0, $f1, $f0
	lwc1	$f1, 36($sp)
	fsubi2	$f1, $fi13, $f1
	mul.s	$f1, $f1, $f1
	fsubi2	$f1, $fi39, $f1
	fsubi2	$f0, $fi13, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f1, $f0
	bflt	$f0, $fzero, beq_else.23361
	addi	$a0, $zero, 0
	j	beq_cont.23362
beq_else.23361:
	addi	$a0, $zero, 1
beq_cont.23362:
	bnei	$a0, 0, beq_else.23363
	j	beq_cont.23364
beq_else.23363:
	faddi	$f0, $fzero, $fi0
beq_cont.23364:
	fmuli	$f0, $f0, $fi1
	fdivi	$f0, $f0, $fi40
	swc1	$f0, 247($zero)
beq_cont.23328:
beq_cont.23326:
beq_cont.23324:
beq_cont.23310:
	lw	$a0, 14($sp)
	sll	$a0, $a0, 2
	lw	$a1, 236($zero)
	add	$a0, $a0, $a1
	lw	$a1, 9($sp)
	lw	$a2, 10($sp)
	sw2	$a0, $a2, $a1
	lw	$a0, 3($sp)
	lw	$v0, 1($a0)
	lw2	$v0, $v0, $a1
	lwc1	$f0, 238($zero)
	swc1	$f0, 0($v0)
	lwc1	$f0, 239($zero)
	swc1	$f0, 1($v0)
	lwc1	$f0, 240($zero)
	swc1	$f0, 2($v0)
	lw	$v0, 3($a0)
	lw	$a3, 15($sp)
	lw	$v1, 7($a3)
	lwc1	$f0, 0($v1)
	bflti2	$f0, $fi13, beq_else.23365
	addi	$t0, $zero, 0
	j	beq_cont.23366
beq_else.23365:
	addi	$t0, $zero, 1
beq_cont.23366:
	bnei	$t0, 0, beq_else.23367
	addi	$t0, $zero, 1
	sw2	$t0, $v0, $a1
	lw	$v0, 4($a0)
	lw2	$v1, $v0, $a1
	lwc1	$f0, 245($zero)
	swc1	$f0, 0($v1)
	lwc1	$f0, 246($zero)
	swc1	$f0, 1($v1)
	lwc1	$f0, 247($zero)
	swc1	$f0, 2($v1)
	lw2	$v0, $v0, $a1
	lwc1	$f0, 12($sp)
	fmuli	$f1, $f0, $fi45
	lwc1	$f2, 0($v0)
	mul.s	$f2, $f2, $f1
	swc1	$f2, 0($v0)
	lwc1	$f2, 1($v0)
	mul.s	$f2, $f2, $f1
	swc1	$f2, 1($v0)
	lwc1	$f2, 2($v0)
	mul.s	$f1, $f2, $f1
	swc1	$f1, 2($v0)
	lw	$v0, 7($a0)
	lw2	$v0, $v0, $a1
	lwc1	$f1, 242($zero)
	swc1	$f1, 0($v0)
	lwc1	$f1, 243($zero)
	swc1	$f1, 1($v0)
	lwc1	$f1, 244($zero)
	swc1	$f1, 2($v0)
	j	beq_cont.23368
beq_else.23367:
	addi	$t0, $zero, 0
	sw2	$t0, $v0, $a1
beq_cont.23368:
	lw	$t0, 8($sp)
	lwc1	$f0, 0($t0)
	lwc1	$f1, 242($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 1($t0)
	lwc1	$f2, 243($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 2($t0)
	lwc1	$f2, 244($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fmuli	$f0, $f0, $fi46
	lwc1	$f1, 0($t0)
	lwc1	$f2, 242($zero)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swc1	$f1, 0($t0)
	lwc1	$f1, 1($t0)
	lwc1	$f2, 243($zero)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swc1	$f1, 1($t0)
	lwc1	$f1, 2($t0)
	lwc1	$f2, 244($zero)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swc1	$f0, 2($t0)
	lw	$v0, 7($a3)
	lwc1	$f0, 1($v0)
	lwc1	$f1, 6($sp)
	mul.s	$f0, $f1, $f0
	addi	$t1, $zero, 0
	lw	$t2, 234($zero)
	swc1	$f0, 42($sp)
	add	$a1, $zero, $t2
	add	$a0, $zero, $t1
	sw	$ra, 48($sp)
	addi	$sp, $sp, 49
	jal	shadow_check_one_or_matrix.2932
	addi	$sp, $sp, -49
	lw	$ra, 48($sp)
	bnei	$a0, 0, beq_cont.23370
	lwc1	$f0, 242($zero)
	lwc1	$f1, 178($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 243($zero)
	lwc1	$f2, 179($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 244($zero)
	lwc1	$f2, 180($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	lwc1	$f1, 12($sp)
	mul.s	$f0, $f0, $f1
	lw	$a0, 8($sp)
	lwc1	$f2, 0($a0)
	lwc1	$f3, 178($zero)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 1($a0)
	lwc1	$f4, 179($zero)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lwc1	$f3, 2($a0)
	lwc1	$f4, 180($zero)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	sub.s	$f2, $fzero, $f2
	bflt	$fzero, $f0, beq_else.23371
	addi	$a1, $zero, 0
	j	beq_cont.23372
beq_else.23371:
	addi	$a1, $zero, 1
beq_cont.23372:
	bnei	$a1, 0, beq_else.23373
	j	beq_cont.23374
beq_else.23373:
	lwc1	$f3, 251($zero)
	lwc1	$f4, 245($zero)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swc1	$f3, 251($zero)
	lwc1	$f3, 252($zero)
	lwc1	$f4, 246($zero)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swc1	$f3, 252($zero)
	lwc1	$f3, 253($zero)
	lwc1	$f4, 247($zero)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f3, $f0
	swc1	$f0, 253($zero)
beq_cont.23374:
	bflt	$fzero, $f2, beq_else.23375
	addi	$a1, $zero, 0
	j	beq_cont.23376
beq_else.23375:
	addi	$a1, $zero, 1
beq_cont.23376:
	bnei	$a1, 0, beq_else.23377
	j	beq_cont.23378
beq_else.23377:
	mul.s	$f0, $f2, $f2
	mul.s	$f0, $f0, $f0
	lwc1	$f2, 42($sp)
	mul.s	$f0, $f0, $f2
	lwc1	$f3, 251($zero)
	add.s	$f3, $f3, $f0
	swc1	$f3, 251($zero)
	lwc1	$f3, 252($zero)
	add.s	$f3, $f3, $f0
	swc1	$f3, 252($zero)
	lwc1	$f3, 253($zero)
	add.s	$f0, $f3, $f0
	swc1	$f0, 253($zero)
beq_cont.23378:
beq_cont.23370:
	lwc1	$f0, 238($zero)
	swc1	$f0, 262($zero)
	lwc1	$f0, 239($zero)
	swc1	$f0, 263($zero)
	lwc1	$f0, 240($zero)
	swc1	$f0, 264($zero)
	lw	$a0, 100($zero)
	addi	$a1, $a0, -1
	lw	$a0, 2($sp)
	sw	$ra, 48($sp)
	addi	$sp, $sp, 49
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -49
	lw	$ra, 48($sp)
	lw	$a0, 538($zero)
	addi	$a0, $a0, -1
	lwc1	$f0, 12($sp)
	lwc1	$f1, 42($sp)
	lw	$a1, 8($sp)
	sw	$ra, 48($sp)
	addi	$sp, $sp, 49
	jal	trace_reflections.2979
	addi	$sp, $sp, -49
	lw	$ra, 48($sp)
	lwc1	$f0, 6($sp)
	bflti1	$fi47, $f0, beq_else.23379
	addi	$a0, $zero, 0
	j	beq_cont.23380
beq_else.23379:
	addi	$a0, $zero, 1
beq_cont.23380:
	bnei	$a0, 0, bne_else.23381
	jr	$ra
bne_else.23381:
	lw	$a0, 9($sp)
	blti	$a0, 4, beq_else.23383
	j	beq_cont.23384
beq_else.23383:
	addi	$a1, $a0, 1
	addi	$a2, $zero, -1
	lw	$a3, 10($sp)
	sw2	$a2, $a3, $a1
beq_cont.23384:
	lw	$a1, 11($sp)
	bnei	$a1, 2, bne_else.23385
	lw	$a1, 15($sp)
	lw	$v0, 7($a1)
	lwc1	$f1, 0($v0)
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	addi	$a0, $a0, 1
	lwc1	$f1, 237($zero)
	lwc1	$f2, 0($sp)
	add.s	$f1, $f2, $f1
	lw	$a1, 8($sp)
	lw	$a2, 3($sp)
	j	trace_ray.2984
bne_else.23385:
	jr	$ra
blt_true.23274:
	jr	$ra
iter_trace_diffuse_rays.2993:
	addi	$t0, $zero, 112
	addi	$t1, $zero, 242
	blti	$a3, 0, blti_true.23388
	lw2	$v0, $a0, $a3
	lw	$v0, 0($v0)
	lwc1	$f0, 0($v0)
	lwc1	$f1, 0($a1)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 1($v0)
	lwc1	$f2, 1($a1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 2($v0)
	lwc1	$f2, 2($a1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.23389
	addi	$t2, $zero, 0
	j	beq_cont.23390
beq_else.23389:
	addi	$t2, $zero, 1
beq_cont.23390:
	sw	$a2, 0($sp)
	sw	$a1, 1($sp)
	sw	$a0, 2($sp)
	sw	$a3, 3($sp)
	bnei	$t2, 0, beq_else.23391
	lw2	$v0, $a0, $a3
	fdivi	$f0, $f0, $fi49
	faddi	$f1, $fzero, $fi2
	swc1	$f1, 237($zero)
	lw	$t3, 234($zero)
	swc1	$f0, 4($sp)
	sw	$t1, 6($sp)
	sw	$v0, 7($sp)
	sw	$t0, 8($sp)
	add	$a2, $zero, $v0
	add	$a1, $zero, $t3
	add	$a0, $zero, $t2
	sw	$ra, 13($sp)
	addi	$sp, $sp, 14
	jal	trace_or_matrix_fast.2957
	addi	$sp, $sp, -14
	lw	$ra, 13($sp)
	lwc1	$f0, 237($zero)
	bflti1	$fi23, $f0, beq_else.23393
	addi	$a0, $zero, 0
	j	beq_cont.23394
beq_else.23393:
	addi	$a0, $zero, 1
beq_cont.23394:
	bnei	$a0, 0, beq_else.23395
	j	beq_cont.23396
beq_else.23395:
	bflti2	$f0, $fi24, beq_else.23397
	addi	$a0, $zero, 0
	j	beq_cont.23398
beq_else.23397:
	addi	$a0, $zero, 1
beq_cont.23398:
beq_cont.23396:
	bnei	$a0, 0, beq_else.23399
	j	beq_cont.23400
beq_else.23399:
	lw	$a0, 241($zero)
	lw	$a1, 8($sp)
	lw2	$v0, $a1, $a0
	lw	$a0, 7($sp)
	lw	$v1, 0($a0)
	lw	$at, 1($v0)
	sw	$v0, 9($sp)
	bnei	$at, 1, beq_else.23401
	lw	$a0, 236($zero)
	swc1	$fzero, 242($zero)
	swc1	$fzero, 243($zero)
	swc1	$fzero, 244($zero)
	addi	$a1, $a0, -1
	addi	$a0, $a0, -1
	add	$s1, $v1, $a0
	lwc1	$f0, 0($s1)
	bfeq	$f0, $fzero, c.eq_else.23403
	addi	$a0, $zero, 0
	j	c.eq_cont.23404
c.eq_else.23403:
	addi	$a0, $zero, 1
c.eq_cont.23404:
	bnei	$a0, 0, beq_else.23405
	bflt	$fzero, $f0, beq_else.23407
	j	beq_cont.23408
beq_else.23407:
	addi	$a0, $zero, 1
beq_cont.23408:
	bnei	$a0, 0, beq_else.23409
	faddi	$f0, $fzero, $fi20
	j	beq_cont.23410
beq_else.23409:
	faddi	$f0, $fzero, $fi7
beq_cont.23410:
	j	beq_cont.23406
beq_else.23405:
	faddi	$f0, $fzero, $fi0
beq_cont.23406:
	sub.s	$f0, $fzero, $f0
	lw	$a0, 6($sp)
	add	$s1, $a0, $a1
	swc1	$f0, 0($s1)
	j	beq_cont.23402
beq_else.23401:
	bnei	$at, 2, beq_else.23411
	lw	$v1, 4($v0)
	lwc1	$f0, 0($v1)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 242($zero)
	lwc1	$f0, 1($v1)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 243($zero)
	lwc1	$f0, 2($v1)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 244($zero)
	j	beq_cont.23412
beq_else.23411:
	lwc1	$f0, 238($zero)
	lw	$v1, 5($v0)
	lwc1	$f1, 0($v1)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 239($zero)
	lwc1	$f2, 1($v1)
	sub.s	$f1, $f1, $f2
	lwc1	$f2, 240($zero)
	lwc1	$f3, 2($v1)
	sub.s	$f2, $f2, $f3
	lw	$v1, 4($v0)
	lwc1	$f3, 0($v1)
	mul.s	$f3, $f0, $f3
	lwc1	$f4, 1($v1)
	mul.s	$f4, $f1, $f4
	lwc1	$f5, 2($v1)
	mul.s	$f5, $f2, $f5
	lw	$v1, 3($v0)
	bnei	$v1, 0, beq_else.23413
	swc1	$f3, 242($zero)
	swc1	$f4, 243($zero)
	swc1	$f5, 244($zero)
	j	beq_cont.23414
beq_else.23413:
	lw	$v1, 9($v0)
	lwc1	$f6, 2($v1)
	mul.s	$f6, $f1, $f6
	lwc1	$f7, 1($v1)
	mul.s	$f7, $f2, $f7
	add.s	$f6, $f6, $f7
	fmuli	$f6, $f6, $fi13
	add.s	$f3, $f3, $f6
	swc1	$f3, 242($zero)
	lwc1	$f3, 2($v1)
	mul.s	$f3, $f0, $f3
	lwc1	$f6, 0($v1)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f3, $f2
	fmuli	$f2, $f2, $fi13
	add.s	$f2, $f4, $f2
	swc1	$f2, 243($zero)
	lwc1	$f2, 1($v1)
	mul.s	$f0, $f0, $f2
	lwc1	$f2, 0($v1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fmuli	$f0, $f0, $fi13
	add.s	$f0, $f5, $f0
	swc1	$f0, 244($zero)
beq_cont.23414:
	lw	$v1, 6($v0)
	lwc1	$f0, 242($zero)
	mul.s	$f0, $f0, $f0
	lwc1	$f1, 243($zero)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 244($zero)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sw	$v1, 10($sp)
	sqrt	$f0, $f0
	bfeq	$f0, $fzero, c.eq_else.23415
	addi	$a0, $zero, 0
	j	c.eq_cont.23416
c.eq_else.23415:
	addi	$a0, $zero, 1
c.eq_cont.23416:
	bnei	$a0, 0, beq_else.23417
	lw	$a0, 10($sp)
	bnei	$a0, 0, beq_else.23419
	fdivi2	$f0, $fi7, $f0
	j	beq_cont.23420
beq_else.23419:
	fdivi2	$f0, $fi20, $f0
beq_cont.23420:
	j	beq_cont.23418
beq_else.23417:
	faddi	$f0, $fzero, $fi7
beq_cont.23418:
	lwc1	$f1, 242($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 242($zero)
	lwc1	$f1, 243($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 243($zero)
	lwc1	$f1, 244($zero)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 244($zero)
beq_cont.23412:
beq_cont.23402:
	lw	$a0, 9($sp)
	lw	$v0, 0($a0)
	lw	$v1, 8($a0)
	lwc1	$f0, 0($v1)
	swc1	$f0, 245($zero)
	lwc1	$f0, 1($v1)
	swc1	$f0, 246($zero)
	lwc1	$f0, 2($v1)
	swc1	$f0, 247($zero)
	bnei	$v0, 1, beq_else.23421
	lwc1	$f0, 238($zero)
	lw	$v0, 5($a0)
	lwc1	$f1, 0($v0)
	sub.s	$f0, $f0, $f1
	fmuli	$f1, $f0, $fi43
	swc1	$f0, 12($sp)
	add.s	$f0, $fzero, $f1
	floor	$f0, $f0
	fmuli	$f0, $f0, $fi44
	lwc1	$f1, 12($sp)
	sub.s	$f0, $f1, $f0
	bflti2	$f0, $fi41, beq_else.23424
	addi	$a0, $zero, 0
	j	beq_cont.23425
beq_else.23424:
	addi	$a0, $zero, 1
beq_cont.23425:
	lwc1	$f0, 240($zero)
	lw	$a1, 9($sp)
	lw	$v0, 5($a1)
	lwc1	$f1, 2($v0)
	sub.s	$f0, $f0, $f1
	fmuli	$f1, $f0, $fi43
	sw	$a0, 14($sp)
	swc1	$f0, 16($sp)
	add.s	$f0, $fzero, $f1
	floor	$f0, $f0
	fmuli	$f0, $f0, $fi44
	lwc1	$f1, 16($sp)
	sub.s	$f0, $f1, $f0
	bflti2	$f0, $fi41, beq_else.23427
	addi	$a0, $zero, 0
	j	beq_cont.23428
beq_else.23427:
	addi	$a0, $zero, 1
beq_cont.23428:
	lw	$a1, 14($sp)
	bnei	$a1, 0, beq_else.23429
	bnei	$a0, 0, beq_else.23431
	faddi	$f0, $fzero, $fi1
	j	beq_cont.23432
beq_else.23431:
	faddi	$f0, $fzero, $fi0
beq_cont.23432:
	j	beq_cont.23430
beq_else.23429:
	bnei	$a0, 0, beq_else.23433
	faddi	$f0, $fzero, $fi0
	j	beq_cont.23434
beq_else.23433:
	faddi	$f0, $fzero, $fi1
beq_cont.23434:
beq_cont.23430:
	swc1	$f0, 246($zero)
	j	beq_cont.23422
beq_else.23421:
	bnei	$v0, 2, beq_else.23435
	lwc1	$f0, 239($zero)
	fmuli	$f0, $f0, $fi42
	sw	$ra, 22($sp)
	addi	$sp, $sp, 23
	jal	sin.2640
	addi	$sp, $sp, -23
	lw	$ra, 22($sp)
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi1
	swc1	$f1, 245($zero)
	fsubi2	$f0, $fi7, $f0
	fmuli	$f0, $f0, $fi1
	swc1	$f0, 246($zero)
	j	beq_cont.23436
beq_else.23435:
	bnei	$v0, 3, beq_else.23437
	lwc1	$f0, 238($zero)
	lw	$v0, 5($a0)
	lwc1	$f1, 0($v0)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 240($zero)
	lwc1	$f2, 2($v0)
	sub.s	$f1, $f1, $f2
	mul.s	$f0, $f0, $f0
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	fdivi	$f0, $f0, $fi41
	swc1	$f0, 18($sp)
	floor	$f0, $f0
	lwc1	$f1, 18($sp)
	sub.s	$f0, $f1, $f0
	fmuli	$f0, $f0, $fi38
	sw	$ra, 24($sp)
	addi	$sp, $sp, 25
	jal	cos.2638
	addi	$sp, $sp, -25
	lw	$ra, 24($sp)
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi1
	swc1	$f1, 246($zero)
	fsubi2	$f0, $fi7, $f0
	fmuli	$f0, $f0, $fi1
	swc1	$f0, 247($zero)
	j	beq_cont.23438
beq_else.23437:
	bnei	$v0, 4, beq_cont.23440
	lwc1	$f0, 238($zero)
	lw	$v0, 5($a0)
	lwc1	$f1, 0($v0)
	sub.s	$f0, $f0, $f1
	lw	$v0, 4($a0)
	lwc1	$f1, 0($v0)
	swc1	$f0, 20($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 20($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 240($zero)
	lw	$a0, 9($sp)
	lw	$v0, 5($a0)
	lwc1	$f2, 2($v0)
	sub.s	$f1, $f1, $f2
	lw	$v0, 4($a0)
	lwc1	$f2, 2($v0)
	swc1	$f0, 22($sp)
	swc1	$f1, 24($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 24($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 22($sp)
	mul.s	$f2, $f1, $f1
	mul.s	$f3, $f0, $f0
	add.s	$f2, $f2, $f3
	bflt	$f1, $fzero, beq_else.23441
	add.s	$f3, $f1, $fzero
	j	beq_cont.23442
beq_else.23441:
	sub.s	$f3, $fzero, $f1
beq_cont.23442:
	bflti2	$f3, $fi25, beq_else.23443
	addi	$a0, $zero, 0
	j	beq_cont.23444
beq_else.23443:
	addi	$a0, $zero, 1
beq_cont.23444:
	bnei	$a0, 0, beq_else.23445
	div.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.23447
	j	beq_cont.23448
beq_else.23447:
	sub.s	$f0, $fzero, $f0
beq_cont.23448:
	bflt	$fzero, $f0, beq_else.23449
	sub.s	$f0, $fzero, $f0
	bflti2	$f0, $fi27, beq_else.23451
	fdivi2	$f0, $fi7, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi28, $f0
	sub.s	$f0, $fzero, $f0
	j	beq_cont.23452
beq_else.23451:
	fsubi	$f1, $f0, $fi7
	faddi	$f0, $f0, $fi7
	div.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	faddi	$f0, $f0, $fi35
	sub.s	$f0, $fzero, $f0
beq_cont.23452:
	j	beq_cont.23450
beq_else.23449:
	bflti2	$f0, $fi27, beq_else.23453
	bflti2	$f0, $fi36, beq_else.23455
	fdivi2	$f0, $fi7, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi28, $f0
	j	beq_cont.23456
beq_else.23455:
	fsubi	$f1, $f0, $fi7
	faddi	$f0, $f0, $fi7
	div.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	faddi	$f0, $f0, $fi35
beq_cont.23456:
	j	beq_cont.23454
beq_else.23453:
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
beq_cont.23454:
beq_cont.23450:
	fmuli	$f0, $f0, $fi37
	fdivi	$f0, $f0, $fi38
	j	beq_cont.23446
beq_else.23445:
	faddi	$f0, $fzero, $fi26
beq_cont.23446:
	swc1	$f2, 26($sp)
	swc1	$f0, 28($sp)
	floor	$f0, $f0
	lwc1	$f1, 28($sp)
	sub.s	$f0, $f1, $f0
	lwc1	$f1, 239($zero)
	lw	$a0, 9($sp)
	lw	$v0, 5($a0)
	lwc1	$f2, 1($v0)
	sub.s	$f1, $f1, $f2
	lw	$v0, 4($a0)
	lwc1	$f2, 1($v0)
	swc1	$f0, 30($sp)
	swc1	$f1, 32($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 32($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 26($sp)
	bflt	$f1, $fzero, beq_else.23457
	add.s	$f2, $f1, $fzero
	j	beq_cont.23458
beq_else.23457:
	sub.s	$f2, $fzero, $f1
beq_cont.23458:
	bflti2	$f2, $fi25, beq_else.23459
	addi	$a0, $zero, 0
	j	beq_cont.23460
beq_else.23459:
	addi	$a0, $zero, 1
beq_cont.23460:
	bnei	$a0, 0, beq_else.23461
	div.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.23463
	j	beq_cont.23464
beq_else.23463:
	sub.s	$f0, $fzero, $f0
beq_cont.23464:
	bflt	$fzero, $f0, beq_else.23465
	sub.s	$f0, $fzero, $f0
	bflti2	$f0, $fi27, beq_else.23467
	fdivi2	$f0, $fi7, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi28, $f0
	sub.s	$f0, $fzero, $f0
	j	beq_cont.23468
beq_else.23467:
	fsubi	$f1, $f0, $fi7
	faddi	$f0, $f0, $fi7
	div.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	faddi	$f0, $f0, $fi35
	sub.s	$f0, $fzero, $f0
beq_cont.23468:
	j	beq_cont.23466
beq_else.23465:
	bflti2	$f0, $fi27, beq_else.23469
	bflti2	$f0, $fi36, beq_else.23471
	fdivi2	$f0, $fi7, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi28, $f0
	j	beq_cont.23472
beq_else.23471:
	fsubi	$f1, $f0, $fi7
	faddi	$f0, $f0, $fi7
	div.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	faddi	$f0, $f0, $fi35
beq_cont.23472:
	j	beq_cont.23470
beq_else.23469:
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
beq_cont.23470:
beq_cont.23466:
	fmuli	$f0, $f0, $fi37
	fdivi	$f0, $f0, $fi38
	j	beq_cont.23462
beq_else.23461:
	faddi	$f0, $fzero, $fi26
beq_cont.23462:
	swc1	$f0, 34($sp)
	floor	$f0, $f0
	lwc1	$f1, 34($sp)
	sub.s	$f0, $f1, $f0
	lwc1	$f1, 30($sp)
	fsubi2	$f1, $fi13, $f1
	mul.s	$f1, $f1, $f1
	fsubi2	$f1, $fi39, $f1
	fsubi2	$f0, $fi13, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f1, $f0
	bflt	$f0, $fzero, beq_else.23473
	addi	$a0, $zero, 0
	j	beq_cont.23474
beq_else.23473:
	addi	$a0, $zero, 1
beq_cont.23474:
	bnei	$a0, 0, beq_else.23475
	j	beq_cont.23476
beq_else.23475:
	faddi	$f0, $fzero, $fi0
beq_cont.23476:
	fmuli	$f0, $f0, $fi1
	fdivi	$f0, $f0, $fi40
	swc1	$f0, 247($zero)
beq_cont.23440:
beq_cont.23438:
beq_cont.23436:
beq_cont.23422:
	addi	$a0, $zero, 0
	lw	$a1, 234($zero)
	sw	$ra, 40($sp)
	addi	$sp, $sp, 41
	jal	shadow_check_one_or_matrix.2932
	addi	$sp, $sp, -41
	lw	$ra, 40($sp)
	bnei	$a0, 0, beq_cont.23478
	lwc1	$f0, 242($zero)
	lwc1	$f1, 178($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 243($zero)
	lwc1	$f2, 179($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 244($zero)
	lwc1	$f2, 180($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	bflt	$fzero, $f0, beq_else.23479
	j	beq_cont.23480
beq_else.23479:
	addi	$a0, $zero, 1
beq_cont.23480:
	bnei	$a0, 0, beq_else.23481
	faddi	$f0, $fzero, $fi0
	j	beq_cont.23482
beq_else.23481:
beq_cont.23482:
	lwc1	$f1, 4($sp)
	mul.s	$f0, $f1, $f0
	lw	$a0, 9($sp)
	lw	$v0, 7($a0)
	lwc1	$f1, 0($v0)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 248($zero)
	lwc1	$f2, 245($zero)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swc1	$f1, 248($zero)
	lwc1	$f1, 249($zero)
	lwc1	$f2, 246($zero)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swc1	$f1, 249($zero)
	lwc1	$f1, 250($zero)
	lwc1	$f2, 247($zero)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swc1	$f0, 250($zero)
beq_cont.23478:
beq_cont.23400:
	j	beq_cont.23392
beq_else.23391:
	addi	$t2, $a3, 1
	lw2	$v0, $a0, $t2
	fdivi	$f0, $f0, $fi48
	faddi	$f1, $fzero, $fi2
	swc1	$f1, 237($zero)
	addi	$t2, $zero, 0
	lw	$t3, 234($zero)
	swc1	$f0, 36($sp)
	sw	$t1, 6($sp)
	sw	$v0, 38($sp)
	sw	$t0, 8($sp)
	add	$a2, $zero, $v0
	add	$a1, $zero, $t3
	add	$a0, $zero, $t2
	sw	$ra, 39($sp)
	addi	$sp, $sp, 40
	jal	trace_or_matrix_fast.2957
	addi	$sp, $sp, -40
	lw	$ra, 39($sp)
	lwc1	$f0, 237($zero)
	bflti1	$fi23, $f0, beq_else.23483
	addi	$a0, $zero, 0
	j	beq_cont.23484
beq_else.23483:
	addi	$a0, $zero, 1
beq_cont.23484:
	bnei	$a0, 0, beq_else.23485
	j	beq_cont.23486
beq_else.23485:
	bflti2	$f0, $fi24, beq_else.23487
	addi	$a0, $zero, 0
	j	beq_cont.23488
beq_else.23487:
	addi	$a0, $zero, 1
beq_cont.23488:
beq_cont.23486:
	bnei	$a0, 0, beq_else.23489
	j	beq_cont.23490
beq_else.23489:
	lw	$a0, 241($zero)
	lw	$a1, 8($sp)
	lw2	$v0, $a1, $a0
	lw	$a0, 38($sp)
	lw	$v1, 0($a0)
	lw	$at, 1($v0)
	sw	$v0, 39($sp)
	bnei	$at, 1, beq_else.23491
	lw	$a0, 236($zero)
	swc1	$fzero, 242($zero)
	swc1	$fzero, 243($zero)
	swc1	$fzero, 244($zero)
	addi	$a1, $a0, -1
	addi	$a0, $a0, -1
	add	$s1, $v1, $a0
	lwc1	$f0, 0($s1)
	bfeq	$f0, $fzero, c.eq_else.23493
	addi	$a0, $zero, 0
	j	c.eq_cont.23494
c.eq_else.23493:
	addi	$a0, $zero, 1
c.eq_cont.23494:
	bnei	$a0, 0, beq_else.23495
	bflt	$fzero, $f0, beq_else.23497
	j	beq_cont.23498
beq_else.23497:
	addi	$a0, $zero, 1
beq_cont.23498:
	bnei	$a0, 0, beq_else.23499
	faddi	$f0, $fzero, $fi20
	j	beq_cont.23500
beq_else.23499:
	faddi	$f0, $fzero, $fi7
beq_cont.23500:
	j	beq_cont.23496
beq_else.23495:
	faddi	$f0, $fzero, $fi0
beq_cont.23496:
	sub.s	$f0, $fzero, $f0
	lw	$a0, 6($sp)
	add	$s1, $a0, $a1
	swc1	$f0, 0($s1)
	j	beq_cont.23492
beq_else.23491:
	bnei	$at, 2, beq_else.23501
	lw	$v1, 4($v0)
	lwc1	$f0, 0($v1)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 242($zero)
	lwc1	$f0, 1($v1)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 243($zero)
	lwc1	$f0, 2($v1)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 244($zero)
	j	beq_cont.23502
beq_else.23501:
	lwc1	$f0, 238($zero)
	lw	$v1, 5($v0)
	lwc1	$f1, 0($v1)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 239($zero)
	lwc1	$f2, 1($v1)
	sub.s	$f1, $f1, $f2
	lwc1	$f2, 240($zero)
	lwc1	$f3, 2($v1)
	sub.s	$f2, $f2, $f3
	lw	$v1, 4($v0)
	lwc1	$f3, 0($v1)
	mul.s	$f3, $f0, $f3
	lwc1	$f4, 1($v1)
	mul.s	$f4, $f1, $f4
	lwc1	$f5, 2($v1)
	mul.s	$f5, $f2, $f5
	lw	$v1, 3($v0)
	bnei	$v1, 0, beq_else.23503
	swc1	$f3, 242($zero)
	swc1	$f4, 243($zero)
	swc1	$f5, 244($zero)
	j	beq_cont.23504
beq_else.23503:
	lw	$v1, 9($v0)
	lwc1	$f6, 2($v1)
	mul.s	$f6, $f1, $f6
	lwc1	$f7, 1($v1)
	mul.s	$f7, $f2, $f7
	add.s	$f6, $f6, $f7
	fmuli	$f6, $f6, $fi13
	add.s	$f3, $f3, $f6
	swc1	$f3, 242($zero)
	lwc1	$f3, 2($v1)
	mul.s	$f3, $f0, $f3
	lwc1	$f6, 0($v1)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f3, $f2
	fmuli	$f2, $f2, $fi13
	add.s	$f2, $f4, $f2
	swc1	$f2, 243($zero)
	lwc1	$f2, 1($v1)
	mul.s	$f0, $f0, $f2
	lwc1	$f2, 0($v1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fmuli	$f0, $f0, $fi13
	add.s	$f0, $f5, $f0
	swc1	$f0, 244($zero)
beq_cont.23504:
	lw	$v1, 6($v0)
	lwc1	$f0, 242($zero)
	mul.s	$f0, $f0, $f0
	lwc1	$f1, 243($zero)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 244($zero)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sw	$v1, 40($sp)
	sqrt	$f0, $f0
	bfeq	$f0, $fzero, c.eq_else.23505
	addi	$a0, $zero, 0
	j	c.eq_cont.23506
c.eq_else.23505:
	addi	$a0, $zero, 1
c.eq_cont.23506:
	bnei	$a0, 0, beq_else.23507
	lw	$a0, 40($sp)
	bnei	$a0, 0, beq_else.23509
	fdivi2	$f0, $fi7, $f0
	j	beq_cont.23510
beq_else.23509:
	fdivi2	$f0, $fi20, $f0
beq_cont.23510:
	j	beq_cont.23508
beq_else.23507:
	faddi	$f0, $fzero, $fi7
beq_cont.23508:
	lwc1	$f1, 242($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 242($zero)
	lwc1	$f1, 243($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 243($zero)
	lwc1	$f1, 244($zero)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 244($zero)
beq_cont.23502:
beq_cont.23492:
	lw	$a0, 39($sp)
	lw	$v0, 0($a0)
	lw	$v1, 8($a0)
	lwc1	$f0, 0($v1)
	swc1	$f0, 245($zero)
	lwc1	$f0, 1($v1)
	swc1	$f0, 246($zero)
	lwc1	$f0, 2($v1)
	swc1	$f0, 247($zero)
	bnei	$v0, 1, beq_else.23511
	lwc1	$f0, 238($zero)
	lw	$v0, 5($a0)
	lwc1	$f1, 0($v0)
	sub.s	$f0, $f0, $f1
	fmuli	$f1, $f0, $fi43
	swc1	$f0, 42($sp)
	add.s	$f0, $fzero, $f1
	floor	$f0, $f0
	fmuli	$f0, $f0, $fi44
	lwc1	$f1, 42($sp)
	sub.s	$f0, $f1, $f0
	bflti2	$f0, $fi41, beq_else.23514
	addi	$a0, $zero, 0
	j	beq_cont.23515
beq_else.23514:
	addi	$a0, $zero, 1
beq_cont.23515:
	lwc1	$f0, 240($zero)
	lw	$a1, 39($sp)
	lw	$v0, 5($a1)
	lwc1	$f1, 2($v0)
	sub.s	$f0, $f0, $f1
	fmuli	$f1, $f0, $fi43
	sw	$a0, 44($sp)
	swc1	$f0, 46($sp)
	add.s	$f0, $fzero, $f1
	floor	$f0, $f0
	fmuli	$f0, $f0, $fi44
	lwc1	$f1, 46($sp)
	sub.s	$f0, $f1, $f0
	bflti2	$f0, $fi41, beq_else.23517
	addi	$a0, $zero, 0
	j	beq_cont.23518
beq_else.23517:
	addi	$a0, $zero, 1
beq_cont.23518:
	lw	$a1, 44($sp)
	bnei	$a1, 0, beq_else.23519
	bnei	$a0, 0, beq_else.23521
	faddi	$f0, $fzero, $fi1
	j	beq_cont.23522
beq_else.23521:
	faddi	$f0, $fzero, $fi0
beq_cont.23522:
	j	beq_cont.23520
beq_else.23519:
	bnei	$a0, 0, beq_else.23523
	faddi	$f0, $fzero, $fi0
	j	beq_cont.23524
beq_else.23523:
	faddi	$f0, $fzero, $fi1
beq_cont.23524:
beq_cont.23520:
	swc1	$f0, 246($zero)
	j	beq_cont.23512
beq_else.23511:
	bnei	$v0, 2, beq_else.23525
	lwc1	$f0, 239($zero)
	fmuli	$f0, $f0, $fi42
	sw	$ra, 52($sp)
	addi	$sp, $sp, 53
	jal	sin.2640
	addi	$sp, $sp, -53
	lw	$ra, 52($sp)
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi1
	swc1	$f1, 245($zero)
	fsubi2	$f0, $fi7, $f0
	fmuli	$f0, $f0, $fi1
	swc1	$f0, 246($zero)
	j	beq_cont.23526
beq_else.23525:
	bnei	$v0, 3, beq_else.23527
	lwc1	$f0, 238($zero)
	lw	$v0, 5($a0)
	lwc1	$f1, 0($v0)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 240($zero)
	lwc1	$f2, 2($v0)
	sub.s	$f1, $f1, $f2
	mul.s	$f0, $f0, $f0
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	fdivi	$f0, $f0, $fi41
	swc1	$f0, 48($sp)
	floor	$f0, $f0
	lwc1	$f1, 48($sp)
	sub.s	$f0, $f1, $f0
	fmuli	$f0, $f0, $fi38
	sw	$ra, 54($sp)
	addi	$sp, $sp, 55
	jal	cos.2638
	addi	$sp, $sp, -55
	lw	$ra, 54($sp)
	mul.s	$f0, $f0, $f0
	fmuli	$f1, $f0, $fi1
	swc1	$f1, 246($zero)
	fsubi2	$f0, $fi7, $f0
	fmuli	$f0, $f0, $fi1
	swc1	$f0, 247($zero)
	j	beq_cont.23528
beq_else.23527:
	bnei	$v0, 4, beq_cont.23530
	lwc1	$f0, 238($zero)
	lw	$v0, 5($a0)
	lwc1	$f1, 0($v0)
	sub.s	$f0, $f0, $f1
	lw	$v0, 4($a0)
	lwc1	$f1, 0($v0)
	swc1	$f0, 50($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 50($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 240($zero)
	lw	$a0, 39($sp)
	lw	$v0, 5($a0)
	lwc1	$f2, 2($v0)
	sub.s	$f1, $f1, $f2
	lw	$v0, 4($a0)
	lwc1	$f2, 2($v0)
	swc1	$f0, 52($sp)
	swc1	$f1, 54($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 54($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 52($sp)
	mul.s	$f2, $f1, $f1
	mul.s	$f3, $f0, $f0
	add.s	$f2, $f2, $f3
	bflt	$f1, $fzero, beq_else.23531
	add.s	$f3, $f1, $fzero
	j	beq_cont.23532
beq_else.23531:
	sub.s	$f3, $fzero, $f1
beq_cont.23532:
	bflti2	$f3, $fi25, beq_else.23533
	addi	$a0, $zero, 0
	j	beq_cont.23534
beq_else.23533:
	addi	$a0, $zero, 1
beq_cont.23534:
	bnei	$a0, 0, beq_else.23535
	div.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.23537
	j	beq_cont.23538
beq_else.23537:
	sub.s	$f0, $fzero, $f0
beq_cont.23538:
	bflt	$fzero, $f0, beq_else.23539
	sub.s	$f0, $fzero, $f0
	bflti2	$f0, $fi27, beq_else.23541
	fdivi2	$f0, $fi7, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi28, $f0
	sub.s	$f0, $fzero, $f0
	j	beq_cont.23542
beq_else.23541:
	fsubi	$f1, $f0, $fi7
	faddi	$f0, $f0, $fi7
	div.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	faddi	$f0, $f0, $fi35
	sub.s	$f0, $fzero, $f0
beq_cont.23542:
	j	beq_cont.23540
beq_else.23539:
	bflti2	$f0, $fi27, beq_else.23543
	bflti2	$f0, $fi36, beq_else.23545
	fdivi2	$f0, $fi7, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi28, $f0
	j	beq_cont.23546
beq_else.23545:
	fsubi	$f1, $f0, $fi7
	faddi	$f0, $f0, $fi7
	div.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	faddi	$f0, $f0, $fi35
beq_cont.23546:
	j	beq_cont.23544
beq_else.23543:
	mul.s	$f1, $f0, $f0
	fmuli	$f3, $f1, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f1, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f1, $f1, $f3
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
beq_cont.23544:
beq_cont.23540:
	fmuli	$f0, $f0, $fi37
	fdivi	$f0, $f0, $fi38
	j	beq_cont.23536
beq_else.23535:
	faddi	$f0, $fzero, $fi26
beq_cont.23536:
	swc1	$f2, 56($sp)
	swc1	$f0, 58($sp)
	floor	$f0, $f0
	lwc1	$f1, 58($sp)
	sub.s	$f0, $f1, $f0
	lwc1	$f1, 239($zero)
	lw	$a0, 39($sp)
	lw	$v0, 5($a0)
	lwc1	$f2, 1($v0)
	sub.s	$f1, $f1, $f2
	lw	$v0, 4($a0)
	lwc1	$f2, 1($v0)
	swc1	$f0, 60($sp)
	swc1	$f1, 62($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 62($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 56($sp)
	bflt	$f1, $fzero, beq_else.23547
	add.s	$f2, $f1, $fzero
	j	beq_cont.23548
beq_else.23547:
	sub.s	$f2, $fzero, $f1
beq_cont.23548:
	bflti2	$f2, $fi25, beq_else.23549
	addi	$a0, $zero, 0
	j	beq_cont.23550
beq_else.23549:
	addi	$a0, $zero, 1
beq_cont.23550:
	bnei	$a0, 0, beq_else.23551
	div.s	$f0, $f0, $f1
	bflt	$f0, $fzero, beq_else.23553
	j	beq_cont.23554
beq_else.23553:
	sub.s	$f0, $fzero, $f0
beq_cont.23554:
	bflt	$fzero, $f0, beq_else.23555
	sub.s	$f0, $fzero, $f0
	bflti2	$f0, $fi27, beq_else.23557
	fdivi2	$f0, $fi7, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi28, $f0
	sub.s	$f0, $fzero, $f0
	j	beq_cont.23558
beq_else.23557:
	fsubi	$f1, $f0, $fi7
	faddi	$f0, $f0, $fi7
	div.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	faddi	$f0, $f0, $fi35
	sub.s	$f0, $fzero, $f0
beq_cont.23558:
	j	beq_cont.23556
beq_else.23555:
	bflti2	$f0, $fi27, beq_else.23559
	bflti2	$f0, $fi36, beq_else.23561
	fdivi2	$f0, $fi7, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	fsubi2	$f0, $fi28, $f0
	j	beq_cont.23562
beq_else.23561:
	fsubi	$f1, $f0, $fi7
	faddi	$f0, $f0, $fi7
	div.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
	faddi	$f0, $f0, $fi35
beq_cont.23562:
	j	beq_cont.23560
beq_else.23559:
	mul.s	$f1, $f0, $f0
	fmuli	$f2, $f1, $fi34
	fsubi2	$f2, $fi33, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi32, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi31, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi30, $f2
	mul.s	$f2, $f1, $f2
	fsubi2	$f2, $fi29, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi7, $f1
	mul.s	$f0, $f0, $f1
beq_cont.23560:
beq_cont.23556:
	fmuli	$f0, $f0, $fi37
	fdivi	$f0, $f0, $fi38
	j	beq_cont.23552
beq_else.23551:
	faddi	$f0, $fzero, $fi26
beq_cont.23552:
	swc1	$f0, 64($sp)
	floor	$f0, $f0
	lwc1	$f1, 64($sp)
	sub.s	$f0, $f1, $f0
	lwc1	$f1, 60($sp)
	fsubi2	$f1, $fi13, $f1
	mul.s	$f1, $f1, $f1
	fsubi2	$f1, $fi39, $f1
	fsubi2	$f0, $fi13, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f1, $f0
	bflt	$f0, $fzero, beq_else.23563
	addi	$a0, $zero, 0
	j	beq_cont.23564
beq_else.23563:
	addi	$a0, $zero, 1
beq_cont.23564:
	bnei	$a0, 0, beq_else.23565
	j	beq_cont.23566
beq_else.23565:
	faddi	$f0, $fzero, $fi0
beq_cont.23566:
	fmuli	$f0, $f0, $fi1
	fdivi	$f0, $f0, $fi40
	swc1	$f0, 247($zero)
beq_cont.23530:
beq_cont.23528:
beq_cont.23526:
beq_cont.23512:
	addi	$a0, $zero, 0
	lw	$a1, 234($zero)
	sw	$ra, 70($sp)
	addi	$sp, $sp, 71
	jal	shadow_check_one_or_matrix.2932
	addi	$sp, $sp, -71
	lw	$ra, 70($sp)
	bnei	$a0, 0, beq_cont.23568
	lwc1	$f0, 242($zero)
	lwc1	$f1, 178($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 243($zero)
	lwc1	$f2, 179($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 244($zero)
	lwc1	$f2, 180($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	bflt	$fzero, $f0, beq_else.23569
	j	beq_cont.23570
beq_else.23569:
	addi	$a0, $zero, 1
beq_cont.23570:
	bnei	$a0, 0, beq_else.23571
	faddi	$f0, $fzero, $fi0
	j	beq_cont.23572
beq_else.23571:
beq_cont.23572:
	lwc1	$f1, 36($sp)
	mul.s	$f0, $f1, $f0
	lw	$a0, 39($sp)
	lw	$v0, 7($a0)
	lwc1	$f1, 0($v0)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 248($zero)
	lwc1	$f2, 245($zero)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swc1	$f1, 248($zero)
	lwc1	$f1, 249($zero)
	lwc1	$f2, 246($zero)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swc1	$f1, 249($zero)
	lwc1	$f1, 250($zero)
	lwc1	$f2, 247($zero)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swc1	$f0, 250($zero)
beq_cont.23568:
beq_cont.23490:
beq_cont.23392:
	lw	$a0, 3($sp)
	addi	$a3, $a0, -2
	lw	$a0, 2($sp)
	lw	$a1, 1($sp)
	lw	$a2, 0($sp)
	j	iter_trace_diffuse_rays.2993
blti_true.23388:
	jr	$ra
do_without_neighbors.3015:
	addi	$a2, $zero, 4
	blt	$a2, $a1, blt_true.23574
	lw	$v0, 2($a0)
	lw2	$v0, $v0, $a1
	blti	$v0, 0, blti_true.23575
	lw	$v0, 3($a0)
	lw2	$v0, $v0, $a1
	sw	$a0, 0($sp)
	sw	$a1, 1($sp)
	bnei	$v0, 0, beq_else.23576
	j	beq_cont.23577
beq_else.23576:
	lw	$v0, 5($a0)
	lw	$v1, 7($a0)
	lw	$at, 1($a0)
	lw	$s2, 4($a0)
	lw2	$v0, $v0, $a1
	lwc1	$f0, 0($v0)
	swc1	$f0, 248($zero)
	lwc1	$f0, 1($v0)
	swc1	$f0, 249($zero)
	lwc1	$f0, 2($v0)
	swc1	$f0, 250($zero)
	lw	$v0, 6($a0)
	lw	$v0, 0($v0)
	lw2	$v1, $v1, $a1
	lw2	$at, $at, $a1
	sw	$s2, 2($sp)
	sw	$v1, 3($sp)
	sw	$at, 4($sp)
	sw	$v0, 5($sp)
	bnei	$v0, 0, beq_else.23578
	j	beq_cont.23579
beq_else.23578:
	lw	$a2, 279($zero)
	lwc1	$f0, 0($at)
	swc1	$f0, 262($zero)
	lwc1	$f0, 1($at)
	swc1	$f0, 263($zero)
	lwc1	$f0, 2($at)
	swc1	$f0, 264($zero)
	lw	$a3, 100($zero)
	addi	$a3, $a3, -1
	sw	$a2, 6($sp)
	add	$a1, $zero, $a3
	add	$a0, $zero, $at
	sw	$ra, 7($sp)
	addi	$sp, $sp, 8
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -8
	lw	$ra, 7($sp)
	addi	$a3, $zero, 118
	lw	$a0, 6($sp)
	lw	$a1, 3($sp)
	lw	$a2, 4($sp)
	sw	$ra, 7($sp)
	addi	$sp, $sp, 8
	jal	iter_trace_diffuse_rays.2993
	addi	$sp, $sp, -8
	lw	$ra, 7($sp)
beq_cont.23579:
	lw	$a0, 5($sp)
	bnei	$a0, 1, beq_else.23580
	j	beq_cont.23581
beq_else.23580:
	lw	$a1, 280($zero)
	lw	$a2, 4($sp)
	lwc1	$f0, 0($a2)
	swc1	$f0, 262($zero)
	lwc1	$f0, 1($a2)
	swc1	$f0, 263($zero)
	lwc1	$f0, 2($a2)
	swc1	$f0, 264($zero)
	lw	$a3, 100($zero)
	addi	$a3, $a3, -1
	sw	$a1, 7($sp)
	add	$a1, $zero, $a3
	add	$a0, $zero, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 13
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -13
	lw	$ra, 12($sp)
	addi	$a3, $zero, 118
	lw	$a0, 7($sp)
	lw	$a1, 3($sp)
	lw	$a2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 13
	jal	iter_trace_diffuse_rays.2993
	addi	$sp, $sp, -13
	lw	$ra, 12($sp)
beq_cont.23581:
	lw	$a0, 5($sp)
	bnei	$a0, 2, beq_else.23582
	j	beq_cont.23583
beq_else.23582:
	lw	$a1, 281($zero)
	lw	$a2, 4($sp)
	lwc1	$f0, 0($a2)
	swc1	$f0, 262($zero)
	lwc1	$f0, 1($a2)
	swc1	$f0, 263($zero)
	lwc1	$f0, 2($a2)
	swc1	$f0, 264($zero)
	lw	$a3, 100($zero)
	addi	$a3, $a3, -1
	sw	$a1, 8($sp)
	add	$a1, $zero, $a3
	add	$a0, $zero, $a2
	sw	$ra, 13($sp)
	addi	$sp, $sp, 14
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -14
	lw	$ra, 13($sp)
	addi	$a3, $zero, 118
	lw	$a0, 8($sp)
	lw	$a1, 3($sp)
	lw	$a2, 4($sp)
	sw	$ra, 13($sp)
	addi	$sp, $sp, 14
	jal	iter_trace_diffuse_rays.2993
	addi	$sp, $sp, -14
	lw	$ra, 13($sp)
beq_cont.23583:
	lw	$a0, 5($sp)
	bnei	$a0, 3, beq_else.23584
	j	beq_cont.23585
beq_else.23584:
	lw	$a1, 282($zero)
	lw	$a2, 4($sp)
	lwc1	$f0, 0($a2)
	swc1	$f0, 262($zero)
	lwc1	$f0, 1($a2)
	swc1	$f0, 263($zero)
	lwc1	$f0, 2($a2)
	swc1	$f0, 264($zero)
	lw	$a3, 100($zero)
	addi	$a3, $a3, -1
	sw	$a1, 9($sp)
	add	$a1, $zero, $a3
	add	$a0, $zero, $a2
	sw	$ra, 14($sp)
	addi	$sp, $sp, 15
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -15
	lw	$ra, 14($sp)
	addi	$a3, $zero, 118
	lw	$a0, 9($sp)
	lw	$a1, 3($sp)
	lw	$a2, 4($sp)
	sw	$ra, 14($sp)
	addi	$sp, $sp, 15
	jal	iter_trace_diffuse_rays.2993
	addi	$sp, $sp, -15
	lw	$ra, 14($sp)
beq_cont.23585:
	lw	$a0, 5($sp)
	bnei	$a0, 4, beq_else.23586
	j	beq_cont.23587
beq_else.23586:
	lw	$a0, 283($zero)
	lw	$a1, 4($sp)
	lwc1	$f0, 0($a1)
	swc1	$f0, 262($zero)
	lwc1	$f0, 1($a1)
	swc1	$f0, 263($zero)
	lwc1	$f0, 2($a1)
	swc1	$f0, 264($zero)
	lw	$a2, 100($zero)
	addi	$a2, $a2, -1
	sw	$a0, 10($sp)
	add	$a0, $zero, $a1
	add	$a1, $zero, $a2
	sw	$ra, 15($sp)
	addi	$sp, $sp, 16
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -16
	lw	$ra, 15($sp)
	addi	$a3, $zero, 118
	lw	$a0, 10($sp)
	lw	$a1, 3($sp)
	lw	$a2, 4($sp)
	sw	$ra, 15($sp)
	addi	$sp, $sp, 16
	jal	iter_trace_diffuse_rays.2993
	addi	$sp, $sp, -16
	lw	$ra, 15($sp)
beq_cont.23587:
	lw	$a0, 1($sp)
	lw	$a1, 2($sp)
	lw2	$v0, $a1, $a0
	lwc1	$f0, 251($zero)
	lwc1	$f1, 0($v0)
	lwc1	$f2, 248($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 251($zero)
	lwc1	$f0, 252($zero)
	lwc1	$f1, 1($v0)
	lwc1	$f2, 249($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 252($zero)
	lwc1	$f0, 253($zero)
	lwc1	$f1, 2($v0)
	lwc1	$f2, 250($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 253($zero)
beq_cont.23577:
	lw	$a0, 1($sp)
	addi	$a1, $a0, 1
	lw	$a0, 0($sp)
	j	do_without_neighbors.3015
blti_true.23575:
	jr	$ra
blt_true.23574:
	jr	$ra
try_exploit_neighbors.3031:
	lw2	$v0, $a3, $a0
	addi	$t2, $zero, 4
	blt	$t2, $t1, blt_true.23590
	lw	$v1, 2($v0)
	lw2	$v1, $v1, $t1
	blti	$v1, 0, blti_true.23591
	lw2	$v1, $a3, $a0
	lw	$v1, 2($v1)
	lw2	$v1, $v1, $t1
	lw2	$at, $a2, $a0
	lw	$at, 2($at)
	lw2	$at, $at, $t1
	bne	$at, $v1, beq_else.23592
	lw2	$at, $t0, $a0
	lw	$at, 2($at)
	lw2	$at, $at, $t1
	bne	$at, $v1, beq_else.23594
	addi	$t2, $a0, -1
	lw2	$at, $a3, $t2
	lw	$at, 2($at)
	lw2	$at, $at, $t1
	bne	$at, $v1, beq_else.23596
	addi	$t2, $a0, 1
	lw2	$at, $a3, $t2
	lw	$at, 2($at)
	lw2	$at, $at, $t1
	bne	$at, $v1, beq_else.23598
	addi	$t2, $zero, 1
	j	beq_cont.23599
beq_else.23598:
	addi	$t2, $zero, 0
beq_cont.23599:
	j	beq_cont.23597
beq_else.23596:
	addi	$t2, $zero, 0
beq_cont.23597:
	j	beq_cont.23595
beq_else.23594:
	addi	$t2, $zero, 0
beq_cont.23595:
	j	beq_cont.23593
beq_else.23592:
	addi	$t2, $zero, 0
beq_cont.23593:
	bnei	$t2, 0, bne_else.23600
	lw2	$a0, $a3, $a0
	add	$a1, $zero, $t1
	j	do_without_neighbors.3015
bne_else.23600:
	lw	$v0, 3($v0)
	lw2	$v0, $v0, $t1
	bnei	$v0, 0, beq_else.23601
	j	beq_cont.23602
beq_else.23601:
	lw2	$v0, $a2, $a0
	lw	$v0, 5($v0)
	addi	$t2, $a0, -1
	lw2	$v1, $a3, $t2
	lw	$v1, 5($v1)
	lw2	$at, $a3, $a0
	lw	$at, 5($at)
	addi	$t2, $a0, 1
	lw2	$s2, $a3, $t2
	lw	$s2, 5($s2)
	lw2	$s3, $t0, $a0
	lw	$s3, 5($s3)
	lw2	$v0, $v0, $t1
	lwc1	$f0, 0($v0)
	swc1	$f0, 248($zero)
	lwc1	$f0, 1($v0)
	swc1	$f0, 249($zero)
	lwc1	$f0, 2($v0)
	swc1	$f0, 250($zero)
	lw2	$v0, $v1, $t1
	lwc1	$f0, 248($zero)
	lwc1	$f1, 0($v0)
	add.s	$f0, $f0, $f1
	swc1	$f0, 248($zero)
	lwc1	$f0, 249($zero)
	lwc1	$f1, 1($v0)
	add.s	$f0, $f0, $f1
	swc1	$f0, 249($zero)
	lwc1	$f0, 250($zero)
	lwc1	$f1, 2($v0)
	add.s	$f0, $f0, $f1
	swc1	$f0, 250($zero)
	lw2	$v0, $at, $t1
	lwc1	$f0, 248($zero)
	lwc1	$f1, 0($v0)
	add.s	$f0, $f0, $f1
	swc1	$f0, 248($zero)
	lwc1	$f0, 249($zero)
	lwc1	$f1, 1($v0)
	add.s	$f0, $f0, $f1
	swc1	$f0, 249($zero)
	lwc1	$f0, 250($zero)
	lwc1	$f1, 2($v0)
	add.s	$f0, $f0, $f1
	swc1	$f0, 250($zero)
	lw2	$v0, $s2, $t1
	lwc1	$f0, 248($zero)
	lwc1	$f1, 0($v0)
	add.s	$f0, $f0, $f1
	swc1	$f0, 248($zero)
	lwc1	$f0, 249($zero)
	lwc1	$f1, 1($v0)
	add.s	$f0, $f0, $f1
	swc1	$f0, 249($zero)
	lwc1	$f0, 250($zero)
	lwc1	$f1, 2($v0)
	add.s	$f0, $f0, $f1
	swc1	$f0, 250($zero)
	lw2	$v0, $s3, $t1
	lwc1	$f0, 248($zero)
	lwc1	$f1, 0($v0)
	add.s	$f0, $f0, $f1
	swc1	$f0, 248($zero)
	lwc1	$f0, 249($zero)
	lwc1	$f1, 1($v0)
	add.s	$f0, $f0, $f1
	swc1	$f0, 249($zero)
	lwc1	$f0, 250($zero)
	lwc1	$f1, 2($v0)
	add.s	$f0, $f0, $f1
	swc1	$f0, 250($zero)
	lw2	$v0, $a3, $a0
	lw	$v0, 4($v0)
	lw2	$v0, $v0, $t1
	lwc1	$f0, 251($zero)
	lwc1	$f1, 0($v0)
	lwc1	$f2, 248($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 251($zero)
	lwc1	$f0, 252($zero)
	lwc1	$f1, 1($v0)
	lwc1	$f2, 249($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 252($zero)
	lwc1	$f0, 253($zero)
	lwc1	$f1, 2($v0)
	lwc1	$f2, 250($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 253($zero)
beq_cont.23602:
	addi	$t1, $t1, 1
	j	try_exploit_neighbors.3031
blti_true.23591:
	jr	$ra
blt_true.23590:
	jr	$ra
syou.3038:
	blt	$a0, $a1, blt_true.23605
	sub	$a0, $a0, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 5
	jal	syou.3038
	addi	$sp, $sp, -5
	lw	$ra, 4($sp)
	addi	$a0, $a0, 1
	jr	$ra
blt_true.23605:
	addi	$a0, $zero, 0
	jr	$ra
amari.3041:
	blt	$a0, $a1, blt_true.23606
	sub	$a0, $a0, $a1
	j	amari.3041
blt_true.23606:
	jr	$ra
print_my_sub.3044:
	blti	$a0, 10, blti_true.23607
	addi	$a1, $zero, 10
	sw	$a0, 0($sp)
	sw	$ra, 5($sp)
	addi	$sp, $sp, 6
	jal	syou.3038
	addi	$sp, $sp, -6
	lw	$ra, 5($sp)
	sw	$ra, 5($sp)
	addi	$sp, $sp, 6
	jal	print_my_sub.3044
	addi	$sp, $sp, -6
	lw	$ra, 5($sp)
	addi	$a1, $zero, 10
	lw	$a0, 0($sp)
	sw	$ra, 5($sp)
	addi	$sp, $sp, 6
	jal	amari.3041
	addi	$sp, $sp, -6
	lw	$ra, 5($sp)
	addi	$a0, $a0, 48
	outc	$a0
	jr	$ra
blti_true.23607:
	addi	$a0, $a0, 48
	outc	$a0
	jr	$ra
pretrace_diffuse_rays.3052:
	addi	$a2, $zero, 279
	addi	$a3, $zero, 4
	blt	$a3, $a1, blt_true.23608
	lw	$v0, 2($a0)
	lw2	$v0, $v0, $a1
	blti	$v0, 0, blti_true.23609
	lw	$v0, 3($a0)
	lw2	$v0, $v0, $a1
	bnei	$v0, 0, beq_else.23610
	j	beq_cont.23611
beq_else.23610:
	lw	$v0, 6($a0)
	lw	$v0, 0($v0)
	swc1	$fzero, 248($zero)
	swc1	$fzero, 249($zero)
	swc1	$fzero, 250($zero)
	lw	$v1, 7($a0)
	lw	$at, 1($a0)
	lw2	$v0, $a2, $v0
	lw2	$v1, $v1, $a1
	lw2	$at, $at, $a1
	lwc1	$f0, 0($at)
	swc1	$f0, 262($zero)
	lwc1	$f0, 1($at)
	swc1	$f0, 263($zero)
	lwc1	$f0, 2($at)
	swc1	$f0, 264($zero)
	lw	$a2, 100($zero)
	addi	$a2, $a2, -1
	sw	$a1, 0($sp)
	sw	$a0, 1($sp)
	sw	$at, 2($sp)
	sw	$v1, 3($sp)
	sw	$v0, 4($sp)
	add	$a1, $zero, $a2
	add	$a0, $zero, $at
	sw	$ra, 9($sp)
	addi	$sp, $sp, 10
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -10
	lw	$ra, 9($sp)
	addi	$a3, $zero, 118
	lw	$a0, 4($sp)
	lw	$a1, 3($sp)
	lw	$a2, 2($sp)
	sw	$ra, 9($sp)
	addi	$sp, $sp, 10
	jal	iter_trace_diffuse_rays.2993
	addi	$sp, $sp, -10
	lw	$ra, 9($sp)
	lw	$a0, 1($sp)
	lw	$v0, 5($a0)
	lw	$a1, 0($sp)
	lw2	$v0, $v0, $a1
	lwc1	$f0, 248($zero)
	swc1	$f0, 0($v0)
	lwc1	$f0, 249($zero)
	swc1	$f0, 1($v0)
	lwc1	$f0, 250($zero)
	swc1	$f0, 2($v0)
beq_cont.23611:
	addi	$a1, $a1, 1
	j	pretrace_diffuse_rays.3052
blti_true.23609:
	jr	$ra
blt_true.23608:
	jr	$ra
pretrace_pixels.3055:
	addi	$a3, $zero, 274
	blti	$a1, 0, blti_true.23614
	lwc1	$f3, 258($zero)
	lw	$t0, 256($zero)
	sub	$t0, $a1, $t0
	sw	$a2, 0($sp)
	sw	$a3, 1($sp)
	sw	$a1, 2($sp)
	sw	$a0, 3($sp)
	swc1	$f2, 4($sp)
	swc1	$f1, 6($sp)
	swc1	$f0, 8($sp)
	swc1	$f3, 10($sp)
	add	$a0, $zero, $t0
	itof	$f0, $a0
	lwc1	$f1, 10($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 265($zero)
	mul.s	$f1, $f0, $f1
	lwc1	$f2, 8($sp)
	add.s	$f1, $f1, $f2
	swc1	$f1, 274($zero)
	lwc1	$f1, 266($zero)
	mul.s	$f1, $f0, $f1
	lwc1	$f3, 6($sp)
	add.s	$f1, $f1, $f3
	swc1	$f1, 275($zero)
	lwc1	$f1, 267($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 4($sp)
	add.s	$f0, $f0, $f1
	swc1	$f0, 276($zero)
	lwc1	$f0, 274($zero)
	mul.s	$f0, $f0, $f0
	lwc1	$f4, 275($zero)
	mul.s	$f4, $f4, $f4
	add.s	$f0, $f0, $f4
	lwc1	$f4, 276($zero)
	mul.s	$f4, $f4, $f4
	add.s	$f0, $f0, $f4
	sqrt	$f0, $f0
	bfeq	$f0, $fzero, c.eq_else.23615
	addi	$a0, $zero, 0
	j	c.eq_cont.23616
c.eq_else.23615:
	addi	$a0, $zero, 1
c.eq_cont.23616:
	bnei	$a0, 0, beq_else.23617
	fdivi2	$f0, $fi7, $f0
	j	beq_cont.23618
beq_else.23617:
	faddi	$f0, $fzero, $fi7
beq_cont.23618:
	lwc1	$f1, 274($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 274($zero)
	lwc1	$f1, 275($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 275($zero)
	lwc1	$f1, 276($zero)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 276($zero)
	swc1	$fzero, 251($zero)
	swc1	$fzero, 252($zero)
	swc1	$fzero, 253($zero)
	lwc1	$f0, 175($zero)
	swc1	$f0, 259($zero)
	lwc1	$f0, 176($zero)
	swc1	$f0, 260($zero)
	lwc1	$f0, 177($zero)
	swc1	$f0, 261($zero)
	addi	$a0, $zero, 0
	faddi	$f0, $fzero, $fi7
	lw	$a1, 2($sp)
	lw	$a2, 3($sp)
	lw2	$v0, $a2, $a1
	faddi	$f1, $fzero, $fi0
	lw	$a3, 1($sp)
	add	$a2, $zero, $v0
	add	$a1, $zero, $a3
	sw	$ra, 16($sp)
	addi	$sp, $sp, 17
	jal	trace_ray.2984
	addi	$sp, $sp, -17
	lw	$ra, 16($sp)
	lw	$a0, 2($sp)
	lw	$a1, 3($sp)
	lw2	$v0, $a1, $a0
	lw	$v0, 0($v0)
	lwc1	$f0, 251($zero)
	swc1	$f0, 0($v0)
	lwc1	$f0, 252($zero)
	swc1	$f0, 1($v0)
	lwc1	$f0, 253($zero)
	swc1	$f0, 2($v0)
	lw2	$v0, $a1, $a0
	lw	$v0, 6($v0)
	lw	$a2, 0($sp)
	sw	$a2, 0($v0)
	lw2	$v0, $a1, $a0
	addi	$a3, $zero, 0
	add	$a1, $zero, $a3
	add	$a0, $zero, $v0
	sw	$ra, 16($sp)
	addi	$sp, $sp, 17
	jal	pretrace_diffuse_rays.3052
	addi	$sp, $sp, -17
	lw	$ra, 16($sp)
	lw	$a0, 2($sp)
	addi	$a1, $a0, -1
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	blti	$a0, 5, beq_else.23619
	addi	$a2, $a0, -5
	j	beq_cont.23620
beq_else.23619:
	add	$a2, $a0, $zero
beq_cont.23620:
	lwc1	$f0, 8($sp)
	lwc1	$f1, 6($sp)
	lwc1	$f2, 4($sp)
	lw	$a0, 3($sp)
	j	pretrace_pixels.3055
blti_true.23614:
	jr	$ra
scan_pixel.3066:
	lw	$t1, 254($zero)
	blt	$a0, $t1, blt_true.23622
	jr	$ra
blt_true.23622:
	lw2	$v0, $a3, $a0
	lw	$v0, 0($v0)
	lwc1	$f0, 0($v0)
	swc1	$f0, 251($zero)
	lwc1	$f0, 1($v0)
	swc1	$f0, 252($zero)
	lwc1	$f0, 2($v0)
	swc1	$f0, 253($zero)
	lw	$t1, 255($zero)
	addi	$t2, $a1, 1
	blt	$t2, $t1, beq_else.23624
	addi	$t1, $zero, 0
	j	beq_cont.23625
beq_else.23624:
	addi	$t1, $zero, 0
	blt	$t1, $a1, beq_else.23626
	addi	$t1, $zero, 0
	j	beq_cont.23627
beq_else.23626:
	lw	$t1, 254($zero)
	addi	$t2, $a0, 1
	blt	$t2, $t1, beq_else.23628
	addi	$t1, $zero, 0
	j	beq_cont.23629
beq_else.23628:
	addi	$t1, $zero, 0
	blt	$t1, $a0, beq_else.23630
	addi	$t1, $zero, 0
	j	beq_cont.23631
beq_else.23630:
	addi	$t1, $zero, 1
beq_cont.23631:
beq_cont.23629:
beq_cont.23627:
beq_cont.23625:
	sw	$t0, 0($sp)
	sw	$a3, 1($sp)
	sw	$a2, 2($sp)
	sw	$a1, 3($sp)
	sw	$a0, 4($sp)
	bnei	$t1, 0, beq_else.23632
	lw2	$v0, $a3, $a0
	add	$a1, $zero, $t1
	add	$a0, $zero, $v0
	sw	$ra, 9($sp)
	addi	$sp, $sp, 10
	jal	do_without_neighbors.3015
	addi	$sp, $sp, -10
	lw	$ra, 9($sp)
	j	beq_cont.23633
beq_else.23632:
	addi	$t1, $zero, 0
	sw	$ra, 9($sp)
	addi	$sp, $sp, 10
	jal	try_exploit_neighbors.3031
	addi	$sp, $sp, -10
	lw	$ra, 9($sp)
beq_cont.23633:
	lwc1	$f0, 251($zero)
	ftoi	$a0, $f0
	addi	$a1, $zero, 255
	blt	$a1, $a0, beq_else.23634
	blti	$a0, 0, beq_else.23636
	j	beq_cont.23637
beq_else.23636:
	addi	$a0, $zero, 0
beq_cont.23637:
	j	beq_cont.23635
beq_else.23634:
	addi	$a0, $zero, 255
beq_cont.23635:
	outc	$a0
	lwc1	$f0, 252($zero)
	ftoi	$a0, $f0
	addi	$a1, $zero, 255
	blt	$a1, $a0, beq_else.23638
	blti	$a0, 0, beq_else.23640
	j	beq_cont.23641
beq_else.23640:
	addi	$a0, $zero, 0
beq_cont.23641:
	j	beq_cont.23639
beq_else.23638:
	addi	$a0, $zero, 255
beq_cont.23639:
	outc	$a0
	lwc1	$f0, 253($zero)
	ftoi	$a0, $f0
	addi	$a1, $zero, 255
	blt	$a1, $a0, beq_else.23642
	blti	$a0, 0, beq_else.23644
	j	beq_cont.23645
beq_else.23644:
	addi	$a0, $zero, 0
beq_cont.23645:
	j	beq_cont.23643
beq_else.23642:
	addi	$a0, $zero, 255
beq_cont.23643:
	outc	$a0
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 3($sp)
	lw	$a2, 2($sp)
	lw	$a3, 1($sp)
	lw	$t0, 0($sp)
	j	scan_pixel.3066
scan_line.3072:
	lw	$t1, 255($zero)
	blt	$a0, $t1, blt_true.23646
	jr	$ra
blt_true.23646:
	lw	$t1, 255($zero)
	addi	$t1, $t1, -1
	sw	$t0, 0($sp)
	sw	$a3, 1($sp)
	sw	$a2, 2($sp)
	sw	$a1, 3($sp)
	sw	$a0, 4($sp)
	blt	$a0, $t1, beq_else.23648
	j	beq_cont.23649
beq_else.23648:
	addi	$t1, $a0, 1
	lwc1	$f0, 258($zero)
	lw	$t2, 257($zero)
	sub	$t1, $t1, $t2
	swc1	$f0, 6($sp)
	add	$a0, $zero, $t1
	itof	$f0, $a0
	lwc1	$f1, 6($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 268($zero)
	mul.s	$f1, $f0, $f1
	lwc1	$f2, 271($zero)
	add.s	$f1, $f1, $f2
	lwc1	$f2, 269($zero)
	mul.s	$f2, $f0, $f2
	lwc1	$f3, 272($zero)
	add.s	$f2, $f2, $f3
	lwc1	$f3, 270($zero)
	mul.s	$f0, $f0, $f3
	lwc1	$f3, 273($zero)
	add.s	$f0, $f0, $f3
	lw	$a0, 254($zero)
	addi	$a1, $a0, -1
	lw	$a0, 1($sp)
	lw	$a2, 0($sp)
	add.s	$f30, $fzero, $f2
	add.s	$f2, $fzero, $f0
	add.s	$f0, $fzero, $f1
	add.s	$f1, $fzero, $f30
	sw	$ra, 12($sp)
	addi	$sp, $sp, 13
	jal	pretrace_pixels.3055
	addi	$sp, $sp, -13
	lw	$ra, 12($sp)
beq_cont.23649:
	addi	$a0, $zero, 0
	lw	$a1, 4($sp)
	lw	$a2, 3($sp)
	lw	$a3, 2($sp)
	lw	$t0, 1($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 13
	jal	scan_pixel.3066
	addi	$sp, $sp, -13
	lw	$ra, 12($sp)
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	addi	$a1, $a1, 2
	blti	$a1, 5, beq_else.23651
	addi	$t0, $a1, -5
	j	beq_cont.23652
beq_else.23651:
	add	$t0, $a1, $zero
beq_cont.23652:
	lw	$a1, 2($sp)
	lw	$a2, 1($sp)
	lw	$a3, 3($sp)
	j	scan_line.3072
init_line_elements.3082:
	blti	$a1, 0, blti_true.23653
	addi	$a2, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a1, 0($sp)
	sw	$a0, 1($sp)
	add	$a0, $zero, $a2
	sw	$ra, 6($sp)
	jal	min_caml_create_float_array
	lw	$ra, 6($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 2($sp)
	add	$a0, $zero, $a1
	sw	$ra, 7($sp)
	jal	min_caml_create_float_array
	lw	$ra, 7($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 7($sp)
	jal	min_caml_create_array
	lw	$ra, 7($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 3($sp)
	add	$a0, $zero, $a1
	sw	$ra, 8($sp)
	jal	min_caml_create_float_array
	lw	$ra, 8($sp)
	lw	$a1, 3($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 8($sp)
	jal	min_caml_create_float_array
	lw	$ra, 8($sp)
	lw	$a1, 3($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 8($sp)
	jal	min_caml_create_float_array
	lw	$ra, 8($sp)
	lw	$a1, 3($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 8($sp)
	jal	min_caml_create_float_array
	lw	$ra, 8($sp)
	lw	$a1, 3($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 5
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 8($sp)
	jal	min_caml_create_array
	lw	$ra, 8($sp)
	addi	$a1, $zero, 5
	addi	$a2, $zero, 0
	sw	$a0, 4($sp)
	add	$a0, $zero, $a1
	add	$a1, $zero, $a2
	sw	$ra, 9($sp)
	jal	min_caml_create_array
	lw	$ra, 9($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 5($sp)
	add	$a0, $zero, $a1
	sw	$ra, 10($sp)
	jal	min_caml_create_float_array
	lw	$ra, 10($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 10($sp)
	jal	min_caml_create_array
	lw	$ra, 10($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 6($sp)
	add	$a0, $zero, $a1
	sw	$ra, 7($sp)
	jal	min_caml_create_float_array
	lw	$ra, 7($sp)
	lw	$a1, 6($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 7($sp)
	jal	min_caml_create_float_array
	lw	$ra, 7($sp)
	lw	$a1, 6($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 7($sp)
	jal	min_caml_create_float_array
	lw	$ra, 7($sp)
	lw	$a1, 6($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 7($sp)
	jal	min_caml_create_float_array
	lw	$ra, 7($sp)
	lw	$a1, 6($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 7($sp)
	jal	min_caml_create_float_array
	lw	$ra, 7($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 7($sp)
	jal	min_caml_create_array
	lw	$ra, 7($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 7($sp)
	add	$a0, $zero, $a1
	sw	$ra, 12($sp)
	jal	min_caml_create_float_array
	lw	$ra, 12($sp)
	lw	$a1, 7($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 12($sp)
	jal	min_caml_create_float_array
	lw	$ra, 12($sp)
	lw	$a1, 7($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 12($sp)
	jal	min_caml_create_float_array
	lw	$ra, 12($sp)
	lw	$a1, 7($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 12($sp)
	jal	min_caml_create_float_array
	lw	$ra, 12($sp)
	lw	$a1, 7($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 1
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 12($sp)
	jal	min_caml_create_array
	lw	$ra, 12($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 8($sp)
	add	$a0, $zero, $a1
	sw	$ra, 13($sp)
	jal	min_caml_create_float_array
	lw	$ra, 13($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 13($sp)
	jal	min_caml_create_array
	lw	$ra, 13($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 9($sp)
	add	$a0, $zero, $a1
	sw	$ra, 14($sp)
	jal	min_caml_create_float_array
	lw	$ra, 14($sp)
	lw	$a1, 9($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 14($sp)
	jal	min_caml_create_float_array
	lw	$ra, 14($sp)
	lw	$a1, 9($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 14($sp)
	jal	min_caml_create_float_array
	lw	$ra, 14($sp)
	lw	$a1, 9($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 14($sp)
	jal	min_caml_create_float_array
	lw	$ra, 14($sp)
	lw	$a1, 9($sp)
	sw	$a0, 4($a1)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 8
	sw	$a1, 7($a0)
	lw	$a1, 8($sp)
	sw	$a1, 6($a0)
	lw	$a1, 7($sp)
	sw	$a1, 5($a0)
	lw	$a1, 6($sp)
	sw	$a1, 4($a0)
	lw	$a1, 5($sp)
	sw	$a1, 3($a0)
	lw	$a1, 4($sp)
	sw	$a1, 2($a0)
	lw	$a1, 3($sp)
	sw	$a1, 1($a0)
	lw	$a1, 2($sp)
	sw	$a1, 0($a0)
	lw	$a1, 0($sp)
	lw	$a2, 1($sp)
	sw2	$a0, $a2, $a1
	addi	$a1, $a1, -1
	add	$a0, $zero, $a2
	j	init_line_elements.3082
blti_true.23653:
	jr	$ra
calc_dirvec.3092:
	addi	$a3, $zero, 279
	blti	$a0, 5, blti_true.23654
	mul.s	$f2, $f0, $f0
	mul.s	$f3, $f1, $f1
	add.s	$f2, $f2, $f3
	faddi	$f2, $f2, $fi7
	sw	$a2, 0($sp)
	sw	$a1, 1($sp)
	sw	$a3, 2($sp)
	swc1	$f1, 4($sp)
	swc1	$f0, 6($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 6($sp)
	div.s	$f1, $f1, $f0
	lwc1	$f2, 4($sp)
	div.s	$f2, $f2, $f0
	fdivi2	$f0, $fi7, $f0
	lw	$a0, 1($sp)
	lw	$a1, 2($sp)
	lw2	$v0, $a1, $a0
	lw	$a0, 0($sp)
	lw2	$v1, $v0, $a0
	lw	$v1, 0($v1)
	swc1	$f1, 0($v1)
	swc1	$f2, 1($v1)
	swc1	$f0, 2($v1)
	addi	$a1, $a0, 40
	lw2	$v1, $v0, $a1
	lw	$v1, 0($v1)
	sub.s	$f3, $fzero, $f2
	swc1	$f1, 0($v1)
	swc1	$f0, 1($v1)
	swc1	$f3, 2($v1)
	addi	$a1, $a0, 80
	lw2	$v1, $v0, $a1
	lw	$v1, 0($v1)
	sub.s	$f3, $fzero, $f1
	sub.s	$f4, $fzero, $f2
	swc1	$f0, 0($v1)
	swc1	$f3, 1($v1)
	swc1	$f4, 2($v1)
	addi	$a1, $a0, 1
	lw2	$v1, $v0, $a1
	lw	$v1, 0($v1)
	sub.s	$f3, $fzero, $f1
	sub.s	$f4, $fzero, $f2
	sub.s	$f5, $fzero, $f0
	swc1	$f3, 0($v1)
	swc1	$f4, 1($v1)
	swc1	$f5, 2($v1)
	addi	$a1, $a0, 41
	lw2	$v1, $v0, $a1
	lw	$v1, 0($v1)
	sub.s	$f3, $fzero, $f1
	sub.s	$f4, $fzero, $f0
	swc1	$f3, 0($v1)
	swc1	$f4, 1($v1)
	swc1	$f2, 2($v1)
	addi	$a0, $a0, 81
	lw2	$v0, $v0, $a0
	lw	$v0, 0($v0)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 0($v0)
	swc1	$f1, 1($v0)
	swc1	$f2, 2($v0)
	jr	$ra
blti_true.23654:
	mul.s	$f0, $f1, $f1
	faddi	$f0, $f0, $fi47
	sw	$a2, 0($sp)
	sw	$a1, 1($sp)
	swc1	$f3, 8($sp)
	sw	$a0, 10($sp)
	swc1	$f2, 12($sp)
	sqrt	$f0, $f0
	fdivi2	$f1, $fi7, $f0
	bflt	$fzero, $f1, beq_else.23658
	sub.s	$f1, $fzero, $f1
	bflti2	$f1, $fi27, beq_else.23660
	fdivi2	$f1, $fi7, $f1
	mul.s	$f2, $f1, $f1
	fmuli	$f3, $f2, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f2, $f2, $f3
	fsubi2	$f2, $fi7, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi28, $f1
	sub.s	$f1, $fzero, $f1
	j	beq_cont.23661
beq_else.23660:
	fsubi	$f2, $f1, $fi7
	faddi	$f1, $f1, $fi7
	div.s	$f1, $f2, $f1
	mul.s	$f2, $f1, $f1
	fmuli	$f3, $f2, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f2, $f2, $f3
	fsubi2	$f2, $fi7, $f2
	mul.s	$f1, $f1, $f2
	faddi	$f1, $f1, $fi35
	sub.s	$f1, $fzero, $f1
beq_cont.23661:
	j	beq_cont.23659
beq_else.23658:
	bflti2	$f1, $fi27, beq_else.23662
	bflti2	$f1, $fi36, beq_else.23664
	fdivi2	$f1, $fi7, $f1
	mul.s	$f2, $f1, $f1
	fmuli	$f3, $f2, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f2, $f2, $f3
	fsubi2	$f2, $fi7, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi28, $f1
	j	beq_cont.23665
beq_else.23664:
	fsubi	$f2, $f1, $fi7
	faddi	$f1, $f1, $fi7
	div.s	$f1, $f2, $f1
	mul.s	$f2, $f1, $f1
	fmuli	$f3, $f2, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f2, $f2, $f3
	fsubi2	$f2, $fi7, $f2
	mul.s	$f1, $f1, $f2
	faddi	$f1, $f1, $fi35
beq_cont.23665:
	j	beq_cont.23663
beq_else.23662:
	mul.s	$f2, $f1, $f1
	fmuli	$f3, $f2, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f2, $f2, $f3
	fsubi2	$f2, $fi7, $f2
	mul.s	$f1, $f1, $f2
beq_cont.23663:
beq_cont.23659:
	lwc1	$f2, 12($sp)
	mul.s	$f1, $f1, $f2
	swc1	$f0, 14($sp)
	swc1	$f1, 16($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 22($sp)
	addi	$sp, $sp, 23
	jal	sin.2640
	addi	$sp, $sp, -23
	lw	$ra, 22($sp)
	lwc1	$f1, 16($sp)
	swc1	$f0, 18($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 24($sp)
	addi	$sp, $sp, 25
	jal	cos.2638
	addi	$sp, $sp, -25
	lw	$ra, 24($sp)
	lwc1	$f1, 18($sp)
	div.s	$f0, $f1, $f0
	lwc1	$f1, 14($sp)
	mul.s	$f0, $f0, $f1
	lw	$a0, 10($sp)
	addi	$a0, $a0, 1
	mul.s	$f1, $f0, $f0
	faddi	$f1, $f1, $fi47
	swc1	$f0, 20($sp)
	sw	$a0, 22($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	fdivi2	$f1, $fi7, $f0
	bflt	$fzero, $f1, beq_else.23666
	sub.s	$f1, $fzero, $f1
	bflti2	$f1, $fi27, beq_else.23668
	fdivi2	$f1, $fi7, $f1
	mul.s	$f2, $f1, $f1
	fmuli	$f3, $f2, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f2, $f2, $f3
	fsubi2	$f2, $fi7, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi28, $f1
	sub.s	$f1, $fzero, $f1
	j	beq_cont.23669
beq_else.23668:
	fsubi	$f2, $f1, $fi7
	faddi	$f1, $f1, $fi7
	div.s	$f1, $f2, $f1
	mul.s	$f2, $f1, $f1
	fmuli	$f3, $f2, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f2, $f2, $f3
	fsubi2	$f2, $fi7, $f2
	mul.s	$f1, $f1, $f2
	faddi	$f1, $f1, $fi35
	sub.s	$f1, $fzero, $f1
beq_cont.23669:
	j	beq_cont.23667
beq_else.23666:
	bflti2	$f1, $fi27, beq_else.23670
	bflti2	$f1, $fi36, beq_else.23672
	fdivi2	$f1, $fi7, $f1
	mul.s	$f2, $f1, $f1
	fmuli	$f3, $f2, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f2, $f2, $f3
	fsubi2	$f2, $fi7, $f2
	mul.s	$f1, $f1, $f2
	fsubi2	$f1, $fi28, $f1
	j	beq_cont.23673
beq_else.23672:
	fsubi	$f2, $f1, $fi7
	faddi	$f1, $f1, $fi7
	div.s	$f1, $f2, $f1
	mul.s	$f2, $f1, $f1
	fmuli	$f3, $f2, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f2, $f2, $f3
	fsubi2	$f2, $fi7, $f2
	mul.s	$f1, $f1, $f2
	faddi	$f1, $f1, $fi35
beq_cont.23673:
	j	beq_cont.23671
beq_else.23670:
	mul.s	$f2, $f1, $f1
	fmuli	$f3, $f2, $fi34
	fsubi2	$f3, $fi33, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi32, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi31, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi30, $f3
	mul.s	$f3, $f2, $f3
	fsubi2	$f3, $fi29, $f3
	mul.s	$f2, $f2, $f3
	fsubi2	$f2, $fi7, $f2
	mul.s	$f1, $f1, $f2
beq_cont.23671:
beq_cont.23667:
	lwc1	$f2, 8($sp)
	mul.s	$f1, $f1, $f2
	swc1	$f0, 24($sp)
	swc1	$f1, 26($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 32($sp)
	addi	$sp, $sp, 33
	jal	sin.2640
	addi	$sp, $sp, -33
	lw	$ra, 32($sp)
	lwc1	$f1, 26($sp)
	swc1	$f0, 28($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 34($sp)
	addi	$sp, $sp, 35
	jal	cos.2638
	addi	$sp, $sp, -35
	lw	$ra, 34($sp)
	lwc1	$f1, 28($sp)
	div.s	$f0, $f1, $f0
	lwc1	$f1, 24($sp)
	mul.s	$f1, $f0, $f1
	lwc1	$f0, 20($sp)
	lwc1	$f2, 12($sp)
	lwc1	$f3, 8($sp)
	lw	$a0, 22($sp)
	lw	$a1, 1($sp)
	lw	$a2, 0($sp)
	j	calc_dirvec.3092
calc_dirvecs.3100:
	blti	$a0, 0, blti_true.23675
	sw	$a0, 0($sp)
	swc1	$f0, 2($sp)
	sw	$a2, 4($sp)
	sw	$a1, 5($sp)
	itof	$f0, $a0
	fmuli	$f0, $f0, $fi30
	fsubi	$f2, $f0, $fi50
	addi	$a0, $zero, 0
	faddi	$f0, $fzero, $fi0
	faddi	$f1, $fzero, $fi0
	lwc1	$f3, 2($sp)
	lw	$a1, 5($sp)
	lw	$a2, 4($sp)
	sw	$ra, 10($sp)
	addi	$sp, $sp, 11
	jal	calc_dirvec.3092
	addi	$sp, $sp, -11
	lw	$ra, 10($sp)
	lw	$a0, 0($sp)
	itof	$f0, $a0
	fmuli	$f0, $f0, $fi30
	faddi	$f2, $f0, $fi47
	addi	$a0, $zero, 0
	faddi	$f0, $fzero, $fi0
	faddi	$f1, $fzero, $fi0
	lw	$a1, 4($sp)
	addi	$a2, $a1, 2
	lwc1	$f3, 2($sp)
	lw	$a3, 5($sp)
	add	$a1, $zero, $a3
	sw	$ra, 10($sp)
	addi	$sp, $sp, 11
	jal	calc_dirvec.3092
	addi	$sp, $sp, -11
	lw	$ra, 10($sp)
	lw	$a0, 0($sp)
	addi	$a0, $a0, -1
	lw	$a1, 5($sp)
	addi	$a1, $a1, 1
	blti	$a1, 5, beq_else.23677
	addi	$a1, $a1, -5
	j	beq_cont.23678
beq_else.23677:
beq_cont.23678:
	lwc1	$f0, 2($sp)
	lw	$a2, 4($sp)
	j	calc_dirvecs.3100
blti_true.23675:
	jr	$ra
calc_dirvec_rows.3105:
	blti	$a0, 0, blti_true.23680
	sw	$a0, 0($sp)
	sw	$a2, 1($sp)
	sw	$a1, 2($sp)
	itof	$f0, $a0
	fmuli	$f0, $f0, $fi30
	fsubi	$f0, $f0, $fi50
	addi	$a0, $zero, 4
	lw	$a1, 2($sp)
	lw	$a2, 1($sp)
	sw	$ra, 7($sp)
	addi	$sp, $sp, 8
	jal	calc_dirvecs.3100
	addi	$sp, $sp, -8
	lw	$ra, 7($sp)
	lw	$a0, 0($sp)
	addi	$a0, $a0, -1
	lw	$a1, 2($sp)
	addi	$a1, $a1, 2
	blti	$a1, 5, beq_else.23681
	addi	$a1, $a1, -5
	j	beq_cont.23682
beq_else.23681:
beq_cont.23682:
	lw	$a2, 1($sp)
	addi	$a2, $a2, 4
	j	calc_dirvec_rows.3105
blti_true.23680:
	jr	$ra
create_dirvec_elements.3111:
	blti	$a1, 0, blti_true.23684
	addi	$a2, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a1, 0($sp)
	sw	$a0, 1($sp)
	add	$a0, $zero, $a2
	sw	$ra, 6($sp)
	jal	min_caml_create_float_array
	lw	$ra, 6($sp)
	add	$a1, $a0, $zero
	lw	$a0, 100($zero)
	sw	$a1, 2($sp)
	sw	$ra, 7($sp)
	jal	min_caml_create_array
	lw	$ra, 7($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 6
	sw	$a0, 1($a1)
	lw	$a0, 2($sp)
	sw	$a0, 0($a1)
	add	$a0, $a1, $zero
	lw	$a1, 0($sp)
	lw	$a2, 1($sp)
	sw2	$a0, $a2, $a1
	addi	$a1, $a1, -1
	add	$a0, $zero, $a2
	j	create_dirvec_elements.3111
blti_true.23684:
	jr	$ra
create_dirvecs.3114:
	addi	$a1, $zero, 279
	blti	$a0, 0, blti_true.23686
	addi	$a2, $zero, 120
	addi	$a3, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 0($sp)
	sw	$a1, 1($sp)
	sw	$a2, 2($sp)
	add	$a0, $zero, $a3
	sw	$ra, 7($sp)
	jal	min_caml_create_float_array
	lw	$ra, 7($sp)
	add	$a1, $a0, $zero
	lw	$a0, 100($zero)
	sw	$a1, 3($sp)
	sw	$ra, 8($sp)
	jal	min_caml_create_array
	lw	$ra, 8($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 6
	sw	$a0, 1($a1)
	lw	$a0, 3($sp)
	sw	$a0, 0($a1)
	lw	$a0, 2($sp)
	sw	$ra, 8($sp)
	jal	min_caml_create_array
	lw	$ra, 8($sp)
	lw	$a1, 0($sp)
	lw	$a2, 1($sp)
	sw2	$a0, $a2, $a1
	lw2	$a0, $a2, $a1
	addi	$a2, $zero, 118
	add	$a1, $zero, $a2
	sw	$ra, 8($sp)
	addi	$sp, $sp, 9
	jal	create_dirvec_elements.3111
	addi	$sp, $sp, -9
	lw	$ra, 8($sp)
	lw	$a0, 0($sp)
	addi	$a0, $a0, -1
	j	create_dirvecs.3114
blti_true.23686:
	jr	$ra
init_dirvec_constants.3116:
	blti	$a1, 0, blti_true.23688
	lw2	$v0, $a0, $a1
	lw	$a2, 100($zero)
	addi	$a2, $a2, -1
	sw	$a0, 0($sp)
	sw	$a1, 1($sp)
	add	$a1, $zero, $a2
	add	$a0, $zero, $v0
	sw	$ra, 6($sp)
	addi	$sp, $sp, 7
	jal	iter_setup_dirvec_constants.2890
	addi	$sp, $sp, -7
	lw	$ra, 6($sp)
	lw	$a0, 1($sp)
	addi	$a1, $a0, -1
	lw	$a0, 0($sp)
	j	init_dirvec_constants.3116
blti_true.23688:
	jr	$ra
init_vecset_constants.3119:
	addi	$a1, $zero, 279
	blti	$a0, 0, blti_true.23690
	lw2	$v0, $a1, $a0
	addi	$a1, $zero, 119
	sw	$a0, 0($sp)
	add	$a0, $zero, $v0
	sw	$ra, 5($sp)
	addi	$sp, $sp, 6
	jal	init_dirvec_constants.3116
	addi	$sp, $sp, -6
	lw	$ra, 5($sp)
	lw	$a0, 0($sp)
	addi	$a0, $a0, -1
	j	init_vecset_constants.3119
blti_true.23690:
	jr	$ra
_min_caml_start:
	addi	$sp, $sp, 600
	addi	$gp, $gp, 3000
	addi	$a0, $zero, 0
	sw	$a0, 100($zero)
	addi	$a0, $zero, 101
	addi	$a1, $zero, 0
	addi	$a2, $zero, 0
	addi	$a3, $zero, 0
	addi	$t0, $zero, 0
	addi	$t1, $zero, 0
	sw	$a0, 122($zero)
	sw	$a0, 121($zero)
	sw	$a0, 120($zero)
	sw	$a0, 119($zero)
	sw	$t1, 118($zero)
	sw	$a0, 117($zero)
	sw	$a0, 116($zero)
	sw	$t0, 115($zero)
	sw	$a3, 114($zero)
	sw	$a2, 113($zero)
	sw	$a1, 112($zero)
	addi	$a0, $zero, 101
	sw	$a0, 171($zero)
	sw	$a0, 170($zero)
	sw	$a0, 169($zero)
	sw	$a0, 168($zero)
	sw	$a0, 167($zero)
	sw	$a0, 166($zero)
	sw	$a0, 165($zero)
	sw	$a0, 164($zero)
	sw	$a0, 163($zero)
	sw	$a0, 162($zero)
	sw	$a0, 161($zero)
	sw	$a0, 160($zero)
	sw	$a0, 159($zero)
	sw	$a0, 158($zero)
	sw	$a0, 157($zero)
	sw	$a0, 156($zero)
	sw	$a0, 155($zero)
	sw	$a0, 154($zero)
	sw	$a0, 153($zero)
	sw	$a0, 152($zero)
	sw	$a0, 151($zero)
	sw	$a0, 150($zero)
	sw	$a0, 149($zero)
	sw	$a0, 148($zero)
	sw	$a0, 147($zero)
	sw	$a0, 146($zero)
	sw	$a0, 145($zero)
	sw	$a0, 144($zero)
	sw	$a0, 143($zero)
	sw	$a0, 142($zero)
	sw	$a0, 141($zero)
	sw	$a0, 140($zero)
	sw	$a0, 139($zero)
	sw	$a0, 138($zero)
	sw	$a0, 137($zero)
	sw	$a0, 136($zero)
	sw	$a0, 135($zero)
	sw	$a0, 134($zero)
	sw	$a0, 133($zero)
	sw	$a0, 132($zero)
	sw	$a0, 131($zero)
	sw	$a0, 130($zero)
	sw	$a0, 129($zero)
	sw	$a0, 128($zero)
	sw	$a0, 127($zero)
	sw	$a0, 126($zero)
	sw	$a0, 125($zero)
	sw	$a0, 124($zero)
	sw	$a0, 123($zero)
	sw	$a0, 122($zero)
	sw	$a0, 121($zero)
	sw	$a0, 120($zero)
	sw	$a0, 119($zero)
	sw	$a0, 118($zero)
	sw	$a0, 117($zero)
	sw	$a0, 116($zero)
	sw	$a0, 115($zero)
	sw	$a0, 114($zero)
	sw	$a0, 113($zero)
	sw	$a0, 112($zero)
	addi	$a0, $zero, 112
	swc1	$fzero, 174($zero)
	swc1	$fzero, 173($zero)
	swc1	$fzero, 172($zero)
	swc1	$fzero, 177($zero)
	swc1	$fzero, 176($zero)
	swc1	$fzero, 175($zero)
	swc1	$fzero, 180($zero)
	swc1	$fzero, 179($zero)
	swc1	$fzero, 178($zero)
	faddi	$f0, $fzero, $fi1
	swc1	$f0, 181($zero)
	addi	$a1, $zero, -1
	sw	$a1, 182($zero)
	addi	$a1, $zero, 182
	sw	$a1, 232($zero)
	sw	$a1, 231($zero)
	sw	$a1, 230($zero)
	sw	$a1, 229($zero)
	sw	$a1, 228($zero)
	sw	$a1, 227($zero)
	sw	$a1, 226($zero)
	sw	$a1, 225($zero)
	sw	$a1, 224($zero)
	sw	$a1, 223($zero)
	sw	$a1, 222($zero)
	sw	$a1, 221($zero)
	sw	$a1, 220($zero)
	sw	$a1, 219($zero)
	sw	$a1, 218($zero)
	sw	$a1, 217($zero)
	sw	$a1, 216($zero)
	sw	$a1, 215($zero)
	sw	$a1, 214($zero)
	sw	$a1, 213($zero)
	sw	$a1, 212($zero)
	sw	$a1, 211($zero)
	sw	$a1, 210($zero)
	sw	$a1, 209($zero)
	sw	$a1, 208($zero)
	sw	$a1, 207($zero)
	sw	$a1, 206($zero)
	sw	$a1, 205($zero)
	sw	$a1, 204($zero)
	sw	$a1, 203($zero)
	sw	$a1, 202($zero)
	sw	$a1, 201($zero)
	sw	$a1, 200($zero)
	sw	$a1, 199($zero)
	sw	$a1, 198($zero)
	sw	$a1, 197($zero)
	sw	$a1, 196($zero)
	sw	$a1, 195($zero)
	sw	$a1, 194($zero)
	sw	$a1, 193($zero)
	sw	$a1, 192($zero)
	sw	$a1, 191($zero)
	sw	$a1, 190($zero)
	sw	$a1, 189($zero)
	sw	$a1, 188($zero)
	sw	$a1, 187($zero)
	sw	$a1, 186($zero)
	sw	$a1, 185($zero)
	sw	$a1, 184($zero)
	sw	$a1, 183($zero)
	lw	$a1, 183($zero)
	sw	$a1, 233($zero)
	addi	$a1, $zero, 233
	sw	$a1, 234($zero)
	swc1	$fzero, 235($zero)
	addi	$a1, $zero, 0
	sw	$a1, 236($zero)
	faddi	$f0, $fzero, $fi2
	swc1	$f0, 237($zero)
	swc1	$fzero, 240($zero)
	swc1	$fzero, 239($zero)
	swc1	$fzero, 238($zero)
	addi	$a1, $zero, 0
	sw	$a1, 241($zero)
	swc1	$fzero, 244($zero)
	swc1	$fzero, 243($zero)
	swc1	$fzero, 242($zero)
	swc1	$fzero, 247($zero)
	swc1	$fzero, 246($zero)
	swc1	$fzero, 245($zero)
	swc1	$fzero, 250($zero)
	swc1	$fzero, 249($zero)
	swc1	$fzero, 248($zero)
	swc1	$fzero, 253($zero)
	swc1	$fzero, 252($zero)
	swc1	$fzero, 251($zero)
	addi	$a1, $zero, 0
	sw	$a1, 255($zero)
	sw	$a1, 254($zero)
	addi	$a1, $zero, 0
	sw	$a1, 257($zero)
	sw	$a1, 256($zero)
	swc1	$fzero, 258($zero)
	swc1	$fzero, 261($zero)
	swc1	$fzero, 260($zero)
	swc1	$fzero, 259($zero)
	swc1	$fzero, 264($zero)
	swc1	$fzero, 263($zero)
	swc1	$fzero, 262($zero)
	swc1	$fzero, 267($zero)
	swc1	$fzero, 266($zero)
	swc1	$fzero, 265($zero)
	swc1	$fzero, 270($zero)
	swc1	$fzero, 269($zero)
	swc1	$fzero, 268($zero)
	swc1	$fzero, 273($zero)
	swc1	$fzero, 272($zero)
	swc1	$fzero, 271($zero)
	swc1	$fzero, 276($zero)
	swc1	$fzero, 275($zero)
	swc1	$fzero, 274($zero)
	addi	$a1, $zero, 277
	addi	$a2, $zero, 277
	sw	$a2, 280($zero)
	sw	$a1, 279($zero)
	addi	$a1, $zero, 279
	sw	$a1, 283($zero)
	sw	$a1, 282($zero)
	sw	$a1, 281($zero)
	sw	$a1, 280($zero)
	sw	$a1, 279($zero)
	addi	$a1, $zero, 284
	swc1	$fzero, 286($zero)
	swc1	$fzero, 285($zero)
	swc1	$fzero, 284($zero)
	addi	$a2, $zero, 284
	sw	$a1, 346($zero)
	sw	$a1, 345($zero)
	sw	$a1, 344($zero)
	sw	$a1, 343($zero)
	sw	$a1, 342($zero)
	sw	$a1, 341($zero)
	sw	$a1, 340($zero)
	sw	$a1, 339($zero)
	sw	$a1, 338($zero)
	sw	$a1, 337($zero)
	sw	$a1, 336($zero)
	sw	$a1, 335($zero)
	sw	$a1, 334($zero)
	sw	$a1, 333($zero)
	sw	$a1, 332($zero)
	sw	$a1, 331($zero)
	sw	$a1, 330($zero)
	sw	$a1, 329($zero)
	sw	$a1, 328($zero)
	sw	$a1, 327($zero)
	sw	$a1, 326($zero)
	sw	$a1, 325($zero)
	sw	$a1, 324($zero)
	sw	$a1, 323($zero)
	sw	$a1, 322($zero)
	sw	$a1, 321($zero)
	sw	$a1, 320($zero)
	sw	$a1, 319($zero)
	sw	$a1, 318($zero)
	sw	$a1, 317($zero)
	sw	$a1, 316($zero)
	sw	$a1, 315($zero)
	sw	$a1, 314($zero)
	sw	$a1, 313($zero)
	sw	$a1, 312($zero)
	sw	$a1, 311($zero)
	sw	$a1, 310($zero)
	sw	$a1, 309($zero)
	sw	$a1, 308($zero)
	sw	$a1, 307($zero)
	sw	$a1, 306($zero)
	sw	$a1, 305($zero)
	sw	$a1, 304($zero)
	sw	$a1, 303($zero)
	sw	$a1, 302($zero)
	sw	$a1, 301($zero)
	sw	$a1, 300($zero)
	sw	$a1, 299($zero)
	sw	$a1, 298($zero)
	sw	$a1, 297($zero)
	sw	$a1, 296($zero)
	sw	$a1, 295($zero)
	sw	$a1, 294($zero)
	sw	$a1, 293($zero)
	sw	$a1, 292($zero)
	sw	$a1, 291($zero)
	sw	$a1, 290($zero)
	sw	$a1, 289($zero)
	sw	$a1, 288($zero)
	sw	$a1, 287($zero)
	addi	$a1, $zero, 287
	sw	$a1, 350($zero)
	sw	$a2, 349($zero)
	addi	$a1, $zero, 347
	addi	$a2, $zero, 349
	addi	$a3, $zero, 349
	sw	$a3, 352($zero)
	sw	$a2, 351($zero)
	addi	$a2, $zero, 349
	addi	$a3, $zero, 0
	swc1	$fzero, 364($zero)
	sw	$a2, 359($zero)
	sw	$a3, 358($zero)
	addi	$a2, $zero, 351
	sw	$a2, 537($zero)
	sw	$a2, 536($zero)
	sw	$a2, 535($zero)
	sw	$a2, 534($zero)
	sw	$a2, 533($zero)
	sw	$a2, 532($zero)
	sw	$a2, 531($zero)
	sw	$a2, 530($zero)
	sw	$a2, 529($zero)
	sw	$a2, 528($zero)
	sw	$a2, 527($zero)
	sw	$a2, 526($zero)
	sw	$a2, 525($zero)
	sw	$a2, 524($zero)
	sw	$a2, 523($zero)
	sw	$a2, 522($zero)
	sw	$a2, 521($zero)
	sw	$a2, 520($zero)
	sw	$a2, 519($zero)
	sw	$a2, 518($zero)
	sw	$a2, 517($zero)
	sw	$a2, 516($zero)
	sw	$a2, 515($zero)
	sw	$a2, 514($zero)
	sw	$a2, 513($zero)
	sw	$a2, 512($zero)
	sw	$a2, 511($zero)
	sw	$a2, 510($zero)
	sw	$a2, 509($zero)
	sw	$a2, 508($zero)
	sw	$a2, 507($zero)
	sw	$a2, 506($zero)
	sw	$a2, 505($zero)
	sw	$a2, 504($zero)
	sw	$a2, 503($zero)
	sw	$a2, 502($zero)
	sw	$a2, 501($zero)
	sw	$a2, 500($zero)
	sw	$a2, 499($zero)
	sw	$a2, 498($zero)
	sw	$a2, 497($zero)
	sw	$a2, 496($zero)
	sw	$a2, 495($zero)
	sw	$a2, 494($zero)
	sw	$a2, 493($zero)
	sw	$a2, 492($zero)
	sw	$a2, 491($zero)
	sw	$a2, 490($zero)
	sw	$a2, 489($zero)
	sw	$a2, 488($zero)
	sw	$a2, 487($zero)
	sw	$a2, 486($zero)
	sw	$a2, 485($zero)
	sw	$a2, 484($zero)
	sw	$a2, 483($zero)
	sw	$a2, 482($zero)
	sw	$a2, 481($zero)
	sw	$a2, 480($zero)
	sw	$a2, 479($zero)
	sw	$a2, 478($zero)
	sw	$a2, 477($zero)
	sw	$a2, 476($zero)
	sw	$a2, 475($zero)
	sw	$a2, 474($zero)
	sw	$a2, 473($zero)
	sw	$a2, 472($zero)
	sw	$a2, 471($zero)
	sw	$a2, 470($zero)
	sw	$a2, 469($zero)
	sw	$a2, 468($zero)
	sw	$a2, 467($zero)
	sw	$a2, 466($zero)
	sw	$a2, 465($zero)
	sw	$a2, 464($zero)
	sw	$a2, 463($zero)
	sw	$a2, 462($zero)
	sw	$a2, 461($zero)
	sw	$a2, 460($zero)
	sw	$a2, 459($zero)
	sw	$a2, 458($zero)
	sw	$a2, 457($zero)
	sw	$a2, 456($zero)
	sw	$a2, 455($zero)
	sw	$a2, 454($zero)
	sw	$a2, 453($zero)
	sw	$a2, 452($zero)
	sw	$a2, 451($zero)
	sw	$a2, 450($zero)
	sw	$a2, 449($zero)
	sw	$a2, 448($zero)
	sw	$a2, 447($zero)
	sw	$a2, 446($zero)
	sw	$a2, 445($zero)
	sw	$a2, 444($zero)
	sw	$a2, 443($zero)
	sw	$a2, 442($zero)
	sw	$a2, 441($zero)
	sw	$a2, 440($zero)
	sw	$a2, 439($zero)
	sw	$a2, 438($zero)
	sw	$a2, 437($zero)
	sw	$a2, 436($zero)
	sw	$a2, 435($zero)
	sw	$a2, 434($zero)
	sw	$a2, 433($zero)
	sw	$a2, 432($zero)
	sw	$a2, 431($zero)
	sw	$a2, 430($zero)
	sw	$a2, 429($zero)
	sw	$a2, 428($zero)
	sw	$a2, 427($zero)
	sw	$a2, 426($zero)
	sw	$a2, 425($zero)
	sw	$a2, 424($zero)
	sw	$a2, 423($zero)
	sw	$a2, 422($zero)
	sw	$a2, 421($zero)
	sw	$a2, 420($zero)
	sw	$a2, 419($zero)
	sw	$a2, 418($zero)
	sw	$a2, 417($zero)
	sw	$a2, 416($zero)
	sw	$a2, 415($zero)
	sw	$a2, 414($zero)
	sw	$a2, 413($zero)
	sw	$a2, 412($zero)
	sw	$a2, 411($zero)
	sw	$a2, 410($zero)
	sw	$a2, 409($zero)
	sw	$a2, 408($zero)
	sw	$a2, 407($zero)
	sw	$a2, 406($zero)
	sw	$a2, 405($zero)
	sw	$a2, 404($zero)
	sw	$a2, 403($zero)
	sw	$a2, 402($zero)
	sw	$a2, 401($zero)
	sw	$a2, 400($zero)
	sw	$a2, 399($zero)
	sw	$a2, 398($zero)
	sw	$a2, 397($zero)
	sw	$a2, 396($zero)
	sw	$a2, 395($zero)
	sw	$a2, 394($zero)
	sw	$a2, 393($zero)
	sw	$a2, 392($zero)
	sw	$a2, 391($zero)
	sw	$a2, 390($zero)
	sw	$a2, 389($zero)
	sw	$a2, 388($zero)
	sw	$a2, 387($zero)
	sw	$a2, 386($zero)
	sw	$a2, 385($zero)
	sw	$a2, 384($zero)
	sw	$a2, 383($zero)
	sw	$a2, 382($zero)
	sw	$a2, 381($zero)
	sw	$a2, 380($zero)
	sw	$a2, 379($zero)
	sw	$a2, 378($zero)
	sw	$a2, 377($zero)
	sw	$a2, 376($zero)
	sw	$a2, 375($zero)
	sw	$a2, 374($zero)
	sw	$a2, 373($zero)
	sw	$a2, 372($zero)
	sw	$a2, 371($zero)
	sw	$a2, 370($zero)
	sw	$a2, 369($zero)
	sw	$a2, 368($zero)
	sw	$a2, 367($zero)
	sw	$a2, 366($zero)
	sw	$a2, 365($zero)
	sw	$a2, 364($zero)
	sw	$a2, 363($zero)
	sw	$a2, 362($zero)
	sw	$a2, 361($zero)
	sw	$a2, 360($zero)
	sw	$a2, 359($zero)
	sw	$a2, 358($zero)
	addi	$a2, $zero, 358
	addi	$a3, $zero, 0
	sw	$a3, 538($zero)
	addi	$a3, $zero, 128
	addi	$t0, $zero, 128
	sw	$a3, 254($zero)
	sw	$t0, 255($zero)
	addi	$t0, $zero, 64
	sw	$t0, 256($zero)
	addi	$t0, $zero, 64
	sw	$t0, 257($zero)
	sw	$a2, 0($sp)
	sw	$a0, 1($sp)
	sw	$a1, 2($sp)
	add	$a0, $zero, $a3
	itof	$f0, $a0
	fdivi2	$f0, $fi3, $f0
	swc1	$f0, 258($zero)
	lw	$a0, 254($zero)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 3($sp)
	add	$a0, $zero, $a1
	sw	$ra, 8($sp)
	jal	min_caml_create_float_array
	lw	$ra, 8($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 4($sp)
	add	$a0, $zero, $a1
	sw	$ra, 9($sp)
	jal	min_caml_create_float_array
	lw	$ra, 9($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 9($sp)
	jal	min_caml_create_array
	lw	$ra, 9($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 5($sp)
	add	$a0, $zero, $a1
	sw	$ra, 10($sp)
	jal	min_caml_create_float_array
	lw	$ra, 10($sp)
	lw	$a1, 5($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 10($sp)
	jal	min_caml_create_float_array
	lw	$ra, 10($sp)
	lw	$a1, 5($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 10($sp)
	jal	min_caml_create_float_array
	lw	$ra, 10($sp)
	lw	$a1, 5($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 10($sp)
	jal	min_caml_create_float_array
	lw	$ra, 10($sp)
	lw	$a1, 5($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 5
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 10($sp)
	jal	min_caml_create_array
	lw	$ra, 10($sp)
	addi	$a1, $zero, 5
	addi	$a2, $zero, 0
	sw	$a0, 6($sp)
	add	$a0, $zero, $a1
	add	$a1, $zero, $a2
	sw	$ra, 7($sp)
	jal	min_caml_create_array
	lw	$ra, 7($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 7($sp)
	add	$a0, $zero, $a1
	sw	$ra, 12($sp)
	jal	min_caml_create_float_array
	lw	$ra, 12($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 12($sp)
	jal	min_caml_create_array
	lw	$ra, 12($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 8($sp)
	add	$a0, $zero, $a1
	sw	$ra, 13($sp)
	jal	min_caml_create_float_array
	lw	$ra, 13($sp)
	lw	$a1, 8($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 13($sp)
	jal	min_caml_create_float_array
	lw	$ra, 13($sp)
	lw	$a1, 8($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 13($sp)
	jal	min_caml_create_float_array
	lw	$ra, 13($sp)
	lw	$a1, 8($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 13($sp)
	jal	min_caml_create_float_array
	lw	$ra, 13($sp)
	lw	$a1, 8($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 13($sp)
	jal	min_caml_create_float_array
	lw	$ra, 13($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 13($sp)
	jal	min_caml_create_array
	lw	$ra, 13($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 9($sp)
	add	$a0, $zero, $a1
	sw	$ra, 14($sp)
	jal	min_caml_create_float_array
	lw	$ra, 14($sp)
	lw	$a1, 9($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 14($sp)
	jal	min_caml_create_float_array
	lw	$ra, 14($sp)
	lw	$a1, 9($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 14($sp)
	jal	min_caml_create_float_array
	lw	$ra, 14($sp)
	lw	$a1, 9($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 14($sp)
	jal	min_caml_create_float_array
	lw	$ra, 14($sp)
	lw	$a1, 9($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 1
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 14($sp)
	jal	min_caml_create_array
	lw	$ra, 14($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 10($sp)
	add	$a0, $zero, $a1
	sw	$ra, 15($sp)
	jal	min_caml_create_float_array
	lw	$ra, 15($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 15($sp)
	jal	min_caml_create_array
	lw	$ra, 15($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 11($sp)
	add	$a0, $zero, $a1
	sw	$ra, 16($sp)
	jal	min_caml_create_float_array
	lw	$ra, 16($sp)
	lw	$a1, 11($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 16($sp)
	jal	min_caml_create_float_array
	lw	$ra, 16($sp)
	lw	$a1, 11($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 16($sp)
	jal	min_caml_create_float_array
	lw	$ra, 16($sp)
	lw	$a1, 11($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 16($sp)
	jal	min_caml_create_float_array
	lw	$ra, 16($sp)
	lw	$a1, 11($sp)
	sw	$a0, 4($a1)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 8
	sw	$a1, 7($a0)
	lw	$a1, 10($sp)
	sw	$a1, 6($a0)
	lw	$a1, 9($sp)
	sw	$a1, 5($a0)
	lw	$a1, 8($sp)
	sw	$a1, 4($a0)
	lw	$a1, 7($sp)
	sw	$a1, 3($a0)
	lw	$a1, 6($sp)
	sw	$a1, 2($a0)
	lw	$a1, 5($sp)
	sw	$a1, 1($a0)
	lw	$a1, 4($sp)
	sw	$a1, 0($a0)
	add	$a1, $a0, $zero
	lw	$a0, 3($sp)
	sw	$ra, 16($sp)
	jal	min_caml_create_array
	lw	$ra, 16($sp)
	lw	$a1, 254($zero)
	addi	$a1, $a1, -2
	sw	$ra, 16($sp)
	addi	$sp, $sp, 17
	jal	init_line_elements.3082
	addi	$sp, $sp, -17
	lw	$ra, 16($sp)
	lw	$a1, 254($zero)
	addi	$a2, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 12($sp)
	sw	$a1, 13($sp)
	add	$a0, $zero, $a2
	sw	$ra, 18($sp)
	jal	min_caml_create_float_array
	lw	$ra, 18($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 14($sp)
	add	$a0, $zero, $a1
	sw	$ra, 15($sp)
	jal	min_caml_create_float_array
	lw	$ra, 15($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 15($sp)
	jal	min_caml_create_array
	lw	$ra, 15($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 15($sp)
	add	$a0, $zero, $a1
	sw	$ra, 20($sp)
	jal	min_caml_create_float_array
	lw	$ra, 20($sp)
	lw	$a1, 15($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 20($sp)
	jal	min_caml_create_float_array
	lw	$ra, 20($sp)
	lw	$a1, 15($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 20($sp)
	jal	min_caml_create_float_array
	lw	$ra, 20($sp)
	lw	$a1, 15($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 20($sp)
	jal	min_caml_create_float_array
	lw	$ra, 20($sp)
	lw	$a1, 15($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 5
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 20($sp)
	jal	min_caml_create_array
	lw	$ra, 20($sp)
	addi	$a1, $zero, 5
	addi	$a2, $zero, 0
	sw	$a0, 16($sp)
	add	$a0, $zero, $a1
	add	$a1, $zero, $a2
	sw	$ra, 21($sp)
	jal	min_caml_create_array
	lw	$ra, 21($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 17($sp)
	add	$a0, $zero, $a1
	sw	$ra, 22($sp)
	jal	min_caml_create_float_array
	lw	$ra, 22($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 22($sp)
	jal	min_caml_create_array
	lw	$ra, 22($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 18($sp)
	add	$a0, $zero, $a1
	sw	$ra, 23($sp)
	jal	min_caml_create_float_array
	lw	$ra, 23($sp)
	lw	$a1, 18($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 23($sp)
	jal	min_caml_create_float_array
	lw	$ra, 23($sp)
	lw	$a1, 18($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 23($sp)
	jal	min_caml_create_float_array
	lw	$ra, 23($sp)
	lw	$a1, 18($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 23($sp)
	jal	min_caml_create_float_array
	lw	$ra, 23($sp)
	lw	$a1, 18($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 23($sp)
	jal	min_caml_create_float_array
	lw	$ra, 23($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 23($sp)
	jal	min_caml_create_array
	lw	$ra, 23($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 19($sp)
	add	$a0, $zero, $a1
	sw	$ra, 24($sp)
	jal	min_caml_create_float_array
	lw	$ra, 24($sp)
	lw	$a1, 19($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 24($sp)
	jal	min_caml_create_float_array
	lw	$ra, 24($sp)
	lw	$a1, 19($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 24($sp)
	jal	min_caml_create_float_array
	lw	$ra, 24($sp)
	lw	$a1, 19($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 24($sp)
	jal	min_caml_create_float_array
	lw	$ra, 24($sp)
	lw	$a1, 19($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 1
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 24($sp)
	jal	min_caml_create_array
	lw	$ra, 24($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 20($sp)
	add	$a0, $zero, $a1
	sw	$ra, 25($sp)
	jal	min_caml_create_float_array
	lw	$ra, 25($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 25($sp)
	jal	min_caml_create_array
	lw	$ra, 25($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 21($sp)
	add	$a0, $zero, $a1
	sw	$ra, 26($sp)
	jal	min_caml_create_float_array
	lw	$ra, 26($sp)
	lw	$a1, 21($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 26($sp)
	jal	min_caml_create_float_array
	lw	$ra, 26($sp)
	lw	$a1, 21($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 26($sp)
	jal	min_caml_create_float_array
	lw	$ra, 26($sp)
	lw	$a1, 21($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 26($sp)
	jal	min_caml_create_float_array
	lw	$ra, 26($sp)
	lw	$a1, 21($sp)
	sw	$a0, 4($a1)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 8
	sw	$a1, 7($a0)
	lw	$a1, 20($sp)
	sw	$a1, 6($a0)
	lw	$a1, 19($sp)
	sw	$a1, 5($a0)
	lw	$a1, 18($sp)
	sw	$a1, 4($a0)
	lw	$a1, 17($sp)
	sw	$a1, 3($a0)
	lw	$a1, 16($sp)
	sw	$a1, 2($a0)
	lw	$a1, 15($sp)
	sw	$a1, 1($a0)
	lw	$a1, 14($sp)
	sw	$a1, 0($a0)
	add	$a1, $a0, $zero
	lw	$a0, 13($sp)
	sw	$ra, 26($sp)
	jal	min_caml_create_array
	lw	$ra, 26($sp)
	lw	$a1, 254($zero)
	addi	$a1, $a1, -2
	sw	$ra, 26($sp)
	addi	$sp, $sp, 27
	jal	init_line_elements.3082
	addi	$sp, $sp, -27
	lw	$ra, 26($sp)
	lw	$a1, 254($zero)
	addi	$a2, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 22($sp)
	sw	$a1, 23($sp)
	add	$a0, $zero, $a2
	sw	$ra, 28($sp)
	jal	min_caml_create_float_array
	lw	$ra, 28($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 24($sp)
	add	$a0, $zero, $a1
	sw	$ra, 29($sp)
	jal	min_caml_create_float_array
	lw	$ra, 29($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 29($sp)
	jal	min_caml_create_array
	lw	$ra, 29($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 25($sp)
	add	$a0, $zero, $a1
	sw	$ra, 30($sp)
	jal	min_caml_create_float_array
	lw	$ra, 30($sp)
	lw	$a1, 25($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 30($sp)
	jal	min_caml_create_float_array
	lw	$ra, 30($sp)
	lw	$a1, 25($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 30($sp)
	jal	min_caml_create_float_array
	lw	$ra, 30($sp)
	lw	$a1, 25($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 30($sp)
	jal	min_caml_create_float_array
	lw	$ra, 30($sp)
	lw	$a1, 25($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 5
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 30($sp)
	jal	min_caml_create_array
	lw	$ra, 30($sp)
	addi	$a1, $zero, 5
	addi	$a2, $zero, 0
	sw	$a0, 26($sp)
	add	$a0, $zero, $a1
	add	$a1, $zero, $a2
	sw	$ra, 31($sp)
	jal	min_caml_create_array
	lw	$ra, 31($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 27($sp)
	add	$a0, $zero, $a1
	sw	$ra, 32($sp)
	jal	min_caml_create_float_array
	lw	$ra, 32($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 32($sp)
	jal	min_caml_create_array
	lw	$ra, 32($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 28($sp)
	add	$a0, $zero, $a1
	sw	$ra, 33($sp)
	jal	min_caml_create_float_array
	lw	$ra, 33($sp)
	lw	$a1, 28($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 33($sp)
	jal	min_caml_create_float_array
	lw	$ra, 33($sp)
	lw	$a1, 28($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 33($sp)
	jal	min_caml_create_float_array
	lw	$ra, 33($sp)
	lw	$a1, 28($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 33($sp)
	jal	min_caml_create_float_array
	lw	$ra, 33($sp)
	lw	$a1, 28($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 33($sp)
	jal	min_caml_create_float_array
	lw	$ra, 33($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 33($sp)
	jal	min_caml_create_array
	lw	$ra, 33($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 29($sp)
	add	$a0, $zero, $a1
	sw	$ra, 34($sp)
	jal	min_caml_create_float_array
	lw	$ra, 34($sp)
	lw	$a1, 29($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 34($sp)
	jal	min_caml_create_float_array
	lw	$ra, 34($sp)
	lw	$a1, 29($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 34($sp)
	jal	min_caml_create_float_array
	lw	$ra, 34($sp)
	lw	$a1, 29($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 34($sp)
	jal	min_caml_create_float_array
	lw	$ra, 34($sp)
	lw	$a1, 29($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 1
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 34($sp)
	jal	min_caml_create_array
	lw	$ra, 34($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 30($sp)
	add	$a0, $zero, $a1
	sw	$ra, 31($sp)
	jal	min_caml_create_float_array
	lw	$ra, 31($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 31($sp)
	jal	min_caml_create_array
	lw	$ra, 31($sp)
	addi	$a1, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$a0, 31($sp)
	add	$a0, $zero, $a1
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	lw	$a1, 31($sp)
	sw	$a0, 1($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	lw	$a1, 31($sp)
	sw	$a0, 2($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	lw	$a1, 31($sp)
	sw	$a0, 3($a1)
	addi	$a0, $zero, 3
	faddi	$f0, $fzero, $fi0
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	lw	$a1, 31($sp)
	sw	$a0, 4($a1)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 8
	sw	$a1, 7($a0)
	lw	$a1, 30($sp)
	sw	$a1, 6($a0)
	lw	$a1, 29($sp)
	sw	$a1, 5($a0)
	lw	$a1, 28($sp)
	sw	$a1, 4($a0)
	lw	$a1, 27($sp)
	sw	$a1, 3($a0)
	lw	$a1, 26($sp)
	sw	$a1, 2($a0)
	lw	$a1, 25($sp)
	sw	$a1, 1($a0)
	lw	$a1, 24($sp)
	sw	$a1, 0($a0)
	add	$a1, $a0, $zero
	lw	$a0, 23($sp)
	sw	$ra, 36($sp)
	jal	min_caml_create_array
	lw	$ra, 36($sp)
	lw	$a1, 254($zero)
	addi	$a1, $a1, -2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 37
	jal	init_line_elements.3082
	addi	$sp, $sp, -37
	lw	$ra, 36($sp)
	sw	$a0, 32($sp)
	readf	$f0
	swc1	$f0, 172($zero)
	readf	$f0
	swc1	$f0, 173($zero)
	readf	$f0
	swc1	$f0, 174($zero)
	readf	$f0
	fmuli	$f0, $f0, $fi4
	swc1	$f0, 34($sp)
	sw	$ra, 40($sp)
	addi	$sp, $sp, 41
	jal	cos.2638
	addi	$sp, $sp, -41
	lw	$ra, 40($sp)
	lwc1	$f1, 34($sp)
	swc1	$f0, 36($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 42($sp)
	addi	$sp, $sp, 43
	jal	sin.2640
	addi	$sp, $sp, -43
	lw	$ra, 42($sp)
	swc1	$f0, 38($sp)
	readf	$f0
	fmuli	$f0, $f0, $fi4
	swc1	$f0, 40($sp)
	sw	$ra, 46($sp)
	addi	$sp, $sp, 47
	jal	cos.2638
	addi	$sp, $sp, -47
	lw	$ra, 46($sp)
	lwc1	$f1, 40($sp)
	swc1	$f0, 42($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 48($sp)
	addi	$sp, $sp, 49
	jal	sin.2640
	addi	$sp, $sp, -49
	lw	$ra, 48($sp)
	lwc1	$f1, 36($sp)
	mul.s	$f2, $f1, $f0
	fmuli	$f2, $f2, $fi5
	swc1	$f2, 271($zero)
	lwc1	$f2, 38($sp)
	fmuli	$f3, $f2, $fi6
	swc1	$f3, 272($zero)
	lwc1	$f3, 42($sp)
	mul.s	$f4, $f1, $f3
	fmuli	$f4, $f4, $fi5
	swc1	$f4, 273($zero)
	swc1	$f3, 265($zero)
	swc1	$fzero, 266($zero)
	sub.s	$f4, $fzero, $f0
	swc1	$f4, 267($zero)
	sub.s	$f4, $fzero, $f2
	mul.s	$f0, $f4, $f0
	swc1	$f0, 268($zero)
	sub.s	$f0, $fzero, $f1
	swc1	$f0, 269($zero)
	sub.s	$f0, $fzero, $f2
	mul.s	$f0, $f0, $f3
	swc1	$f0, 270($zero)
	lwc1	$f0, 172($zero)
	lwc1	$f1, 271($zero)
	sub.s	$f0, $f0, $f1
	swc1	$f0, 175($zero)
	lwc1	$f0, 173($zero)
	lwc1	$f1, 272($zero)
	sub.s	$f0, $f0, $f1
	swc1	$f0, 176($zero)
	lwc1	$f0, 174($zero)
	lwc1	$f1, 273($zero)
	sub.s	$f0, $f0, $f1
	swc1	$f0, 177($zero)
	readi	$a0
	readf	$f0
	fmuli	$f0, $f0, $fi4
	swc1	$f0, 44($sp)
	sw	$ra, 50($sp)
	addi	$sp, $sp, 51
	jal	sin.2640
	addi	$sp, $sp, -51
	lw	$ra, 50($sp)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 179($zero)
	readf	$f0
	fmuli	$f0, $f0, $fi4
	lwc1	$f1, 44($sp)
	swc1	$f0, 46($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 53
	jal	cos.2638
	addi	$sp, $sp, -53
	lw	$ra, 52($sp)
	lwc1	$f1, 46($sp)
	swc1	$f0, 48($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 54($sp)
	addi	$sp, $sp, 55
	jal	sin.2640
	addi	$sp, $sp, -55
	lw	$ra, 54($sp)
	lwc1	$f1, 48($sp)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 178($zero)
	lwc1	$f0, 46($sp)
	sw	$ra, 54($sp)
	addi	$sp, $sp, 55
	jal	cos.2638
	addi	$sp, $sp, -55
	lw	$ra, 54($sp)
	lwc1	$f1, 48($sp)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 180($zero)
	readf	$f0
	swc1	$f0, 181($zero)
	addi	$a0, $zero, 0
	sw	$ra, 54($sp)
	addi	$sp, $sp, 55
	jal	read_object.2785
	addi	$sp, $sp, -55
	lw	$ra, 54($sp)
	addi	$a0, $zero, 0
	sw	$ra, 54($sp)
	addi	$sp, $sp, 55
	jal	read_and_network.2793
	addi	$sp, $sp, -55
	lw	$ra, 54($sp)
	addi	$a0, $zero, 0
	sw	$ra, 54($sp)
	addi	$sp, $sp, 55
	jal	read_or_network.2791
	addi	$sp, $sp, -55
	lw	$ra, 54($sp)
	sw	$a0, 234($zero)
	addi	$a0, $zero, 80
	outc	$a0
	addi	$a0, $zero, 54
	outc	$a0
	addi	$a0, $zero, 10
	outc	$a0
	lw	$a0, 254($zero)
	sw	$ra, 54($sp)
	addi	$sp, $sp, 55
	jal	print_my_sub.3044
	addi	$sp, $sp, -55
	lw	$ra, 54($sp)
	addi	$a0, $zero, 32
	outc	$a0
	lw	$a0, 255($zero)
	sw	$ra, 54($sp)
	addi	$sp, $sp, 55
	jal	print_my_sub.3044
	addi	$sp, $sp, -55
	lw	$ra, 54($sp)
	addi	$a0, $zero, 32
	outc	$a0
	addi	$a0, $zero, 50
	outc	$a0
	addi	$a0, $zero, 53
	outc	$a0
	addi	$a0, $zero, 53
	outc	$a0
	addi	$a0, $zero, 10
	outc	$a0
	addi	$a0, $zero, 4
	sw	$ra, 54($sp)
	addi	$sp, $sp, 55
	jal	create_dirvecs.3114
	addi	$sp, $sp, -55
	lw	$ra, 54($sp)
	addi	$a0, $zero, 9
	addi	$a1, $zero, 0
	addi	$a2, $zero, 0
	sw	$ra, 54($sp)
	addi	$sp, $sp, 55
	jal	calc_dirvec_rows.3105
	addi	$sp, $sp, -55
	lw	$ra, 54($sp)
	addi	$a0, $zero, 4
	sw	$ra, 54($sp)
	addi	$sp, $sp, 55
	jal	init_vecset_constants.3119
	addi	$sp, $sp, -55
	lw	$ra, 54($sp)
	lw	$a0, 347($zero)
	lwc1	$f0, 178($zero)
	swc1	$f0, 0($a0)
	lwc1	$f0, 179($zero)
	swc1	$f0, 1($a0)
	lwc1	$f0, 180($zero)
	swc1	$f0, 2($a0)
	lw	$a0, 100($zero)
	addi	$a1, $a0, -1
	lw	$a0, 2($sp)
	sw	$ra, 54($sp)
	addi	$sp, $sp, 55
	jal	iter_setup_dirvec_constants.2890
	addi	$sp, $sp, -55
	lw	$ra, 54($sp)
	lw	$a0, 100($zero)
	addi	$a0, $a0, -1
	blti	$a0, 0, beq_cont.23694
	lw	$a1, 1($sp)
	lw2	$v0, $a1, $a0
	lw	$v1, 2($v0)
	bnei	$v1, 2, beq_cont.23696
	lw	$v1, 7($v0)
	lwc1	$f0, 0($v1)
	bflti2	$f0, $fi7, beq_else.23697
	addi	$a1, $zero, 0
	j	beq_cont.23698
beq_else.23697:
	addi	$a1, $zero, 1
beq_cont.23698:
	bnei	$a1, 0, beq_else.23699
	j	beq_cont.23700
beq_else.23699:
	lw	$v1, 1($v0)
	bnei	$v1, 1, beq_else.23701
	sll	$a0, $a0, 2
	lw	$a1, 538($zero)
	lw	$v0, 7($v0)
	lwc1	$f0, 0($v0)
	fsubi2	$f0, $fi7, $f0
	lwc1	$f1, 178($zero)
	sub.s	$f1, $fzero, $f1
	lwc1	$f2, 179($zero)
	sub.s	$f2, $fzero, $f2
	lwc1	$f3, 180($zero)
	sub.s	$f3, $fzero, $f3
	addi	$a2, $a0, 1
	lwc1	$f4, 178($zero)
	addi	$a3, $zero, 3
	faddi	$f5, $fzero, $fi0
	swc1	$f1, 50($sp)
	sw	$a0, 52($sp)
	sw	$a1, 53($sp)
	sw	$a2, 54($sp)
	swc1	$f0, 56($sp)
	swc1	$f3, 58($sp)
	swc1	$f2, 60($sp)
	swc1	$f4, 62($sp)
	add	$a0, $zero, $a3
	add.s	$f0, $fzero, $f5
	sw	$ra, 68($sp)
	jal	min_caml_create_float_array
	lw	$ra, 68($sp)
	add	$a1, $a0, $zero
	lw	$a0, 100($zero)
	sw	$a1, 64($sp)
	sw	$ra, 69($sp)
	jal	min_caml_create_array
	lw	$ra, 69($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 6
	sw	$a0, 1($a1)
	lw	$a0, 64($sp)
	sw	$a0, 0($a1)
	lwc1	$f0, 62($sp)
	swc1	$f0, 0($a0)
	lwc1	$f0, 60($sp)
	swc1	$f0, 1($a0)
	lwc1	$f1, 58($sp)
	swc1	$f1, 2($a0)
	lw	$a0, 100($zero)
	addi	$a0, $a0, -1
	sw	$a1, 65($sp)
	add	$fp, $zero, $a1
	add	$a1, $zero, $a0
	add	$a0, $zero, $fp
	sw	$ra, 70($sp)
	addi	$sp, $sp, 71
	jal	iter_setup_dirvec_constants.2890
	addi	$sp, $sp, -71
	lw	$ra, 70($sp)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 11
	lwc1	$f0, 56($sp)
	swc1	$f0, 6($a0)
	lw	$a1, 65($sp)
	sw	$a1, 1($a0)
	lw	$a1, 54($sp)
	sw	$a1, 0($a0)
	lw	$a1, 53($sp)
	lw	$a2, 0($sp)
	sw2	$a0, $a2, $a1
	addi	$a0, $a1, 1
	lw	$a3, 52($sp)
	addi	$t0, $a3, 2
	lwc1	$f1, 179($zero)
	addi	$t1, $zero, 3
	faddi	$f2, $fzero, $fi0
	sw	$a0, 66($sp)
	sw	$t0, 67($sp)
	swc1	$f1, 68($sp)
	add	$a0, $zero, $t1
	add.s	$f0, $fzero, $f2
	sw	$ra, 74($sp)
	jal	min_caml_create_float_array
	lw	$ra, 74($sp)
	add	$a1, $a0, $zero
	lw	$a0, 100($zero)
	sw	$a1, 70($sp)
	sw	$ra, 71($sp)
	jal	min_caml_create_array
	lw	$ra, 71($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 6
	sw	$a0, 1($a1)
	lw	$a0, 70($sp)
	sw	$a0, 0($a1)
	lwc1	$f0, 50($sp)
	swc1	$f0, 0($a0)
	lwc1	$f1, 68($sp)
	swc1	$f1, 1($a0)
	lwc1	$f1, 58($sp)
	swc1	$f1, 2($a0)
	lw	$a0, 100($zero)
	addi	$a0, $a0, -1
	sw	$a1, 71($sp)
	add	$fp, $zero, $a1
	add	$a1, $zero, $a0
	add	$a0, $zero, $fp
	sw	$ra, 76($sp)
	addi	$sp, $sp, 77
	jal	iter_setup_dirvec_constants.2890
	addi	$sp, $sp, -77
	lw	$ra, 76($sp)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 11
	lwc1	$f0, 56($sp)
	swc1	$f0, 6($a0)
	lw	$a1, 71($sp)
	sw	$a1, 1($a0)
	lw	$a1, 67($sp)
	sw	$a1, 0($a0)
	lw	$a1, 66($sp)
	lw	$a2, 0($sp)
	sw2	$a0, $a2, $a1
	lw	$a0, 53($sp)
	addi	$a1, $a0, 2
	lw	$a3, 52($sp)
	addi	$a3, $a3, 3
	lwc1	$f1, 180($zero)
	addi	$t0, $zero, 3
	faddi	$f2, $fzero, $fi0
	sw	$a1, 72($sp)
	sw	$a3, 73($sp)
	swc1	$f1, 74($sp)
	add	$a0, $zero, $t0
	add.s	$f0, $fzero, $f2
	sw	$ra, 80($sp)
	jal	min_caml_create_float_array
	lw	$ra, 80($sp)
	add	$a1, $a0, $zero
	lw	$a0, 100($zero)
	sw	$a1, 76($sp)
	sw	$ra, 81($sp)
	jal	min_caml_create_array
	lw	$ra, 81($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 6
	sw	$a0, 1($a1)
	lw	$a0, 76($sp)
	sw	$a0, 0($a1)
	lwc1	$f0, 50($sp)
	swc1	$f0, 0($a0)
	lwc1	$f0, 60($sp)
	swc1	$f0, 1($a0)
	lwc1	$f0, 74($sp)
	swc1	$f0, 2($a0)
	lw	$a0, 100($zero)
	addi	$a0, $a0, -1
	sw	$a1, 77($sp)
	add	$fp, $zero, $a1
	add	$a1, $zero, $a0
	add	$a0, $zero, $fp
	sw	$ra, 82($sp)
	addi	$sp, $sp, 83
	jal	iter_setup_dirvec_constants.2890
	addi	$sp, $sp, -83
	lw	$ra, 82($sp)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 11
	lwc1	$f0, 56($sp)
	swc1	$f0, 6($a0)
	lw	$a1, 77($sp)
	sw	$a1, 1($a0)
	lw	$a1, 73($sp)
	sw	$a1, 0($a0)
	lw	$a1, 72($sp)
	lw	$a2, 0($sp)
	sw2	$a0, $a2, $a1
	lw	$a0, 53($sp)
	addi	$a0, $a0, 3
	sw	$a0, 538($zero)
	j	beq_cont.23702
beq_else.23701:
	bnei	$v1, 2, beq_cont.23705
	sll	$a0, $a0, 2
	addi	$a0, $a0, 1
	lw	$a1, 538($zero)
	lw	$v1, 7($v0)
	lwc1	$f0, 0($v1)
	fsubi2	$f0, $fi7, $f0
	lw	$v1, 4($v0)
	lwc1	$f1, 178($zero)
	lwc1	$f2, 0($v1)
	mul.s	$f1, $f1, $f2
	lwc1	$f2, 179($zero)
	lwc1	$f3, 1($v1)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lwc1	$f2, 180($zero)
	lwc1	$f3, 2($v1)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lwc1	$f2, 0($v1)
	fmuli	$f2, $f2, $fi8
	mul.s	$f2, $f2, $f1
	lwc1	$f3, 178($zero)
	sub.s	$f2, $f2, $f3
	lwc1	$f3, 1($v1)
	fmuli	$f3, $f3, $fi8
	mul.s	$f3, $f3, $f1
	lwc1	$f4, 179($zero)
	sub.s	$f3, $f3, $f4
	lw	$v0, 4($v0)
	lwc1	$f4, 2($v0)
	fmuli	$f4, $f4, $fi8
	mul.s	$f1, $f4, $f1
	lwc1	$f4, 180($zero)
	sub.s	$f1, $f1, $f4
	addi	$a2, $zero, 3
	faddi	$f4, $fzero, $fi0
	sw	$a1, 78($sp)
	sw	$a0, 79($sp)
	swc1	$f0, 80($sp)
	swc1	$f1, 82($sp)
	swc1	$f3, 84($sp)
	swc1	$f2, 86($sp)
	add	$a0, $zero, $a2
	add.s	$f0, $fzero, $f4
	sw	$ra, 92($sp)
	jal	min_caml_create_float_array
	lw	$ra, 92($sp)
	add	$a1, $a0, $zero
	lw	$a0, 100($zero)
	sw	$a1, 88($sp)
	sw	$ra, 93($sp)
	jal	min_caml_create_array
	lw	$ra, 93($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 6
	sw	$a0, 1($a1)
	lw	$a0, 88($sp)
	sw	$a0, 0($a1)
	lwc1	$f0, 86($sp)
	swc1	$f0, 0($a0)
	lwc1	$f0, 84($sp)
	swc1	$f0, 1($a0)
	lwc1	$f0, 82($sp)
	swc1	$f0, 2($a0)
	lw	$a0, 100($zero)
	addi	$a0, $a0, -1
	sw	$a1, 89($sp)
	add	$fp, $zero, $a1
	add	$a1, $zero, $a0
	add	$a0, $zero, $fp
	sw	$ra, 94($sp)
	addi	$sp, $sp, 95
	jal	iter_setup_dirvec_constants.2890
	addi	$sp, $sp, -95
	lw	$ra, 94($sp)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 11
	lwc1	$f0, 80($sp)
	swc1	$f0, 6($a0)
	lw	$a1, 89($sp)
	sw	$a1, 1($a0)
	lw	$a1, 79($sp)
	sw	$a1, 0($a0)
	lw	$a1, 78($sp)
	lw	$a2, 0($sp)
	sw2	$a0, $a2, $a1
	addi	$a0, $a1, 1
	sw	$a0, 538($zero)
beq_cont.23705:
beq_cont.23702:
beq_cont.23700:
beq_cont.23696:
beq_cont.23694:
	addi	$a0, $zero, 0
	addi	$a1, $zero, 0
	lwc1	$f0, 258($zero)
	lw	$a2, 257($zero)
	sub	$a0, $a0, $a2
	sw	$a1, 90($sp)
	swc1	$f0, 92($sp)
	itof	$f0, $a0
	lwc1	$f1, 92($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 268($zero)
	mul.s	$f1, $f0, $f1
	lwc1	$f2, 271($zero)
	add.s	$f1, $f1, $f2
	lwc1	$f2, 269($zero)
	mul.s	$f2, $f0, $f2
	lwc1	$f3, 272($zero)
	add.s	$f2, $f2, $f3
	lwc1	$f3, 270($zero)
	mul.s	$f0, $f0, $f3
	lwc1	$f3, 273($zero)
	add.s	$f0, $f0, $f3
	lw	$a0, 254($zero)
	addi	$a1, $a0, -1
	lw	$a0, 22($sp)
	lw	$a2, 90($sp)
	add.s	$f30, $fzero, $f2
	add.s	$f2, $fzero, $f0
	add.s	$f0, $fzero, $f1
	add.s	$f1, $fzero, $f30
	sw	$ra, 98($sp)
	addi	$sp, $sp, 99
	jal	pretrace_pixels.3055
	addi	$sp, $sp, -99
	lw	$ra, 98($sp)
	addi	$a0, $zero, 0
	addi	$t0, $zero, 2
	lw	$a1, 12($sp)
	lw	$a2, 22($sp)
	lw	$a3, 32($sp)
	sw	$ra, 98($sp)
	addi	$sp, $sp, 99
	jal	scan_line.3072
	addi	$sp, $sp, -99
	lw	$ra, 98($sp)
	addi	$zero, $zero, 0
last:
	j	last