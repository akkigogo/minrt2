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
	addi	$gp, $gp, 4
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
	addi	$gp, $gp, 4
	j	create_float_array_loop
cos.2638:
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.23876
	sub.s	$f0, $fzero, $f0
	j	cos.2638
bne_else.23876:
	flui	$f1, 16585
	fori	$f1, $f1, 4059
	c.lt.s	$s0, $f1, $f0
	beq	$s0, $zero, bne_else.23877
	flui	$f1, 16585
	fori	$f1, $f1, 4059
	sub.s	$f0, $f0, $f1
	j	cos.2638
bne_else.23877:
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23878
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23879
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23880
	mul.s	$f0, $f0, $f0
	flui	$f1, 16256
	flui	$f2, 16128
	flui	$f3, 15658
	fori	$f3, $f3, 42889
	flui	$f4, 15027
	fori	$f4, $f4, 33030
	mul.s	$f4, $f0, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f3, $f0, $f3
	sub.s	$f2, $f2, $f3
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
	jr	$ra
bne_else.23880:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	sub.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	flui	$f2, 16256
	flui	$f3, 15914
	fori	$f3, $f3, 43692
	flui	$f4, 15368
	fori	$f4, $f4, 34406
	flui	$f5, 14669
	fori	$f5, $f5, 25782
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f4, $f1, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	mul.s	$f0, $f0, $f1
	jr	$ra
bne_else.23879:
	flui	$f1, 16406
	fori	$f1, $f1, 52196
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23881
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	sub.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	flui	$f2, 16256
	flui	$f3, 15914
	fori	$f3, $f3, 43692
	flui	$f4, 15368
	fori	$f4, $f4, 34406
	flui	$f5, 14669
	fori	$f5, $f5, 25782
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f4, $f1, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	mul.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	jr	$ra
bne_else.23881:
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	sub.s	$f0, $f1, $f0
	mul.s	$f0, $f0, $f0
	flui	$f1, 16256
	flui	$f2, 16128
	flui	$f3, 15658
	fori	$f3, $f3, 42889
	flui	$f4, 15027
	fori	$f4, $f4, 33030
	mul.s	$f4, $f0, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f3, $f0, $f3
	sub.s	$f2, $f2, $f3
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
	jr	$ra
bne_else.23878:
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	sub.s	$f0, $f0, $f1
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23882
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23883
	mul.s	$f1, $f0, $f0
	flui	$f2, 16256
	flui	$f3, 15914
	fori	$f3, $f3, 43692
	flui	$f4, 15368
	fori	$f4, $f4, 34406
	flui	$f5, 14669
	fori	$f5, $f5, 25782
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f4, $f1, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	mul.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	jr	$ra
bne_else.23883:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	sub.s	$f0, $f1, $f0
	mul.s	$f0, $f0, $f0
	flui	$f1, 16256
	flui	$f2, 16128
	flui	$f3, 15658
	fori	$f3, $f3, 42889
	flui	$f4, 15027
	fori	$f4, $f4, 33030
	mul.s	$f4, $f0, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f3, $f0, $f3
	sub.s	$f2, $f2, $f3
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
	jr	$ra
bne_else.23882:
	flui	$f1, 16406
	fori	$f1, $f1, 52196
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23884
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	sub.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	flui	$f2, 16256
	flui	$f3, 15914
	fori	$f3, $f3, 43692
	flui	$f4, 15368
	fori	$f4, $f4, 34406
	flui	$f5, 14669
	fori	$f5, $f5, 25782
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f4, $f1, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	mul.s	$f0, $f0, $f1
	jr	$ra
bne_else.23884:
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	sub.s	$f0, $f1, $f0
	mul.s	$f0, $f0, $f0
	flui	$f1, 16256
	flui	$f2, 16128
	flui	$f3, 15658
	fori	$f3, $f3, 42889
	flui	$f4, 15027
	fori	$f4, $f4, 33030
	mul.s	$f4, $f0, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f3, $f0, $f3
	sub.s	$f2, $f2, $f3
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
	jr	$ra
sin.2640:
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.23885
	sub.s	$f0, $fzero, $f0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	sin.2640
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	sub.s	$f0, $fzero, $f0
	jr	$ra
bne_else.23885:
	flui	$f1, 16585
	fori	$f1, $f1, 4059
	c.lt.s	$s0, $f1, $f0
	beq	$s0, $zero, bne_else.23886
	flui	$f1, 16585
	fori	$f1, $f1, 4059
	sub.s	$f0, $f0, $f1
	j	sin.2640
bne_else.23886:
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23887
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23888
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23889
	mul.s	$f1, $f0, $f0
	flui	$f2, 16256
	flui	$f3, 15914
	fori	$f3, $f3, 43692
	flui	$f4, 15368
	fori	$f4, $f4, 34406
	flui	$f5, 14669
	fori	$f5, $f5, 25782
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f4, $f1, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	mul.s	$f0, $f0, $f1
	jr	$ra
bne_else.23889:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	sub.s	$f0, $f1, $f0
	mul.s	$f0, $f0, $f0
	flui	$f1, 16256
	flui	$f2, 16128
	flui	$f3, 15658
	fori	$f3, $f3, 42889
	flui	$f4, 15027
	fori	$f4, $f4, 33030
	mul.s	$f4, $f0, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f3, $f0, $f3
	sub.s	$f2, $f2, $f3
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
	jr	$ra
bne_else.23888:
	flui	$f1, 16406
	fori	$f1, $f1, 52196
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23890
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	sub.s	$f0, $f0, $f1
	mul.s	$f0, $f0, $f0
	flui	$f1, 16256
	flui	$f2, 16128
	flui	$f3, 15658
	fori	$f3, $f3, 42889
	flui	$f4, 15027
	fori	$f4, $f4, 33030
	mul.s	$f4, $f0, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f3, $f0, $f3
	sub.s	$f2, $f2, $f3
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
	jr	$ra
bne_else.23890:
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	sub.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	flui	$f2, 16256
	flui	$f3, 15914
	fori	$f3, $f3, 43692
	flui	$f4, 15368
	fori	$f4, $f4, 34406
	flui	$f5, 14669
	fori	$f5, $f5, 25782
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f4, $f1, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	mul.s	$f0, $f0, $f1
	jr	$ra
bne_else.23887:
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	sub.s	$f0, $f0, $f1
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23891
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23892
	mul.s	$f1, $f0, $f0
	flui	$f2, 16256
	flui	$f3, 15914
	fori	$f3, $f3, 43692
	flui	$f4, 15368
	fori	$f4, $f4, 34406
	flui	$f5, 14669
	fori	$f5, $f5, 25782
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f4, $f1, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	mul.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	jr	$ra
bne_else.23892:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	sub.s	$f0, $f1, $f0
	mul.s	$f0, $f0, $f0
	flui	$f1, 16256
	flui	$f2, 16128
	flui	$f3, 15658
	fori	$f3, $f3, 42889
	flui	$f4, 15027
	fori	$f4, $f4, 33030
	mul.s	$f4, $f0, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f3, $f0, $f3
	sub.s	$f2, $f2, $f3
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
	jr	$ra
bne_else.23891:
	flui	$f1, 16406
	fori	$f1, $f1, 52196
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.23893
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	sub.s	$f0, $f0, $f1
	mul.s	$f0, $f0, $f0
	flui	$f1, 16256
	flui	$f2, 16128
	flui	$f3, 15658
	fori	$f3, $f3, 42889
	flui	$f4, 15027
	fori	$f4, $f4, 33030
	mul.s	$f4, $f0, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f3, $f0, $f3
	sub.s	$f2, $f2, $f3
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
	jr	$ra
bne_else.23893:
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	sub.s	$f0, $f1, $f0
	mul.s	$f1, $f0, $f0
	flui	$f2, 16256
	flui	$f3, 15914
	fori	$f3, $f3, 43692
	flui	$f4, 15368
	fori	$f4, $f4, 34406
	flui	$f5, 14669
	fori	$f5, $f5, 25782
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f4, $f1, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	mul.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	jr	$ra
read_object.2785:
	addi	$a1, $zero, 20048
	slti	$s0, $a0, 60
	beq	$s0, $zero, bne_else.23894
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	readi	$a0
	addi	$s1, $zero, -1
	bne	$a0, $s1, beq_else.23895
	addi	$a0, $zero, 0
	j	beq_cont.23896
beq_else.23895:
	sw	$a0, 8($sp)
	readi	$a0
	sw	$a0, 12($sp)
	readi	$a0
	sw	$a0, 16($sp)
	readi	$a0
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 20($sp)
	add	$a0, $zero, $a1
	sw	$ra, 28($sp)
	jal	min_caml_create_float_array
	lw	$ra, 28($sp)
	sw	$a0, 24($sp)
	readf	$f0
	lw	$a0, 24($sp)
	swc1	$f0, 0($a0)
	readf	$f0
	lw	$a0, 24($sp)
	swc1	$f0, 4($a0)
	readf	$f0
	lw	$a0, 24($sp)
	swc1	$f0, 8($a0)
	addi	$a1, $zero, 3
	flui	$f0, 0
	add	$a0, $zero, $a1
	sw	$ra, 28($sp)
	jal	min_caml_create_float_array
	lw	$ra, 28($sp)
	sw	$a0, 28($sp)
	readf	$f0
	lw	$a0, 28($sp)
	swc1	$f0, 0($a0)
	readf	$f0
	lw	$a0, 28($sp)
	swc1	$f0, 4($a0)
	readf	$f0
	lw	$a0, 28($sp)
	swc1	$f0, 8($a0)
	readf	$f0
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.23897
	addi	$a0, $zero, 1
	j	bne_cont.23898
bne_else.23897:
	addi	$a0, $zero, 0
bne_cont.23898:
	addi	$a1, $zero, 2
	flui	$f0, 0
	sw	$a0, 32($sp)
	add	$a0, $zero, $a1
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	sw	$a0, 36($sp)
	readf	$f0
	lw	$a0, 36($sp)
	swc1	$f0, 0($a0)
	readf	$f0
	lw	$a0, 36($sp)
	swc1	$f0, 4($a0)
	addi	$a1, $zero, 3
	flui	$f0, 0
	add	$a0, $zero, $a1
	sw	$ra, 44($sp)
	jal	min_caml_create_float_array
	lw	$ra, 44($sp)
	sw	$a0, 40($sp)
	readf	$f0
	lw	$a0, 40($sp)
	swc1	$f0, 0($a0)
	readf	$f0
	lw	$a0, 40($sp)
	swc1	$f0, 4($a0)
	readf	$f0
	lw	$a0, 40($sp)
	swc1	$f0, 8($a0)
	addi	$a1, $zero, 3
	flui	$f0, 0
	add	$a0, $zero, $a1
	sw	$ra, 44($sp)
	jal	min_caml_create_float_array
	lw	$ra, 44($sp)
	lw	$a1, 20($sp)
	bne	$a1, $zero, beq_else.23899
	j	beq_cont.23900
beq_else.23899:
	sw	$a0, 44($sp)
	readf	$f0
	flui	$f1, 15502
	fori	$f1, $f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$a0, 44($sp)
	swc1	$f0, 0($a0)
	readf	$f0
	flui	$f1, 15502
	fori	$f1, $f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$a0, 44($sp)
	swc1	$f0, 4($a0)
	readf	$f0
	flui	$f1, 15502
	fori	$f1, $f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$a0, 44($sp)
	swc1	$f0, 8($a0)
beq_cont.23900:
	lw	$a1, 12($sp)
	addi	$s1, $zero, 2
	bne	$a1, $s1, beq_else.23901
	addi	$a2, $zero, 1
	j	beq_cont.23902
beq_else.23901:
	lw	$a2, 32($sp)
beq_cont.23902:
	addi	$a3, $zero, 4
	flui	$f0, 0
	sw	$a2, 48($sp)
	sw	$a0, 44($sp)
	add	$a0, $zero, $a3
	sw	$ra, 52($sp)
	jal	min_caml_create_float_array
	lw	$ra, 52($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 48
	sw	$a0, 40($a1)
	lw	$a0, 44($sp)
	sw	$a0, 36($a1)
	lw	$a2, 40($sp)
	sw	$a2, 32($a1)
	lw	$a2, 36($sp)
	sw	$a2, 28($a1)
	lw	$a2, 48($sp)
	sw	$a2, 24($a1)
	lw	$a2, 28($sp)
	sw	$a2, 20($a1)
	lw	$a2, 24($sp)
	sw	$a2, 16($a1)
	lw	$a3, 20($sp)
	sw	$a3, 12($a1)
	lw	$t0, 16($sp)
	sw	$t0, 8($a1)
	lw	$t0, 12($sp)
	sw	$t0, 4($a1)
	lw	$t1, 8($sp)
	sw	$t1, 0($a1)
	lw	$t1, 4($sp)
	sll	$t2, $t1, 2
	lw	$t3, 0($sp)
	add	$s1, $t3, $t2
	sw	$a1, 0($s1)
	addi	$s1, $zero, 3
	bne	$t0, $s1, beq_else.23903
	lwc1	$f0, 0($a2)
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.23905
	addi	$a1, $zero, 1
	j	c.eq_cont.23906
c.eq_else.23905:
	addi	$a1, $zero, 0
c.eq_cont.23906:
	bne	$a1, $zero, beq_else.23907
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.23909
	addi	$a1, $zero, 1
	j	c.eq_cont.23910
c.eq_else.23909:
	addi	$a1, $zero, 0
c.eq_cont.23910:
	bne	$a1, $zero, beq_else.23911
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.23913
	addi	$a1, $zero, 1
	j	bne_cont.23914
bne_else.23913:
	addi	$a1, $zero, 0
bne_cont.23914:
	bne	$a1, $zero, beq_else.23915
	flui	$f1, -16512
	j	beq_cont.23916
beq_else.23915:
	flui	$f1, 16256
beq_cont.23916:
	j	beq_cont.23912
beq_else.23911:
	flui	$f1, 0
beq_cont.23912:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
	j	beq_cont.23908
beq_else.23907:
	flui	$f0, 0
beq_cont.23908:
	swc1	$f0, 0($a2)
	lwc1	$f0, 4($a2)
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.23917
	addi	$a1, $zero, 1
	j	c.eq_cont.23918
c.eq_else.23917:
	addi	$a1, $zero, 0
c.eq_cont.23918:
	bne	$a1, $zero, beq_else.23919
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.23921
	addi	$a1, $zero, 1
	j	c.eq_cont.23922
c.eq_else.23921:
	addi	$a1, $zero, 0
c.eq_cont.23922:
	bne	$a1, $zero, beq_else.23923
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.23925
	addi	$a1, $zero, 1
	j	bne_cont.23926
bne_else.23925:
	addi	$a1, $zero, 0
bne_cont.23926:
	bne	$a1, $zero, beq_else.23927
	flui	$f1, -16512
	j	beq_cont.23928
beq_else.23927:
	flui	$f1, 16256
beq_cont.23928:
	j	beq_cont.23924
beq_else.23923:
	flui	$f1, 0
beq_cont.23924:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
	j	beq_cont.23920
beq_else.23919:
	flui	$f0, 0
beq_cont.23920:
	swc1	$f0, 4($a2)
	lwc1	$f0, 8($a2)
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.23929
	addi	$a1, $zero, 1
	j	c.eq_cont.23930
c.eq_else.23929:
	addi	$a1, $zero, 0
c.eq_cont.23930:
	bne	$a1, $zero, beq_else.23931
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.23933
	addi	$a1, $zero, 1
	j	c.eq_cont.23934
c.eq_else.23933:
	addi	$a1, $zero, 0
c.eq_cont.23934:
	bne	$a1, $zero, beq_else.23935
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.23937
	addi	$a1, $zero, 1
	j	bne_cont.23938
bne_else.23937:
	addi	$a1, $zero, 0
bne_cont.23938:
	bne	$a1, $zero, beq_else.23939
	flui	$f1, -16512
	j	beq_cont.23940
beq_else.23939:
	flui	$f1, 16256
beq_cont.23940:
	j	beq_cont.23936
beq_else.23935:
	flui	$f1, 0
beq_cont.23936:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
	j	beq_cont.23932
beq_else.23931:
	flui	$f0, 0
beq_cont.23932:
	swc1	$f0, 8($a2)
	j	beq_cont.23904
beq_else.23903:
	addi	$s1, $zero, 2
	bne	$t0, $s1, beq_else.23941
	lw	$a1, 32($sp)
	bne	$a1, $zero, beq_else.23943
	addi	$a1, $zero, 1
	j	beq_cont.23944
beq_else.23943:
	addi	$a1, $zero, 0
beq_cont.23944:
	lwc1	$f0, 0($a2)
	mul.s	$f0, $f0, $f0
	lwc1	$f1, 4($a2)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 8($a2)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sw	$a1, 52($sp)
	sqrt	$f0, $f0
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.23945
	addi	$a0, $zero, 1
	j	c.eq_cont.23946
c.eq_else.23945:
	addi	$a0, $zero, 0
c.eq_cont.23946:
	bne	$a0, $zero, beq_else.23947
	lw	$a0, 52($sp)
	bne	$a0, $zero, beq_else.23949
	flui	$f1, 16256
	div.s	$f0, $f1, $f0
	j	beq_cont.23950
beq_else.23949:
	flui	$f1, -16512
	div.s	$f0, $f1, $f0
beq_cont.23950:
	j	beq_cont.23948
beq_else.23947:
	flui	$f0, 16256
beq_cont.23948:
	lw	$a0, 24($sp)
	lwc1	$f1, 0($a0)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 0($a0)
	lwc1	$f1, 4($a0)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 4($a0)
	lwc1	$f1, 8($a0)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 8($a0)
	j	beq_cont.23942
beq_else.23941:
beq_cont.23942:
beq_cont.23904:
	lw	$a0, 20($sp)
	bne	$a0, $zero, beq_else.23951
	j	beq_cont.23952
beq_else.23951:
	lw	$a0, 44($sp)
	lwc1	$f0, 0($a0)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	cos.2638
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$a0, 44($sp)
	lwc1	$f1, 0($a0)
	swc1	$f0, 56($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	sin.2640
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw	$a0, 44($sp)
	lwc1	$f1, 4($a0)
	swc1	$f0, 64($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	cos.2638
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw	$a0, 44($sp)
	lwc1	$f1, 4($a0)
	swc1	$f0, 72($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	sin.2640
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	lw	$a0, 44($sp)
	lwc1	$f1, 8($a0)
	swc1	$f0, 80($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	cos.2638
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	lw	$a0, 44($sp)
	lwc1	$f1, 8($a0)
	swc1	$f0, 88($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	sin.2640
	addi	$sp, $sp, -104
	lw	$ra, 100($sp)
	lwc1	$f1, 88($sp)
	lwc1	$f2, 72($sp)
	mul.s	$f3, $f2, $f1
	lwc1	$f4, 80($sp)
	lwc1	$f5, 64($sp)
	mul.s	$f6, $f5, $f4
	mul.s	$f7, $f6, $f1
	lwc1	$f8, 56($sp)
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
	lw	$a0, 24($sp)
	lwc1	$f5, 0($a0)
	lwc1	$f8, 4($a0)
	lwc1	$f9, 8($a0)
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
	swc1	$f12, 4($a0)
	mul.s	$f12, $f10, $f10
	mul.s	$f12, $f5, $f12
	mul.s	$f13, $f0, $f0
	mul.s	$f13, $f8, $f13
	add.s	$f12, $f12, $f13
	mul.s	$f13, $f2, $f2
	mul.s	$f13, $f9, $f13
	add.s	$f12, $f12, $f13
	swc1	$f12, 8($a0)
	flui	$f12, 16384
	mul.s	$f13, $f5, $f7
	mul.s	$f13, $f13, $f10
	mul.s	$f14, $f8, $f6
	mul.s	$f14, $f14, $f0
	add.s	$f13, $f13, $f14
	mul.s	$f14, $f9, $f4
	mul.s	$f14, $f14, $f2
	add.s	$f13, $f13, $f14
	mul.s	$f12, $f12, $f13
	lw	$a0, 44($sp)
	swc1	$f12, 0($a0)
	flui	$f12, 16384
	mul.s	$f3, $f5, $f3
	mul.s	$f5, $f3, $f10
	mul.s	$f8, $f8, $f11
	mul.s	$f0, $f8, $f0
	add.s	$f0, $f5, $f0
	mul.s	$f1, $f9, $f1
	mul.s	$f2, $f1, $f2
	add.s	$f0, $f0, $f2
	mul.s	$f0, $f12, $f0
	swc1	$f0, 4($a0)
	flui	$f0, 16384
	mul.s	$f2, $f3, $f7
	mul.s	$f3, $f8, $f6
	add.s	$f2, $f2, $f3
	mul.s	$f1, $f1, $f4
	add.s	$f1, $f2, $f1
	mul.s	$f0, $f0, $f1
	swc1	$f0, 8($a0)
beq_cont.23952:
	addi	$a0, $zero, 1
beq_cont.23896:
	bne	$a0, $zero, bne_else.23953
	lw	$a0, 4($sp)
	sw	$a0, 20000($zero)
	jr	$ra
bne_else.23953:
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	j	read_object.2785
bne_else.23894:
	jr	$ra
read_net_item.2789:
	sw	$a0, 0($sp)
	readi	$a0
	addi	$s1, $zero, -1
	bne	$a0, $s1, bne_else.23956
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	addi	$a1, $zero, -1
	j	min_caml_create_array
bne_else.23956:
	lw	$a1, 0($sp)
	addi	$a2, $a1, 1
	sw	$a0, 4($sp)
	add	$a0, $zero, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_net_item.2789
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$a1, 0($sp)
	sll	$a1, $a1, 2
	lw	$a2, 4($sp)
	add	$s1, $a0, $a1
	sw	$a2, 0($s1)
	jr	$ra
read_or_network.2791:
	addi	$a1, $zero, 0
	sw	$a0, 0($sp)
	add	$a0, $zero, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_net_item.2789
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	add	$a1, $a0, $zero
	lw	$a0, 0($a1)
	addi	$s1, $zero, -1
	bne	$a0, $s1, bne_else.23957
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	j	min_caml_create_array
bne_else.23957:
	lw	$a0, 0($sp)
	addi	$a2, $a0, 1
	sw	$a1, 4($sp)
	add	$a0, $zero, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_or_network.2791
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$a1, 0($sp)
	sll	$a1, $a1, 2
	lw	$a2, 4($sp)
	add	$s1, $a0, $a1
	sw	$a2, 0($s1)
	jr	$ra
read_and_network.2793:
	addi	$a1, $zero, 20332
	addi	$a2, $zero, 0
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	add	$a0, $zero, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_net_item.2789
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$a1, 0($a0)
	addi	$s1, $zero, -1
	bne	$a1, $s1, bne_else.23958
	jr	$ra
bne_else.23958:
	lw	$a1, 4($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$s1, $a3, $a2
	sw	$a0, 0($s1)
	addi	$a0, $a1, 1
	j	read_and_network.2793
iter_setup_dirvec_constants.2890:
	addi	$a2, $zero, 20048
	slti	$s0, $a1, 0
	beq	$s0, $zero, bne_else.23960
	jr	$ra
bne_else.23960:
	sll	$a3, $a1, 2
	add	$s1, $a2, $a3
	lw	$a2, 0($s1)
	lw	$a3, 4($a0)
	lw	$t0, 0($a0)
	lw	$t1, 4($a2)
	sw	$a0, 0($sp)
	addi	$s1, $zero, 1
	bne	$t1, $s1, beq_else.23962
	addi	$t1, $zero, 6
	flui	$f0, 0
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	sw	$a2, 12($sp)
	sw	$t0, 16($sp)
	add	$a0, $zero, $t1
	sw	$ra, 20($sp)
	jal	min_caml_create_float_array
	lw	$ra, 20($sp)
	lw	$a1, 16($sp)
	lwc1	$f0, 0($a1)
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.23964
	addi	$a2, $zero, 1
	j	c.eq_cont.23965
c.eq_else.23964:
	addi	$a2, $zero, 0
c.eq_cont.23965:
	bne	$a2, $zero, beq_else.23966
	lw	$a2, 12($sp)
	lw	$a3, 24($a2)
	lwc1	$f0, 0($a1)
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.23968
	addi	$t0, $zero, 1
	j	bne_cont.23969
bne_else.23968:
	addi	$t0, $zero, 0
bne_cont.23969:
	bne	$a3, $zero, beq_else.23970
	add	$a3, $t0, $zero
	j	beq_cont.23971
beq_else.23970:
	bne	$t0, $zero, beq_else.23972
	addi	$a3, $zero, 1
	j	beq_cont.23973
beq_else.23972:
	addi	$a3, $zero, 0
beq_cont.23973:
beq_cont.23971:
	lw	$t0, 16($a2)
	lwc1	$f0, 0($t0)
	bne	$a3, $zero, beq_else.23974
	sub.s	$f0, $fzero, $f0
	j	beq_cont.23975
beq_else.23974:
beq_cont.23975:
	swc1	$f0, 0($a0)
	flui	$f0, 16256
	lwc1	$f1, 0($a1)
	div.s	$f0, $f0, $f1
	swc1	$f0, 4($a0)
	j	beq_cont.23967
beq_else.23966:
	swc1	$fzero, 4($a0)
beq_cont.23967:
	lwc1	$f0, 4($a1)
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.23976
	addi	$a2, $zero, 1
	j	c.eq_cont.23977
c.eq_else.23976:
	addi	$a2, $zero, 0
c.eq_cont.23977:
	bne	$a2, $zero, beq_else.23978
	lw	$a2, 12($sp)
	lw	$a3, 24($a2)
	lwc1	$f0, 4($a1)
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.23980
	addi	$t0, $zero, 1
	j	bne_cont.23981
bne_else.23980:
	addi	$t0, $zero, 0
bne_cont.23981:
	bne	$a3, $zero, beq_else.23982
	add	$a3, $t0, $zero
	j	beq_cont.23983
beq_else.23982:
	bne	$t0, $zero, beq_else.23984
	addi	$a3, $zero, 1
	j	beq_cont.23985
beq_else.23984:
	addi	$a3, $zero, 0
beq_cont.23985:
beq_cont.23983:
	lw	$t0, 16($a2)
	lwc1	$f0, 4($t0)
	bne	$a3, $zero, beq_else.23986
	sub.s	$f0, $fzero, $f0
	j	beq_cont.23987
beq_else.23986:
beq_cont.23987:
	swc1	$f0, 8($a0)
	flui	$f0, 16256
	lwc1	$f1, 4($a1)
	div.s	$f0, $f0, $f1
	swc1	$f0, 12($a0)
	j	beq_cont.23979
beq_else.23978:
	swc1	$fzero, 12($a0)
beq_cont.23979:
	lwc1	$f0, 8($a1)
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.23988
	addi	$a2, $zero, 1
	j	c.eq_cont.23989
c.eq_else.23988:
	addi	$a2, $zero, 0
c.eq_cont.23989:
	bne	$a2, $zero, beq_else.23990
	lw	$a2, 12($sp)
	lw	$a3, 24($a2)
	lwc1	$f0, 8($a1)
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.23992
	addi	$t0, $zero, 1
	j	bne_cont.23993
bne_else.23992:
	addi	$t0, $zero, 0
bne_cont.23993:
	bne	$a3, $zero, beq_else.23994
	add	$a3, $t0, $zero
	j	beq_cont.23995
beq_else.23994:
	bne	$t0, $zero, beq_else.23996
	addi	$a3, $zero, 1
	j	beq_cont.23997
beq_else.23996:
	addi	$a3, $zero, 0
beq_cont.23997:
beq_cont.23995:
	lw	$a2, 16($a2)
	lwc1	$f0, 8($a2)
	bne	$a3, $zero, beq_else.23998
	sub.s	$f0, $fzero, $f0
	j	beq_cont.23999
beq_else.23998:
beq_cont.23999:
	swc1	$f0, 16($a0)
	flui	$f0, 16256
	lwc1	$f1, 8($a1)
	div.s	$f0, $f0, $f1
	swc1	$f0, 20($a0)
	j	beq_cont.23991
beq_else.23990:
	swc1	$fzero, 20($a0)
beq_cont.23991:
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$s1, $a3, $a2
	sw	$a0, 0($s1)
	j	beq_cont.23963
beq_else.23962:
	addi	$s1, $zero, 2
	bne	$t1, $s1, beq_else.24000
	addi	$t1, $zero, 4
	flui	$f0, 0
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	sw	$a2, 12($sp)
	sw	$t0, 16($sp)
	add	$a0, $zero, $t1
	sw	$ra, 20($sp)
	jal	min_caml_create_float_array
	lw	$ra, 20($sp)
	lw	$a1, 16($sp)
	lwc1	$f0, 0($a1)
	lw	$a2, 12($sp)
	lw	$a3, 16($a2)
	lwc1	$f1, 0($a3)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 4($a1)
	lw	$a3, 16($a2)
	lwc1	$f2, 4($a3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 8($a1)
	lw	$a1, 16($a2)
	lwc1	$f2, 8($a1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24002
	addi	$a1, $zero, 1
	j	bne_cont.24003
bne_else.24002:
	addi	$a1, $zero, 0
bne_cont.24003:
	bne	$a1, $zero, beq_else.24004
	swc1	$fzero, 0($a0)
	j	beq_cont.24005
beq_else.24004:
	flui	$f1, -16512
	div.s	$f1, $f1, $f0
	swc1	$f1, 0($a0)
	lw	$a1, 16($a2)
	lwc1	$f1, 0($a1)
	div.s	$f1, $f1, $f0
	sub.s	$f1, $fzero, $f1
	swc1	$f1, 4($a0)
	lw	$a1, 16($a2)
	lwc1	$f1, 4($a1)
	div.s	$f1, $f1, $f0
	sub.s	$f1, $fzero, $f1
	swc1	$f1, 8($a0)
	lw	$a1, 16($a2)
	lwc1	$f1, 8($a1)
	div.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 12($a0)
beq_cont.24005:
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$s1, $a3, $a2
	sw	$a0, 0($s1)
	j	beq_cont.24001
beq_else.24000:
	addi	$t1, $zero, 5
	flui	$f0, 0
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	sw	$a2, 12($sp)
	sw	$t0, 16($sp)
	add	$a0, $zero, $t1
	sw	$ra, 20($sp)
	jal	min_caml_create_float_array
	lw	$ra, 20($sp)
	lw	$a1, 16($sp)
	lwc1	$f0, 0($a1)
	lwc1	$f1, 4($a1)
	lwc1	$f2, 8($a1)
	mul.s	$f3, $f0, $f0
	lw	$a2, 12($sp)
	lw	$a3, 16($a2)
	lwc1	$f4, 0($a3)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lw	$a3, 16($a2)
	lwc1	$f5, 4($a3)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lw	$a3, 16($a2)
	lwc1	$f5, 8($a3)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$a3, 12($a2)
	bne	$a3, $zero, beq_else.24006
	add.s	$f0, $f3, $fzero
	j	beq_cont.24007
beq_else.24006:
	mul.s	$f4, $f1, $f2
	lw	$a3, 36($a2)
	lwc1	$f5, 0($a3)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lw	$a3, 36($a2)
	lwc1	$f4, 4($a3)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$a3, 36($a2)
	lwc1	$f1, 8($a3)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
beq_cont.24007:
	lwc1	$f1, 0($a1)
	lw	$a3, 16($a2)
	lwc1	$f2, 0($a3)
	mul.s	$f1, $f1, $f2
	sub.s	$f1, $fzero, $f1
	lwc1	$f2, 4($a1)
	lw	$a3, 16($a2)
	lwc1	$f3, 4($a3)
	mul.s	$f2, $f2, $f3
	sub.s	$f2, $fzero, $f2
	lwc1	$f3, 8($a1)
	lw	$a3, 16($a2)
	lwc1	$f4, 8($a3)
	mul.s	$f3, $f3, $f4
	sub.s	$f3, $fzero, $f3
	swc1	$f0, 0($a0)
	lw	$a3, 12($a2)
	bne	$a3, $zero, beq_else.24008
	swc1	$f1, 4($a0)
	swc1	$f2, 8($a0)
	swc1	$f3, 12($a0)
	j	beq_cont.24009
beq_else.24008:
	lwc1	$f4, 8($a1)
	lw	$a3, 36($a2)
	lwc1	$f5, 4($a3)
	mul.s	$f4, $f4, $f5
	lwc1	$f5, 4($a1)
	lw	$a3, 36($a2)
	lwc1	$f6, 8($a3)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	flui	$f5, 16128
	mul.s	$f4, $f4, $f5
	sub.s	$f1, $f1, $f4
	swc1	$f1, 4($a0)
	lwc1	$f1, 8($a1)
	lw	$a3, 36($a2)
	lwc1	$f4, 0($a3)
	mul.s	$f1, $f1, $f4
	lwc1	$f4, 0($a1)
	lw	$a3, 36($a2)
	lwc1	$f5, 8($a3)
	mul.s	$f4, $f4, $f5
	add.s	$f1, $f1, $f4
	flui	$f4, 16128
	mul.s	$f1, $f1, $f4
	sub.s	$f1, $f2, $f1
	swc1	$f1, 8($a0)
	lwc1	$f1, 4($a1)
	lw	$a3, 36($a2)
	lwc1	$f2, 0($a3)
	mul.s	$f1, $f1, $f2
	lwc1	$f2, 0($a1)
	lw	$a1, 36($a2)
	lwc1	$f4, 4($a1)
	mul.s	$f2, $f2, $f4
	add.s	$f1, $f1, $f2
	flui	$f2, 16128
	mul.s	$f1, $f1, $f2
	sub.s	$f1, $f3, $f1
	swc1	$f1, 12($a0)
beq_cont.24009:
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.24010
	addi	$a1, $zero, 1
	j	c.eq_cont.24011
c.eq_else.24010:
	addi	$a1, $zero, 0
c.eq_cont.24011:
	bne	$a1, $zero, beq_else.24012
	flui	$f1, 16256
	div.s	$f0, $f1, $f0
	swc1	$f0, 16($a0)
	j	beq_cont.24013
beq_else.24012:
beq_cont.24013:
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$s1, $a3, $a2
	sw	$a0, 0($s1)
beq_cont.24001:
beq_cont.23963:
	addi	$a1, $a1, -1
	lw	$a0, 0($sp)
	j	iter_setup_dirvec_constants.2890
setup_startp_constants.2895:
	addi	$a2, $zero, 20048
	slti	$s0, $a1, 0
	beq	$s0, $zero, bne_else.24014
	jr	$ra
bne_else.24014:
	sll	$a3, $a1, 2
	add	$s1, $a2, $a3
	lw	$a2, 0($s1)
	lw	$a3, 40($a2)
	lw	$t0, 4($a2)
	lwc1	$f0, 0($a0)
	lw	$t1, 20($a2)
	lwc1	$f1, 0($t1)
	sub.s	$f0, $f0, $f1
	swc1	$f0, 0($a3)
	lwc1	$f0, 4($a0)
	lw	$t1, 20($a2)
	lwc1	$f1, 4($t1)
	sub.s	$f0, $f0, $f1
	swc1	$f0, 4($a3)
	lwc1	$f0, 8($a0)
	lw	$t1, 20($a2)
	lwc1	$f1, 8($t1)
	sub.s	$f0, $f0, $f1
	swc1	$f0, 8($a3)
	addi	$s1, $zero, 2
	bne	$t0, $s1, beq_else.24016
	lw	$a2, 16($a2)
	lwc1	$f0, 0($a3)
	lwc1	$f1, 4($a3)
	lwc1	$f2, 8($a3)
	lwc1	$f3, 0($a2)
	mul.s	$f0, $f3, $f0
	lwc1	$f3, 4($a2)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 8($a2)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 12($a3)
	j	beq_cont.24017
beq_else.24016:
	addi	$t1, $zero, 2
	slt	$s0, $t1, $t0
	beq	$s0, $zero, bne_else.24018
	lwc1	$f0, 0($a3)
	lwc1	$f1, 4($a3)
	lwc1	$f2, 8($a3)
	mul.s	$f3, $f0, $f0
	lw	$t1, 16($a2)
	lwc1	$f4, 0($t1)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lw	$t1, 16($a2)
	lwc1	$f5, 4($t1)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lw	$t1, 16($a2)
	lwc1	$f5, 8($t1)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$t1, 12($a2)
	bne	$t1, $zero, beq_else.24020
	add.s	$f0, $f3, $fzero
	j	beq_cont.24021
beq_else.24020:
	mul.s	$f4, $f1, $f2
	lw	$t1, 36($a2)
	lwc1	$f5, 0($t1)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lw	$t1, 36($a2)
	lwc1	$f4, 4($t1)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$a2, 36($a2)
	lwc1	$f1, 8($a2)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
beq_cont.24021:
	addi	$s1, $zero, 3
	bne	$t0, $s1, beq_else.24022
	flui	$f1, 16256
	sub.s	$f0, $f0, $f1
	j	beq_cont.24023
beq_else.24022:
beq_cont.24023:
	swc1	$f0, 12($a3)
	j	bne_cont.24019
bne_else.24018:
bne_cont.24019:
beq_cont.24017:
	addi	$a1, $a1, -1
	j	setup_startp_constants.2895
check_all_inside.2920:
	addi	$a2, $zero, 20048
	sll	$a3, $a0, 2
	add	$s1, $a1, $a3
	lw	$a3, 0($s1)
	addi	$s1, $zero, -1
	bne	$a3, $s1, bne_else.24024
	addi	$a0, $zero, 1
	jr	$ra
bne_else.24024:
	sll	$a3, $a3, 2
	add	$s1, $a2, $a3
	lw	$a2, 0($s1)
	lw	$a3, 20($a2)
	lwc1	$f3, 0($a3)
	sub.s	$f3, $f0, $f3
	lw	$a3, 20($a2)
	lwc1	$f4, 4($a3)
	sub.s	$f4, $f1, $f4
	lw	$a3, 20($a2)
	lwc1	$f5, 8($a3)
	sub.s	$f5, $f2, $f5
	lw	$a3, 4($a2)
	addi	$s1, $zero, 1
	bne	$a3, $s1, beq_else.24025
	c.lt.s	$s0, $f3, $fzero
	beq	$s0, $zero, bne_else.24027
	sub.s	$f3, $fzero, $f3
	j	bne_cont.24028
bne_else.24027:
bne_cont.24028:
	lw	$a3, 16($a2)
	lwc1	$f6, 0($a3)
	c.lt.s	$s0, $f3, $f6
	beq	$s0, $zero, bne_else.24029
	addi	$a3, $zero, 1
	j	bne_cont.24030
bne_else.24029:
	addi	$a3, $zero, 0
bne_cont.24030:
	bne	$a3, $zero, beq_else.24031
	addi	$a3, $zero, 0
	j	beq_cont.24032
beq_else.24031:
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24033
	sub.s	$f3, $fzero, $f4
	j	bne_cont.24034
bne_else.24033:
	add.s	$f3, $f4, $fzero
bne_cont.24034:
	lw	$a3, 16($a2)
	lwc1	$f4, 4($a3)
	c.lt.s	$s0, $f3, $f4
	beq	$s0, $zero, bne_else.24035
	addi	$a3, $zero, 1
	j	bne_cont.24036
bne_else.24035:
	addi	$a3, $zero, 0
bne_cont.24036:
	bne	$a3, $zero, beq_else.24037
	addi	$a3, $zero, 0
	j	beq_cont.24038
beq_else.24037:
	c.lt.s	$s0, $f5, $fzero
	beq	$s0, $zero, bne_else.24039
	sub.s	$f3, $fzero, $f5
	j	bne_cont.24040
bne_else.24039:
	add.s	$f3, $f5, $fzero
bne_cont.24040:
	lw	$a3, 16($a2)
	lwc1	$f4, 8($a3)
	c.lt.s	$s0, $f3, $f4
	beq	$s0, $zero, bne_else.24041
	addi	$a3, $zero, 1
	j	bne_cont.24042
bne_else.24041:
	addi	$a3, $zero, 0
bne_cont.24042:
beq_cont.24038:
beq_cont.24032:
	bne	$a3, $zero, beq_else.24043
	lw	$a2, 24($a2)
	bne	$a2, $zero, beq_else.24045
	addi	$a2, $zero, 1
	j	beq_cont.24046
beq_else.24045:
	addi	$a2, $zero, 0
beq_cont.24046:
	j	beq_cont.24044
beq_else.24043:
	lw	$a2, 24($a2)
beq_cont.24044:
	j	beq_cont.24026
beq_else.24025:
	addi	$s1, $zero, 2
	bne	$a3, $s1, beq_else.24047
	lw	$a3, 16($a2)
	lwc1	$f6, 0($a3)
	mul.s	$f3, $f6, $f3
	lwc1	$f6, 4($a3)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwc1	$f4, 8($a3)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$a2, 24($a2)
	c.lt.s	$s0, $f3, $fzero
	beq	$s0, $zero, bne_else.24049
	addi	$a3, $zero, 1
	j	bne_cont.24050
bne_else.24049:
	addi	$a3, $zero, 0
bne_cont.24050:
	bne	$a2, $zero, beq_else.24051
	add	$a2, $a3, $zero
	j	beq_cont.24052
beq_else.24051:
	bne	$a3, $zero, beq_else.24053
	addi	$a2, $zero, 1
	j	beq_cont.24054
beq_else.24053:
	addi	$a2, $zero, 0
beq_cont.24054:
beq_cont.24052:
	bne	$a2, $zero, beq_else.24055
	addi	$a2, $zero, 1
	j	beq_cont.24056
beq_else.24055:
	addi	$a2, $zero, 0
beq_cont.24056:
	j	beq_cont.24048
beq_else.24047:
	mul.s	$f6, $f3, $f3
	lw	$a3, 16($a2)
	lwc1	$f7, 0($a3)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$a3, 16($a2)
	lwc1	$f8, 4($a3)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$a3, 16($a2)
	lwc1	$f8, 8($a3)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$a3, 12($a2)
	bne	$a3, $zero, beq_else.24057
	add.s	$f3, $f6, $fzero
	j	beq_cont.24058
beq_else.24057:
	mul.s	$f7, $f4, $f5
	lw	$a3, 36($a2)
	lwc1	$f8, 0($a3)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$a3, 36($a2)
	lwc1	$f7, 4($a3)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$a3, 36($a2)
	lwc1	$f4, 8($a3)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
beq_cont.24058:
	lw	$a3, 4($a2)
	addi	$s1, $zero, 3
	bne	$a3, $s1, beq_else.24059
	flui	$f4, 16256
	sub.s	$f3, $f3, $f4
	j	beq_cont.24060
beq_else.24059:
beq_cont.24060:
	lw	$a2, 24($a2)
	c.lt.s	$s0, $f3, $fzero
	beq	$s0, $zero, bne_else.24061
	addi	$a3, $zero, 1
	j	bne_cont.24062
bne_else.24061:
	addi	$a3, $zero, 0
bne_cont.24062:
	bne	$a2, $zero, beq_else.24063
	add	$a2, $a3, $zero
	j	beq_cont.24064
beq_else.24063:
	bne	$a3, $zero, beq_else.24065
	addi	$a2, $zero, 1
	j	beq_cont.24066
beq_else.24065:
	addi	$a2, $zero, 0
beq_cont.24066:
beq_cont.24064:
	bne	$a2, $zero, beq_else.24067
	addi	$a2, $zero, 1
	j	beq_cont.24068
beq_else.24067:
	addi	$a2, $zero, 0
beq_cont.24068:
beq_cont.24048:
beq_cont.24026:
	bne	$a2, $zero, bne_else.24069
	addi	$a0, $a0, 1
	j	check_all_inside.2920
bne_else.24069:
	addi	$a0, $zero, 0
	jr	$ra
shadow_check_and_group.2926:
	addi	$a2, $zero, 20048
	sll	$a3, $a0, 2
	add	$s1, $a1, $a3
	lw	$a3, 0($s1)
	addi	$s1, $zero, -1
	bne	$a3, $s1, bne_else.24070
	addi	$a0, $zero, 0
	jr	$ra
bne_else.24070:
	sll	$a3, $a0, 2
	add	$s1, $a1, $a3
	lw	$a3, 0($s1)
	sll	$t0, $a3, 2
	add	$s1, $a2, $t0
	lw	$t0, 0($s1)
	lwc1	$f0, 20552($zero)
	lw	$t1, 20($t0)
	lwc1	$f1, 0($t1)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 20556($zero)
	lw	$t1, 20($t0)
	lwc1	$f2, 4($t1)
	sub.s	$f1, $f1, $f2
	lwc1	$f2, 20560($zero)
	lw	$t1, 20($t0)
	lwc1	$f3, 8($t1)
	sub.s	$f2, $f2, $f3
	lw	$t1, 20992($zero)
	sll	$t2, $a3, 2
	add	$s1, $t1, $t2
	lw	$t1, 0($s1)
	lw	$t2, 4($t0)
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	sw	$a2, 8($sp)
	sw	$a3, 12($sp)
	addi	$s1, $zero, 1
	bne	$t2, $s1, beq_else.24071
	lw	$t2, 20988($zero)
	lwc1	$f3, 0($t1)
	sub.s	$f3, $f3, $f0
	lwc1	$f4, 4($t1)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 4($t2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24073
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24074
bne_else.24073:
bne_cont.24074:
	lw	$t3, 16($t0)
	lwc1	$f5, 4($t3)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24075
	addi	$t3, $zero, 1
	j	bne_cont.24076
bne_else.24075:
	addi	$t3, $zero, 0
bne_cont.24076:
	bne	$t3, $zero, beq_else.24077
	addi	$t3, $zero, 0
	j	beq_cont.24078
beq_else.24077:
	lwc1	$f4, 8($t2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24079
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24080
bne_else.24079:
bne_cont.24080:
	lw	$t3, 16($t0)
	lwc1	$f5, 8($t3)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24081
	addi	$t3, $zero, 1
	j	bne_cont.24082
bne_else.24081:
	addi	$t3, $zero, 0
bne_cont.24082:
	bne	$t3, $zero, beq_else.24083
	addi	$t3, $zero, 0
	j	beq_cont.24084
beq_else.24083:
	lwc1	$f4, 4($t1)
	c.eq.s	$s1, $f4, $fzero
	beq	$s1, $zero, c.eq_else.24085
	addi	$t3, $zero, 1
	j	c.eq_cont.24086
c.eq_else.24085:
	addi	$t3, $zero, 0
c.eq_cont.24086:
	bne	$t3, $zero, beq_else.24087
	addi	$t3, $zero, 1
	j	beq_cont.24088
beq_else.24087:
	addi	$t3, $zero, 0
beq_cont.24088:
beq_cont.24084:
beq_cont.24078:
	bne	$t3, $zero, beq_else.24089
	lwc1	$f3, 8($t1)
	sub.s	$f3, $f3, $f1
	lwc1	$f4, 12($t1)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 0($t2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24091
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24092
bne_else.24091:
bne_cont.24092:
	lw	$t3, 16($t0)
	lwc1	$f5, 0($t3)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24093
	addi	$t3, $zero, 1
	j	bne_cont.24094
bne_else.24093:
	addi	$t3, $zero, 0
bne_cont.24094:
	bne	$t3, $zero, beq_else.24095
	addi	$t3, $zero, 0
	j	beq_cont.24096
beq_else.24095:
	lwc1	$f4, 8($t2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24097
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24098
bne_else.24097:
bne_cont.24098:
	lw	$t3, 16($t0)
	lwc1	$f5, 8($t3)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24099
	addi	$t3, $zero, 1
	j	bne_cont.24100
bne_else.24099:
	addi	$t3, $zero, 0
bne_cont.24100:
	bne	$t3, $zero, beq_else.24101
	addi	$t3, $zero, 0
	j	beq_cont.24102
beq_else.24101:
	lwc1	$f4, 12($t1)
	c.eq.s	$s1, $f4, $fzero
	beq	$s1, $zero, c.eq_else.24103
	addi	$t3, $zero, 1
	j	c.eq_cont.24104
c.eq_else.24103:
	addi	$t3, $zero, 0
c.eq_cont.24104:
	bne	$t3, $zero, beq_else.24105
	addi	$t3, $zero, 1
	j	beq_cont.24106
beq_else.24105:
	addi	$t3, $zero, 0
beq_cont.24106:
beq_cont.24102:
beq_cont.24096:
	bne	$t3, $zero, beq_else.24107
	lwc1	$f3, 16($t1)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 20($t1)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0($t2)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24109
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24110
bne_else.24109:
bne_cont.24110:
	lw	$t3, 16($t0)
	lwc1	$f3, 0($t3)
	c.lt.s	$s0, $f0, $f3
	beq	$s0, $zero, bne_else.24111
	addi	$t3, $zero, 1
	j	bne_cont.24112
bne_else.24111:
	addi	$t3, $zero, 0
bne_cont.24112:
	bne	$t3, $zero, beq_else.24113
	addi	$t0, $zero, 0
	j	beq_cont.24114
beq_else.24113:
	lwc1	$f0, 4($t2)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24115
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24116
bne_else.24115:
bne_cont.24116:
	lw	$t0, 16($t0)
	lwc1	$f1, 4($t0)
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24117
	addi	$t0, $zero, 1
	j	bne_cont.24118
bne_else.24117:
	addi	$t0, $zero, 0
bne_cont.24118:
	bne	$t0, $zero, beq_else.24119
	addi	$t0, $zero, 0
	j	beq_cont.24120
beq_else.24119:
	lwc1	$f0, 20($t1)
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.24121
	addi	$t0, $zero, 1
	j	c.eq_cont.24122
c.eq_else.24121:
	addi	$t0, $zero, 0
c.eq_cont.24122:
	bne	$t0, $zero, beq_else.24123
	addi	$t0, $zero, 1
	j	beq_cont.24124
beq_else.24123:
	addi	$t0, $zero, 0
beq_cont.24124:
beq_cont.24120:
beq_cont.24114:
	bne	$t0, $zero, beq_else.24125
	addi	$a0, $zero, 0
	j	beq_cont.24126
beq_else.24125:
	swc1	$f2, 20540($zero)
	addi	$a0, $zero, 3
beq_cont.24126:
	j	beq_cont.24108
beq_else.24107:
	swc1	$f3, 20540($zero)
	addi	$a0, $zero, 2
beq_cont.24108:
	j	beq_cont.24090
beq_else.24089:
	swc1	$f3, 20540($zero)
	addi	$a0, $zero, 1
beq_cont.24090:
	j	beq_cont.24072
beq_else.24071:
	addi	$s1, $zero, 2
	bne	$t2, $s1, beq_else.24127
	lwc1	$f3, 0($t1)
	c.lt.s	$s0, $f3, $fzero
	beq	$s0, $zero, bne_else.24129
	addi	$t0, $zero, 1
	j	bne_cont.24130
bne_else.24129:
	addi	$t0, $zero, 0
bne_cont.24130:
	bne	$t0, $zero, beq_else.24131
	addi	$a0, $zero, 0
	j	beq_cont.24132
beq_else.24131:
	lwc1	$f3, 4($t1)
	mul.s	$f0, $f3, $f0
	lwc1	$f3, 8($t1)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 12($t1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
	addi	$a0, $zero, 1
beq_cont.24132:
	j	beq_cont.24128
beq_else.24127:
	lwc1	$f3, 0($t1)
	c.eq.s	$s1, $f3, $fzero
	beq	$s1, $zero, c.eq_else.24133
	addi	$t2, $zero, 1
	j	c.eq_cont.24134
c.eq_else.24133:
	addi	$t2, $zero, 0
c.eq_cont.24134:
	bne	$t2, $zero, beq_else.24135
	lwc1	$f4, 4($t1)
	mul.s	$f4, $f4, $f0
	lwc1	$f5, 8($t1)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwc1	$f5, 12($t1)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$t2, 16($t0)
	lwc1	$f6, 0($t2)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$t2, 16($t0)
	lwc1	$f7, 4($t2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$t2, 16($t0)
	lwc1	$f7, 8($t2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$t2, 12($t0)
	bne	$t2, $zero, beq_else.24137
	add.s	$f0, $f5, $fzero
	j	beq_cont.24138
beq_else.24137:
	mul.s	$f6, $f1, $f2
	lw	$t2, 36($t0)
	lwc1	$f7, 0($t2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$t2, 36($t0)
	lwc1	$f6, 4($t2)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$t2, 36($t0)
	lwc1	$f1, 8($t2)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
beq_cont.24138:
	lw	$t2, 4($t0)
	addi	$s1, $zero, 3
	bne	$t2, $s1, beq_else.24139
	flui	$f1, 16256
	sub.s	$f0, $f0, $f1
	j	beq_cont.24140
beq_else.24139:
beq_cont.24140:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24141
	addi	$t2, $zero, 1
	j	bne_cont.24142
bne_else.24141:
	addi	$t2, $zero, 0
bne_cont.24142:
	bne	$t2, $zero, beq_else.24143
	addi	$a0, $zero, 0
	j	beq_cont.24144
beq_else.24143:
	lw	$t0, 24($t0)
	bne	$t0, $zero, beq_else.24145
	sw	$t1, 16($sp)
	swc1	$f4, 24($sp)
	sqrt	$f0, $f0
	lwc1	$f1, 24($sp)
	sub.s	$f0, $f1, $f0
	lw	$a0, 16($sp)
	lwc1	$f1, 16($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
	j	beq_cont.24146
beq_else.24145:
	sw	$t1, 16($sp)
	swc1	$f4, 24($sp)
	sqrt	$f0, $f0
	lwc1	$f1, 24($sp)
	add.s	$f0, $f1, $f0
	lw	$a0, 16($sp)
	lwc1	$f1, 16($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
beq_cont.24146:
	addi	$a0, $zero, 1
beq_cont.24144:
	j	beq_cont.24136
beq_else.24135:
	addi	$a0, $zero, 0
beq_cont.24136:
beq_cont.24128:
beq_cont.24072:
	lwc1	$f0, 20540($zero)
	bne	$a0, $zero, beq_else.24148
	addi	$a0, $zero, 0
	j	beq_cont.24149
beq_else.24148:
	flui	$f1, -16820
	fori	$f1, $f1, 52429
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24150
	addi	$a0, $zero, 1
	j	bne_cont.24151
bne_else.24150:
	addi	$a0, $zero, 0
bne_cont.24151:
beq_cont.24149:
	bne	$a0, $zero, bne_else.24152
	lw	$a0, 12($sp)
	sll	$a0, $a0, 2
	lw	$a1, 8($sp)
	add	$s1, $a1, $a0
	lw	$a0, 0($s1)
	lw	$a0, 24($a0)
	bne	$a0, $zero, bne_else.24153
	addi	$a0, $zero, 0
	jr	$ra
bne_else.24153:
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_and_group.2926
bne_else.24152:
	flui	$f1, 15395
	fori	$f1, $f1, 55050
	add.s	$f0, $f0, $f1
	lwc1	$f1, 20312($zero)
	mul.s	$f1, $f1, $f0
	lwc1	$f2, 20552($zero)
	add.s	$f1, $f1, $f2
	lwc1	$f2, 20316($zero)
	mul.s	$f2, $f2, $f0
	lwc1	$f3, 20556($zero)
	add.s	$f2, $f2, $f3
	lwc1	$f3, 20320($zero)
	mul.s	$f0, $f3, $f0
	lwc1	$f3, 20560($zero)
	add.s	$f0, $f0, $f3
	addi	$a0, $zero, 0
	lw	$a1, 0($sp)
	add.s	$f30, $fzero, $f2
	add.s	$f2, $fzero, $f0
	add.s	$f0, $fzero, $f1
	add.s	$f1, $fzero, $f30
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	check_all_inside.2920
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	bne	$a0, $zero, bne_else.24154
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_and_group.2926
bne_else.24154:
	addi	$a0, $zero, 1
	jr	$ra
shadow_check_one_or_group.2929:
	addi	$a2, $zero, 20332
	sll	$a3, $a0, 2
	add	$s1, $a1, $a3
	lw	$a3, 0($s1)
	addi	$s1, $zero, -1
	bne	$a3, $s1, bne_else.24155
	addi	$a0, $zero, 0
	jr	$ra
bne_else.24155:
	sll	$a3, $a3, 2
	add	$s1, $a2, $a3
	lw	$a2, 0($s1)
	addi	$a3, $zero, 0
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	add	$a1, $zero, $a2
	add	$a0, $zero, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_and_group.2926
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	bne	$a0, $zero, bne_else.24156
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_one_or_group.2929
bne_else.24156:
	addi	$a0, $zero, 1
	jr	$ra
shadow_check_one_or_matrix.2932:
	addi	$a2, $zero, 20048
	sll	$a3, $a0, 2
	add	$s1, $a1, $a3
	lw	$a3, 0($s1)
	lw	$t0, 0($a3)
	addi	$s1, $zero, -1
	bne	$t0, $s1, bne_else.24157
	addi	$a0, $zero, 0
	jr	$ra
bne_else.24157:
	sw	$a3, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	addi	$s1, $zero, 99
	bne	$t0, $s1, beq_else.24158
	addi	$a0, $zero, 1
	j	beq_cont.24159
beq_else.24158:
	sll	$t1, $t0, 2
	add	$s1, $a2, $t1
	lw	$a2, 0($s1)
	lwc1	$f0, 20552($zero)
	lw	$t1, 20($a2)
	lwc1	$f1, 0($t1)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 20556($zero)
	lw	$t1, 20($a2)
	lwc1	$f2, 4($t1)
	sub.s	$f1, $f1, $f2
	lwc1	$f2, 20560($zero)
	lw	$t1, 20($a2)
	lwc1	$f3, 8($t1)
	sub.s	$f2, $f2, $f3
	lw	$t1, 20992($zero)
	sll	$t0, $t0, 2
	add	$s1, $t1, $t0
	lw	$t0, 0($s1)
	lw	$t1, 4($a2)
	addi	$s1, $zero, 1
	bne	$t1, $s1, beq_else.24160
	lw	$t1, 20988($zero)
	lwc1	$f3, 0($t0)
	sub.s	$f3, $f3, $f0
	lwc1	$f4, 4($t0)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 4($t1)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24162
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24163
bne_else.24162:
bne_cont.24163:
	lw	$t2, 16($a2)
	lwc1	$f5, 4($t2)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24164
	addi	$t2, $zero, 1
	j	bne_cont.24165
bne_else.24164:
	addi	$t2, $zero, 0
bne_cont.24165:
	bne	$t2, $zero, beq_else.24166
	addi	$t2, $zero, 0
	j	beq_cont.24167
beq_else.24166:
	lwc1	$f4, 8($t1)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24168
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24169
bne_else.24168:
bne_cont.24169:
	lw	$t2, 16($a2)
	lwc1	$f5, 8($t2)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24170
	addi	$t2, $zero, 1
	j	bne_cont.24171
bne_else.24170:
	addi	$t2, $zero, 0
bne_cont.24171:
	bne	$t2, $zero, beq_else.24172
	addi	$t2, $zero, 0
	j	beq_cont.24173
beq_else.24172:
	lwc1	$f4, 4($t0)
	c.eq.s	$s1, $f4, $fzero
	beq	$s1, $zero, c.eq_else.24174
	addi	$t2, $zero, 1
	j	c.eq_cont.24175
c.eq_else.24174:
	addi	$t2, $zero, 0
c.eq_cont.24175:
	bne	$t2, $zero, beq_else.24176
	addi	$t2, $zero, 1
	j	beq_cont.24177
beq_else.24176:
	addi	$t2, $zero, 0
beq_cont.24177:
beq_cont.24173:
beq_cont.24167:
	bne	$t2, $zero, beq_else.24178
	lwc1	$f3, 8($t0)
	sub.s	$f3, $f3, $f1
	lwc1	$f4, 12($t0)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 0($t1)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24180
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24181
bne_else.24180:
bne_cont.24181:
	lw	$t2, 16($a2)
	lwc1	$f5, 0($t2)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24182
	addi	$t2, $zero, 1
	j	bne_cont.24183
bne_else.24182:
	addi	$t2, $zero, 0
bne_cont.24183:
	bne	$t2, $zero, beq_else.24184
	addi	$t2, $zero, 0
	j	beq_cont.24185
beq_else.24184:
	lwc1	$f4, 8($t1)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24186
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24187
bne_else.24186:
bne_cont.24187:
	lw	$t2, 16($a2)
	lwc1	$f5, 8($t2)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24188
	addi	$t2, $zero, 1
	j	bne_cont.24189
bne_else.24188:
	addi	$t2, $zero, 0
bne_cont.24189:
	bne	$t2, $zero, beq_else.24190
	addi	$t2, $zero, 0
	j	beq_cont.24191
beq_else.24190:
	lwc1	$f4, 12($t0)
	c.eq.s	$s1, $f4, $fzero
	beq	$s1, $zero, c.eq_else.24192
	addi	$t2, $zero, 1
	j	c.eq_cont.24193
c.eq_else.24192:
	addi	$t2, $zero, 0
c.eq_cont.24193:
	bne	$t2, $zero, beq_else.24194
	addi	$t2, $zero, 1
	j	beq_cont.24195
beq_else.24194:
	addi	$t2, $zero, 0
beq_cont.24195:
beq_cont.24191:
beq_cont.24185:
	bne	$t2, $zero, beq_else.24196
	lwc1	$f3, 16($t0)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 20($t0)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0($t1)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24198
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24199
bne_else.24198:
bne_cont.24199:
	lw	$t2, 16($a2)
	lwc1	$f3, 0($t2)
	c.lt.s	$s0, $f0, $f3
	beq	$s0, $zero, bne_else.24200
	addi	$t2, $zero, 1
	j	bne_cont.24201
bne_else.24200:
	addi	$t2, $zero, 0
bne_cont.24201:
	bne	$t2, $zero, beq_else.24202
	addi	$a2, $zero, 0
	j	beq_cont.24203
beq_else.24202:
	lwc1	$f0, 4($t1)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24204
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24205
bne_else.24204:
bne_cont.24205:
	lw	$a2, 16($a2)
	lwc1	$f1, 4($a2)
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24206
	addi	$a2, $zero, 1
	j	bne_cont.24207
bne_else.24206:
	addi	$a2, $zero, 0
bne_cont.24207:
	bne	$a2, $zero, beq_else.24208
	addi	$a2, $zero, 0
	j	beq_cont.24209
beq_else.24208:
	lwc1	$f0, 20($t0)
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.24210
	addi	$a2, $zero, 1
	j	c.eq_cont.24211
c.eq_else.24210:
	addi	$a2, $zero, 0
c.eq_cont.24211:
	bne	$a2, $zero, beq_else.24212
	addi	$a2, $zero, 1
	j	beq_cont.24213
beq_else.24212:
	addi	$a2, $zero, 0
beq_cont.24213:
beq_cont.24209:
beq_cont.24203:
	bne	$a2, $zero, beq_else.24214
	addi	$a0, $zero, 0
	j	beq_cont.24215
beq_else.24214:
	swc1	$f2, 20540($zero)
	addi	$a0, $zero, 3
beq_cont.24215:
	j	beq_cont.24197
beq_else.24196:
	swc1	$f3, 20540($zero)
	addi	$a0, $zero, 2
beq_cont.24197:
	j	beq_cont.24179
beq_else.24178:
	swc1	$f3, 20540($zero)
	addi	$a0, $zero, 1
beq_cont.24179:
	j	beq_cont.24161
beq_else.24160:
	addi	$s1, $zero, 2
	bne	$t1, $s1, beq_else.24216
	lwc1	$f3, 0($t0)
	c.lt.s	$s0, $f3, $fzero
	beq	$s0, $zero, bne_else.24218
	addi	$a2, $zero, 1
	j	bne_cont.24219
bne_else.24218:
	addi	$a2, $zero, 0
bne_cont.24219:
	bne	$a2, $zero, beq_else.24220
	addi	$a0, $zero, 0
	j	beq_cont.24221
beq_else.24220:
	lwc1	$f3, 4($t0)
	mul.s	$f0, $f3, $f0
	lwc1	$f3, 8($t0)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 12($t0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
	addi	$a0, $zero, 1
beq_cont.24221:
	j	beq_cont.24217
beq_else.24216:
	lwc1	$f3, 0($t0)
	c.eq.s	$s1, $f3, $fzero
	beq	$s1, $zero, c.eq_else.24222
	addi	$t1, $zero, 1
	j	c.eq_cont.24223
c.eq_else.24222:
	addi	$t1, $zero, 0
c.eq_cont.24223:
	bne	$t1, $zero, beq_else.24224
	lwc1	$f4, 4($t0)
	mul.s	$f4, $f4, $f0
	lwc1	$f5, 8($t0)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwc1	$f5, 12($t0)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$t1, 16($a2)
	lwc1	$f6, 0($t1)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$t1, 16($a2)
	lwc1	$f7, 4($t1)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$t1, 16($a2)
	lwc1	$f7, 8($t1)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$t1, 12($a2)
	bne	$t1, $zero, beq_else.24226
	add.s	$f0, $f5, $fzero
	j	beq_cont.24227
beq_else.24226:
	mul.s	$f6, $f1, $f2
	lw	$t1, 36($a2)
	lwc1	$f7, 0($t1)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$t1, 36($a2)
	lwc1	$f6, 4($t1)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$t1, 36($a2)
	lwc1	$f1, 8($t1)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
beq_cont.24227:
	lw	$t1, 4($a2)
	addi	$s1, $zero, 3
	bne	$t1, $s1, beq_else.24228
	flui	$f1, 16256
	sub.s	$f0, $f0, $f1
	j	beq_cont.24229
beq_else.24228:
beq_cont.24229:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24230
	addi	$t1, $zero, 1
	j	bne_cont.24231
bne_else.24230:
	addi	$t1, $zero, 0
bne_cont.24231:
	bne	$t1, $zero, beq_else.24232
	addi	$a0, $zero, 0
	j	beq_cont.24233
beq_else.24232:
	lw	$a2, 24($a2)
	bne	$a2, $zero, beq_else.24234
	sw	$t0, 12($sp)
	swc1	$f4, 16($sp)
	sqrt	$f0, $f0
	lwc1	$f1, 16($sp)
	sub.s	$f0, $f1, $f0
	lw	$a0, 12($sp)
	lwc1	$f1, 16($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
	j	beq_cont.24235
beq_else.24234:
	sw	$t0, 12($sp)
	swc1	$f4, 16($sp)
	sqrt	$f0, $f0
	lwc1	$f1, 16($sp)
	add.s	$f0, $f1, $f0
	lw	$a0, 12($sp)
	lwc1	$f1, 16($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
beq_cont.24235:
	addi	$a0, $zero, 1
beq_cont.24233:
	j	beq_cont.24225
beq_else.24224:
	addi	$a0, $zero, 0
beq_cont.24225:
beq_cont.24217:
beq_cont.24161:
	bne	$a0, $zero, beq_else.24236
	addi	$a0, $zero, 0
	j	beq_cont.24237
beq_else.24236:
	lwc1	$f0, 20540($zero)
	flui	$f1, -16948
	fori	$f1, $f1, 52429
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24238
	addi	$a0, $zero, 1
	j	bne_cont.24239
bne_else.24238:
	addi	$a0, $zero, 0
bne_cont.24239:
	bne	$a0, $zero, beq_else.24240
	addi	$a0, $zero, 0
	j	beq_cont.24241
beq_else.24240:
	addi	$a0, $zero, 1
	lw	$a1, 0($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	shadow_check_one_or_group.2929
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	bne	$a0, $zero, beq_else.24242
	addi	$a0, $zero, 0
	j	beq_cont.24243
beq_else.24242:
	addi	$a0, $zero, 1
beq_cont.24243:
beq_cont.24241:
beq_cont.24237:
beq_cont.24159:
	bne	$a0, $zero, bne_else.24244
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	j	shadow_check_one_or_matrix.2932
bne_else.24244:
	addi	$a0, $zero, 1
	lw	$a1, 0($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	shadow_check_one_or_group.2929
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	bne	$a0, $zero, bne_else.24245
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	j	shadow_check_one_or_matrix.2932
bne_else.24245:
	addi	$a0, $zero, 1
	jr	$ra
solve_each_element.2935:
	addi	$a3, $zero, 20048
	sll	$t0, $a0, 2
	add	$s1, $a1, $t0
	lw	$t0, 0($s1)
	addi	$s1, $zero, -1
	bne	$t0, $s1, bne_else.24246
	jr	$ra
bne_else.24246:
	sll	$t1, $t0, 2
	add	$s1, $a3, $t1
	lw	$t1, 0($s1)
	lwc1	$f0, 20636($zero)
	lw	$t2, 20($t1)
	lwc1	$f1, 0($t2)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 20640($zero)
	lw	$t2, 20($t1)
	lwc1	$f2, 4($t2)
	sub.s	$f1, $f1, $f2
	lwc1	$f2, 20644($zero)
	lw	$t2, 20($t1)
	lwc1	$f3, 8($t2)
	sub.s	$f2, $f2, $f3
	lw	$t2, 4($t1)
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	sw	$a3, 12($sp)
	sw	$t0, 16($sp)
	addi	$s1, $zero, 1
	bne	$t2, $s1, beq_else.24248
	lwc1	$f3, 0($a2)
	c.eq.s	$s1, $f3, $fzero
	beq	$s1, $zero, c.eq_else.24250
	addi	$t2, $zero, 1
	j	c.eq_cont.24251
c.eq_else.24250:
	addi	$t2, $zero, 0
c.eq_cont.24251:
	bne	$t2, $zero, beq_else.24252
	lw	$t2, 16($t1)
	lw	$t3, 24($t1)
	lwc1	$f3, 0($a2)
	c.lt.s	$s0, $f3, $fzero
	beq	$s0, $zero, bne_else.24254
	addi	$t4, $zero, 1
	j	bne_cont.24255
bne_else.24254:
	addi	$t4, $zero, 0
bne_cont.24255:
	bne	$t3, $zero, beq_else.24256
	add	$t3, $t4, $zero
	j	beq_cont.24257
beq_else.24256:
	bne	$t4, $zero, beq_else.24258
	addi	$t3, $zero, 1
	j	beq_cont.24259
beq_else.24258:
	addi	$t3, $zero, 0
beq_cont.24259:
beq_cont.24257:
	lwc1	$f3, 0($t2)
	bne	$t3, $zero, beq_else.24260
	sub.s	$f3, $fzero, $f3
	j	beq_cont.24261
beq_else.24260:
beq_cont.24261:
	sub.s	$f3, $f3, $f0
	lwc1	$f4, 0($a2)
	div.s	$f3, $f3, $f4
	lwc1	$f4, 4($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24262
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24263
bne_else.24262:
bne_cont.24263:
	lwc1	$f5, 4($t2)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24264
	addi	$t3, $zero, 1
	j	bne_cont.24265
bne_else.24264:
	addi	$t3, $zero, 0
bne_cont.24265:
	bne	$t3, $zero, beq_else.24266
	addi	$t2, $zero, 0
	j	beq_cont.24267
beq_else.24266:
	lwc1	$f4, 8($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24268
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24269
bne_else.24268:
bne_cont.24269:
	lwc1	$f5, 8($t2)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24270
	addi	$t2, $zero, 1
	j	bne_cont.24271
bne_else.24270:
	addi	$t2, $zero, 0
bne_cont.24271:
	bne	$t2, $zero, beq_else.24272
	addi	$t2, $zero, 0
	j	beq_cont.24273
beq_else.24272:
	swc1	$f3, 20540($zero)
	addi	$t2, $zero, 1
beq_cont.24273:
beq_cont.24267:
	j	beq_cont.24253
beq_else.24252:
	addi	$t2, $zero, 0
beq_cont.24253:
	bne	$t2, $zero, beq_else.24274
	lwc1	$f3, 4($a2)
	c.eq.s	$s1, $f3, $fzero
	beq	$s1, $zero, c.eq_else.24276
	addi	$t2, $zero, 1
	j	c.eq_cont.24277
c.eq_else.24276:
	addi	$t2, $zero, 0
c.eq_cont.24277:
	bne	$t2, $zero, beq_else.24278
	lw	$t2, 16($t1)
	lw	$t3, 24($t1)
	lwc1	$f3, 4($a2)
	c.lt.s	$s0, $f3, $fzero
	beq	$s0, $zero, bne_else.24280
	addi	$t4, $zero, 1
	j	bne_cont.24281
bne_else.24280:
	addi	$t4, $zero, 0
bne_cont.24281:
	bne	$t3, $zero, beq_else.24282
	add	$t3, $t4, $zero
	j	beq_cont.24283
beq_else.24282:
	bne	$t4, $zero, beq_else.24284
	addi	$t3, $zero, 1
	j	beq_cont.24285
beq_else.24284:
	addi	$t3, $zero, 0
beq_cont.24285:
beq_cont.24283:
	lwc1	$f3, 4($t2)
	bne	$t3, $zero, beq_else.24286
	sub.s	$f3, $fzero, $f3
	j	beq_cont.24287
beq_else.24286:
beq_cont.24287:
	sub.s	$f3, $f3, $f1
	lwc1	$f4, 4($a2)
	div.s	$f3, $f3, $f4
	lwc1	$f4, 8($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24288
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24289
bne_else.24288:
bne_cont.24289:
	lwc1	$f5, 8($t2)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24290
	addi	$t3, $zero, 1
	j	bne_cont.24291
bne_else.24290:
	addi	$t3, $zero, 0
bne_cont.24291:
	bne	$t3, $zero, beq_else.24292
	addi	$t2, $zero, 0
	j	beq_cont.24293
beq_else.24292:
	lwc1	$f4, 0($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24294
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24295
bne_else.24294:
bne_cont.24295:
	lwc1	$f5, 0($t2)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24296
	addi	$t2, $zero, 1
	j	bne_cont.24297
bne_else.24296:
	addi	$t2, $zero, 0
bne_cont.24297:
	bne	$t2, $zero, beq_else.24298
	addi	$t2, $zero, 0
	j	beq_cont.24299
beq_else.24298:
	swc1	$f3, 20540($zero)
	addi	$t2, $zero, 1
beq_cont.24299:
beq_cont.24293:
	j	beq_cont.24279
beq_else.24278:
	addi	$t2, $zero, 0
beq_cont.24279:
	bne	$t2, $zero, beq_else.24300
	lwc1	$f3, 8($a2)
	c.eq.s	$s1, $f3, $fzero
	beq	$s1, $zero, c.eq_else.24302
	addi	$t2, $zero, 1
	j	c.eq_cont.24303
c.eq_else.24302:
	addi	$t2, $zero, 0
c.eq_cont.24303:
	bne	$t2, $zero, beq_else.24304
	lw	$t2, 16($t1)
	lw	$t1, 24($t1)
	lwc1	$f3, 8($a2)
	c.lt.s	$s0, $f3, $fzero
	beq	$s0, $zero, bne_else.24306
	addi	$t3, $zero, 1
	j	bne_cont.24307
bne_else.24306:
	addi	$t3, $zero, 0
bne_cont.24307:
	bne	$t1, $zero, beq_else.24308
	add	$t1, $t3, $zero
	j	beq_cont.24309
beq_else.24308:
	bne	$t3, $zero, beq_else.24310
	addi	$t1, $zero, 1
	j	beq_cont.24311
beq_else.24310:
	addi	$t1, $zero, 0
beq_cont.24311:
beq_cont.24309:
	lwc1	$f3, 8($t2)
	bne	$t1, $zero, beq_else.24312
	sub.s	$f3, $fzero, $f3
	j	beq_cont.24313
beq_else.24312:
beq_cont.24313:
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 8($a2)
	div.s	$f2, $f2, $f3
	lwc1	$f3, 0($a2)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24314
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24315
bne_else.24314:
bne_cont.24315:
	lwc1	$f3, 0($t2)
	c.lt.s	$s0, $f0, $f3
	beq	$s0, $zero, bne_else.24316
	addi	$t1, $zero, 1
	j	bne_cont.24317
bne_else.24316:
	addi	$t1, $zero, 0
bne_cont.24317:
	bne	$t1, $zero, beq_else.24318
	addi	$t1, $zero, 0
	j	beq_cont.24319
beq_else.24318:
	lwc1	$f0, 4($a2)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24320
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24321
bne_else.24320:
bne_cont.24321:
	lwc1	$f1, 4($t2)
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24322
	addi	$t1, $zero, 1
	j	bne_cont.24323
bne_else.24322:
	addi	$t1, $zero, 0
bne_cont.24323:
	bne	$t1, $zero, beq_else.24324
	addi	$t1, $zero, 0
	j	beq_cont.24325
beq_else.24324:
	swc1	$f2, 20540($zero)
	addi	$t1, $zero, 1
beq_cont.24325:
beq_cont.24319:
	j	beq_cont.24305
beq_else.24304:
	addi	$t1, $zero, 0
beq_cont.24305:
	bne	$t1, $zero, beq_else.24326
	addi	$a0, $zero, 0
	j	beq_cont.24327
beq_else.24326:
	addi	$a0, $zero, 3
beq_cont.24327:
	j	beq_cont.24301
beq_else.24300:
	addi	$a0, $zero, 2
beq_cont.24301:
	j	beq_cont.24275
beq_else.24274:
	addi	$a0, $zero, 1
beq_cont.24275:
	j	beq_cont.24249
beq_else.24248:
	addi	$s1, $zero, 2
	bne	$t2, $s1, beq_else.24328
	lw	$t1, 16($t1)
	lwc1	$f3, 0($a2)
	lwc1	$f4, 0($t1)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 4($a2)
	lwc1	$f5, 4($t1)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lwc1	$f4, 8($a2)
	lwc1	$f5, 8($t1)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	c.lt.s	$s0, $fzero, $f3
	beq	$s0, $zero, bne_else.24330
	addi	$t2, $zero, 1
	j	bne_cont.24331
bne_else.24330:
	addi	$t2, $zero, 0
bne_cont.24331:
	bne	$t2, $zero, beq_else.24332
	addi	$a0, $zero, 0
	j	beq_cont.24333
beq_else.24332:
	lwc1	$f4, 0($t1)
	mul.s	$f0, $f4, $f0
	lwc1	$f4, 4($t1)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 8($t1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	div.s	$f0, $f0, $f3
	swc1	$f0, 20540($zero)
	addi	$a0, $zero, 1
beq_cont.24333:
	j	beq_cont.24329
beq_else.24328:
	lwc1	$f3, 0($a2)
	lwc1	$f4, 4($a2)
	lwc1	$f5, 8($a2)
	mul.s	$f6, $f3, $f3
	lw	$t2, 16($t1)
	lwc1	$f7, 0($t2)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$t2, 16($t1)
	lwc1	$f8, 4($t2)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$t2, 16($t1)
	lwc1	$f8, 8($t2)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$t2, 12($t1)
	bne	$t2, $zero, beq_else.24334
	add.s	$f3, $f6, $fzero
	j	beq_cont.24335
beq_else.24334:
	mul.s	$f7, $f4, $f5
	lw	$t2, 36($t1)
	lwc1	$f8, 0($t2)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$t2, 36($t1)
	lwc1	$f7, 4($t2)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$t2, 36($t1)
	lwc1	$f4, 8($t2)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
beq_cont.24335:
	c.eq.s	$s1, $f3, $fzero
	beq	$s1, $zero, c.eq_else.24336
	addi	$t2, $zero, 1
	j	c.eq_cont.24337
c.eq_else.24336:
	addi	$t2, $zero, 0
c.eq_cont.24337:
	bne	$t2, $zero, beq_else.24338
	lwc1	$f4, 0($a2)
	lwc1	$f5, 4($a2)
	lwc1	$f6, 8($a2)
	mul.s	$f7, $f4, $f0
	lw	$t2, 16($t1)
	lwc1	$f8, 0($t2)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f1
	lw	$t2, 16($t1)
	lwc1	$f9, 4($t2)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f2
	lw	$t2, 16($t1)
	lwc1	$f9, 8($t2)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$t2, 12($t1)
	bne	$t2, $zero, beq_else.24340
	add.s	$f4, $f7, $fzero
	j	beq_cont.24341
beq_else.24340:
	mul.s	$f8, $f6, $f1
	mul.s	$f9, $f5, $f2
	add.s	$f8, $f8, $f9
	lw	$t2, 36($t1)
	lwc1	$f9, 0($t2)
	mul.s	$f8, $f8, $f9
	mul.s	$f9, $f4, $f2
	mul.s	$f6, $f6, $f0
	add.s	$f6, $f9, $f6
	lw	$t2, 36($t1)
	lwc1	$f9, 4($t2)
	mul.s	$f6, $f6, $f9
	add.s	$f6, $f8, $f6
	mul.s	$f4, $f4, $f1
	mul.s	$f5, $f5, $f0
	add.s	$f4, $f4, $f5
	lw	$t2, 36($t1)
	lwc1	$f5, 8($t2)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
	flui	$f5, 16128
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f7, $f4
beq_cont.24341:
	mul.s	$f5, $f0, $f0
	lw	$t2, 16($t1)
	lwc1	$f6, 0($t2)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$t2, 16($t1)
	lwc1	$f7, 4($t2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$t2, 16($t1)
	lwc1	$f7, 8($t2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$t2, 12($t1)
	bne	$t2, $zero, beq_else.24342
	add.s	$f0, $f5, $fzero
	j	beq_cont.24343
beq_else.24342:
	mul.s	$f6, $f1, $f2
	lw	$t2, 36($t1)
	lwc1	$f7, 0($t2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$t2, 36($t1)
	lwc1	$f6, 4($t2)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$t2, 36($t1)
	lwc1	$f1, 8($t2)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
beq_cont.24343:
	lw	$t2, 4($t1)
	addi	$s1, $zero, 3
	bne	$t2, $s1, beq_else.24344
	flui	$f1, 16256
	sub.s	$f0, $f0, $f1
	j	beq_cont.24345
beq_else.24344:
beq_cont.24345:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24346
	addi	$t2, $zero, 1
	j	bne_cont.24347
bne_else.24346:
	addi	$t2, $zero, 0
bne_cont.24347:
	bne	$t2, $zero, beq_else.24348
	addi	$a0, $zero, 0
	j	beq_cont.24349
beq_else.24348:
	swc1	$f3, 24($sp)
	swc1	$f4, 32($sp)
	sw	$t1, 40($sp)
	sqrt	$f0, $f0
	lw	$a0, 40($sp)
	lw	$a0, 24($a0)
	bne	$a0, $zero, beq_else.24351
	sub.s	$f0, $fzero, $f0
	j	beq_cont.24352
beq_else.24351:
beq_cont.24352:
	lwc1	$f1, 32($sp)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 24($sp)
	div.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
	addi	$a0, $zero, 1
beq_cont.24349:
	j	beq_cont.24339
beq_else.24338:
	addi	$a0, $zero, 0
beq_cont.24339:
beq_cont.24329:
beq_cont.24249:
	bne	$a0, $zero, bne_else.24353
	lw	$a0, 16($sp)
	sll	$a0, $a0, 2
	lw	$a1, 12($sp)
	add	$s1, $a1, $a0
	lw	$a0, 0($s1)
	lw	$a0, 24($a0)
	bne	$a0, $zero, bne_else.24354
	jr	$ra
bne_else.24354:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_each_element.2935
bne_else.24353:
	lwc1	$f0, 20540($zero)
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24356
	addi	$a1, $zero, 1
	j	bne_cont.24357
bne_else.24356:
	addi	$a1, $zero, 0
bne_cont.24357:
	bne	$a1, $zero, beq_else.24358
	j	beq_cont.24359
beq_else.24358:
	lwc1	$f1, 20548($zero)
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24360
	addi	$a1, $zero, 1
	j	bne_cont.24361
bne_else.24360:
	addi	$a1, $zero, 0
bne_cont.24361:
	bne	$a1, $zero, beq_else.24362
	j	beq_cont.24363
beq_else.24362:
	flui	$f1, 15395
	fori	$f1, $f1, 55050
	add.s	$f0, $f0, $f1
	lw	$a1, 0($sp)
	lwc1	$f1, 0($a1)
	mul.s	$f1, $f1, $f0
	lwc1	$f2, 20636($zero)
	add.s	$f1, $f1, $f2
	lwc1	$f2, 4($a1)
	mul.s	$f2, $f2, $f0
	lwc1	$f3, 20640($zero)
	add.s	$f2, $f2, $f3
	lwc1	$f3, 8($a1)
	mul.s	$f3, $f3, $f0
	lwc1	$f4, 20644($zero)
	add.s	$f3, $f3, $f4
	addi	$a2, $zero, 0
	lw	$a3, 4($sp)
	sw	$a0, 44($sp)
	swc1	$f3, 48($sp)
	swc1	$f2, 56($sp)
	swc1	$f1, 64($sp)
	swc1	$f0, 72($sp)
	add	$a1, $zero, $a3
	add	$a0, $zero, $a2
	add.s	$f0, $fzero, $f1
	add.s	$f1, $fzero, $f2
	add.s	$f2, $fzero, $f3
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	check_all_inside.2920
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	bne	$a0, $zero, beq_else.24364
	j	beq_cont.24365
beq_else.24364:
	lwc1	$f0, 72($sp)
	swc1	$f0, 20548($zero)
	lwc1	$f0, 64($sp)
	swc1	$f0, 20552($zero)
	lwc1	$f0, 56($sp)
	swc1	$f0, 20556($zero)
	lwc1	$f0, 48($sp)
	swc1	$f0, 20560($zero)
	lw	$a0, 16($sp)
	sw	$a0, 20564($zero)
	lw	$a0, 44($sp)
	sw	$a0, 20544($zero)
beq_cont.24365:
beq_cont.24363:
beq_cont.24359:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_each_element.2935
solve_one_or_network.2939:
	addi	$a3, $zero, 20332
	sll	$t0, $a0, 2
	add	$s1, $a1, $t0
	lw	$t0, 0($s1)
	addi	$s1, $zero, -1
	bne	$t0, $s1, bne_else.24366
	jr	$ra
bne_else.24366:
	sll	$t0, $t0, 2
	add	$s1, $a3, $t0
	lw	$a3, 0($s1)
	addi	$t0, $zero, 0
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	add	$a1, $zero, $a3
	add	$a0, $zero, $t0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_each_element.2935
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_one_or_network.2939
trace_or_matrix.2943:
	addi	$a3, $zero, 20048
	sll	$t0, $a0, 2
	add	$s1, $a1, $t0
	lw	$t0, 0($s1)
	lw	$t1, 0($t0)
	addi	$s1, $zero, -1
	bne	$t1, $s1, bne_else.24368
	jr	$ra
bne_else.24368:
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	addi	$s1, $zero, 99
	bne	$t1, $s1, beq_else.24370
	addi	$a3, $zero, 1
	add	$a1, $zero, $t0
	add	$a0, $zero, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_one_or_network.2939
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	j	beq_cont.24371
beq_else.24370:
	sll	$t1, $t1, 2
	add	$s1, $a3, $t1
	lw	$a3, 0($s1)
	lwc1	$f0, 20636($zero)
	lw	$t1, 20($a3)
	lwc1	$f1, 0($t1)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 20640($zero)
	lw	$t1, 20($a3)
	lwc1	$f2, 4($t1)
	sub.s	$f1, $f1, $f2
	lwc1	$f2, 20644($zero)
	lw	$t1, 20($a3)
	lwc1	$f3, 8($t1)
	sub.s	$f2, $f2, $f3
	lw	$t1, 4($a3)
	sw	$t0, 12($sp)
	addi	$s1, $zero, 1
	bne	$t1, $s1, beq_else.24372
	lwc1	$f3, 0($a2)
	c.eq.s	$s1, $f3, $fzero
	beq	$s1, $zero, c.eq_else.24374
	addi	$t1, $zero, 1
	j	c.eq_cont.24375
c.eq_else.24374:
	addi	$t1, $zero, 0
c.eq_cont.24375:
	bne	$t1, $zero, beq_else.24376
	lw	$t1, 16($a3)
	lw	$t2, 24($a3)
	lwc1	$f3, 0($a2)
	c.lt.s	$s0, $f3, $fzero
	beq	$s0, $zero, bne_else.24378
	addi	$t3, $zero, 1
	j	bne_cont.24379
bne_else.24378:
	addi	$t3, $zero, 0
bne_cont.24379:
	bne	$t2, $zero, beq_else.24380
	add	$t2, $t3, $zero
	j	beq_cont.24381
beq_else.24380:
	bne	$t3, $zero, beq_else.24382
	addi	$t2, $zero, 1
	j	beq_cont.24383
beq_else.24382:
	addi	$t2, $zero, 0
beq_cont.24383:
beq_cont.24381:
	lwc1	$f3, 0($t1)
	bne	$t2, $zero, beq_else.24384
	sub.s	$f3, $fzero, $f3
	j	beq_cont.24385
beq_else.24384:
beq_cont.24385:
	sub.s	$f3, $f3, $f0
	lwc1	$f4, 0($a2)
	div.s	$f3, $f3, $f4
	lwc1	$f4, 4($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24386
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24387
bne_else.24386:
bne_cont.24387:
	lwc1	$f5, 4($t1)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24388
	addi	$t2, $zero, 1
	j	bne_cont.24389
bne_else.24388:
	addi	$t2, $zero, 0
bne_cont.24389:
	bne	$t2, $zero, beq_else.24390
	addi	$t1, $zero, 0
	j	beq_cont.24391
beq_else.24390:
	lwc1	$f4, 8($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24392
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24393
bne_else.24392:
bne_cont.24393:
	lwc1	$f5, 8($t1)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24394
	addi	$t1, $zero, 1
	j	bne_cont.24395
bne_else.24394:
	addi	$t1, $zero, 0
bne_cont.24395:
	bne	$t1, $zero, beq_else.24396
	addi	$t1, $zero, 0
	j	beq_cont.24397
beq_else.24396:
	swc1	$f3, 20540($zero)
	addi	$t1, $zero, 1
beq_cont.24397:
beq_cont.24391:
	j	beq_cont.24377
beq_else.24376:
	addi	$t1, $zero, 0
beq_cont.24377:
	bne	$t1, $zero, beq_else.24398
	lwc1	$f3, 4($a2)
	c.eq.s	$s1, $f3, $fzero
	beq	$s1, $zero, c.eq_else.24400
	addi	$t1, $zero, 1
	j	c.eq_cont.24401
c.eq_else.24400:
	addi	$t1, $zero, 0
c.eq_cont.24401:
	bne	$t1, $zero, beq_else.24402
	lw	$t1, 16($a3)
	lw	$t2, 24($a3)
	lwc1	$f3, 4($a2)
	c.lt.s	$s0, $f3, $fzero
	beq	$s0, $zero, bne_else.24404
	addi	$t3, $zero, 1
	j	bne_cont.24405
bne_else.24404:
	addi	$t3, $zero, 0
bne_cont.24405:
	bne	$t2, $zero, beq_else.24406
	add	$t2, $t3, $zero
	j	beq_cont.24407
beq_else.24406:
	bne	$t3, $zero, beq_else.24408
	addi	$t2, $zero, 1
	j	beq_cont.24409
beq_else.24408:
	addi	$t2, $zero, 0
beq_cont.24409:
beq_cont.24407:
	lwc1	$f3, 4($t1)
	bne	$t2, $zero, beq_else.24410
	sub.s	$f3, $fzero, $f3
	j	beq_cont.24411
beq_else.24410:
beq_cont.24411:
	sub.s	$f3, $f3, $f1
	lwc1	$f4, 4($a2)
	div.s	$f3, $f3, $f4
	lwc1	$f4, 8($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24412
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24413
bne_else.24412:
bne_cont.24413:
	lwc1	$f5, 8($t1)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24414
	addi	$t2, $zero, 1
	j	bne_cont.24415
bne_else.24414:
	addi	$t2, $zero, 0
bne_cont.24415:
	bne	$t2, $zero, beq_else.24416
	addi	$t1, $zero, 0
	j	beq_cont.24417
beq_else.24416:
	lwc1	$f4, 0($a2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24418
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24419
bne_else.24418:
bne_cont.24419:
	lwc1	$f5, 0($t1)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24420
	addi	$t1, $zero, 1
	j	bne_cont.24421
bne_else.24420:
	addi	$t1, $zero, 0
bne_cont.24421:
	bne	$t1, $zero, beq_else.24422
	addi	$t1, $zero, 0
	j	beq_cont.24423
beq_else.24422:
	swc1	$f3, 20540($zero)
	addi	$t1, $zero, 1
beq_cont.24423:
beq_cont.24417:
	j	beq_cont.24403
beq_else.24402:
	addi	$t1, $zero, 0
beq_cont.24403:
	bne	$t1, $zero, beq_else.24424
	lwc1	$f3, 8($a2)
	c.eq.s	$s1, $f3, $fzero
	beq	$s1, $zero, c.eq_else.24426
	addi	$t1, $zero, 1
	j	c.eq_cont.24427
c.eq_else.24426:
	addi	$t1, $zero, 0
c.eq_cont.24427:
	bne	$t1, $zero, beq_else.24428
	lw	$t1, 16($a3)
	lw	$a3, 24($a3)
	lwc1	$f3, 8($a2)
	c.lt.s	$s0, $f3, $fzero
	beq	$s0, $zero, bne_else.24430
	addi	$t2, $zero, 1
	j	bne_cont.24431
bne_else.24430:
	addi	$t2, $zero, 0
bne_cont.24431:
	bne	$a3, $zero, beq_else.24432
	add	$a3, $t2, $zero
	j	beq_cont.24433
beq_else.24432:
	bne	$t2, $zero, beq_else.24434
	addi	$a3, $zero, 1
	j	beq_cont.24435
beq_else.24434:
	addi	$a3, $zero, 0
beq_cont.24435:
beq_cont.24433:
	lwc1	$f3, 8($t1)
	bne	$a3, $zero, beq_else.24436
	sub.s	$f3, $fzero, $f3
	j	beq_cont.24437
beq_else.24436:
beq_cont.24437:
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 8($a2)
	div.s	$f2, $f2, $f3
	lwc1	$f3, 0($a2)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24438
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24439
bne_else.24438:
bne_cont.24439:
	lwc1	$f3, 0($t1)
	c.lt.s	$s0, $f0, $f3
	beq	$s0, $zero, bne_else.24440
	addi	$a3, $zero, 1
	j	bne_cont.24441
bne_else.24440:
	addi	$a3, $zero, 0
bne_cont.24441:
	bne	$a3, $zero, beq_else.24442
	addi	$a3, $zero, 0
	j	beq_cont.24443
beq_else.24442:
	lwc1	$f0, 4($a2)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24444
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24445
bne_else.24444:
bne_cont.24445:
	lwc1	$f1, 4($t1)
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24446
	addi	$a3, $zero, 1
	j	bne_cont.24447
bne_else.24446:
	addi	$a3, $zero, 0
bne_cont.24447:
	bne	$a3, $zero, beq_else.24448
	addi	$a3, $zero, 0
	j	beq_cont.24449
beq_else.24448:
	swc1	$f2, 20540($zero)
	addi	$a3, $zero, 1
beq_cont.24449:
beq_cont.24443:
	j	beq_cont.24429
beq_else.24428:
	addi	$a3, $zero, 0
beq_cont.24429:
	bne	$a3, $zero, beq_else.24450
	addi	$a0, $zero, 0
	j	beq_cont.24451
beq_else.24450:
	addi	$a0, $zero, 3
beq_cont.24451:
	j	beq_cont.24425
beq_else.24424:
	addi	$a0, $zero, 2
beq_cont.24425:
	j	beq_cont.24399
beq_else.24398:
	addi	$a0, $zero, 1
beq_cont.24399:
	j	beq_cont.24373
beq_else.24372:
	addi	$s1, $zero, 2
	bne	$t1, $s1, beq_else.24452
	lw	$a3, 16($a3)
	lwc1	$f3, 0($a2)
	lwc1	$f4, 0($a3)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 4($a2)
	lwc1	$f5, 4($a3)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lwc1	$f4, 8($a2)
	lwc1	$f5, 8($a3)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	c.lt.s	$s0, $fzero, $f3
	beq	$s0, $zero, bne_else.24454
	addi	$t1, $zero, 1
	j	bne_cont.24455
bne_else.24454:
	addi	$t1, $zero, 0
bne_cont.24455:
	bne	$t1, $zero, beq_else.24456
	addi	$a0, $zero, 0
	j	beq_cont.24457
beq_else.24456:
	lwc1	$f4, 0($a3)
	mul.s	$f0, $f4, $f0
	lwc1	$f4, 4($a3)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 8($a3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	div.s	$f0, $f0, $f3
	swc1	$f0, 20540($zero)
	addi	$a0, $zero, 1
beq_cont.24457:
	j	beq_cont.24453
beq_else.24452:
	lwc1	$f3, 0($a2)
	lwc1	$f4, 4($a2)
	lwc1	$f5, 8($a2)
	mul.s	$f6, $f3, $f3
	lw	$t1, 16($a3)
	lwc1	$f7, 0($t1)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$t1, 16($a3)
	lwc1	$f8, 4($t1)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$t1, 16($a3)
	lwc1	$f8, 8($t1)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$t1, 12($a3)
	bne	$t1, $zero, beq_else.24458
	add.s	$f3, $f6, $fzero
	j	beq_cont.24459
beq_else.24458:
	mul.s	$f7, $f4, $f5
	lw	$t1, 36($a3)
	lwc1	$f8, 0($t1)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$t1, 36($a3)
	lwc1	$f7, 4($t1)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$t1, 36($a3)
	lwc1	$f4, 8($t1)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
beq_cont.24459:
	c.eq.s	$s1, $f3, $fzero
	beq	$s1, $zero, c.eq_else.24460
	addi	$t1, $zero, 1
	j	c.eq_cont.24461
c.eq_else.24460:
	addi	$t1, $zero, 0
c.eq_cont.24461:
	bne	$t1, $zero, beq_else.24462
	lwc1	$f4, 0($a2)
	lwc1	$f5, 4($a2)
	lwc1	$f6, 8($a2)
	mul.s	$f7, $f4, $f0
	lw	$t1, 16($a3)
	lwc1	$f8, 0($t1)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f1
	lw	$t1, 16($a3)
	lwc1	$f9, 4($t1)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f2
	lw	$t1, 16($a3)
	lwc1	$f9, 8($t1)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$t1, 12($a3)
	bne	$t1, $zero, beq_else.24464
	add.s	$f4, $f7, $fzero
	j	beq_cont.24465
beq_else.24464:
	mul.s	$f8, $f6, $f1
	mul.s	$f9, $f5, $f2
	add.s	$f8, $f8, $f9
	lw	$t1, 36($a3)
	lwc1	$f9, 0($t1)
	mul.s	$f8, $f8, $f9
	mul.s	$f9, $f4, $f2
	mul.s	$f6, $f6, $f0
	add.s	$f6, $f9, $f6
	lw	$t1, 36($a3)
	lwc1	$f9, 4($t1)
	mul.s	$f6, $f6, $f9
	add.s	$f6, $f8, $f6
	mul.s	$f4, $f4, $f1
	mul.s	$f5, $f5, $f0
	add.s	$f4, $f4, $f5
	lw	$t1, 36($a3)
	lwc1	$f5, 8($t1)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
	flui	$f5, 16128
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f7, $f4
beq_cont.24465:
	mul.s	$f5, $f0, $f0
	lw	$t1, 16($a3)
	lwc1	$f6, 0($t1)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$t1, 16($a3)
	lwc1	$f7, 4($t1)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$t1, 16($a3)
	lwc1	$f7, 8($t1)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$t1, 12($a3)
	bne	$t1, $zero, beq_else.24466
	add.s	$f0, $f5, $fzero
	j	beq_cont.24467
beq_else.24466:
	mul.s	$f6, $f1, $f2
	lw	$t1, 36($a3)
	lwc1	$f7, 0($t1)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$t1, 36($a3)
	lwc1	$f6, 4($t1)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$t1, 36($a3)
	lwc1	$f1, 8($t1)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
beq_cont.24467:
	lw	$t1, 4($a3)
	addi	$s1, $zero, 3
	bne	$t1, $s1, beq_else.24468
	flui	$f1, 16256
	sub.s	$f0, $f0, $f1
	j	beq_cont.24469
beq_else.24468:
beq_cont.24469:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24470
	addi	$t1, $zero, 1
	j	bne_cont.24471
bne_else.24470:
	addi	$t1, $zero, 0
bne_cont.24471:
	bne	$t1, $zero, beq_else.24472
	addi	$a0, $zero, 0
	j	beq_cont.24473
beq_else.24472:
	swc1	$f3, 16($sp)
	swc1	$f4, 24($sp)
	sw	$a3, 32($sp)
	sqrt	$f0, $f0
	lw	$a0, 32($sp)
	lw	$a0, 24($a0)
	bne	$a0, $zero, beq_else.24474
	sub.s	$f0, $fzero, $f0
	j	beq_cont.24475
beq_else.24474:
beq_cont.24475:
	lwc1	$f1, 24($sp)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 16($sp)
	div.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
	addi	$a0, $zero, 1
beq_cont.24473:
	j	beq_cont.24463
beq_else.24462:
	addi	$a0, $zero, 0
beq_cont.24463:
beq_cont.24453:
beq_cont.24373:
	bne	$a0, $zero, beq_else.24476
	j	beq_cont.24477
beq_else.24476:
	lwc1	$f0, 20540($zero)
	lwc1	$f1, 20548($zero)
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24478
	addi	$a0, $zero, 1
	j	bne_cont.24479
bne_else.24478:
	addi	$a0, $zero, 0
bne_cont.24479:
	bne	$a0, $zero, beq_else.24480
	j	beq_cont.24481
beq_else.24480:
	addi	$a0, $zero, 1
	lw	$a1, 12($sp)
	lw	$a2, 0($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solve_one_or_network.2939
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
beq_cont.24481:
beq_cont.24477:
beq_cont.24371:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	trace_or_matrix.2943
solve_each_element_fast.2949:
	addi	$a3, $zero, 20048
	lw	$t0, 0($a2)
	sll	$t1, $a0, 2
	add	$s1, $a1, $t1
	lw	$t1, 0($s1)
	addi	$s1, $zero, -1
	bne	$t1, $s1, bne_else.24482
	jr	$ra
bne_else.24482:
	sll	$t2, $t1, 2
	add	$s1, $a3, $t2
	lw	$t2, 0($s1)
	lw	$t3, 40($t2)
	lwc1	$f0, 0($t3)
	lwc1	$f1, 4($t3)
	lwc1	$f2, 8($t3)
	lw	$t4, 4($a2)
	sll	$t5, $t1, 2
	add	$s1, $t4, $t5
	lw	$t4, 0($s1)
	lw	$t5, 4($t2)
	sw	$t0, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	sw	$a0, 12($sp)
	sw	$a3, 16($sp)
	sw	$t1, 20($sp)
	addi	$s1, $zero, 1
	bne	$t5, $s1, beq_else.24484
	lw	$t3, 0($a2)
	lwc1	$f3, 0($t4)
	sub.s	$f3, $f3, $f0
	lwc1	$f4, 4($t4)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 4($t3)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24486
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24487
bne_else.24486:
bne_cont.24487:
	lw	$t5, 16($t2)
	lwc1	$f5, 4($t5)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24488
	addi	$t5, $zero, 1
	j	bne_cont.24489
bne_else.24488:
	addi	$t5, $zero, 0
bne_cont.24489:
	bne	$t5, $zero, beq_else.24490
	addi	$t5, $zero, 0
	j	beq_cont.24491
beq_else.24490:
	lwc1	$f4, 8($t3)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24492
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24493
bne_else.24492:
bne_cont.24493:
	lw	$t5, 16($t2)
	lwc1	$f5, 8($t5)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24494
	addi	$t5, $zero, 1
	j	bne_cont.24495
bne_else.24494:
	addi	$t5, $zero, 0
bne_cont.24495:
	bne	$t5, $zero, beq_else.24496
	addi	$t5, $zero, 0
	j	beq_cont.24497
beq_else.24496:
	lwc1	$f4, 4($t4)
	c.eq.s	$s1, $f4, $fzero
	beq	$s1, $zero, c.eq_else.24498
	addi	$t5, $zero, 1
	j	c.eq_cont.24499
c.eq_else.24498:
	addi	$t5, $zero, 0
c.eq_cont.24499:
	bne	$t5, $zero, beq_else.24500
	addi	$t5, $zero, 1
	j	beq_cont.24501
beq_else.24500:
	addi	$t5, $zero, 0
beq_cont.24501:
beq_cont.24497:
beq_cont.24491:
	bne	$t5, $zero, beq_else.24502
	lwc1	$f3, 8($t4)
	sub.s	$f3, $f3, $f1
	lwc1	$f4, 12($t4)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 0($t3)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24504
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24505
bne_else.24504:
bne_cont.24505:
	lw	$t5, 16($t2)
	lwc1	$f5, 0($t5)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24506
	addi	$t5, $zero, 1
	j	bne_cont.24507
bne_else.24506:
	addi	$t5, $zero, 0
bne_cont.24507:
	bne	$t5, $zero, beq_else.24508
	addi	$t5, $zero, 0
	j	beq_cont.24509
beq_else.24508:
	lwc1	$f4, 8($t3)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24510
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24511
bne_else.24510:
bne_cont.24511:
	lw	$t5, 16($t2)
	lwc1	$f5, 8($t5)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24512
	addi	$t5, $zero, 1
	j	bne_cont.24513
bne_else.24512:
	addi	$t5, $zero, 0
bne_cont.24513:
	bne	$t5, $zero, beq_else.24514
	addi	$t5, $zero, 0
	j	beq_cont.24515
beq_else.24514:
	lwc1	$f4, 12($t4)
	c.eq.s	$s1, $f4, $fzero
	beq	$s1, $zero, c.eq_else.24516
	addi	$t5, $zero, 1
	j	c.eq_cont.24517
c.eq_else.24516:
	addi	$t5, $zero, 0
c.eq_cont.24517:
	bne	$t5, $zero, beq_else.24518
	addi	$t5, $zero, 1
	j	beq_cont.24519
beq_else.24518:
	addi	$t5, $zero, 0
beq_cont.24519:
beq_cont.24515:
beq_cont.24509:
	bne	$t5, $zero, beq_else.24520
	lwc1	$f3, 16($t4)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 20($t4)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0($t3)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24522
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24523
bne_else.24522:
bne_cont.24523:
	lw	$t5, 16($t2)
	lwc1	$f3, 0($t5)
	c.lt.s	$s0, $f0, $f3
	beq	$s0, $zero, bne_else.24524
	addi	$t5, $zero, 1
	j	bne_cont.24525
bne_else.24524:
	addi	$t5, $zero, 0
bne_cont.24525:
	bne	$t5, $zero, beq_else.24526
	addi	$t2, $zero, 0
	j	beq_cont.24527
beq_else.24526:
	lwc1	$f0, 4($t3)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24528
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24529
bne_else.24528:
bne_cont.24529:
	lw	$t2, 16($t2)
	lwc1	$f1, 4($t2)
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24530
	addi	$t2, $zero, 1
	j	bne_cont.24531
bne_else.24530:
	addi	$t2, $zero, 0
bne_cont.24531:
	bne	$t2, $zero, beq_else.24532
	addi	$t2, $zero, 0
	j	beq_cont.24533
beq_else.24532:
	lwc1	$f0, 20($t4)
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.24534
	addi	$t2, $zero, 1
	j	c.eq_cont.24535
c.eq_else.24534:
	addi	$t2, $zero, 0
c.eq_cont.24535:
	bne	$t2, $zero, beq_else.24536
	addi	$t2, $zero, 1
	j	beq_cont.24537
beq_else.24536:
	addi	$t2, $zero, 0
beq_cont.24537:
beq_cont.24533:
beq_cont.24527:
	bne	$t2, $zero, beq_else.24538
	addi	$a0, $zero, 0
	j	beq_cont.24539
beq_else.24538:
	swc1	$f2, 20540($zero)
	addi	$a0, $zero, 3
beq_cont.24539:
	j	beq_cont.24521
beq_else.24520:
	swc1	$f3, 20540($zero)
	addi	$a0, $zero, 2
beq_cont.24521:
	j	beq_cont.24503
beq_else.24502:
	swc1	$f3, 20540($zero)
	addi	$a0, $zero, 1
beq_cont.24503:
	j	beq_cont.24485
beq_else.24484:
	addi	$s1, $zero, 2
	bne	$t5, $s1, beq_else.24540
	lwc1	$f0, 0($t4)
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24542
	addi	$t2, $zero, 1
	j	bne_cont.24543
bne_else.24542:
	addi	$t2, $zero, 0
bne_cont.24543:
	bne	$t2, $zero, beq_else.24544
	addi	$a0, $zero, 0
	j	beq_cont.24545
beq_else.24544:
	lwc1	$f0, 0($t4)
	lwc1	$f1, 12($t3)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
	addi	$a0, $zero, 1
beq_cont.24545:
	j	beq_cont.24541
beq_else.24540:
	lwc1	$f3, 0($t4)
	c.eq.s	$s1, $f3, $fzero
	beq	$s1, $zero, c.eq_else.24546
	addi	$t5, $zero, 1
	j	c.eq_cont.24547
c.eq_else.24546:
	addi	$t5, $zero, 0
c.eq_cont.24547:
	bne	$t5, $zero, beq_else.24548
	lwc1	$f4, 4($t4)
	mul.s	$f0, $f4, $f0
	lwc1	$f4, 8($t4)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 12($t4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 12($t3)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.lt.s	$s0, $fzero, $f1
	beq	$s0, $zero, bne_else.24550
	addi	$t3, $zero, 1
	j	bne_cont.24551
bne_else.24550:
	addi	$t3, $zero, 0
bne_cont.24551:
	bne	$t3, $zero, beq_else.24552
	addi	$a0, $zero, 0
	j	beq_cont.24553
beq_else.24552:
	lw	$t2, 24($t2)
	bne	$t2, $zero, beq_else.24554
	sw	$t4, 24($sp)
	swc1	$f0, 32($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 32($sp)
	sub.s	$f0, $f1, $f0
	lw	$a0, 24($sp)
	lwc1	$f1, 16($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
	j	beq_cont.24555
beq_else.24554:
	sw	$t4, 24($sp)
	swc1	$f0, 32($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 32($sp)
	add.s	$f0, $f1, $f0
	lw	$a0, 24($sp)
	lwc1	$f1, 16($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
beq_cont.24555:
	addi	$a0, $zero, 1
beq_cont.24553:
	j	beq_cont.24549
beq_else.24548:
	addi	$a0, $zero, 0
beq_cont.24549:
beq_cont.24541:
beq_cont.24485:
	bne	$a0, $zero, bne_else.24557
	lw	$a0, 20($sp)
	sll	$a0, $a0, 2
	lw	$a1, 16($sp)
	add	$s1, $a1, $a0
	lw	$a0, 0($s1)
	lw	$a0, 24($a0)
	bne	$a0, $zero, bne_else.24558
	jr	$ra
bne_else.24558:
	lw	$a0, 12($sp)
	addi	$a0, $a0, 1
	lw	$a1, 8($sp)
	lw	$a2, 4($sp)
	j	solve_each_element_fast.2949
bne_else.24557:
	lwc1	$f0, 20540($zero)
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24560
	addi	$a1, $zero, 1
	j	bne_cont.24561
bne_else.24560:
	addi	$a1, $zero, 0
bne_cont.24561:
	bne	$a1, $zero, beq_else.24562
	j	beq_cont.24563
beq_else.24562:
	lwc1	$f1, 20548($zero)
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24564
	addi	$a1, $zero, 1
	j	bne_cont.24565
bne_else.24564:
	addi	$a1, $zero, 0
bne_cont.24565:
	bne	$a1, $zero, beq_else.24566
	j	beq_cont.24567
beq_else.24566:
	flui	$f1, 15395
	fori	$f1, $f1, 55050
	add.s	$f0, $f0, $f1
	lw	$a1, 0($sp)
	lwc1	$f1, 0($a1)
	mul.s	$f1, $f1, $f0
	lwc1	$f2, 20648($zero)
	add.s	$f1, $f1, $f2
	lwc1	$f2, 4($a1)
	mul.s	$f2, $f2, $f0
	lwc1	$f3, 20652($zero)
	add.s	$f2, $f2, $f3
	lwc1	$f3, 8($a1)
	mul.s	$f3, $f3, $f0
	lwc1	$f4, 20656($zero)
	add.s	$f3, $f3, $f4
	addi	$a1, $zero, 0
	lw	$a2, 8($sp)
	sw	$a0, 40($sp)
	swc1	$f3, 48($sp)
	swc1	$f2, 56($sp)
	swc1	$f1, 64($sp)
	swc1	$f0, 72($sp)
	add	$a0, $zero, $a1
	add	$a1, $zero, $a2
	add.s	$f0, $fzero, $f1
	add.s	$f1, $fzero, $f2
	add.s	$f2, $fzero, $f3
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	check_all_inside.2920
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	bne	$a0, $zero, beq_else.24569
	j	beq_cont.24570
beq_else.24569:
	lwc1	$f0, 72($sp)
	swc1	$f0, 20548($zero)
	lwc1	$f0, 64($sp)
	swc1	$f0, 20552($zero)
	lwc1	$f0, 56($sp)
	swc1	$f0, 20556($zero)
	lwc1	$f0, 48($sp)
	swc1	$f0, 20560($zero)
	lw	$a0, 20($sp)
	sw	$a0, 20564($zero)
	lw	$a0, 40($sp)
	sw	$a0, 20544($zero)
beq_cont.24570:
beq_cont.24567:
beq_cont.24563:
	lw	$a0, 12($sp)
	addi	$a0, $a0, 1
	lw	$a1, 8($sp)
	lw	$a2, 4($sp)
	j	solve_each_element_fast.2949
solve_one_or_network_fast.2953:
	addi	$a3, $zero, 20332
	sll	$t0, $a0, 2
	add	$s1, $a1, $t0
	lw	$t0, 0($s1)
	addi	$s1, $zero, -1
	bne	$t0, $s1, bne_else.24571
	jr	$ra
bne_else.24571:
	sll	$t0, $t0, 2
	add	$s1, $a3, $t0
	lw	$a3, 0($s1)
	addi	$t0, $zero, 0
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	add	$a1, $zero, $a3
	add	$a0, $zero, $t0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_each_element_fast.2949
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_one_or_network_fast.2953
trace_or_matrix_fast.2957:
	addi	$a3, $zero, 20048
	sll	$t0, $a0, 2
	add	$s1, $a1, $t0
	lw	$t0, 0($s1)
	lw	$t1, 0($t0)
	addi	$s1, $zero, -1
	bne	$t1, $s1, bne_else.24573
	jr	$ra
bne_else.24573:
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	addi	$s1, $zero, 99
	bne	$t1, $s1, beq_else.24575
	addi	$a3, $zero, 1
	add	$a1, $zero, $t0
	add	$a0, $zero, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_one_or_network_fast.2953
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	j	beq_cont.24576
beq_else.24575:
	sll	$t2, $t1, 2
	add	$s1, $a3, $t2
	lw	$a3, 0($s1)
	lw	$t2, 40($a3)
	lwc1	$f0, 0($t2)
	lwc1	$f1, 4($t2)
	lwc1	$f2, 8($t2)
	lw	$t3, 4($a2)
	sll	$t1, $t1, 2
	add	$s1, $t3, $t1
	lw	$t1, 0($s1)
	lw	$t3, 4($a3)
	sw	$t0, 12($sp)
	addi	$s1, $zero, 1
	bne	$t3, $s1, beq_else.24577
	lw	$t2, 0($a2)
	lwc1	$f3, 0($t1)
	sub.s	$f3, $f3, $f0
	lwc1	$f4, 4($t1)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 4($t2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24579
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24580
bne_else.24579:
bne_cont.24580:
	lw	$t3, 16($a3)
	lwc1	$f5, 4($t3)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24581
	addi	$t3, $zero, 1
	j	bne_cont.24582
bne_else.24581:
	addi	$t3, $zero, 0
bne_cont.24582:
	bne	$t3, $zero, beq_else.24583
	addi	$t3, $zero, 0
	j	beq_cont.24584
beq_else.24583:
	lwc1	$f4, 8($t2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24585
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24586
bne_else.24585:
bne_cont.24586:
	lw	$t3, 16($a3)
	lwc1	$f5, 8($t3)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24587
	addi	$t3, $zero, 1
	j	bne_cont.24588
bne_else.24587:
	addi	$t3, $zero, 0
bne_cont.24588:
	bne	$t3, $zero, beq_else.24589
	addi	$t3, $zero, 0
	j	beq_cont.24590
beq_else.24589:
	lwc1	$f4, 4($t1)
	c.eq.s	$s1, $f4, $fzero
	beq	$s1, $zero, c.eq_else.24591
	addi	$t3, $zero, 1
	j	c.eq_cont.24592
c.eq_else.24591:
	addi	$t3, $zero, 0
c.eq_cont.24592:
	bne	$t3, $zero, beq_else.24593
	addi	$t3, $zero, 1
	j	beq_cont.24594
beq_else.24593:
	addi	$t3, $zero, 0
beq_cont.24594:
beq_cont.24590:
beq_cont.24584:
	bne	$t3, $zero, beq_else.24595
	lwc1	$f3, 8($t1)
	sub.s	$f3, $f3, $f1
	lwc1	$f4, 12($t1)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 0($t2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24597
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24598
bne_else.24597:
bne_cont.24598:
	lw	$t3, 16($a3)
	lwc1	$f5, 0($t3)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24599
	addi	$t3, $zero, 1
	j	bne_cont.24600
bne_else.24599:
	addi	$t3, $zero, 0
bne_cont.24600:
	bne	$t3, $zero, beq_else.24601
	addi	$t3, $zero, 0
	j	beq_cont.24602
beq_else.24601:
	lwc1	$f4, 8($t2)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	c.lt.s	$s0, $f4, $fzero
	beq	$s0, $zero, bne_else.24603
	sub.s	$f4, $fzero, $f4
	j	bne_cont.24604
bne_else.24603:
bne_cont.24604:
	lw	$t3, 16($a3)
	lwc1	$f5, 8($t3)
	c.lt.s	$s0, $f4, $f5
	beq	$s0, $zero, bne_else.24605
	addi	$t3, $zero, 1
	j	bne_cont.24606
bne_else.24605:
	addi	$t3, $zero, 0
bne_cont.24606:
	bne	$t3, $zero, beq_else.24607
	addi	$t3, $zero, 0
	j	beq_cont.24608
beq_else.24607:
	lwc1	$f4, 12($t1)
	c.eq.s	$s1, $f4, $fzero
	beq	$s1, $zero, c.eq_else.24609
	addi	$t3, $zero, 1
	j	c.eq_cont.24610
c.eq_else.24609:
	addi	$t3, $zero, 0
c.eq_cont.24610:
	bne	$t3, $zero, beq_else.24611
	addi	$t3, $zero, 1
	j	beq_cont.24612
beq_else.24611:
	addi	$t3, $zero, 0
beq_cont.24612:
beq_cont.24608:
beq_cont.24602:
	bne	$t3, $zero, beq_else.24613
	lwc1	$f3, 16($t1)
	sub.s	$f2, $f3, $f2
	lwc1	$f3, 20($t1)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 0($t2)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24615
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24616
bne_else.24615:
bne_cont.24616:
	lw	$t3, 16($a3)
	lwc1	$f3, 0($t3)
	c.lt.s	$s0, $f0, $f3
	beq	$s0, $zero, bne_else.24617
	addi	$t3, $zero, 1
	j	bne_cont.24618
bne_else.24617:
	addi	$t3, $zero, 0
bne_cont.24618:
	bne	$t3, $zero, beq_else.24619
	addi	$a3, $zero, 0
	j	beq_cont.24620
beq_else.24619:
	lwc1	$f0, 4($t2)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24621
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24622
bne_else.24621:
bne_cont.24622:
	lw	$a3, 16($a3)
	lwc1	$f1, 4($a3)
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24623
	addi	$a3, $zero, 1
	j	bne_cont.24624
bne_else.24623:
	addi	$a3, $zero, 0
bne_cont.24624:
	bne	$a3, $zero, beq_else.24625
	addi	$a3, $zero, 0
	j	beq_cont.24626
beq_else.24625:
	lwc1	$f0, 20($t1)
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.24627
	addi	$a3, $zero, 1
	j	c.eq_cont.24628
c.eq_else.24627:
	addi	$a3, $zero, 0
c.eq_cont.24628:
	bne	$a3, $zero, beq_else.24629
	addi	$a3, $zero, 1
	j	beq_cont.24630
beq_else.24629:
	addi	$a3, $zero, 0
beq_cont.24630:
beq_cont.24626:
beq_cont.24620:
	bne	$a3, $zero, beq_else.24631
	addi	$a0, $zero, 0
	j	beq_cont.24632
beq_else.24631:
	swc1	$f2, 20540($zero)
	addi	$a0, $zero, 3
beq_cont.24632:
	j	beq_cont.24614
beq_else.24613:
	swc1	$f3, 20540($zero)
	addi	$a0, $zero, 2
beq_cont.24614:
	j	beq_cont.24596
beq_else.24595:
	swc1	$f3, 20540($zero)
	addi	$a0, $zero, 1
beq_cont.24596:
	j	beq_cont.24578
beq_else.24577:
	addi	$s1, $zero, 2
	bne	$t3, $s1, beq_else.24633
	lwc1	$f0, 0($t1)
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24635
	addi	$a3, $zero, 1
	j	bne_cont.24636
bne_else.24635:
	addi	$a3, $zero, 0
bne_cont.24636:
	bne	$a3, $zero, beq_else.24637
	addi	$a0, $zero, 0
	j	beq_cont.24638
beq_else.24637:
	lwc1	$f0, 0($t1)
	lwc1	$f1, 12($t2)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
	addi	$a0, $zero, 1
beq_cont.24638:
	j	beq_cont.24634
beq_else.24633:
	lwc1	$f3, 0($t1)
	c.eq.s	$s1, $f3, $fzero
	beq	$s1, $zero, c.eq_else.24639
	addi	$t3, $zero, 1
	j	c.eq_cont.24640
c.eq_else.24639:
	addi	$t3, $zero, 0
c.eq_cont.24640:
	bne	$t3, $zero, beq_else.24641
	lwc1	$f4, 4($t1)
	mul.s	$f0, $f4, $f0
	lwc1	$f4, 8($t1)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 12($t1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 12($t2)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.lt.s	$s0, $fzero, $f1
	beq	$s0, $zero, bne_else.24643
	addi	$t2, $zero, 1
	j	bne_cont.24644
bne_else.24643:
	addi	$t2, $zero, 0
bne_cont.24644:
	bne	$t2, $zero, beq_else.24645
	addi	$a0, $zero, 0
	j	beq_cont.24646
beq_else.24645:
	lw	$a3, 24($a3)
	bne	$a3, $zero, beq_else.24647
	sw	$t1, 16($sp)
	swc1	$f0, 24($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 24($sp)
	sub.s	$f0, $f1, $f0
	lw	$a0, 16($sp)
	lwc1	$f1, 16($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
	j	beq_cont.24648
beq_else.24647:
	sw	$t1, 16($sp)
	swc1	$f0, 24($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 24($sp)
	add.s	$f0, $f1, $f0
	lw	$a0, 16($sp)
	lwc1	$f1, 16($a0)
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20540($zero)
beq_cont.24648:
	addi	$a0, $zero, 1
beq_cont.24646:
	j	beq_cont.24642
beq_else.24641:
	addi	$a0, $zero, 0
beq_cont.24642:
beq_cont.24634:
beq_cont.24578:
	bne	$a0, $zero, beq_else.24650
	j	beq_cont.24651
beq_else.24650:
	lwc1	$f0, 20540($zero)
	lwc1	$f1, 20548($zero)
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24652
	addi	$a0, $zero, 1
	j	bne_cont.24653
bne_else.24652:
	addi	$a0, $zero, 0
bne_cont.24653:
	bne	$a0, $zero, beq_else.24654
	j	beq_cont.24655
beq_else.24654:
	addi	$a0, $zero, 1
	lw	$a1, 12($sp)
	lw	$a2, 0($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solve_one_or_network_fast.2953
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
beq_cont.24655:
beq_cont.24651:
beq_cont.24576:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	trace_or_matrix_fast.2957
trace_reflections.2979:
	addi	$a2, $zero, 21016
	slti	$s0, $a0, 0
	beq	$s0, $zero, bne_else.24656
	jr	$ra
bne_else.24656:
	sll	$a3, $a0, 2
	add	$s1, $a2, $a3
	lw	$a2, 0($s1)
	lw	$a3, 4($a2)
	flui	$f2, 20078
	fori	$f2, $f2, 27432
	swc1	$f2, 20548($zero)
	addi	$t0, $zero, 0
	lw	$t1, 20536($zero)
	sw	$a0, 0($sp)
	swc1	$f1, 8($sp)
	sw	$a1, 16($sp)
	swc1	$f0, 24($sp)
	sw	$a3, 32($sp)
	sw	$a2, 36($sp)
	add	$a2, $zero, $a3
	add	$a1, $zero, $t1
	add	$a0, $zero, $t0
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	trace_or_matrix_fast.2957
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lwc1	$f0, 20548($zero)
	flui	$f1, -16948
	fori	$f1, $f1, 52429
	c.lt.s	$s0, $f1, $f0
	beq	$s0, $zero, bne_else.24660
	addi	$a0, $zero, 1
	j	bne_cont.24661
bne_else.24660:
	addi	$a0, $zero, 0
bne_cont.24661:
	bne	$a0, $zero, beq_else.24662
	addi	$a0, $zero, 0
	j	beq_cont.24663
beq_else.24662:
	flui	$f1, 19646
	fori	$f1, $f1, 48160
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24664
	addi	$a0, $zero, 1
	j	bne_cont.24665
bne_else.24664:
	addi	$a0, $zero, 0
bne_cont.24665:
beq_cont.24663:
	bne	$a0, $zero, beq_else.24666
	j	beq_cont.24667
beq_else.24666:
	lw	$a0, 20564($zero)
	sll	$a0, $a0, 2
	lw	$a1, 20544($zero)
	add	$a0, $a0, $a1
	lw	$a1, 36($sp)
	lw	$a2, 0($a1)
	bne	$a0, $a2, beq_else.24668
	addi	$a0, $zero, 0
	lw	$a2, 20536($zero)
	add	$a1, $zero, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	shadow_check_one_or_matrix.2932
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	bne	$a0, $zero, beq_else.24670
	lw	$a0, 32($sp)
	lw	$a1, 0($a0)
	lwc1	$f0, 20568($zero)
	lwc1	$f1, 0($a1)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 20572($zero)
	lwc1	$f2, 4($a1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 20576($zero)
	lwc1	$f2, 8($a1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lw	$a1, 36($sp)
	lwc1	$f1, 8($a1)
	lwc1	$f2, 24($sp)
	mul.s	$f3, $f1, $f2
	mul.s	$f0, $f3, $f0
	lw	$a0, 0($a0)
	lw	$a1, 16($sp)
	lwc1	$f3, 0($a1)
	lwc1	$f4, 0($a0)
	mul.s	$f3, $f3, $f4
	lwc1	$f4, 4($a1)
	lwc1	$f5, 4($a0)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lwc1	$f4, 8($a1)
	lwc1	$f5, 8($a0)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24672
	addi	$a0, $zero, 1
	j	bne_cont.24673
bne_else.24672:
	addi	$a0, $zero, 0
bne_cont.24673:
	bne	$a0, $zero, beq_else.24674
	j	beq_cont.24675
beq_else.24674:
	lwc1	$f3, 20604($zero)
	lwc1	$f4, 20580($zero)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swc1	$f3, 20604($zero)
	lwc1	$f3, 20608($zero)
	lwc1	$f4, 20584($zero)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swc1	$f3, 20608($zero)
	lwc1	$f3, 20612($zero)
	lwc1	$f4, 20588($zero)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f3, $f0
	swc1	$f0, 20612($zero)
beq_cont.24675:
	c.lt.s	$s0, $fzero, $f1
	beq	$s0, $zero, bne_else.24676
	addi	$a0, $zero, 1
	j	bne_cont.24677
bne_else.24676:
	addi	$a0, $zero, 0
bne_cont.24677:
	bne	$a0, $zero, beq_else.24678
	j	beq_cont.24679
beq_else.24678:
	mul.s	$f0, $f1, $f1
	mul.s	$f0, $f0, $f0
	lwc1	$f1, 8($sp)
	mul.s	$f0, $f0, $f1
	lwc1	$f3, 20604($zero)
	add.s	$f3, $f3, $f0
	swc1	$f3, 20604($zero)
	lwc1	$f3, 20608($zero)
	add.s	$f3, $f3, $f0
	swc1	$f3, 20608($zero)
	lwc1	$f3, 20612($zero)
	add.s	$f0, $f3, $f0
	swc1	$f0, 20612($zero)
beq_cont.24679:
	j	beq_cont.24671
beq_else.24670:
beq_cont.24671:
	j	beq_cont.24669
beq_else.24668:
beq_cont.24669:
beq_cont.24667:
	lw	$a0, 0($sp)
	addi	$a0, $a0, -1
	lwc1	$f0, 24($sp)
	lwc1	$f1, 8($sp)
	lw	$a1, 16($sp)
	j	trace_reflections.2979
trace_ray.2984:
	addi	$a3, $zero, 20048
	addi	$t0, $zero, 20568
	addi	$t1, $zero, 20552
	addi	$t2, $zero, 4
	slt	$s0, $t2, $a0
	beq	$s0, $zero, bne_else.24680
	jr	$ra
bne_else.24680:
	lw	$t2, 8($a2)
	flui	$f2, 20078
	fori	$f2, $f2, 27432
	swc1	$f2, 20548($zero)
	addi	$t3, $zero, 0
	lw	$t4, 20536($zero)
	swc1	$f1, 0($sp)
	sw	$t1, 8($sp)
	sw	$a2, 12($sp)
	sw	$t0, 16($sp)
	sw	$a3, 20($sp)
	swc1	$f0, 24($sp)
	sw	$a1, 32($sp)
	sw	$t2, 36($sp)
	sw	$a0, 40($sp)
	add	$a2, $zero, $a1
	add	$a0, $zero, $t3
	add	$a1, $zero, $t4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	trace_or_matrix.2943
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lwc1	$f0, 20548($zero)
	flui	$f1, -16948
	fori	$f1, $f1, 52429
	c.lt.s	$s0, $f1, $f0
	beq	$s0, $zero, bne_else.24682
	addi	$a0, $zero, 1
	j	bne_cont.24683
bne_else.24682:
	addi	$a0, $zero, 0
bne_cont.24683:
	bne	$a0, $zero, beq_else.24684
	addi	$a0, $zero, 0
	j	beq_cont.24685
beq_else.24684:
	flui	$f1, 19646
	fori	$f1, $f1, 48160
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24686
	addi	$a0, $zero, 1
	j	bne_cont.24687
bne_else.24686:
	addi	$a0, $zero, 0
bne_cont.24687:
beq_cont.24685:
	bne	$a0, $zero, bne_else.24688
	addi	$a0, $zero, -1
	lw	$a1, 40($sp)
	sll	$a2, $a1, 2
	lw	$a3, 36($sp)
	add	$s1, $a3, $a2
	sw	$a0, 0($s1)
	bne	$a1, $zero, bne_else.24689
	jr	$ra
bne_else.24689:
	lw	$a0, 32($sp)
	lwc1	$f0, 0($a0)
	lwc1	$f1, 20312($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 4($a0)
	lwc1	$f2, 20316($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 8($a0)
	lwc1	$f2, 20320($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24691
	addi	$a0, $zero, 1
	j	bne_cont.24692
bne_else.24691:
	addi	$a0, $zero, 0
bne_cont.24692:
	bne	$a0, $zero, bne_else.24693
	jr	$ra
bne_else.24693:
	mul.s	$f1, $f0, $f0
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 24($sp)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 20324($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 20604($zero)
	add.s	$f1, $f1, $f0
	swc1	$f1, 20604($zero)
	lwc1	$f1, 20608($zero)
	add.s	$f1, $f1, $f0
	swc1	$f1, 20608($zero)
	lwc1	$f1, 20612($zero)
	add.s	$f0, $f1, $f0
	swc1	$f0, 20612($zero)
	jr	$ra
bne_else.24688:
	lw	$a0, 20564($zero)
	sll	$a1, $a0, 2
	lw	$a2, 20($sp)
	add	$s1, $a2, $a1
	lw	$a1, 0($s1)
	lw	$a2, 8($a1)
	lw	$a3, 28($a1)
	lwc1	$f0, 0($a3)
	lwc1	$f1, 24($sp)
	mul.s	$f0, $f0, $f1
	lw	$a3, 4($a1)
	sw	$a2, 44($sp)
	swc1	$f0, 48($sp)
	sw	$a0, 56($sp)
	sw	$a1, 60($sp)
	addi	$s1, $zero, 1
	bne	$a3, $s1, beq_else.24696
	lw	$a3, 20544($zero)
	swc1	$fzero, 20568($zero)
	swc1	$fzero, 20572($zero)
	swc1	$fzero, 20576($zero)
	addi	$t0, $a3, -1
	addi	$a3, $a3, -1
	sll	$a3, $a3, 2
	lw	$t1, 32($sp)
	add	$s1, $t1, $a3
	lwc1	$f2, 0($s1)
	c.eq.s	$s1, $f2, $fzero
	beq	$s1, $zero, c.eq_else.24698
	addi	$a3, $zero, 1
	j	c.eq_cont.24699
c.eq_else.24698:
	addi	$a3, $zero, 0
c.eq_cont.24699:
	bne	$a3, $zero, beq_else.24700
	c.lt.s	$s0, $fzero, $f2
	beq	$s0, $zero, bne_else.24702
	addi	$a3, $zero, 1
	j	bne_cont.24703
bne_else.24702:
	addi	$a3, $zero, 0
bne_cont.24703:
	bne	$a3, $zero, beq_else.24704
	flui	$f2, -16512
	j	beq_cont.24705
beq_else.24704:
	flui	$f2, 16256
beq_cont.24705:
	j	beq_cont.24701
beq_else.24700:
	flui	$f2, 0
beq_cont.24701:
	sub.s	$f2, $fzero, $f2
	sll	$a3, $t0, 2
	lw	$t0, 16($sp)
	add	$s1, $t0, $a3
	swc1	$f2, 0($s1)
	j	beq_cont.24697
beq_else.24696:
	addi	$s1, $zero, 2
	bne	$a3, $s1, beq_else.24706
	lw	$a3, 16($a1)
	lwc1	$f2, 0($a3)
	sub.s	$f2, $fzero, $f2
	swc1	$f2, 20568($zero)
	lw	$a3, 16($a1)
	lwc1	$f2, 4($a3)
	sub.s	$f2, $fzero, $f2
	swc1	$f2, 20572($zero)
	lw	$a3, 16($a1)
	lwc1	$f2, 8($a3)
	sub.s	$f2, $fzero, $f2
	swc1	$f2, 20576($zero)
	j	beq_cont.24707
beq_else.24706:
	lwc1	$f2, 20552($zero)
	lw	$a3, 20($a1)
	lwc1	$f3, 0($a3)
	sub.s	$f2, $f2, $f3
	lwc1	$f3, 20556($zero)
	lw	$a3, 20($a1)
	lwc1	$f4, 4($a3)
	sub.s	$f3, $f3, $f4
	lwc1	$f4, 20560($zero)
	lw	$a3, 20($a1)
	lwc1	$f5, 8($a3)
	sub.s	$f4, $f4, $f5
	lw	$a3, 16($a1)
	lwc1	$f5, 0($a3)
	mul.s	$f5, $f2, $f5
	lw	$a3, 16($a1)
	lwc1	$f6, 4($a3)
	mul.s	$f6, $f3, $f6
	lw	$a3, 16($a1)
	lwc1	$f7, 8($a3)
	mul.s	$f7, $f4, $f7
	lw	$a3, 12($a1)
	bne	$a3, $zero, beq_else.24708
	swc1	$f5, 20568($zero)
	swc1	$f6, 20572($zero)
	swc1	$f7, 20576($zero)
	j	beq_cont.24709
beq_else.24708:
	lw	$a3, 36($a1)
	lwc1	$f8, 8($a3)
	mul.s	$f8, $f3, $f8
	lw	$a3, 36($a1)
	lwc1	$f9, 4($a3)
	mul.s	$f9, $f4, $f9
	add.s	$f8, $f8, $f9
	flui	$f9, 16128
	mul.s	$f8, $f8, $f9
	add.s	$f5, $f5, $f8
	swc1	$f5, 20568($zero)
	lw	$a3, 36($a1)
	lwc1	$f5, 8($a3)
	mul.s	$f5, $f2, $f5
	lw	$a3, 36($a1)
	lwc1	$f8, 0($a3)
	mul.s	$f4, $f4, $f8
	add.s	$f4, $f5, $f4
	flui	$f5, 16128
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
	swc1	$f4, 20572($zero)
	lw	$a3, 36($a1)
	lwc1	$f4, 4($a3)
	mul.s	$f2, $f2, $f4
	lw	$a3, 36($a1)
	lwc1	$f4, 0($a3)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	flui	$f3, 16128
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f7, $f2
	swc1	$f2, 20576($zero)
beq_cont.24709:
	lw	$a3, 24($a1)
	lwc1	$f2, 20568($zero)
	mul.s	$f2, $f2, $f2
	lwc1	$f3, 20572($zero)
	mul.s	$f3, $f3, $f3
	add.s	$f2, $f2, $f3
	lwc1	$f3, 20576($zero)
	mul.s	$f3, $f3, $f3
	add.s	$f2, $f2, $f3
	sw	$a3, 64($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.24710
	addi	$a0, $zero, 1
	j	c.eq_cont.24711
c.eq_else.24710:
	addi	$a0, $zero, 0
c.eq_cont.24711:
	bne	$a0, $zero, beq_else.24712
	lw	$a0, 64($sp)
	bne	$a0, $zero, beq_else.24714
	flui	$f1, 16256
	div.s	$f0, $f1, $f0
	j	beq_cont.24715
beq_else.24714:
	flui	$f1, -16512
	div.s	$f0, $f1, $f0
beq_cont.24715:
	j	beq_cont.24713
beq_else.24712:
	flui	$f0, 16256
beq_cont.24713:
	lwc1	$f1, 20568($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 20568($zero)
	lwc1	$f1, 20572($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 20572($zero)
	lwc1	$f1, 20576($zero)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 20576($zero)
beq_cont.24707:
beq_cont.24697:
	lwc1	$f0, 20552($zero)
	swc1	$f0, 20636($zero)
	lwc1	$f0, 20556($zero)
	swc1	$f0, 20640($zero)
	lwc1	$f0, 20560($zero)
	swc1	$f0, 20644($zero)
	lw	$a0, 60($sp)
	lw	$a1, 0($a0)
	lw	$a2, 32($a0)
	lwc1	$f0, 0($a2)
	swc1	$f0, 20580($zero)
	lw	$a2, 32($a0)
	lwc1	$f0, 4($a2)
	swc1	$f0, 20584($zero)
	lw	$a2, 32($a0)
	lwc1	$f0, 8($a2)
	swc1	$f0, 20588($zero)
	addi	$s1, $zero, 1
	bne	$a1, $s1, beq_else.24716
	lwc1	$f0, 20552($zero)
	lw	$a1, 20($a0)
	lwc1	$f1, 0($a1)
	sub.s	$f0, $f0, $f1
	flui	$f1, 15692
	fori	$f1, $f1, 52429
	mul.s	$f1, $f0, $f1
	swc1	$f0, 72($sp)
	add.s	$f0, $fzero, $f1
	floor	$f0, $f0
	flui	$f1, 16800
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 72($sp)
	sub.s	$f0, $f1, $f0
	flui	$f1, 16672
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24719
	addi	$a0, $zero, 1
	j	bne_cont.24720
bne_else.24719:
	addi	$a0, $zero, 0
bne_cont.24720:
	lwc1	$f0, 20560($zero)
	lw	$a1, 60($sp)
	lw	$a2, 20($a1)
	lwc1	$f1, 8($a2)
	sub.s	$f0, $f0, $f1
	flui	$f1, 15692
	fori	$f1, $f1, 52429
	mul.s	$f1, $f0, $f1
	sw	$a0, 80($sp)
	swc1	$f0, 88($sp)
	add.s	$f0, $fzero, $f1
	floor	$f0, $f0
	flui	$f1, 16800
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 88($sp)
	sub.s	$f0, $f1, $f0
	flui	$f1, 16672
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24722
	addi	$a0, $zero, 1
	j	bne_cont.24723
bne_else.24722:
	addi	$a0, $zero, 0
bne_cont.24723:
	lw	$a1, 80($sp)
	bne	$a1, $zero, beq_else.24724
	bne	$a0, $zero, beq_else.24726
	flui	$f0, 17279
	j	beq_cont.24727
beq_else.24726:
	flui	$f0, 0
beq_cont.24727:
	j	beq_cont.24725
beq_else.24724:
	bne	$a0, $zero, beq_else.24728
	flui	$f0, 0
	j	beq_cont.24729
beq_else.24728:
	flui	$f0, 17279
beq_cont.24729:
beq_cont.24725:
	swc1	$f0, 20584($zero)
	j	beq_cont.24717
beq_else.24716:
	addi	$s1, $zero, 2
	bne	$a1, $s1, beq_else.24730
	lwc1	$f0, 20556($zero)
	flui	$f1, 16000
	mul.s	$f0, $f0, $f1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	sin.2640
	addi	$sp, $sp, -104
	lw	$ra, 100($sp)
	mul.s	$f0, $f0, $f0
	flui	$f1, 17279
	mul.s	$f1, $f1, $f0
	swc1	$f1, 20580($zero)
	flui	$f1, 17279
	flui	$f2, 16256
	sub.s	$f0, $f2, $f0
	mul.s	$f0, $f1, $f0
	swc1	$f0, 20584($zero)
	j	beq_cont.24731
beq_else.24730:
	addi	$s1, $zero, 3
	bne	$a1, $s1, beq_else.24732
	lwc1	$f0, 20552($zero)
	lw	$a1, 20($a0)
	lwc1	$f1, 0($a1)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 20560($zero)
	lw	$a1, 20($a0)
	lwc1	$f2, 8($a1)
	sub.s	$f1, $f1, $f2
	mul.s	$f0, $f0, $f0
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	flui	$f1, 16672
	div.s	$f0, $f0, $f1
	swc1	$f0, 96($sp)
	floor	$f0, $f0
	lwc1	$f1, 96($sp)
	sub.s	$f0, $f1, $f0
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	mul.s	$f0, $f0, $f1
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	cos.2638
	addi	$sp, $sp, -112
	lw	$ra, 108($sp)
	mul.s	$f0, $f0, $f0
	flui	$f1, 17279
	mul.s	$f1, $f0, $f1
	swc1	$f1, 20584($zero)
	flui	$f1, 16256
	sub.s	$f0, $f1, $f0
	flui	$f1, 17279
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20588($zero)
	j	beq_cont.24733
beq_else.24732:
	addi	$s1, $zero, 4
	bne	$a1, $s1, beq_else.24734
	lwc1	$f0, 20552($zero)
	lw	$a1, 20($a0)
	lwc1	$f1, 0($a1)
	sub.s	$f0, $f0, $f1
	lw	$a1, 16($a0)
	lwc1	$f1, 0($a1)
	swc1	$f0, 104($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 104($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 20560($zero)
	lw	$a0, 60($sp)
	lw	$a1, 20($a0)
	lwc1	$f2, 8($a1)
	sub.s	$f1, $f1, $f2
	lw	$a1, 16($a0)
	lwc1	$f2, 8($a1)
	swc1	$f0, 112($sp)
	swc1	$f1, 120($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 120($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 112($sp)
	mul.s	$f2, $f1, $f1
	mul.s	$f3, $f0, $f0
	add.s	$f2, $f2, $f3
	c.lt.s	$s0, $f1, $fzero
	beq	$s0, $zero, bne_else.24736
	sub.s	$f3, $fzero, $f1
	j	bne_cont.24737
bne_else.24736:
	add.s	$f3, $f1, $fzero
bne_cont.24737:
	flui	$f4, 14545
	fori	$f4, $f4, 46871
	c.lt.s	$s0, $f3, $f4
	beq	$s0, $zero, bne_else.24738
	addi	$a0, $zero, 1
	j	bne_cont.24739
bne_else.24738:
	addi	$a0, $zero, 0
bne_cont.24739:
	bne	$a0, $zero, beq_else.24740
	div.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24742
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24743
bne_else.24742:
bne_cont.24743:
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24744
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24746
	mul.s	$f1, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f1
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f1, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f1, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f1, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f1, $f1, $f4
	sub.s	$f1, $f3, $f1
	mul.s	$f0, $f0, $f1
	j	bne_cont.24747
bne_else.24746:
	flui	$f1, 16412
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24748
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f3, 16256
	sub.s	$f3, $f0, $f3
	flui	$f4, 16256
	add.s	$f0, $f0, $f4
	div.s	$f0, $f3, $f0
	mul.s	$f3, $f0, $f0
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f0, $f0, $f3
	add.s	$f0, $f1, $f0
	j	bne_cont.24749
bne_else.24748:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f3, 16256
	div.s	$f0, $f3, $f0
	mul.s	$f3, $f0, $f0
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f0, $f0, $f3
	sub.s	$f0, $f1, $f0
bne_cont.24749:
bne_cont.24747:
	j	bne_cont.24745
bne_else.24744:
	sub.s	$f0, $fzero, $f0
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24750
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f3, 16256
	sub.s	$f3, $f0, $f3
	flui	$f4, 16256
	add.s	$f0, $f0, $f4
	div.s	$f0, $f3, $f0
	mul.s	$f3, $f0, $f0
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f0, $f0, $f3
	add.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24751
bne_else.24750:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f3, 16256
	div.s	$f0, $f3, $f0
	mul.s	$f3, $f0, $f0
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f0, $f0, $f3
	sub.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
bne_cont.24751:
bne_cont.24745:
	flui	$f1, 16880
	mul.s	$f0, $f0, $f1
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	div.s	$f0, $f0, $f1
	j	beq_cont.24741
beq_else.24740:
	flui	$f0, 16752
beq_cont.24741:
	swc1	$f2, 128($sp)
	swc1	$f0, 136($sp)
	floor	$f0, $f0
	lwc1	$f1, 136($sp)
	sub.s	$f0, $f1, $f0
	lwc1	$f1, 20556($zero)
	lw	$a0, 60($sp)
	lw	$a1, 20($a0)
	lwc1	$f2, 4($a1)
	sub.s	$f1, $f1, $f2
	lw	$a1, 16($a0)
	lwc1	$f2, 4($a1)
	swc1	$f0, 144($sp)
	swc1	$f1, 152($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 152($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 128($sp)
	c.lt.s	$s0, $f1, $fzero
	beq	$s0, $zero, bne_else.24752
	sub.s	$f2, $fzero, $f1
	j	bne_cont.24753
bne_else.24752:
	add.s	$f2, $f1, $fzero
bne_cont.24753:
	flui	$f3, 14545
	fori	$f3, $f3, 46871
	c.lt.s	$s0, $f2, $f3
	beq	$s0, $zero, bne_else.24754
	addi	$a0, $zero, 1
	j	bne_cont.24755
bne_else.24754:
	addi	$a0, $zero, 0
bne_cont.24755:
	bne	$a0, $zero, beq_else.24756
	div.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24758
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24759
bne_else.24758:
bne_cont.24759:
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24760
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24762
	mul.s	$f1, $f0, $f0
	flui	$f2, 16256
	flui	$f3, 16042
	fori	$f3, $f3, 43690
	flui	$f4, 15948
	fori	$f4, $f4, 52429
	flui	$f5, 15890
	fori	$f5, $f5, 18725
	flui	$f6, 15843
	fori	$f6, $f6, 36408
	flui	$f7, 15799
	fori	$f7, $f7, 54894
	flui	$f8, 15733
	fori	$f8, $f8, 59333
	mul.s	$f8, $f8, $f1
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f1, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f1, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f4, $f1, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	mul.s	$f0, $f0, $f1
	j	bne_cont.24763
bne_else.24762:
	flui	$f1, 16412
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24764
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	sub.s	$f2, $f0, $f2
	flui	$f3, 16256
	add.s	$f0, $f0, $f3
	div.s	$f0, $f2, $f0
	mul.s	$f2, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	j	bne_cont.24765
bne_else.24764:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	div.s	$f0, $f2, $f0
	mul.s	$f2, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
bne_cont.24765:
bne_cont.24763:
	j	bne_cont.24761
bne_else.24760:
	sub.s	$f0, $fzero, $f0
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24766
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	sub.s	$f2, $f0, $f2
	flui	$f3, 16256
	add.s	$f0, $f0, $f3
	div.s	$f0, $f2, $f0
	mul.s	$f2, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24767
bne_else.24766:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	div.s	$f0, $f2, $f0
	mul.s	$f2, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
bne_cont.24767:
bne_cont.24761:
	flui	$f1, 16880
	mul.s	$f0, $f0, $f1
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	div.s	$f0, $f0, $f1
	j	beq_cont.24757
beq_else.24756:
	flui	$f0, 16752
beq_cont.24757:
	swc1	$f0, 160($sp)
	floor	$f0, $f0
	lwc1	$f1, 160($sp)
	sub.s	$f0, $f1, $f0
	flui	$f1, 15897
	fori	$f1, $f1, 39322
	flui	$f2, 16128
	lwc1	$f3, 144($sp)
	sub.s	$f2, $f2, $f3
	mul.s	$f2, $f2, $f2
	sub.s	$f1, $f1, $f2
	flui	$f2, 16128
	sub.s	$f0, $f2, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f1, $f0
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24768
	addi	$a0, $zero, 1
	j	bne_cont.24769
bne_else.24768:
	addi	$a0, $zero, 0
bne_cont.24769:
	bne	$a0, $zero, beq_else.24770
	j	beq_cont.24771
beq_else.24770:
	flui	$f0, 0
beq_cont.24771:
	flui	$f1, 17279
	mul.s	$f0, $f1, $f0
	flui	$f1, 16025
	fori	$f1, $f1, 39322
	div.s	$f0, $f0, $f1
	swc1	$f0, 20588($zero)
	j	beq_cont.24735
beq_else.24734:
beq_cont.24735:
beq_cont.24733:
beq_cont.24731:
beq_cont.24717:
	lw	$a0, 56($sp)
	sll	$a0, $a0, 2
	lw	$a1, 20544($zero)
	add	$a0, $a0, $a1
	lw	$a1, 40($sp)
	sll	$a2, $a1, 2
	lw	$a3, 36($sp)
	add	$s1, $a3, $a2
	sw	$a0, 0($s1)
	lw	$a0, 12($sp)
	lw	$a2, 4($a0)
	sll	$t0, $a1, 2
	add	$s1, $a2, $t0
	lw	$a2, 0($s1)
	lwc1	$f0, 20552($zero)
	swc1	$f0, 0($a2)
	lwc1	$f0, 20556($zero)
	swc1	$f0, 4($a2)
	lwc1	$f0, 20560($zero)
	swc1	$f0, 8($a2)
	lw	$a2, 12($a0)
	lw	$t0, 60($sp)
	lw	$t1, 28($t0)
	lwc1	$f0, 0($t1)
	flui	$f1, 16128
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24772
	addi	$t1, $zero, 1
	j	bne_cont.24773
bne_else.24772:
	addi	$t1, $zero, 0
bne_cont.24773:
	bne	$t1, $zero, beq_else.24774
	addi	$t1, $zero, 1
	sll	$t2, $a1, 2
	add	$s1, $a2, $t2
	sw	$t1, 0($s1)
	lw	$a2, 16($a0)
	sll	$t1, $a1, 2
	add	$s1, $a2, $t1
	lw	$t1, 0($s1)
	lwc1	$f0, 20580($zero)
	swc1	$f0, 0($t1)
	lwc1	$f0, 20584($zero)
	swc1	$f0, 4($t1)
	lwc1	$f0, 20588($zero)
	swc1	$f0, 8($t1)
	sll	$t1, $a1, 2
	add	$s1, $a2, $t1
	lw	$a2, 0($s1)
	flui	$f0, 15232
	lwc1	$f1, 48($sp)
	mul.s	$f0, $f0, $f1
	lwc1	$f2, 0($a2)
	mul.s	$f2, $f2, $f0
	swc1	$f2, 0($a2)
	lwc1	$f2, 4($a2)
	mul.s	$f2, $f2, $f0
	swc1	$f2, 4($a2)
	lwc1	$f2, 8($a2)
	mul.s	$f0, $f2, $f0
	swc1	$f0, 8($a2)
	lw	$a2, 28($a0)
	sll	$t1, $a1, 2
	add	$s1, $a2, $t1
	lw	$a2, 0($s1)
	lwc1	$f0, 20568($zero)
	swc1	$f0, 0($a2)
	lwc1	$f0, 20572($zero)
	swc1	$f0, 4($a2)
	lwc1	$f0, 20576($zero)
	swc1	$f0, 8($a2)
	j	beq_cont.24775
beq_else.24774:
	addi	$t1, $zero, 0
	sll	$t2, $a1, 2
	add	$s1, $a2, $t2
	sw	$t1, 0($s1)
beq_cont.24775:
	flui	$f0, -16384
	lw	$a2, 32($sp)
	lwc1	$f1, 0($a2)
	lwc1	$f2, 20568($zero)
	mul.s	$f1, $f1, $f2
	lwc1	$f2, 4($a2)
	lwc1	$f3, 20572($zero)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lwc1	$f2, 8($a2)
	lwc1	$f3, 20576($zero)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 0($a2)
	lwc1	$f2, 20568($zero)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swc1	$f1, 0($a2)
	lwc1	$f1, 4($a2)
	lwc1	$f2, 20572($zero)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swc1	$f1, 4($a2)
	lwc1	$f1, 8($a2)
	lwc1	$f2, 20576($zero)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swc1	$f0, 8($a2)
	lw	$t1, 28($t0)
	lwc1	$f0, 4($t1)
	lwc1	$f1, 24($sp)
	mul.s	$f0, $f1, $f0
	addi	$t1, $zero, 0
	lw	$t2, 20536($zero)
	swc1	$f0, 168($sp)
	add	$a1, $zero, $t2
	add	$a0, $zero, $t1
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	shadow_check_one_or_matrix.2932
	addi	$sp, $sp, -184
	lw	$ra, 180($sp)
	bne	$a0, $zero, beq_else.24776
	lwc1	$f0, 20568($zero)
	lwc1	$f1, 20312($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 20572($zero)
	lwc1	$f2, 20316($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 20576($zero)
	lwc1	$f2, 20320($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	lwc1	$f1, 48($sp)
	mul.s	$f0, $f0, $f1
	lw	$a0, 32($sp)
	lwc1	$f2, 0($a0)
	lwc1	$f3, 20312($zero)
	mul.s	$f2, $f2, $f3
	lwc1	$f3, 4($a0)
	lwc1	$f4, 20316($zero)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lwc1	$f3, 8($a0)
	lwc1	$f4, 20320($zero)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	sub.s	$f2, $fzero, $f2
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24778
	addi	$a1, $zero, 1
	j	bne_cont.24779
bne_else.24778:
	addi	$a1, $zero, 0
bne_cont.24779:
	bne	$a1, $zero, beq_else.24780
	j	beq_cont.24781
beq_else.24780:
	lwc1	$f3, 20604($zero)
	lwc1	$f4, 20580($zero)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swc1	$f3, 20604($zero)
	lwc1	$f3, 20608($zero)
	lwc1	$f4, 20584($zero)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swc1	$f3, 20608($zero)
	lwc1	$f3, 20612($zero)
	lwc1	$f4, 20588($zero)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f3, $f0
	swc1	$f0, 20612($zero)
beq_cont.24781:
	c.lt.s	$s0, $fzero, $f2
	beq	$s0, $zero, bne_else.24782
	addi	$a1, $zero, 1
	j	bne_cont.24783
bne_else.24782:
	addi	$a1, $zero, 0
bne_cont.24783:
	bne	$a1, $zero, beq_else.24784
	j	beq_cont.24785
beq_else.24784:
	mul.s	$f0, $f2, $f2
	mul.s	$f0, $f0, $f0
	lwc1	$f2, 168($sp)
	mul.s	$f0, $f0, $f2
	lwc1	$f3, 20604($zero)
	add.s	$f3, $f3, $f0
	swc1	$f3, 20604($zero)
	lwc1	$f3, 20608($zero)
	add.s	$f3, $f3, $f0
	swc1	$f3, 20608($zero)
	lwc1	$f3, 20612($zero)
	add.s	$f0, $f3, $f0
	swc1	$f0, 20612($zero)
beq_cont.24785:
	j	beq_cont.24777
beq_else.24776:
beq_cont.24777:
	lwc1	$f0, 20552($zero)
	swc1	$f0, 20648($zero)
	lwc1	$f0, 20556($zero)
	swc1	$f0, 20652($zero)
	lwc1	$f0, 20560($zero)
	swc1	$f0, 20656($zero)
	lw	$a0, 20000($zero)
	addi	$a1, $a0, -1
	lw	$a0, 8($sp)
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -184
	lw	$ra, 180($sp)
	lw	$a0, 21736($zero)
	addi	$a0, $a0, -1
	lwc1	$f0, 48($sp)
	lwc1	$f1, 168($sp)
	lw	$a1, 32($sp)
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	trace_reflections.2979
	addi	$sp, $sp, -184
	lw	$ra, 180($sp)
	flui	$f0, 15820
	fori	$f0, $f0, 52429
	lwc1	$f1, 24($sp)
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24786
	addi	$a0, $zero, 1
	j	bne_cont.24787
bne_else.24786:
	addi	$a0, $zero, 0
bne_cont.24787:
	bne	$a0, $zero, bne_else.24788
	jr	$ra
bne_else.24788:
	lw	$a0, 40($sp)
	slti	$s0, $a0, 4
	beq	$s0, $zero, bne_else.24790
	addi	$a1, $a0, 1
	addi	$a2, $zero, -1
	sll	$a1, $a1, 2
	lw	$a3, 36($sp)
	add	$s1, $a3, $a1
	sw	$a2, 0($s1)
	j	bne_cont.24791
bne_else.24790:
bne_cont.24791:
	lw	$a1, 44($sp)
	addi	$s1, $zero, 2
	bne	$a1, $s1, bne_else.24792
	flui	$f0, 16256
	lw	$a1, 60($sp)
	lw	$a1, 28($a1)
	lwc1	$f2, 0($a1)
	sub.s	$f0, $f0, $f2
	mul.s	$f0, $f1, $f0
	addi	$a0, $a0, 1
	lwc1	$f1, 20548($zero)
	lwc1	$f2, 0($sp)
	add.s	$f1, $f2, $f1
	lw	$a1, 32($sp)
	lw	$a2, 12($sp)
	j	trace_ray.2984
bne_else.24792:
	jr	$ra
iter_trace_diffuse_rays.2993:
	addi	$t0, $zero, 20048
	addi	$t1, $zero, 20568
	slti	$s0, $a3, 0
	beq	$s0, $zero, bne_else.24794
	jr	$ra
bne_else.24794:
	sll	$t2, $a3, 2
	add	$s1, $a0, $t2
	lw	$t2, 0($s1)
	lw	$t2, 0($t2)
	lwc1	$f0, 0($t2)
	lwc1	$f1, 0($a1)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 4($t2)
	lwc1	$f2, 4($a1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 8($t2)
	lwc1	$f2, 8($a1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24796
	addi	$t2, $zero, 1
	j	bne_cont.24797
bne_else.24796:
	addi	$t2, $zero, 0
bne_cont.24797:
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	sw	$a3, 12($sp)
	bne	$t2, $zero, beq_else.24798
	sll	$t2, $a3, 2
	add	$s1, $a0, $t2
	lw	$t2, 0($s1)
	flui	$f1, 17174
	div.s	$f0, $f0, $f1
	flui	$f1, 20078
	fori	$f1, $f1, 27432
	swc1	$f1, 20548($zero)
	addi	$t3, $zero, 0
	lw	$t4, 20536($zero)
	swc1	$f0, 16($sp)
	sw	$t1, 24($sp)
	sw	$t2, 28($sp)
	sw	$t0, 32($sp)
	add	$a2, $zero, $t2
	add	$a1, $zero, $t4
	add	$a0, $zero, $t3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	trace_or_matrix_fast.2957
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lwc1	$f0, 20548($zero)
	flui	$f1, -16948
	fori	$f1, $f1, 52429
	c.lt.s	$s0, $f1, $f0
	beq	$s0, $zero, bne_else.24800
	addi	$a0, $zero, 1
	j	bne_cont.24801
bne_else.24800:
	addi	$a0, $zero, 0
bne_cont.24801:
	bne	$a0, $zero, beq_else.24802
	addi	$a0, $zero, 0
	j	beq_cont.24803
beq_else.24802:
	flui	$f1, 19646
	fori	$f1, $f1, 48160
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24804
	addi	$a0, $zero, 1
	j	bne_cont.24805
bne_else.24804:
	addi	$a0, $zero, 0
bne_cont.24805:
beq_cont.24803:
	bne	$a0, $zero, beq_else.24806
	j	beq_cont.24807
beq_else.24806:
	lw	$a0, 20564($zero)
	sll	$a0, $a0, 2
	lw	$a1, 32($sp)
	add	$s1, $a1, $a0
	lw	$a0, 0($s1)
	lw	$a1, 28($sp)
	lw	$a1, 0($a1)
	lw	$a2, 4($a0)
	sw	$a0, 36($sp)
	addi	$s1, $zero, 1
	bne	$a2, $s1, beq_else.24808
	lw	$a2, 20544($zero)
	swc1	$fzero, 20568($zero)
	swc1	$fzero, 20572($zero)
	swc1	$fzero, 20576($zero)
	addi	$a3, $a2, -1
	addi	$a2, $a2, -1
	sll	$a2, $a2, 2
	add	$s1, $a1, $a2
	lwc1	$f0, 0($s1)
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.24810
	addi	$a1, $zero, 1
	j	c.eq_cont.24811
c.eq_else.24810:
	addi	$a1, $zero, 0
c.eq_cont.24811:
	bne	$a1, $zero, beq_else.24812
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24814
	addi	$a1, $zero, 1
	j	bne_cont.24815
bne_else.24814:
	addi	$a1, $zero, 0
bne_cont.24815:
	bne	$a1, $zero, beq_else.24816
	flui	$f0, -16512
	j	beq_cont.24817
beq_else.24816:
	flui	$f0, 16256
beq_cont.24817:
	j	beq_cont.24813
beq_else.24812:
	flui	$f0, 0
beq_cont.24813:
	sub.s	$f0, $fzero, $f0
	sll	$a1, $a3, 2
	lw	$a2, 24($sp)
	add	$s1, $a2, $a1
	swc1	$f0, 0($s1)
	j	beq_cont.24809
beq_else.24808:
	addi	$s1, $zero, 2
	bne	$a2, $s1, beq_else.24818
	lw	$a1, 16($a0)
	lwc1	$f0, 0($a1)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 20568($zero)
	lw	$a1, 16($a0)
	lwc1	$f0, 4($a1)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 20572($zero)
	lw	$a1, 16($a0)
	lwc1	$f0, 8($a1)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 20576($zero)
	j	beq_cont.24819
beq_else.24818:
	lwc1	$f0, 20552($zero)
	lw	$a1, 20($a0)
	lwc1	$f1, 0($a1)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 20556($zero)
	lw	$a1, 20($a0)
	lwc1	$f2, 4($a1)
	sub.s	$f1, $f1, $f2
	lwc1	$f2, 20560($zero)
	lw	$a1, 20($a0)
	lwc1	$f3, 8($a1)
	sub.s	$f2, $f2, $f3
	lw	$a1, 16($a0)
	lwc1	$f3, 0($a1)
	mul.s	$f3, $f0, $f3
	lw	$a1, 16($a0)
	lwc1	$f4, 4($a1)
	mul.s	$f4, $f1, $f4
	lw	$a1, 16($a0)
	lwc1	$f5, 8($a1)
	mul.s	$f5, $f2, $f5
	lw	$a1, 12($a0)
	bne	$a1, $zero, beq_else.24820
	swc1	$f3, 20568($zero)
	swc1	$f4, 20572($zero)
	swc1	$f5, 20576($zero)
	j	beq_cont.24821
beq_else.24820:
	lw	$a1, 36($a0)
	lwc1	$f6, 8($a1)
	mul.s	$f6, $f1, $f6
	lw	$a1, 36($a0)
	lwc1	$f7, 4($a1)
	mul.s	$f7, $f2, $f7
	add.s	$f6, $f6, $f7
	flui	$f7, 16128
	mul.s	$f6, $f6, $f7
	add.s	$f3, $f3, $f6
	swc1	$f3, 20568($zero)
	lw	$a1, 36($a0)
	lwc1	$f3, 8($a1)
	mul.s	$f3, $f0, $f3
	lw	$a1, 36($a0)
	lwc1	$f6, 0($a1)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f3, $f2
	flui	$f3, 16128
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f4, $f2
	swc1	$f2, 20572($zero)
	lw	$a1, 36($a0)
	lwc1	$f2, 4($a1)
	mul.s	$f0, $f0, $f2
	lw	$a1, 36($a0)
	lwc1	$f2, 0($a1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	flui	$f1, 16128
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f5, $f0
	swc1	$f0, 20576($zero)
beq_cont.24821:
	lw	$a1, 24($a0)
	lwc1	$f0, 20568($zero)
	mul.s	$f0, $f0, $f0
	lwc1	$f1, 20572($zero)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 20576($zero)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sw	$a1, 40($sp)
	sqrt	$f0, $f0
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.24822
	addi	$a0, $zero, 1
	j	c.eq_cont.24823
c.eq_else.24822:
	addi	$a0, $zero, 0
c.eq_cont.24823:
	bne	$a0, $zero, beq_else.24824
	lw	$a0, 40($sp)
	bne	$a0, $zero, beq_else.24826
	flui	$f1, 16256
	div.s	$f0, $f1, $f0
	j	beq_cont.24827
beq_else.24826:
	flui	$f1, -16512
	div.s	$f0, $f1, $f0
beq_cont.24827:
	j	beq_cont.24825
beq_else.24824:
	flui	$f0, 16256
beq_cont.24825:
	lwc1	$f1, 20568($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 20568($zero)
	lwc1	$f1, 20572($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 20572($zero)
	lwc1	$f1, 20576($zero)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 20576($zero)
beq_cont.24819:
beq_cont.24809:
	lw	$a0, 36($sp)
	lw	$a1, 0($a0)
	lw	$a2, 32($a0)
	lwc1	$f0, 0($a2)
	swc1	$f0, 20580($zero)
	lw	$a2, 32($a0)
	lwc1	$f0, 4($a2)
	swc1	$f0, 20584($zero)
	lw	$a2, 32($a0)
	lwc1	$f0, 8($a2)
	swc1	$f0, 20588($zero)
	addi	$s1, $zero, 1
	bne	$a1, $s1, beq_else.24828
	lwc1	$f0, 20552($zero)
	lw	$a1, 20($a0)
	lwc1	$f1, 0($a1)
	sub.s	$f0, $f0, $f1
	flui	$f1, 15692
	fori	$f1, $f1, 52429
	mul.s	$f1, $f0, $f1
	swc1	$f0, 48($sp)
	add.s	$f0, $fzero, $f1
	floor	$f0, $f0
	flui	$f1, 16800
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 48($sp)
	sub.s	$f0, $f1, $f0
	flui	$f1, 16672
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24831
	addi	$a0, $zero, 1
	j	bne_cont.24832
bne_else.24831:
	addi	$a0, $zero, 0
bne_cont.24832:
	lwc1	$f0, 20560($zero)
	lw	$a1, 36($sp)
	lw	$a2, 20($a1)
	lwc1	$f1, 8($a2)
	sub.s	$f0, $f0, $f1
	flui	$f1, 15692
	fori	$f1, $f1, 52429
	mul.s	$f1, $f0, $f1
	sw	$a0, 56($sp)
	swc1	$f0, 64($sp)
	add.s	$f0, $fzero, $f1
	floor	$f0, $f0
	flui	$f1, 16800
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 64($sp)
	sub.s	$f0, $f1, $f0
	flui	$f1, 16672
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24834
	addi	$a0, $zero, 1
	j	bne_cont.24835
bne_else.24834:
	addi	$a0, $zero, 0
bne_cont.24835:
	lw	$a1, 56($sp)
	bne	$a1, $zero, beq_else.24836
	bne	$a0, $zero, beq_else.24838
	flui	$f0, 17279
	j	beq_cont.24839
beq_else.24838:
	flui	$f0, 0
beq_cont.24839:
	j	beq_cont.24837
beq_else.24836:
	bne	$a0, $zero, beq_else.24840
	flui	$f0, 0
	j	beq_cont.24841
beq_else.24840:
	flui	$f0, 17279
beq_cont.24841:
beq_cont.24837:
	swc1	$f0, 20584($zero)
	j	beq_cont.24829
beq_else.24828:
	addi	$s1, $zero, 2
	bne	$a1, $s1, beq_else.24842
	lwc1	$f0, 20556($zero)
	flui	$f1, 16000
	mul.s	$f0, $f0, $f1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	sin.2640
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	mul.s	$f0, $f0, $f0
	flui	$f1, 17279
	mul.s	$f1, $f1, $f0
	swc1	$f1, 20580($zero)
	flui	$f1, 17279
	flui	$f2, 16256
	sub.s	$f0, $f2, $f0
	mul.s	$f0, $f1, $f0
	swc1	$f0, 20584($zero)
	j	beq_cont.24843
beq_else.24842:
	addi	$s1, $zero, 3
	bne	$a1, $s1, beq_else.24844
	lwc1	$f0, 20552($zero)
	lw	$a1, 20($a0)
	lwc1	$f1, 0($a1)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 20560($zero)
	lw	$a1, 20($a0)
	lwc1	$f2, 8($a1)
	sub.s	$f1, $f1, $f2
	mul.s	$f0, $f0, $f0
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	flui	$f1, 16672
	div.s	$f0, $f0, $f1
	swc1	$f0, 72($sp)
	floor	$f0, $f0
	lwc1	$f1, 72($sp)
	sub.s	$f0, $f1, $f0
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	mul.s	$f0, $f0, $f1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	cos.2638
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	mul.s	$f0, $f0, $f0
	flui	$f1, 17279
	mul.s	$f1, $f0, $f1
	swc1	$f1, 20584($zero)
	flui	$f1, 16256
	sub.s	$f0, $f1, $f0
	flui	$f1, 17279
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20588($zero)
	j	beq_cont.24845
beq_else.24844:
	addi	$s1, $zero, 4
	bne	$a1, $s1, beq_else.24846
	lwc1	$f0, 20552($zero)
	lw	$a1, 20($a0)
	lwc1	$f1, 0($a1)
	sub.s	$f0, $f0, $f1
	lw	$a1, 16($a0)
	lwc1	$f1, 0($a1)
	swc1	$f0, 80($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 80($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 20560($zero)
	lw	$a0, 36($sp)
	lw	$a1, 20($a0)
	lwc1	$f2, 8($a1)
	sub.s	$f1, $f1, $f2
	lw	$a1, 16($a0)
	lwc1	$f2, 8($a1)
	swc1	$f0, 88($sp)
	swc1	$f1, 96($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 96($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 88($sp)
	mul.s	$f2, $f1, $f1
	mul.s	$f3, $f0, $f0
	add.s	$f2, $f2, $f3
	c.lt.s	$s0, $f1, $fzero
	beq	$s0, $zero, bne_else.24848
	sub.s	$f3, $fzero, $f1
	j	bne_cont.24849
bne_else.24848:
	add.s	$f3, $f1, $fzero
bne_cont.24849:
	flui	$f4, 14545
	fori	$f4, $f4, 46871
	c.lt.s	$s0, $f3, $f4
	beq	$s0, $zero, bne_else.24850
	addi	$a0, $zero, 1
	j	bne_cont.24851
bne_else.24850:
	addi	$a0, $zero, 0
bne_cont.24851:
	bne	$a0, $zero, beq_else.24852
	div.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24854
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24855
bne_else.24854:
bne_cont.24855:
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24856
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24858
	mul.s	$f1, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f1
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f1, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f1, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f1, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f1, $f1, $f4
	sub.s	$f1, $f3, $f1
	mul.s	$f0, $f0, $f1
	j	bne_cont.24859
bne_else.24858:
	flui	$f1, 16412
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24860
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f3, 16256
	sub.s	$f3, $f0, $f3
	flui	$f4, 16256
	add.s	$f0, $f0, $f4
	div.s	$f0, $f3, $f0
	mul.s	$f3, $f0, $f0
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f0, $f0, $f3
	add.s	$f0, $f1, $f0
	j	bne_cont.24861
bne_else.24860:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f3, 16256
	div.s	$f0, $f3, $f0
	mul.s	$f3, $f0, $f0
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f0, $f0, $f3
	sub.s	$f0, $f1, $f0
bne_cont.24861:
bne_cont.24859:
	j	bne_cont.24857
bne_else.24856:
	sub.s	$f0, $fzero, $f0
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24862
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f3, 16256
	sub.s	$f3, $f0, $f3
	flui	$f4, 16256
	add.s	$f0, $f0, $f4
	div.s	$f0, $f3, $f0
	mul.s	$f3, $f0, $f0
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f0, $f0, $f3
	add.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24863
bne_else.24862:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f3, 16256
	div.s	$f0, $f3, $f0
	mul.s	$f3, $f0, $f0
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f0, $f0, $f3
	sub.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
bne_cont.24863:
bne_cont.24857:
	flui	$f1, 16880
	mul.s	$f0, $f0, $f1
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	div.s	$f0, $f0, $f1
	j	beq_cont.24853
beq_else.24852:
	flui	$f0, 16752
beq_cont.24853:
	swc1	$f2, 104($sp)
	swc1	$f0, 112($sp)
	floor	$f0, $f0
	lwc1	$f1, 112($sp)
	sub.s	$f0, $f1, $f0
	lwc1	$f1, 20556($zero)
	lw	$a0, 36($sp)
	lw	$a1, 20($a0)
	lwc1	$f2, 4($a1)
	sub.s	$f1, $f1, $f2
	lw	$a1, 16($a0)
	lwc1	$f2, 4($a1)
	swc1	$f0, 120($sp)
	swc1	$f1, 128($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 128($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 104($sp)
	c.lt.s	$s0, $f1, $fzero
	beq	$s0, $zero, bne_else.24864
	sub.s	$f2, $fzero, $f1
	j	bne_cont.24865
bne_else.24864:
	add.s	$f2, $f1, $fzero
bne_cont.24865:
	flui	$f3, 14545
	fori	$f3, $f3, 46871
	c.lt.s	$s0, $f2, $f3
	beq	$s0, $zero, bne_else.24866
	addi	$a0, $zero, 1
	j	bne_cont.24867
bne_else.24866:
	addi	$a0, $zero, 0
bne_cont.24867:
	bne	$a0, $zero, beq_else.24868
	div.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24870
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24871
bne_else.24870:
bne_cont.24871:
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24872
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24874
	mul.s	$f1, $f0, $f0
	flui	$f2, 16256
	flui	$f3, 16042
	fori	$f3, $f3, 43690
	flui	$f4, 15948
	fori	$f4, $f4, 52429
	flui	$f5, 15890
	fori	$f5, $f5, 18725
	flui	$f6, 15843
	fori	$f6, $f6, 36408
	flui	$f7, 15799
	fori	$f7, $f7, 54894
	flui	$f8, 15733
	fori	$f8, $f8, 59333
	mul.s	$f8, $f8, $f1
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f1, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f1, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f4, $f1, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	mul.s	$f0, $f0, $f1
	j	bne_cont.24875
bne_else.24874:
	flui	$f1, 16412
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24876
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	sub.s	$f2, $f0, $f2
	flui	$f3, 16256
	add.s	$f0, $f0, $f3
	div.s	$f0, $f2, $f0
	mul.s	$f2, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	j	bne_cont.24877
bne_else.24876:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	div.s	$f0, $f2, $f0
	mul.s	$f2, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
bne_cont.24877:
bne_cont.24875:
	j	bne_cont.24873
bne_else.24872:
	sub.s	$f0, $fzero, $f0
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24878
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	sub.s	$f2, $f0, $f2
	flui	$f3, 16256
	add.s	$f0, $f0, $f3
	div.s	$f0, $f2, $f0
	mul.s	$f2, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24879
bne_else.24878:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	div.s	$f0, $f2, $f0
	mul.s	$f2, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
bne_cont.24879:
bne_cont.24873:
	flui	$f1, 16880
	mul.s	$f0, $f0, $f1
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	div.s	$f0, $f0, $f1
	j	beq_cont.24869
beq_else.24868:
	flui	$f0, 16752
beq_cont.24869:
	swc1	$f0, 136($sp)
	floor	$f0, $f0
	lwc1	$f1, 136($sp)
	sub.s	$f0, $f1, $f0
	flui	$f1, 15897
	fori	$f1, $f1, 39322
	flui	$f2, 16128
	lwc1	$f3, 120($sp)
	sub.s	$f2, $f2, $f3
	mul.s	$f2, $f2, $f2
	sub.s	$f1, $f1, $f2
	flui	$f2, 16128
	sub.s	$f0, $f2, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f1, $f0
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24880
	addi	$a0, $zero, 1
	j	bne_cont.24881
bne_else.24880:
	addi	$a0, $zero, 0
bne_cont.24881:
	bne	$a0, $zero, beq_else.24882
	j	beq_cont.24883
beq_else.24882:
	flui	$f0, 0
beq_cont.24883:
	flui	$f1, 17279
	mul.s	$f0, $f1, $f0
	flui	$f1, 16025
	fori	$f1, $f1, 39322
	div.s	$f0, $f0, $f1
	swc1	$f0, 20588($zero)
	j	beq_cont.24847
beq_else.24846:
beq_cont.24847:
beq_cont.24845:
beq_cont.24843:
beq_cont.24829:
	addi	$a0, $zero, 0
	lw	$a1, 20536($zero)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	shadow_check_one_or_matrix.2932
	addi	$sp, $sp, -152
	lw	$ra, 148($sp)
	bne	$a0, $zero, beq_else.24884
	lwc1	$f0, 20568($zero)
	lwc1	$f1, 20312($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 20572($zero)
	lwc1	$f2, 20316($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 20576($zero)
	lwc1	$f2, 20320($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24886
	addi	$a0, $zero, 1
	j	bne_cont.24887
bne_else.24886:
	addi	$a0, $zero, 0
bne_cont.24887:
	bne	$a0, $zero, beq_else.24888
	flui	$f0, 0
	j	beq_cont.24889
beq_else.24888:
beq_cont.24889:
	lwc1	$f1, 16($sp)
	mul.s	$f0, $f1, $f0
	lw	$a0, 36($sp)
	lw	$a0, 28($a0)
	lwc1	$f1, 0($a0)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 20592($zero)
	lwc1	$f2, 20580($zero)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swc1	$f1, 20592($zero)
	lwc1	$f1, 20596($zero)
	lwc1	$f2, 20584($zero)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swc1	$f1, 20596($zero)
	lwc1	$f1, 20600($zero)
	lwc1	$f2, 20588($zero)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swc1	$f0, 20600($zero)
	j	beq_cont.24885
beq_else.24884:
beq_cont.24885:
beq_cont.24807:
	j	beq_cont.24799
beq_else.24798:
	addi	$t2, $a3, 1
	sll	$t2, $t2, 2
	add	$s1, $a0, $t2
	lw	$t2, 0($s1)
	flui	$f1, -15594
	div.s	$f0, $f0, $f1
	flui	$f1, 20078
	fori	$f1, $f1, 27432
	swc1	$f1, 20548($zero)
	addi	$t3, $zero, 0
	lw	$t4, 20536($zero)
	swc1	$f0, 144($sp)
	sw	$t1, 24($sp)
	sw	$t2, 152($sp)
	sw	$t0, 32($sp)
	add	$a2, $zero, $t2
	add	$a1, $zero, $t4
	add	$a0, $zero, $t3
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	trace_or_matrix_fast.2957
	addi	$sp, $sp, -160
	lw	$ra, 156($sp)
	lwc1	$f0, 20548($zero)
	flui	$f1, -16948
	fori	$f1, $f1, 52429
	c.lt.s	$s0, $f1, $f0
	beq	$s0, $zero, bne_else.24890
	addi	$a0, $zero, 1
	j	bne_cont.24891
bne_else.24890:
	addi	$a0, $zero, 0
bne_cont.24891:
	bne	$a0, $zero, beq_else.24892
	addi	$a0, $zero, 0
	j	beq_cont.24893
beq_else.24892:
	flui	$f1, 19646
	fori	$f1, $f1, 48160
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24894
	addi	$a0, $zero, 1
	j	bne_cont.24895
bne_else.24894:
	addi	$a0, $zero, 0
bne_cont.24895:
beq_cont.24893:
	bne	$a0, $zero, beq_else.24896
	j	beq_cont.24897
beq_else.24896:
	lw	$a0, 20564($zero)
	sll	$a0, $a0, 2
	lw	$a1, 32($sp)
	add	$s1, $a1, $a0
	lw	$a0, 0($s1)
	lw	$a1, 152($sp)
	lw	$a1, 0($a1)
	lw	$a2, 4($a0)
	sw	$a0, 156($sp)
	addi	$s1, $zero, 1
	bne	$a2, $s1, beq_else.24898
	lw	$a2, 20544($zero)
	swc1	$fzero, 20568($zero)
	swc1	$fzero, 20572($zero)
	swc1	$fzero, 20576($zero)
	addi	$a3, $a2, -1
	addi	$a2, $a2, -1
	sll	$a2, $a2, 2
	add	$s1, $a1, $a2
	lwc1	$f0, 0($s1)
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.24900
	addi	$a1, $zero, 1
	j	c.eq_cont.24901
c.eq_else.24900:
	addi	$a1, $zero, 0
c.eq_cont.24901:
	bne	$a1, $zero, beq_else.24902
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24904
	addi	$a1, $zero, 1
	j	bne_cont.24905
bne_else.24904:
	addi	$a1, $zero, 0
bne_cont.24905:
	bne	$a1, $zero, beq_else.24906
	flui	$f0, -16512
	j	beq_cont.24907
beq_else.24906:
	flui	$f0, 16256
beq_cont.24907:
	j	beq_cont.24903
beq_else.24902:
	flui	$f0, 0
beq_cont.24903:
	sub.s	$f0, $fzero, $f0
	sll	$a1, $a3, 2
	lw	$a2, 24($sp)
	add	$s1, $a2, $a1
	swc1	$f0, 0($s1)
	j	beq_cont.24899
beq_else.24898:
	addi	$s1, $zero, 2
	bne	$a2, $s1, beq_else.24908
	lw	$a1, 16($a0)
	lwc1	$f0, 0($a1)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 20568($zero)
	lw	$a1, 16($a0)
	lwc1	$f0, 4($a1)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 20572($zero)
	lw	$a1, 16($a0)
	lwc1	$f0, 8($a1)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 20576($zero)
	j	beq_cont.24909
beq_else.24908:
	lwc1	$f0, 20552($zero)
	lw	$a1, 20($a0)
	lwc1	$f1, 0($a1)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 20556($zero)
	lw	$a1, 20($a0)
	lwc1	$f2, 4($a1)
	sub.s	$f1, $f1, $f2
	lwc1	$f2, 20560($zero)
	lw	$a1, 20($a0)
	lwc1	$f3, 8($a1)
	sub.s	$f2, $f2, $f3
	lw	$a1, 16($a0)
	lwc1	$f3, 0($a1)
	mul.s	$f3, $f0, $f3
	lw	$a1, 16($a0)
	lwc1	$f4, 4($a1)
	mul.s	$f4, $f1, $f4
	lw	$a1, 16($a0)
	lwc1	$f5, 8($a1)
	mul.s	$f5, $f2, $f5
	lw	$a1, 12($a0)
	bne	$a1, $zero, beq_else.24910
	swc1	$f3, 20568($zero)
	swc1	$f4, 20572($zero)
	swc1	$f5, 20576($zero)
	j	beq_cont.24911
beq_else.24910:
	lw	$a1, 36($a0)
	lwc1	$f6, 8($a1)
	mul.s	$f6, $f1, $f6
	lw	$a1, 36($a0)
	lwc1	$f7, 4($a1)
	mul.s	$f7, $f2, $f7
	add.s	$f6, $f6, $f7
	flui	$f7, 16128
	mul.s	$f6, $f6, $f7
	add.s	$f3, $f3, $f6
	swc1	$f3, 20568($zero)
	lw	$a1, 36($a0)
	lwc1	$f3, 8($a1)
	mul.s	$f3, $f0, $f3
	lw	$a1, 36($a0)
	lwc1	$f6, 0($a1)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f3, $f2
	flui	$f3, 16128
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f4, $f2
	swc1	$f2, 20572($zero)
	lw	$a1, 36($a0)
	lwc1	$f2, 4($a1)
	mul.s	$f0, $f0, $f2
	lw	$a1, 36($a0)
	lwc1	$f2, 0($a1)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	flui	$f1, 16128
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f5, $f0
	swc1	$f0, 20576($zero)
beq_cont.24911:
	lw	$a1, 24($a0)
	lwc1	$f0, 20568($zero)
	mul.s	$f0, $f0, $f0
	lwc1	$f1, 20572($zero)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwc1	$f1, 20576($zero)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sw	$a1, 160($sp)
	sqrt	$f0, $f0
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.24912
	addi	$a0, $zero, 1
	j	c.eq_cont.24913
c.eq_else.24912:
	addi	$a0, $zero, 0
c.eq_cont.24913:
	bne	$a0, $zero, beq_else.24914
	lw	$a0, 160($sp)
	bne	$a0, $zero, beq_else.24916
	flui	$f1, 16256
	div.s	$f0, $f1, $f0
	j	beq_cont.24917
beq_else.24916:
	flui	$f1, -16512
	div.s	$f0, $f1, $f0
beq_cont.24917:
	j	beq_cont.24915
beq_else.24914:
	flui	$f0, 16256
beq_cont.24915:
	lwc1	$f1, 20568($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 20568($zero)
	lwc1	$f1, 20572($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 20572($zero)
	lwc1	$f1, 20576($zero)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 20576($zero)
beq_cont.24909:
beq_cont.24899:
	lw	$a0, 156($sp)
	lw	$a1, 0($a0)
	lw	$a2, 32($a0)
	lwc1	$f0, 0($a2)
	swc1	$f0, 20580($zero)
	lw	$a2, 32($a0)
	lwc1	$f0, 4($a2)
	swc1	$f0, 20584($zero)
	lw	$a2, 32($a0)
	lwc1	$f0, 8($a2)
	swc1	$f0, 20588($zero)
	addi	$s1, $zero, 1
	bne	$a1, $s1, beq_else.24918
	lwc1	$f0, 20552($zero)
	lw	$a1, 20($a0)
	lwc1	$f1, 0($a1)
	sub.s	$f0, $f0, $f1
	flui	$f1, 15692
	fori	$f1, $f1, 52429
	mul.s	$f1, $f0, $f1
	swc1	$f0, 168($sp)
	add.s	$f0, $fzero, $f1
	floor	$f0, $f0
	flui	$f1, 16800
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 168($sp)
	sub.s	$f0, $f1, $f0
	flui	$f1, 16672
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24921
	addi	$a0, $zero, 1
	j	bne_cont.24922
bne_else.24921:
	addi	$a0, $zero, 0
bne_cont.24922:
	lwc1	$f0, 20560($zero)
	lw	$a1, 156($sp)
	lw	$a2, 20($a1)
	lwc1	$f1, 8($a2)
	sub.s	$f0, $f0, $f1
	flui	$f1, 15692
	fori	$f1, $f1, 52429
	mul.s	$f1, $f0, $f1
	sw	$a0, 176($sp)
	swc1	$f0, 184($sp)
	add.s	$f0, $fzero, $f1
	floor	$f0, $f0
	flui	$f1, 16800
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 184($sp)
	sub.s	$f0, $f1, $f0
	flui	$f1, 16672
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24924
	addi	$a0, $zero, 1
	j	bne_cont.24925
bne_else.24924:
	addi	$a0, $zero, 0
bne_cont.24925:
	lw	$a1, 176($sp)
	bne	$a1, $zero, beq_else.24926
	bne	$a0, $zero, beq_else.24928
	flui	$f0, 17279
	j	beq_cont.24929
beq_else.24928:
	flui	$f0, 0
beq_cont.24929:
	j	beq_cont.24927
beq_else.24926:
	bne	$a0, $zero, beq_else.24930
	flui	$f0, 0
	j	beq_cont.24931
beq_else.24930:
	flui	$f0, 17279
beq_cont.24931:
beq_cont.24927:
	swc1	$f0, 20584($zero)
	j	beq_cont.24919
beq_else.24918:
	addi	$s1, $zero, 2
	bne	$a1, $s1, beq_else.24932
	lwc1	$f0, 20556($zero)
	flui	$f1, 16000
	mul.s	$f0, $f0, $f1
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	sin.2640
	addi	$sp, $sp, -200
	lw	$ra, 196($sp)
	mul.s	$f0, $f0, $f0
	flui	$f1, 17279
	mul.s	$f1, $f1, $f0
	swc1	$f1, 20580($zero)
	flui	$f1, 17279
	flui	$f2, 16256
	sub.s	$f0, $f2, $f0
	mul.s	$f0, $f1, $f0
	swc1	$f0, 20584($zero)
	j	beq_cont.24933
beq_else.24932:
	addi	$s1, $zero, 3
	bne	$a1, $s1, beq_else.24934
	lwc1	$f0, 20552($zero)
	lw	$a1, 20($a0)
	lwc1	$f1, 0($a1)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 20560($zero)
	lw	$a1, 20($a0)
	lwc1	$f2, 8($a1)
	sub.s	$f1, $f1, $f2
	mul.s	$f0, $f0, $f0
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	flui	$f1, 16672
	div.s	$f0, $f0, $f1
	swc1	$f0, 192($sp)
	floor	$f0, $f0
	lwc1	$f1, 192($sp)
	sub.s	$f0, $f1, $f0
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	mul.s	$f0, $f0, $f1
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	cos.2638
	addi	$sp, $sp, -208
	lw	$ra, 204($sp)
	mul.s	$f0, $f0, $f0
	flui	$f1, 17279
	mul.s	$f1, $f0, $f1
	swc1	$f1, 20584($zero)
	flui	$f1, 16256
	sub.s	$f0, $f1, $f0
	flui	$f1, 17279
	mul.s	$f0, $f0, $f1
	swc1	$f0, 20588($zero)
	j	beq_cont.24935
beq_else.24934:
	addi	$s1, $zero, 4
	bne	$a1, $s1, beq_else.24936
	lwc1	$f0, 20552($zero)
	lw	$a1, 20($a0)
	lwc1	$f1, 0($a1)
	sub.s	$f0, $f0, $f1
	lw	$a1, 16($a0)
	lwc1	$f1, 0($a1)
	swc1	$f0, 200($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	lwc1	$f1, 200($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 20560($zero)
	lw	$a0, 156($sp)
	lw	$a1, 20($a0)
	lwc1	$f2, 8($a1)
	sub.s	$f1, $f1, $f2
	lw	$a1, 16($a0)
	lwc1	$f2, 8($a1)
	swc1	$f0, 208($sp)
	swc1	$f1, 216($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 216($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 208($sp)
	mul.s	$f2, $f1, $f1
	mul.s	$f3, $f0, $f0
	add.s	$f2, $f2, $f3
	c.lt.s	$s0, $f1, $fzero
	beq	$s0, $zero, bne_else.24938
	sub.s	$f3, $fzero, $f1
	j	bne_cont.24939
bne_else.24938:
	add.s	$f3, $f1, $fzero
bne_cont.24939:
	flui	$f4, 14545
	fori	$f4, $f4, 46871
	c.lt.s	$s0, $f3, $f4
	beq	$s0, $zero, bne_else.24940
	addi	$a0, $zero, 1
	j	bne_cont.24941
bne_else.24940:
	addi	$a0, $zero, 0
bne_cont.24941:
	bne	$a0, $zero, beq_else.24942
	div.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24944
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24945
bne_else.24944:
bne_cont.24945:
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24946
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24948
	mul.s	$f1, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f1
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f1, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f1, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f1, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f1, $f1, $f4
	sub.s	$f1, $f3, $f1
	mul.s	$f0, $f0, $f1
	j	bne_cont.24949
bne_else.24948:
	flui	$f1, 16412
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24950
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f3, 16256
	sub.s	$f3, $f0, $f3
	flui	$f4, 16256
	add.s	$f0, $f0, $f4
	div.s	$f0, $f3, $f0
	mul.s	$f3, $f0, $f0
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f0, $f0, $f3
	add.s	$f0, $f1, $f0
	j	bne_cont.24951
bne_else.24950:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f3, 16256
	div.s	$f0, $f3, $f0
	mul.s	$f3, $f0, $f0
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f0, $f0, $f3
	sub.s	$f0, $f1, $f0
bne_cont.24951:
bne_cont.24949:
	j	bne_cont.24947
bne_else.24946:
	sub.s	$f0, $fzero, $f0
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24952
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f3, 16256
	sub.s	$f3, $f0, $f3
	flui	$f4, 16256
	add.s	$f0, $f0, $f4
	div.s	$f0, $f3, $f0
	mul.s	$f3, $f0, $f0
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f0, $f0, $f3
	add.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24953
bne_else.24952:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f3, 16256
	div.s	$f0, $f3, $f0
	mul.s	$f3, $f0, $f0
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f0, $f0, $f3
	sub.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
bne_cont.24953:
bne_cont.24947:
	flui	$f1, 16880
	mul.s	$f0, $f0, $f1
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	div.s	$f0, $f0, $f1
	j	beq_cont.24943
beq_else.24942:
	flui	$f0, 16752
beq_cont.24943:
	swc1	$f2, 224($sp)
	swc1	$f0, 232($sp)
	floor	$f0, $f0
	lwc1	$f1, 232($sp)
	sub.s	$f0, $f1, $f0
	lwc1	$f1, 20556($zero)
	lw	$a0, 156($sp)
	lw	$a1, 20($a0)
	lwc1	$f2, 4($a1)
	sub.s	$f1, $f1, $f2
	lw	$a1, 16($a0)
	lwc1	$f2, 4($a1)
	swc1	$f0, 240($sp)
	swc1	$f1, 248($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 248($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 224($sp)
	c.lt.s	$s0, $f1, $fzero
	beq	$s0, $zero, bne_else.24954
	sub.s	$f2, $fzero, $f1
	j	bne_cont.24955
bne_else.24954:
	add.s	$f2, $f1, $fzero
bne_cont.24955:
	flui	$f3, 14545
	fori	$f3, $f3, 46871
	c.lt.s	$s0, $f2, $f3
	beq	$s0, $zero, bne_else.24956
	addi	$a0, $zero, 1
	j	bne_cont.24957
bne_else.24956:
	addi	$a0, $zero, 0
bne_cont.24957:
	bne	$a0, $zero, beq_else.24958
	div.s	$f0, $f0, $f1
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24960
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24961
bne_else.24960:
bne_cont.24961:
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24962
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24964
	mul.s	$f1, $f0, $f0
	flui	$f2, 16256
	flui	$f3, 16042
	fori	$f3, $f3, 43690
	flui	$f4, 15948
	fori	$f4, $f4, 52429
	flui	$f5, 15890
	fori	$f5, $f5, 18725
	flui	$f6, 15843
	fori	$f6, $f6, 36408
	flui	$f7, 15799
	fori	$f7, $f7, 54894
	flui	$f8, 15733
	fori	$f8, $f8, 59333
	mul.s	$f8, $f8, $f1
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f1, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f1, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f1, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f4, $f1, $f4
	sub.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	mul.s	$f0, $f0, $f1
	j	bne_cont.24965
bne_else.24964:
	flui	$f1, 16412
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24966
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	sub.s	$f2, $f0, $f2
	flui	$f3, 16256
	add.s	$f0, $f0, $f3
	div.s	$f0, $f2, $f0
	mul.s	$f2, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	j	bne_cont.24967
bne_else.24966:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	div.s	$f0, $f2, $f0
	mul.s	$f2, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
bne_cont.24967:
bne_cont.24965:
	j	bne_cont.24963
bne_else.24962:
	sub.s	$f0, $fzero, $f0
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.24968
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	sub.s	$f2, $f0, $f2
	flui	$f3, 16256
	add.s	$f0, $f0, $f3
	div.s	$f0, $f2, $f0
	mul.s	$f2, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
	j	bne_cont.24969
bne_else.24968:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	div.s	$f0, $f2, $f0
	mul.s	$f2, $f0, $f0
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f2
	sub.s	$f0, $f1, $f0
	sub.s	$f0, $fzero, $f0
bne_cont.24969:
bne_cont.24963:
	flui	$f1, 16880
	mul.s	$f0, $f0, $f1
	flui	$f1, 16457
	fori	$f1, $f1, 4059
	div.s	$f0, $f0, $f1
	j	beq_cont.24959
beq_else.24958:
	flui	$f0, 16752
beq_cont.24959:
	swc1	$f0, 256($sp)
	floor	$f0, $f0
	lwc1	$f1, 256($sp)
	sub.s	$f0, $f1, $f0
	flui	$f1, 15897
	fori	$f1, $f1, 39322
	flui	$f2, 16128
	lwc1	$f3, 240($sp)
	sub.s	$f2, $f2, $f3
	mul.s	$f2, $f2, $f2
	sub.s	$f1, $f1, $f2
	flui	$f2, 16128
	sub.s	$f0, $f2, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f1, $f0
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.24970
	addi	$a0, $zero, 1
	j	bne_cont.24971
bne_else.24970:
	addi	$a0, $zero, 0
bne_cont.24971:
	bne	$a0, $zero, beq_else.24972
	j	beq_cont.24973
beq_else.24972:
	flui	$f0, 0
beq_cont.24973:
	flui	$f1, 17279
	mul.s	$f0, $f1, $f0
	flui	$f1, 16025
	fori	$f1, $f1, 39322
	div.s	$f0, $f0, $f1
	swc1	$f0, 20588($zero)
	j	beq_cont.24937
beq_else.24936:
beq_cont.24937:
beq_cont.24935:
beq_cont.24933:
beq_cont.24919:
	addi	$a0, $zero, 0
	lw	$a1, 20536($zero)
	sw	$ra, 268($sp)
	addi	$sp, $sp, 272
	jal	shadow_check_one_or_matrix.2932
	addi	$sp, $sp, -272
	lw	$ra, 268($sp)
	bne	$a0, $zero, beq_else.24974
	lwc1	$f0, 20568($zero)
	lwc1	$f1, 20312($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 20572($zero)
	lwc1	$f2, 20316($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwc1	$f1, 20576($zero)
	lwc1	$f2, 20320($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sub.s	$f0, $fzero, $f0
	c.lt.s	$s0, $fzero, $f0
	beq	$s0, $zero, bne_else.24976
	addi	$a0, $zero, 1
	j	bne_cont.24977
bne_else.24976:
	addi	$a0, $zero, 0
bne_cont.24977:
	bne	$a0, $zero, beq_else.24978
	flui	$f0, 0
	j	beq_cont.24979
beq_else.24978:
beq_cont.24979:
	lwc1	$f1, 144($sp)
	mul.s	$f0, $f1, $f0
	lw	$a0, 156($sp)
	lw	$a0, 28($a0)
	lwc1	$f1, 0($a0)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 20592($zero)
	lwc1	$f2, 20580($zero)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swc1	$f1, 20592($zero)
	lwc1	$f1, 20596($zero)
	lwc1	$f2, 20584($zero)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swc1	$f1, 20596($zero)
	lwc1	$f1, 20600($zero)
	lwc1	$f2, 20588($zero)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swc1	$f0, 20600($zero)
	j	beq_cont.24975
beq_else.24974:
beq_cont.24975:
beq_cont.24897:
beq_cont.24799:
	lw	$a0, 12($sp)
	addi	$a3, $a0, -2
	lw	$a0, 8($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	iter_trace_diffuse_rays.2993
do_without_neighbors.3015:
	addi	$a2, $zero, 4
	slt	$s0, $a2, $a1
	beq	$s0, $zero, bne_else.24980
	jr	$ra
bne_else.24980:
	lw	$a2, 8($a0)
	sll	$a3, $a1, 2
	add	$s1, $a2, $a3
	lw	$a2, 0($s1)
	slti	$s0, $a2, 0
	beq	$s0, $zero, bne_else.24982
	jr	$ra
bne_else.24982:
	lw	$a2, 12($a0)
	sll	$a3, $a1, 2
	add	$s1, $a2, $a3
	lw	$a2, 0($s1)
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	bne	$a2, $zero, beq_else.24984
	j	beq_cont.24985
beq_else.24984:
	lw	$a2, 20($a0)
	lw	$a3, 28($a0)
	lw	$t0, 4($a0)
	lw	$t1, 16($a0)
	sll	$t2, $a1, 2
	add	$s1, $a2, $t2
	lw	$a2, 0($s1)
	lwc1	$f0, 0($a2)
	swc1	$f0, 20592($zero)
	lwc1	$f0, 4($a2)
	swc1	$f0, 20596($zero)
	lwc1	$f0, 8($a2)
	swc1	$f0, 20600($zero)
	lw	$a2, 24($a0)
	lw	$a2, 0($a2)
	sll	$t2, $a1, 2
	add	$s1, $a3, $t2
	lw	$a3, 0($s1)
	sll	$t2, $a1, 2
	add	$s1, $t0, $t2
	lw	$t0, 0($s1)
	sw	$t1, 8($sp)
	sw	$a3, 12($sp)
	sw	$t0, 16($sp)
	sw	$a2, 20($sp)
	bne	$a2, $zero, beq_else.24986
	j	beq_cont.24987
beq_else.24986:
	lw	$t2, 20716($zero)
	lwc1	$f0, 0($t0)
	swc1	$f0, 20648($zero)
	lwc1	$f0, 4($t0)
	swc1	$f0, 20652($zero)
	lwc1	$f0, 8($t0)
	swc1	$f0, 20656($zero)
	lw	$t3, 20000($zero)
	addi	$t3, $t3, -1
	sw	$t2, 24($sp)
	add	$a1, $zero, $t3
	add	$a0, $zero, $t0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	addi	$a3, $zero, 118
	lw	$a0, 24($sp)
	lw	$a1, 12($sp)
	lw	$a2, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	iter_trace_diffuse_rays.2993
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
beq_cont.24987:
	lw	$a0, 20($sp)
	addi	$s1, $zero, 1
	bne	$a0, $s1, beq_else.24988
	j	beq_cont.24989
beq_else.24988:
	lw	$a1, 20720($zero)
	lw	$a2, 16($sp)
	lwc1	$f0, 0($a2)
	swc1	$f0, 20648($zero)
	lwc1	$f0, 4($a2)
	swc1	$f0, 20652($zero)
	lwc1	$f0, 8($a2)
	swc1	$f0, 20656($zero)
	lw	$a3, 20000($zero)
	addi	$a3, $a3, -1
	sw	$a1, 28($sp)
	add	$a1, $zero, $a3
	add	$a0, $zero, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	addi	$a3, $zero, 118
	lw	$a0, 28($sp)
	lw	$a1, 12($sp)
	lw	$a2, 16($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	iter_trace_diffuse_rays.2993
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
beq_cont.24989:
	lw	$a0, 20($sp)
	addi	$s1, $zero, 2
	bne	$a0, $s1, beq_else.24990
	j	beq_cont.24991
beq_else.24990:
	lw	$a1, 20724($zero)
	lw	$a2, 16($sp)
	lwc1	$f0, 0($a2)
	swc1	$f0, 20648($zero)
	lwc1	$f0, 4($a2)
	swc1	$f0, 20652($zero)
	lwc1	$f0, 8($a2)
	swc1	$f0, 20656($zero)
	lw	$a3, 20000($zero)
	addi	$a3, $a3, -1
	sw	$a1, 32($sp)
	add	$a1, $zero, $a3
	add	$a0, $zero, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	addi	$a3, $zero, 118
	lw	$a0, 32($sp)
	lw	$a1, 12($sp)
	lw	$a2, 16($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	iter_trace_diffuse_rays.2993
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
beq_cont.24991:
	lw	$a0, 20($sp)
	addi	$s1, $zero, 3
	bne	$a0, $s1, beq_else.24992
	j	beq_cont.24993
beq_else.24992:
	lw	$a1, 20728($zero)
	lw	$a2, 16($sp)
	lwc1	$f0, 0($a2)
	swc1	$f0, 20648($zero)
	lwc1	$f0, 4($a2)
	swc1	$f0, 20652($zero)
	lwc1	$f0, 8($a2)
	swc1	$f0, 20656($zero)
	lw	$a3, 20000($zero)
	addi	$a3, $a3, -1
	sw	$a1, 36($sp)
	add	$a1, $zero, $a3
	add	$a0, $zero, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	addi	$a3, $zero, 118
	lw	$a0, 36($sp)
	lw	$a1, 12($sp)
	lw	$a2, 16($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	iter_trace_diffuse_rays.2993
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
beq_cont.24993:
	lw	$a0, 20($sp)
	addi	$s1, $zero, 4
	bne	$a0, $s1, beq_else.24994
	j	beq_cont.24995
beq_else.24994:
	lw	$a0, 20732($zero)
	lw	$a1, 16($sp)
	lwc1	$f0, 0($a1)
	swc1	$f0, 20648($zero)
	lwc1	$f0, 4($a1)
	swc1	$f0, 20652($zero)
	lwc1	$f0, 8($a1)
	swc1	$f0, 20656($zero)
	lw	$a2, 20000($zero)
	addi	$a2, $a2, -1
	sw	$a0, 40($sp)
	add	$a0, $zero, $a1
	add	$a1, $zero, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	addi	$a3, $zero, 118
	lw	$a0, 40($sp)
	lw	$a1, 12($sp)
	lw	$a2, 16($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	iter_trace_diffuse_rays.2993
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
beq_cont.24995:
	lw	$a0, 4($sp)
	sll	$a1, $a0, 2
	lw	$a2, 8($sp)
	add	$s1, $a2, $a1
	lw	$a1, 0($s1)
	lwc1	$f0, 20604($zero)
	lwc1	$f1, 0($a1)
	lwc1	$f2, 20592($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 20604($zero)
	lwc1	$f0, 20608($zero)
	lwc1	$f1, 4($a1)
	lwc1	$f2, 20596($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 20608($zero)
	lwc1	$f0, 20612($zero)
	lwc1	$f1, 8($a1)
	lwc1	$f2, 20600($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 20612($zero)
beq_cont.24985:
	lw	$a0, 4($sp)
	addi	$a1, $a0, 1
	lw	$a0, 0($sp)
	j	do_without_neighbors.3015
try_exploit_neighbors.3031:
	sll	$t2, $a0, 2
	add	$s1, $a3, $t2
	lw	$t2, 0($s1)
	addi	$t3, $zero, 4
	slt	$s0, $t3, $t1
	beq	$s0, $zero, bne_else.24996
	jr	$ra
bne_else.24996:
	lw	$t3, 8($t2)
	sll	$t4, $t1, 2
	add	$s1, $t3, $t4
	lw	$t3, 0($s1)
	slti	$s0, $t3, 0
	beq	$s0, $zero, bne_else.24998
	jr	$ra
bne_else.24998:
	sll	$t3, $a0, 2
	add	$s1, $a3, $t3
	lw	$t3, 0($s1)
	lw	$t3, 8($t3)
	sll	$t4, $t1, 2
	add	$s1, $t3, $t4
	lw	$t3, 0($s1)
	sll	$t4, $a0, 2
	add	$s1, $a2, $t4
	lw	$t4, 0($s1)
	lw	$t4, 8($t4)
	sll	$t5, $t1, 2
	add	$s1, $t4, $t5
	lw	$t4, 0($s1)
	bne	$t4, $t3, beq_else.25000
	sll	$t4, $a0, 2
	add	$s1, $t0, $t4
	lw	$t4, 0($s1)
	lw	$t4, 8($t4)
	sll	$t5, $t1, 2
	add	$s1, $t4, $t5
	lw	$t4, 0($s1)
	bne	$t4, $t3, beq_else.25002
	addi	$t4, $a0, -1
	sll	$t4, $t4, 2
	add	$s1, $a3, $t4
	lw	$t4, 0($s1)
	lw	$t4, 8($t4)
	sll	$t5, $t1, 2
	add	$s1, $t4, $t5
	lw	$t4, 0($s1)
	bne	$t4, $t3, beq_else.25004
	addi	$t4, $a0, 1
	sll	$t4, $t4, 2
	add	$s1, $a3, $t4
	lw	$t4, 0($s1)
	lw	$t4, 8($t4)
	sll	$t5, $t1, 2
	add	$s1, $t4, $t5
	lw	$t4, 0($s1)
	bne	$t4, $t3, beq_else.25006
	addi	$t3, $zero, 1
	j	beq_cont.25007
beq_else.25006:
	addi	$t3, $zero, 0
beq_cont.25007:
	j	beq_cont.25005
beq_else.25004:
	addi	$t3, $zero, 0
beq_cont.25005:
	j	beq_cont.25003
beq_else.25002:
	addi	$t3, $zero, 0
beq_cont.25003:
	j	beq_cont.25001
beq_else.25000:
	addi	$t3, $zero, 0
beq_cont.25001:
	bne	$t3, $zero, bne_else.25008
	sll	$a0, $a0, 2
	add	$s1, $a3, $a0
	lw	$a0, 0($s1)
	add	$a1, $zero, $t1
	j	do_without_neighbors.3015
bne_else.25008:
	lw	$t2, 12($t2)
	sll	$t3, $t1, 2
	add	$s1, $t2, $t3
	lw	$t2, 0($s1)
	bne	$t2, $zero, beq_else.25009
	j	beq_cont.25010
beq_else.25009:
	sll	$t2, $a0, 2
	add	$s1, $a2, $t2
	lw	$t2, 0($s1)
	lw	$t2, 20($t2)
	addi	$t3, $a0, -1
	sll	$t3, $t3, 2
	add	$s1, $a3, $t3
	lw	$t3, 0($s1)
	lw	$t3, 20($t3)
	sll	$t4, $a0, 2
	add	$s1, $a3, $t4
	lw	$t4, 0($s1)
	lw	$t4, 20($t4)
	addi	$t5, $a0, 1
	sll	$t5, $t5, 2
	add	$s1, $a3, $t5
	lw	$t5, 0($s1)
	lw	$t5, 20($t5)
	sll	$t6, $a0, 2
	add	$s1, $t0, $t6
	lw	$t6, 0($s1)
	lw	$t6, 20($t6)
	sll	$t7, $t1, 2
	add	$s1, $t2, $t7
	lw	$t2, 0($s1)
	lwc1	$f0, 0($t2)
	swc1	$f0, 20592($zero)
	lwc1	$f0, 4($t2)
	swc1	$f0, 20596($zero)
	lwc1	$f0, 8($t2)
	swc1	$f0, 20600($zero)
	sll	$t2, $t1, 2
	add	$s1, $t3, $t2
	lw	$t2, 0($s1)
	lwc1	$f0, 20592($zero)
	lwc1	$f1, 0($t2)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20592($zero)
	lwc1	$f0, 20596($zero)
	lwc1	$f1, 4($t2)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20596($zero)
	lwc1	$f0, 20600($zero)
	lwc1	$f1, 8($t2)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20600($zero)
	sll	$t2, $t1, 2
	add	$s1, $t4, $t2
	lw	$t2, 0($s1)
	lwc1	$f0, 20592($zero)
	lwc1	$f1, 0($t2)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20592($zero)
	lwc1	$f0, 20596($zero)
	lwc1	$f1, 4($t2)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20596($zero)
	lwc1	$f0, 20600($zero)
	lwc1	$f1, 8($t2)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20600($zero)
	sll	$t2, $t1, 2
	add	$s1, $t5, $t2
	lw	$t2, 0($s1)
	lwc1	$f0, 20592($zero)
	lwc1	$f1, 0($t2)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20592($zero)
	lwc1	$f0, 20596($zero)
	lwc1	$f1, 4($t2)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20596($zero)
	lwc1	$f0, 20600($zero)
	lwc1	$f1, 8($t2)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20600($zero)
	sll	$t2, $t1, 2
	add	$s1, $t6, $t2
	lw	$t2, 0($s1)
	lwc1	$f0, 20592($zero)
	lwc1	$f1, 0($t2)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20592($zero)
	lwc1	$f0, 20596($zero)
	lwc1	$f1, 4($t2)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20596($zero)
	lwc1	$f0, 20600($zero)
	lwc1	$f1, 8($t2)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20600($zero)
	sll	$t2, $a0, 2
	add	$s1, $a3, $t2
	lw	$t2, 0($s1)
	lw	$t2, 16($t2)
	sll	$t3, $t1, 2
	add	$s1, $t2, $t3
	lw	$t2, 0($s1)
	lwc1	$f0, 20604($zero)
	lwc1	$f1, 0($t2)
	lwc1	$f2, 20592($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 20604($zero)
	lwc1	$f0, 20608($zero)
	lwc1	$f1, 4($t2)
	lwc1	$f2, 20596($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 20608($zero)
	lwc1	$f0, 20612($zero)
	lwc1	$f1, 8($t2)
	lwc1	$f2, 20600($zero)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swc1	$f0, 20612($zero)
beq_cont.25010:
	addi	$t1, $t1, 1
	j	try_exploit_neighbors.3031
syou.3038:
	slt	$s0, $a0, $a1
	beq	$s0, $zero, bne_else.25011
	addi	$a0, $zero, 0
	jr	$ra
bne_else.25011:
	sub	$a0, $a0, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	syou.3038
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	addi	$a0, $a0, 1
	jr	$ra
amari.3041:
	slt	$s0, $a0, $a1
	beq	$s0, $zero, bne_else.25012
	jr	$ra
bne_else.25012:
	sub	$a0, $a0, $a1
	j	amari.3041
print_my_sub.3044:
	slti	$s0, $a0, 10
	beq	$s0, $zero, bne_else.25013
	addi	$a0, $a0, 48
	outc	$a0
	jr	$ra
bne_else.25013:
	addi	$a1, $zero, 10
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	syou.3038
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	print_my_sub.3044
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	addi	$a1, $zero, 10
	lw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	amari.3041
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	addi	$a0, $a0, 48
	outc	$a0
	jr	$ra
pretrace_diffuse_rays.3052:
	addi	$a2, $zero, 20716
	addi	$a3, $zero, 4
	slt	$s0, $a3, $a1
	beq	$s0, $zero, bne_else.25014
	jr	$ra
bne_else.25014:
	lw	$a3, 8($a0)
	sll	$t0, $a1, 2
	add	$s1, $a3, $t0
	lw	$a3, 0($s1)
	slti	$s0, $a3, 0
	beq	$s0, $zero, bne_else.25016
	jr	$ra
bne_else.25016:
	lw	$a3, 12($a0)
	sll	$t0, $a1, 2
	add	$s1, $a3, $t0
	lw	$a3, 0($s1)
	sw	$a1, 0($sp)
	bne	$a3, $zero, beq_else.25018
	j	beq_cont.25019
beq_else.25018:
	lw	$a3, 24($a0)
	lw	$a3, 0($a3)
	swc1	$fzero, 20592($zero)
	swc1	$fzero, 20596($zero)
	swc1	$fzero, 20600($zero)
	lw	$t0, 28($a0)
	lw	$t1, 4($a0)
	sll	$a3, $a3, 2
	add	$s1, $a2, $a3
	lw	$a2, 0($s1)
	sll	$a3, $a1, 2
	add	$s1, $t0, $a3
	lw	$a3, 0($s1)
	sll	$t0, $a1, 2
	add	$s1, $t1, $t0
	lw	$t0, 0($s1)
	lwc1	$f0, 0($t0)
	swc1	$f0, 20648($zero)
	lwc1	$f0, 4($t0)
	swc1	$f0, 20652($zero)
	lwc1	$f0, 8($t0)
	swc1	$f0, 20656($zero)
	lw	$t1, 20000($zero)
	addi	$t1, $t1, -1
	sw	$a0, 4($sp)
	sw	$t0, 8($sp)
	sw	$a3, 12($sp)
	sw	$a2, 16($sp)
	add	$a1, $zero, $t1
	add	$a0, $zero, $t0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_startp_constants.2895
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	addi	$a3, $zero, 118
	lw	$a0, 16($sp)
	lw	$a1, 12($sp)
	lw	$a2, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	iter_trace_diffuse_rays.2993
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$a0, 4($sp)
	lw	$a1, 20($a0)
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	add	$s1, $a1, $a3
	lw	$a1, 0($s1)
	lwc1	$f0, 20592($zero)
	swc1	$f0, 0($a1)
	lwc1	$f0, 20596($zero)
	swc1	$f0, 4($a1)
	lwc1	$f0, 20600($zero)
	swc1	$f0, 8($a1)
beq_cont.25019:
	lw	$a1, 0($sp)
	addi	$a1, $a1, 1
	j	pretrace_diffuse_rays.3052
pretrace_pixels.3055:
	addi	$a3, $zero, 20696
	slti	$s0, $a1, 0
	beq	$s0, $zero, bne_else.25020
	jr	$ra
bne_else.25020:
	lwc1	$f3, 20632($zero)
	lw	$t0, 20624($zero)
	sub	$t0, $a1, $t0
	sw	$a2, 0($sp)
	sw	$a3, 4($sp)
	sw	$a0, 8($sp)
	sw	$a1, 12($sp)
	swc1	$f2, 16($sp)
	swc1	$f1, 24($sp)
	swc1	$f0, 32($sp)
	swc1	$f3, 40($sp)
	add	$a0, $zero, $t0
	itof	$f0, $a0
	lwc1	$f1, 40($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 20660($zero)
	mul.s	$f1, $f0, $f1
	lwc1	$f2, 32($sp)
	add.s	$f1, $f1, $f2
	swc1	$f1, 20696($zero)
	lwc1	$f1, 20664($zero)
	mul.s	$f1, $f0, $f1
	lwc1	$f3, 24($sp)
	add.s	$f1, $f1, $f3
	swc1	$f1, 20700($zero)
	lwc1	$f1, 20668($zero)
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 16($sp)
	add.s	$f0, $f0, $f1
	swc1	$f0, 20704($zero)
	lwc1	$f0, 20696($zero)
	mul.s	$f0, $f0, $f0
	lwc1	$f4, 20700($zero)
	mul.s	$f4, $f4, $f4
	add.s	$f0, $f0, $f4
	lwc1	$f4, 20704($zero)
	mul.s	$f4, $f4, $f4
	add.s	$f0, $f0, $f4
	sqrt	$f0, $f0
	c.eq.s	$s1, $f0, $fzero
	beq	$s1, $zero, c.eq_else.25022
	addi	$a0, $zero, 1
	j	c.eq_cont.25023
c.eq_else.25022:
	addi	$a0, $zero, 0
c.eq_cont.25023:
	bne	$a0, $zero, beq_else.25024
	flui	$f1, 16256
	div.s	$f0, $f1, $f0
	j	beq_cont.25025
beq_else.25024:
	flui	$f0, 16256
beq_cont.25025:
	lwc1	$f1, 20696($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 20696($zero)
	lwc1	$f1, 20700($zero)
	mul.s	$f1, $f1, $f0
	swc1	$f1, 20700($zero)
	lwc1	$f1, 20704($zero)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 20704($zero)
	swc1	$fzero, 20604($zero)
	swc1	$fzero, 20608($zero)
	swc1	$fzero, 20612($zero)
	lwc1	$f0, 20300($zero)
	swc1	$f0, 20636($zero)
	lwc1	$f0, 20304($zero)
	swc1	$f0, 20640($zero)
	lwc1	$f0, 20308($zero)
	swc1	$f0, 20644($zero)
	addi	$a0, $zero, 0
	flui	$f0, 16256
	lw	$a1, 12($sp)
	sll	$a2, $a1, 2
	lw	$a3, 8($sp)
	add	$s1, $a3, $a2
	lw	$a2, 0($s1)
	flui	$f1, 0
	lw	$t0, 4($sp)
	add	$a1, $zero, $t0
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	trace_ray.2984
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw	$a0, 12($sp)
	sll	$a1, $a0, 2
	lw	$a2, 8($sp)
	add	$s1, $a2, $a1
	lw	$a1, 0($s1)
	lw	$a1, 0($a1)
	lwc1	$f0, 20604($zero)
	swc1	$f0, 0($a1)
	lwc1	$f0, 20608($zero)
	swc1	$f0, 4($a1)
	lwc1	$f0, 20612($zero)
	swc1	$f0, 8($a1)
	sll	$a1, $a0, 2
	add	$s1, $a2, $a1
	lw	$a1, 0($s1)
	lw	$a1, 24($a1)
	lw	$a3, 0($sp)
	sw	$a3, 0($a1)
	sll	$a1, $a0, 2
	add	$s1, $a2, $a1
	lw	$a1, 0($s1)
	addi	$t0, $zero, 0
	add	$a0, $zero, $a1
	add	$a1, $zero, $t0
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	pretrace_diffuse_rays.3052
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw	$a0, 12($sp)
	addi	$a1, $a0, -1
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	slti	$s0, $a0, 5
	beq	$s0, $zero, bne_else.25026
	add	$a2, $a0, $zero
	j	bne_cont.25027
bne_else.25026:
	addi	$a2, $a0, -5
bne_cont.25027:
	lwc1	$f0, 32($sp)
	lwc1	$f1, 24($sp)
	lwc1	$f2, 16($sp)
	lw	$a0, 8($sp)
	j	pretrace_pixels.3055
scan_pixel.3066:
	lw	$t1, 20616($zero)
	slt	$s0, $a0, $t1
	beq	$s0, $zero, bne_else.25028
	sll	$t1, $a0, 2
	add	$s1, $a3, $t1
	lw	$t1, 0($s1)
	lw	$t1, 0($t1)
	lwc1	$f0, 0($t1)
	swc1	$f0, 20604($zero)
	lwc1	$f0, 4($t1)
	swc1	$f0, 20608($zero)
	lwc1	$f0, 8($t1)
	swc1	$f0, 20612($zero)
	lw	$t1, 20620($zero)
	addi	$t2, $a1, 1
	slt	$s0, $t2, $t1
	beq	$s0, $zero, bne_else.25029
	addi	$t1, $zero, 0
	slt	$s0, $t1, $a1
	beq	$s0, $zero, bne_else.25031
	lw	$t1, 20616($zero)
	addi	$t2, $a0, 1
	slt	$s0, $t2, $t1
	beq	$s0, $zero, bne_else.25033
	addi	$t1, $zero, 0
	slt	$s0, $t1, $a0
	beq	$s0, $zero, bne_else.25035
	addi	$t1, $zero, 1
	j	bne_cont.25036
bne_else.25035:
	addi	$t1, $zero, 0
bne_cont.25036:
	j	bne_cont.25034
bne_else.25033:
	addi	$t1, $zero, 0
bne_cont.25034:
	j	bne_cont.25032
bne_else.25031:
	addi	$t1, $zero, 0
bne_cont.25032:
	j	bne_cont.25030
bne_else.25029:
	addi	$t1, $zero, 0
bne_cont.25030:
	sw	$t0, 0($sp)
	sw	$a3, 4($sp)
	sw	$a2, 8($sp)
	sw	$a1, 12($sp)
	sw	$a0, 16($sp)
	bne	$t1, $zero, beq_else.25037
	sll	$t1, $a0, 2
	add	$s1, $a3, $t1
	lw	$t1, 0($s1)
	addi	$t2, $zero, 0
	add	$a1, $zero, $t2
	add	$a0, $zero, $t1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	do_without_neighbors.3015
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	j	beq_cont.25038
beq_else.25037:
	addi	$t1, $zero, 0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	try_exploit_neighbors.3031
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
beq_cont.25038:
	lwc1	$f0, 20604($zero)
	ftoi	$a0, $f0
	addi	$a1, $zero, 255
	slt	$s0, $a1, $a0
	beq	$s0, $zero, bne_else.25039
	addi	$a0, $zero, 255
	j	bne_cont.25040
bne_else.25039:
	slti	$s0, $a0, 0
	beq	$s0, $zero, bne_else.25041
	addi	$a0, $zero, 0
	j	bne_cont.25042
bne_else.25041:
bne_cont.25042:
bne_cont.25040:
	outc	$a0
	lwc1	$f0, 20608($zero)
	ftoi	$a0, $f0
	addi	$a1, $zero, 255
	slt	$s0, $a1, $a0
	beq	$s0, $zero, bne_else.25043
	addi	$a0, $zero, 255
	j	bne_cont.25044
bne_else.25043:
	slti	$s0, $a0, 0
	beq	$s0, $zero, bne_else.25045
	addi	$a0, $zero, 0
	j	bne_cont.25046
bne_else.25045:
bne_cont.25046:
bne_cont.25044:
	outc	$a0
	lwc1	$f0, 20612($zero)
	ftoi	$a0, $f0
	addi	$a1, $zero, 255
	slt	$s0, $a1, $a0
	beq	$s0, $zero, bne_else.25047
	addi	$a0, $zero, 255
	j	bne_cont.25048
bne_else.25047:
	slti	$s0, $a0, 0
	beq	$s0, $zero, bne_else.25049
	addi	$a0, $zero, 0
	j	bne_cont.25050
bne_else.25049:
bne_cont.25050:
bne_cont.25048:
	outc	$a0
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	lw	$a1, 12($sp)
	lw	$a2, 8($sp)
	lw	$a3, 4($sp)
	lw	$t0, 0($sp)
	j	scan_pixel.3066
bne_else.25028:
	jr	$ra
scan_line.3072:
	lw	$t1, 20620($zero)
	slt	$s0, $a0, $t1
	beq	$s0, $zero, bne_else.25052
	lw	$t1, 20620($zero)
	addi	$t1, $t1, -1
	sw	$t0, 0($sp)
	sw	$a3, 4($sp)
	sw	$a2, 8($sp)
	sw	$a1, 12($sp)
	sw	$a0, 16($sp)
	slt	$s0, $a0, $t1
	beq	$s0, $zero, bne_else.25053
	addi	$t1, $a0, 1
	lwc1	$f0, 20632($zero)
	lw	$t2, 20628($zero)
	sub	$t1, $t1, $t2
	swc1	$f0, 24($sp)
	add	$a0, $zero, $t1
	itof	$f0, $a0
	lwc1	$f1, 24($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 20672($zero)
	mul.s	$f1, $f0, $f1
	lwc1	$f2, 20684($zero)
	add.s	$f1, $f1, $f2
	lwc1	$f2, 20676($zero)
	mul.s	$f2, $f0, $f2
	lwc1	$f3, 20688($zero)
	add.s	$f2, $f2, $f3
	lwc1	$f3, 20680($zero)
	mul.s	$f0, $f0, $f3
	lwc1	$f3, 20692($zero)
	add.s	$f0, $f0, $f3
	lw	$a0, 20616($zero)
	addi	$a1, $a0, -1
	lw	$a0, 4($sp)
	lw	$a2, 0($sp)
	add.s	$f30, $fzero, $f2
	add.s	$f2, $fzero, $f0
	add.s	$f0, $fzero, $f1
	add.s	$f1, $fzero, $f30
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	pretrace_pixels.3055
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	j	bne_cont.25054
bne_else.25053:
bne_cont.25054:
	addi	$a0, $zero, 0
	lw	$a1, 16($sp)
	lw	$a2, 12($sp)
	lw	$a3, 8($sp)
	lw	$t0, 4($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	scan_pixel.3066
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	addi	$a1, $a1, 2
	slti	$s0, $a1, 5
	beq	$s0, $zero, bne_else.25056
	add	$t0, $a1, $zero
	j	bne_cont.25057
bne_else.25056:
	addi	$t0, $a1, -5
bne_cont.25057:
	lw	$a1, 8($sp)
	lw	$a2, 4($sp)
	lw	$a3, 12($sp)
	j	scan_line.3072
bne_else.25052:
	jr	$ra
init_line_elements.3082:
	slti	$s0, $a1, 0
	beq	$s0, $zero, bne_else.25059
	jr	$ra
bne_else.25059:
	addi	$a2, $zero, 3
	flui	$f0, 0
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	add	$a0, $zero, $a2
	sw	$ra, 12($sp)
	jal	min_caml_create_float_array
	lw	$ra, 12($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 8($sp)
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
	flui	$f0, 0
	sw	$a0, 12($sp)
	add	$a0, $zero, $a1
	sw	$ra, 20($sp)
	jal	min_caml_create_float_array
	lw	$ra, 20($sp)
	lw	$a1, 12($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 20($sp)
	jal	min_caml_create_float_array
	lw	$ra, 20($sp)
	lw	$a1, 12($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 20($sp)
	jal	min_caml_create_float_array
	lw	$ra, 20($sp)
	lw	$a1, 12($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 20($sp)
	jal	min_caml_create_float_array
	lw	$ra, 20($sp)
	lw	$a1, 12($sp)
	sw	$a0, 16($a1)
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
	sw	$ra, 20($sp)
	jal	min_caml_create_array
	lw	$ra, 20($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 20($sp)
	add	$a0, $zero, $a1
	sw	$ra, 28($sp)
	jal	min_caml_create_float_array
	lw	$ra, 28($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 28($sp)
	jal	min_caml_create_array
	lw	$ra, 28($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 24($sp)
	add	$a0, $zero, $a1
	sw	$ra, 28($sp)
	jal	min_caml_create_float_array
	lw	$ra, 28($sp)
	lw	$a1, 24($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 28($sp)
	jal	min_caml_create_float_array
	lw	$ra, 28($sp)
	lw	$a1, 24($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 28($sp)
	jal	min_caml_create_float_array
	lw	$ra, 28($sp)
	lw	$a1, 24($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 28($sp)
	jal	min_caml_create_float_array
	lw	$ra, 28($sp)
	lw	$a1, 24($sp)
	sw	$a0, 16($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 28($sp)
	jal	min_caml_create_float_array
	lw	$ra, 28($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 28($sp)
	jal	min_caml_create_array
	lw	$ra, 28($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 28($sp)
	add	$a0, $zero, $a1
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	lw	$a1, 28($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	lw	$a1, 28($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	lw	$a1, 28($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	lw	$a1, 28($sp)
	sw	$a0, 16($a1)
	addi	$a0, $zero, 1
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 36($sp)
	jal	min_caml_create_array
	lw	$ra, 36($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 32($sp)
	add	$a0, $zero, $a1
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 36($sp)
	jal	min_caml_create_array
	lw	$ra, 36($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 36($sp)
	add	$a0, $zero, $a1
	sw	$ra, 44($sp)
	jal	min_caml_create_float_array
	lw	$ra, 44($sp)
	lw	$a1, 36($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 44($sp)
	jal	min_caml_create_float_array
	lw	$ra, 44($sp)
	lw	$a1, 36($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 44($sp)
	jal	min_caml_create_float_array
	lw	$ra, 44($sp)
	lw	$a1, 36($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 44($sp)
	jal	min_caml_create_float_array
	lw	$ra, 44($sp)
	lw	$a1, 36($sp)
	sw	$a0, 16($a1)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 32
	sw	$a1, 28($a0)
	lw	$a1, 32($sp)
	sw	$a1, 24($a0)
	lw	$a1, 28($sp)
	sw	$a1, 20($a0)
	lw	$a1, 24($sp)
	sw	$a1, 16($a0)
	lw	$a1, 20($sp)
	sw	$a1, 12($a0)
	lw	$a1, 16($sp)
	sw	$a1, 8($a0)
	lw	$a1, 12($sp)
	sw	$a1, 4($a0)
	lw	$a1, 8($sp)
	sw	$a1, 0($a0)
	lw	$a1, 4($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$s1, $a3, $a2
	sw	$a0, 0($s1)
	addi	$a1, $a1, -1
	add	$a0, $zero, $a3
	j	init_line_elements.3082
calc_dirvec.3092:
	addi	$a3, $zero, 20716
	slti	$s0, $a0, 5
	beq	$s0, $zero, bne_else.25060
	mul.s	$f0, $f1, $f1
	flui	$f1, 15820
	fori	$f1, $f1, 52429
	add.s	$f0, $f0, $f1
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	swc1	$f3, 8($sp)
	sw	$a0, 16($sp)
	swc1	$f2, 24($sp)
	sqrt	$f0, $f0
	flui	$f1, 16256
	div.s	$f1, $f1, $f0
	c.lt.s	$s0, $fzero, $f1
	beq	$s0, $zero, bne_else.25062
	flui	$f2, 16096
	c.lt.s	$s0, $f1, $f2
	beq	$s0, $zero, bne_else.25064
	mul.s	$f2, $f1, $f1
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f1, $f1, $f2
	j	bne_cont.25065
bne_else.25064:
	flui	$f2, 16412
	c.lt.s	$s0, $f1, $f2
	beq	$s0, $zero, bne_else.25066
	flui	$f2, 16201
	fori	$f2, $f2, 4059
	flui	$f3, 16256
	sub.s	$f3, $f1, $f3
	flui	$f4, 16256
	add.s	$f1, $f1, $f4
	div.s	$f1, $f3, $f1
	mul.s	$f3, $f1, $f1
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f1, $f1, $f3
	add.s	$f1, $f2, $f1
	j	bne_cont.25067
bne_else.25066:
	flui	$f2, 16329
	fori	$f2, $f2, 4059
	flui	$f3, 16256
	div.s	$f1, $f3, $f1
	mul.s	$f3, $f1, $f1
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
bne_cont.25067:
bne_cont.25065:
	j	bne_cont.25063
bne_else.25062:
	sub.s	$f1, $fzero, $f1
	flui	$f2, 16096
	c.lt.s	$s0, $f1, $f2
	beq	$s0, $zero, bne_else.25068
	flui	$f2, 16201
	fori	$f2, $f2, 4059
	flui	$f3, 16256
	sub.s	$f3, $f1, $f3
	flui	$f4, 16256
	add.s	$f1, $f1, $f4
	div.s	$f1, $f3, $f1
	mul.s	$f3, $f1, $f1
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f1, $f1, $f3
	add.s	$f1, $f2, $f1
	sub.s	$f1, $fzero, $f1
	j	bne_cont.25069
bne_else.25068:
	flui	$f2, 16329
	fori	$f2, $f2, 4059
	flui	$f3, 16256
	div.s	$f1, $f3, $f1
	mul.s	$f3, $f1, $f1
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	sub.s	$f1, $fzero, $f1
bne_cont.25069:
bne_cont.25063:
	lwc1	$f2, 24($sp)
	mul.s	$f1, $f1, $f2
	swc1	$f0, 32($sp)
	swc1	$f1, 40($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	sin.2640
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lwc1	$f1, 40($sp)
	swc1	$f0, 48($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	cos.2638
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lwc1	$f1, 48($sp)
	div.s	$f0, $f1, $f0
	lwc1	$f1, 32($sp)
	mul.s	$f0, $f0, $f1
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	mul.s	$f1, $f0, $f0
	flui	$f2, 15820
	fori	$f2, $f2, 52429
	add.s	$f1, $f1, $f2
	swc1	$f0, 56($sp)
	sw	$a0, 64($sp)
	add.s	$f0, $fzero, $f1
	sqrt	$f0, $f0
	flui	$f1, 16256
	div.s	$f1, $f1, $f0
	c.lt.s	$s0, $fzero, $f1
	beq	$s0, $zero, bne_else.25070
	flui	$f2, 16096
	c.lt.s	$s0, $f1, $f2
	beq	$s0, $zero, bne_else.25072
	mul.s	$f2, $f1, $f1
	flui	$f3, 16256
	flui	$f4, 16042
	fori	$f4, $f4, 43690
	flui	$f5, 15948
	fori	$f5, $f5, 52429
	flui	$f6, 15890
	fori	$f6, $f6, 18725
	flui	$f7, 15843
	fori	$f7, $f7, 36408
	flui	$f8, 15799
	fori	$f8, $f8, 54894
	flui	$f9, 15733
	fori	$f9, $f9, 59333
	mul.s	$f9, $f9, $f2
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f2, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f2, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	mul.s	$f1, $f1, $f2
	j	bne_cont.25073
bne_else.25072:
	flui	$f2, 16412
	c.lt.s	$s0, $f1, $f2
	beq	$s0, $zero, bne_else.25074
	flui	$f2, 16201
	fori	$f2, $f2, 4059
	flui	$f3, 16256
	sub.s	$f3, $f1, $f3
	flui	$f4, 16256
	add.s	$f1, $f1, $f4
	div.s	$f1, $f3, $f1
	mul.s	$f3, $f1, $f1
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f1, $f1, $f3
	add.s	$f1, $f2, $f1
	j	bne_cont.25075
bne_else.25074:
	flui	$f2, 16329
	fori	$f2, $f2, 4059
	flui	$f3, 16256
	div.s	$f1, $f3, $f1
	mul.s	$f3, $f1, $f1
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
bne_cont.25075:
bne_cont.25073:
	j	bne_cont.25071
bne_else.25070:
	sub.s	$f1, $fzero, $f1
	flui	$f2, 16096
	c.lt.s	$s0, $f1, $f2
	beq	$s0, $zero, bne_else.25076
	flui	$f2, 16201
	fori	$f2, $f2, 4059
	flui	$f3, 16256
	sub.s	$f3, $f1, $f3
	flui	$f4, 16256
	add.s	$f1, $f1, $f4
	div.s	$f1, $f3, $f1
	mul.s	$f3, $f1, $f1
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f1, $f1, $f3
	add.s	$f1, $f2, $f1
	sub.s	$f1, $fzero, $f1
	j	bne_cont.25077
bne_else.25076:
	flui	$f2, 16329
	fori	$f2, $f2, 4059
	flui	$f3, 16256
	div.s	$f1, $f3, $f1
	mul.s	$f3, $f1, $f1
	flui	$f4, 16256
	flui	$f5, 16042
	fori	$f5, $f5, 43690
	flui	$f6, 15948
	fori	$f6, $f6, 52429
	flui	$f7, 15890
	fori	$f7, $f7, 18725
	flui	$f8, 15843
	fori	$f8, $f8, 36408
	flui	$f9, 15799
	fori	$f9, $f9, 54894
	flui	$f10, 15733
	fori	$f10, $f10, 59333
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f1, $f1, $f3
	sub.s	$f1, $f2, $f1
	sub.s	$f1, $fzero, $f1
bne_cont.25077:
bne_cont.25071:
	lwc1	$f2, 8($sp)
	mul.s	$f1, $f1, $f2
	swc1	$f0, 72($sp)
	swc1	$f1, 80($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	sin.2640
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	lwc1	$f1, 80($sp)
	swc1	$f0, 88($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	cos.2638
	addi	$sp, $sp, -104
	lw	$ra, 100($sp)
	lwc1	$f1, 88($sp)
	div.s	$f0, $f1, $f0
	lwc1	$f1, 72($sp)
	mul.s	$f1, $f0, $f1
	lwc1	$f0, 56($sp)
	lwc1	$f2, 24($sp)
	lwc1	$f3, 8($sp)
	lw	$a0, 64($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	calc_dirvec.3092
bne_else.25060:
	mul.s	$f2, $f0, $f0
	mul.s	$f3, $f1, $f1
	add.s	$f2, $f2, $f3
	flui	$f3, 16256
	add.s	$f2, $f2, $f3
	sw	$a2, 0($sp)
	sw	$a3, 96($sp)
	sw	$a1, 4($sp)
	swc1	$f1, 104($sp)
	swc1	$f0, 112($sp)
	add.s	$f0, $fzero, $f2
	sqrt	$f0, $f0
	lwc1	$f1, 112($sp)
	div.s	$f1, $f1, $f0
	lwc1	$f2, 104($sp)
	div.s	$f2, $f2, $f0
	flui	$f3, 16256
	div.s	$f0, $f3, $f0
	lw	$a0, 4($sp)
	sll	$a0, $a0, 2
	lw	$a1, 96($sp)
	add	$s1, $a1, $a0
	lw	$a0, 0($s1)
	lw	$a1, 0($sp)
	sll	$a2, $a1, 2
	add	$s1, $a0, $a2
	lw	$a2, 0($s1)
	lw	$a2, 0($a2)
	swc1	$f1, 0($a2)
	swc1	$f2, 4($a2)
	swc1	$f0, 8($a2)
	addi	$a2, $a1, 40
	sll	$a2, $a2, 2
	add	$s1, $a0, $a2
	lw	$a2, 0($s1)
	lw	$a2, 0($a2)
	sub.s	$f3, $fzero, $f2
	swc1	$f1, 0($a2)
	swc1	$f0, 4($a2)
	swc1	$f3, 8($a2)
	addi	$a2, $a1, 80
	sll	$a2, $a2, 2
	add	$s1, $a0, $a2
	lw	$a2, 0($s1)
	lw	$a2, 0($a2)
	sub.s	$f3, $fzero, $f1
	sub.s	$f4, $fzero, $f2
	swc1	$f0, 0($a2)
	swc1	$f3, 4($a2)
	swc1	$f4, 8($a2)
	addi	$a2, $a1, 1
	sll	$a2, $a2, 2
	add	$s1, $a0, $a2
	lw	$a2, 0($s1)
	lw	$a2, 0($a2)
	sub.s	$f3, $fzero, $f1
	sub.s	$f4, $fzero, $f2
	sub.s	$f5, $fzero, $f0
	swc1	$f3, 0($a2)
	swc1	$f4, 4($a2)
	swc1	$f5, 8($a2)
	addi	$a2, $a1, 41
	sll	$a2, $a2, 2
	add	$s1, $a0, $a2
	lw	$a2, 0($s1)
	lw	$a2, 0($a2)
	sub.s	$f3, $fzero, $f1
	sub.s	$f4, $fzero, $f0
	swc1	$f3, 0($a2)
	swc1	$f4, 4($a2)
	swc1	$f2, 8($a2)
	addi	$a1, $a1, 81
	sll	$a1, $a1, 2
	add	$s1, $a0, $a1
	lw	$a0, 0($s1)
	lw	$a0, 0($a0)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 0($a0)
	swc1	$f1, 4($a0)
	swc1	$f2, 8($a0)
	jr	$ra
calc_dirvecs.3100:
	slti	$s0, $a0, 0
	beq	$s0, $zero, bne_else.25081
	jr	$ra
bne_else.25081:
	sw	$a0, 0($sp)
	swc1	$f0, 8($sp)
	sw	$a2, 16($sp)
	sw	$a1, 20($sp)
	itof	$f0, $a0
	flui	$f1, 15948
	fori	$f1, $f1, 52429
	mul.s	$f0, $f0, $f1
	flui	$f1, 16230
	fori	$f1, $f1, 26214
	sub.s	$f2, $f0, $f1
	addi	$a0, $zero, 0
	flui	$f0, 0
	flui	$f1, 0
	lwc1	$f3, 8($sp)
	lw	$a1, 20($sp)
	lw	$a2, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.3092
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$a0, 0($sp)
	itof	$f0, $a0
	flui	$f1, 15948
	fori	$f1, $f1, 52429
	mul.s	$f0, $f0, $f1
	flui	$f1, 15820
	fori	$f1, $f1, 52429
	add.s	$f2, $f0, $f1
	addi	$a0, $zero, 0
	flui	$f0, 0
	flui	$f1, 0
	lw	$a1, 16($sp)
	addi	$a2, $a1, 2
	lwc1	$f3, 8($sp)
	lw	$a3, 20($sp)
	add	$a1, $zero, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.3092
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$a0, 0($sp)
	addi	$a0, $a0, -1
	lw	$a1, 20($sp)
	addi	$a1, $a1, 1
	slti	$s0, $a1, 5
	beq	$s0, $zero, bne_else.25084
	j	bne_cont.25085
bne_else.25084:
	addi	$a1, $a1, -5
bne_cont.25085:
	lwc1	$f0, 8($sp)
	lw	$a2, 16($sp)
	j	calc_dirvecs.3100
calc_dirvec_rows.3105:
	slti	$s0, $a0, 0
	beq	$s0, $zero, bne_else.25086
	jr	$ra
bne_else.25086:
	sw	$a0, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	itof	$f0, $a0
	flui	$f1, 15948
	fori	$f1, $f1, 52429
	mul.s	$f0, $f0, $f1
	flui	$f1, 16230
	fori	$f1, $f1, 26214
	sub.s	$f0, $f0, $f1
	addi	$a0, $zero, 4
	lw	$a1, 8($sp)
	lw	$a2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	calc_dirvecs.3100
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$a0, 0($sp)
	addi	$a0, $a0, -1
	lw	$a1, 8($sp)
	addi	$a1, $a1, 2
	slti	$s0, $a1, 5
	beq	$s0, $zero, bne_else.25088
	j	bne_cont.25089
bne_else.25088:
	addi	$a1, $a1, -5
bne_cont.25089:
	lw	$a2, 4($sp)
	addi	$a2, $a2, 4
	j	calc_dirvec_rows.3105
create_dirvec_elements.3111:
	slti	$s0, $a1, 0
	beq	$s0, $zero, bne_else.25090
	jr	$ra
bne_else.25090:
	addi	$a2, $zero, 3
	flui	$f0, 0
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	add	$a0, $zero, $a2
	sw	$ra, 12($sp)
	jal	min_caml_create_float_array
	lw	$ra, 12($sp)
	add	$a1, $a0, $zero
	lw	$a0, 20000($zero)
	sw	$a1, 8($sp)
	sw	$ra, 12($sp)
	jal	min_caml_create_array
	lw	$ra, 12($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 8
	sw	$a0, 4($a1)
	lw	$a0, 8($sp)
	sw	$a0, 0($a1)
	add	$a0, $a1, $zero
	lw	$a1, 4($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$s1, $a3, $a2
	sw	$a0, 0($s1)
	addi	$a1, $a1, -1
	add	$a0, $zero, $a3
	j	create_dirvec_elements.3111
create_dirvecs.3114:
	addi	$a1, $zero, 20716
	slti	$s0, $a0, 0
	beq	$s0, $zero, bne_else.25092
	jr	$ra
bne_else.25092:
	addi	$a2, $zero, 120
	addi	$a3, $zero, 3
	flui	$f0, 0
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	sw	$a2, 8($sp)
	add	$a0, $zero, $a3
	sw	$ra, 12($sp)
	jal	min_caml_create_float_array
	lw	$ra, 12($sp)
	add	$a1, $a0, $zero
	lw	$a0, 20000($zero)
	sw	$a1, 12($sp)
	sw	$ra, 20($sp)
	jal	min_caml_create_array
	lw	$ra, 20($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 8
	sw	$a0, 4($a1)
	lw	$a0, 12($sp)
	sw	$a0, 0($a1)
	lw	$a0, 8($sp)
	sw	$ra, 20($sp)
	jal	min_caml_create_array
	lw	$ra, 20($sp)
	lw	$a1, 4($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$s1, $a3, $a2
	sw	$a0, 0($s1)
	sll	$a0, $a1, 2
	add	$s1, $a3, $a0
	lw	$a0, 0($s1)
	addi	$a2, $zero, 118
	add	$a1, $zero, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_dirvec_elements.3111
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$a0, 4($sp)
	addi	$a0, $a0, -1
	j	create_dirvecs.3114
init_dirvec_constants.3116:
	slti	$s0, $a1, 0
	beq	$s0, $zero, bne_else.25094
	jr	$ra
bne_else.25094:
	sll	$a2, $a1, 2
	add	$s1, $a0, $a2
	lw	$a2, 0($s1)
	lw	$a3, 20000($zero)
	addi	$a3, $a3, -1
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	add	$a1, $zero, $a3
	add	$a0, $zero, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	iter_setup_dirvec_constants.2890
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$a0, 4($sp)
	addi	$a1, $a0, -1
	lw	$a0, 0($sp)
	j	init_dirvec_constants.3116
init_vecset_constants.3119:
	addi	$a1, $zero, 20716
	slti	$s0, $a0, 0
	beq	$s0, $zero, bne_else.25096
	jr	$ra
bne_else.25096:
	sll	$a2, $a0, 2
	add	$s1, $a1, $a2
	lw	$a1, 0($s1)
	addi	$a2, $zero, 119
	sw	$a0, 0($sp)
	add	$a0, $zero, $a1
	add	$a1, $zero, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	init_dirvec_constants.3116
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$a0, 0($sp)
	addi	$a0, $a0, -1
	j	init_vecset_constants.3119
_min_caml_start:
	lui	$sp, 1
	lui	$gp, 3
	addi	$a0, $zero, 0
	sw	$a0, 20000($zero)
	addi	$a0, $zero, 20004
	addi	$a1, $zero, 0
	addi	$a2, $zero, 0
	addi	$a3, $zero, 0
	addi	$t0, $zero, 0
	addi	$t1, $zero, 0
	sw	$a0, 20088($zero)
	sw	$a0, 20084($zero)
	sw	$a0, 20080($zero)
	sw	$a0, 20076($zero)
	sw	$t1, 20072($zero)
	sw	$a0, 20068($zero)
	sw	$a0, 20064($zero)
	sw	$t0, 20060($zero)
	sw	$a3, 20056($zero)
	sw	$a2, 20052($zero)
	sw	$a1, 20048($zero)
	addi	$a0, $zero, 20004
	sw	$a0, 20284($zero)
	sw	$a0, 20280($zero)
	sw	$a0, 20276($zero)
	sw	$a0, 20272($zero)
	sw	$a0, 20268($zero)
	sw	$a0, 20264($zero)
	sw	$a0, 20260($zero)
	sw	$a0, 20256($zero)
	sw	$a0, 20252($zero)
	sw	$a0, 20248($zero)
	sw	$a0, 20244($zero)
	sw	$a0, 20240($zero)
	sw	$a0, 20236($zero)
	sw	$a0, 20232($zero)
	sw	$a0, 20228($zero)
	sw	$a0, 20224($zero)
	sw	$a0, 20220($zero)
	sw	$a0, 20216($zero)
	sw	$a0, 20212($zero)
	sw	$a0, 20208($zero)
	sw	$a0, 20204($zero)
	sw	$a0, 20200($zero)
	sw	$a0, 20196($zero)
	sw	$a0, 20192($zero)
	sw	$a0, 20188($zero)
	sw	$a0, 20184($zero)
	sw	$a0, 20180($zero)
	sw	$a0, 20176($zero)
	sw	$a0, 20172($zero)
	sw	$a0, 20168($zero)
	sw	$a0, 20164($zero)
	sw	$a0, 20160($zero)
	sw	$a0, 20156($zero)
	sw	$a0, 20152($zero)
	sw	$a0, 20148($zero)
	sw	$a0, 20144($zero)
	sw	$a0, 20140($zero)
	sw	$a0, 20136($zero)
	sw	$a0, 20132($zero)
	sw	$a0, 20128($zero)
	sw	$a0, 20124($zero)
	sw	$a0, 20120($zero)
	sw	$a0, 20116($zero)
	sw	$a0, 20112($zero)
	sw	$a0, 20108($zero)
	sw	$a0, 20104($zero)
	sw	$a0, 20100($zero)
	sw	$a0, 20096($zero)
	sw	$a0, 20092($zero)
	sw	$a0, 20088($zero)
	sw	$a0, 20084($zero)
	sw	$a0, 20080($zero)
	sw	$a0, 20076($zero)
	sw	$a0, 20072($zero)
	sw	$a0, 20068($zero)
	sw	$a0, 20064($zero)
	sw	$a0, 20060($zero)
	sw	$a0, 20056($zero)
	sw	$a0, 20052($zero)
	sw	$a0, 20048($zero)
	addi	$a0, $zero, 20048
	swc1	$fzero, 20296($zero)
	swc1	$fzero, 20292($zero)
	swc1	$fzero, 20288($zero)
	swc1	$fzero, 20308($zero)
	swc1	$fzero, 20304($zero)
	swc1	$fzero, 20300($zero)
	swc1	$fzero, 20320($zero)
	swc1	$fzero, 20316($zero)
	swc1	$fzero, 20312($zero)
	flui	$f0, 17279
	swc1	$f0, 20324($zero)
	addi	$a1, $zero, -1
	sw	$a1, 20328($zero)
	addi	$a1, $zero, 20328
	sw	$a1, 20528($zero)
	sw	$a1, 20524($zero)
	sw	$a1, 20520($zero)
	sw	$a1, 20516($zero)
	sw	$a1, 20512($zero)
	sw	$a1, 20508($zero)
	sw	$a1, 20504($zero)
	sw	$a1, 20500($zero)
	sw	$a1, 20496($zero)
	sw	$a1, 20492($zero)
	sw	$a1, 20488($zero)
	sw	$a1, 20484($zero)
	sw	$a1, 20480($zero)
	sw	$a1, 20476($zero)
	sw	$a1, 20472($zero)
	sw	$a1, 20468($zero)
	sw	$a1, 20464($zero)
	sw	$a1, 20460($zero)
	sw	$a1, 20456($zero)
	sw	$a1, 20452($zero)
	sw	$a1, 20448($zero)
	sw	$a1, 20444($zero)
	sw	$a1, 20440($zero)
	sw	$a1, 20436($zero)
	sw	$a1, 20432($zero)
	sw	$a1, 20428($zero)
	sw	$a1, 20424($zero)
	sw	$a1, 20420($zero)
	sw	$a1, 20416($zero)
	sw	$a1, 20412($zero)
	sw	$a1, 20408($zero)
	sw	$a1, 20404($zero)
	sw	$a1, 20400($zero)
	sw	$a1, 20396($zero)
	sw	$a1, 20392($zero)
	sw	$a1, 20388($zero)
	sw	$a1, 20384($zero)
	sw	$a1, 20380($zero)
	sw	$a1, 20376($zero)
	sw	$a1, 20372($zero)
	sw	$a1, 20368($zero)
	sw	$a1, 20364($zero)
	sw	$a1, 20360($zero)
	sw	$a1, 20356($zero)
	sw	$a1, 20352($zero)
	sw	$a1, 20348($zero)
	sw	$a1, 20344($zero)
	sw	$a1, 20340($zero)
	sw	$a1, 20336($zero)
	sw	$a1, 20332($zero)
	lw	$a1, 20332($zero)
	sw	$a1, 20532($zero)
	addi	$a1, $zero, 20532
	sw	$a1, 20536($zero)
	swc1	$fzero, 20540($zero)
	addi	$a1, $zero, 0
	sw	$a1, 20544($zero)
	flui	$f0, 20078
	fori	$f0, $f0, 27432
	swc1	$f0, 20548($zero)
	swc1	$fzero, 20560($zero)
	swc1	$fzero, 20556($zero)
	swc1	$fzero, 20552($zero)
	addi	$a1, $zero, 0
	sw	$a1, 20564($zero)
	swc1	$fzero, 20576($zero)
	swc1	$fzero, 20572($zero)
	swc1	$fzero, 20568($zero)
	swc1	$fzero, 20588($zero)
	swc1	$fzero, 20584($zero)
	swc1	$fzero, 20580($zero)
	swc1	$fzero, 20600($zero)
	swc1	$fzero, 20596($zero)
	swc1	$fzero, 20592($zero)
	swc1	$fzero, 20612($zero)
	swc1	$fzero, 20608($zero)
	swc1	$fzero, 20604($zero)
	addi	$a1, $zero, 0
	sw	$a1, 20620($zero)
	sw	$a1, 20616($zero)
	addi	$a1, $zero, 0
	sw	$a1, 20628($zero)
	sw	$a1, 20624($zero)
	swc1	$fzero, 20632($zero)
	swc1	$fzero, 20644($zero)
	swc1	$fzero, 20640($zero)
	swc1	$fzero, 20636($zero)
	swc1	$fzero, 20656($zero)
	swc1	$fzero, 20652($zero)
	swc1	$fzero, 20648($zero)
	swc1	$fzero, 20668($zero)
	swc1	$fzero, 20664($zero)
	swc1	$fzero, 20660($zero)
	swc1	$fzero, 20680($zero)
	swc1	$fzero, 20676($zero)
	swc1	$fzero, 20672($zero)
	swc1	$fzero, 20692($zero)
	swc1	$fzero, 20688($zero)
	swc1	$fzero, 20684($zero)
	swc1	$fzero, 20704($zero)
	swc1	$fzero, 20700($zero)
	swc1	$fzero, 20696($zero)
	addi	$a1, $zero, 20708
	addi	$a2, $zero, 20708
	sw	$a2, 20720($zero)
	sw	$a1, 20716($zero)
	addi	$a1, $zero, 20716
	sw	$a1, 20732($zero)
	sw	$a1, 20728($zero)
	sw	$a1, 20724($zero)
	sw	$a1, 20720($zero)
	sw	$a1, 20716($zero)
	addi	$a1, $zero, 20736
	swc1	$fzero, 20744($zero)
	swc1	$fzero, 20740($zero)
	swc1	$fzero, 20736($zero)
	addi	$a2, $zero, 20736
	sw	$a1, 20984($zero)
	sw	$a1, 20980($zero)
	sw	$a1, 20976($zero)
	sw	$a1, 20972($zero)
	sw	$a1, 20968($zero)
	sw	$a1, 20964($zero)
	sw	$a1, 20960($zero)
	sw	$a1, 20956($zero)
	sw	$a1, 20952($zero)
	sw	$a1, 20948($zero)
	sw	$a1, 20944($zero)
	sw	$a1, 20940($zero)
	sw	$a1, 20936($zero)
	sw	$a1, 20932($zero)
	sw	$a1, 20928($zero)
	sw	$a1, 20924($zero)
	sw	$a1, 20920($zero)
	sw	$a1, 20916($zero)
	sw	$a1, 20912($zero)
	sw	$a1, 20908($zero)
	sw	$a1, 20904($zero)
	sw	$a1, 20900($zero)
	sw	$a1, 20896($zero)
	sw	$a1, 20892($zero)
	sw	$a1, 20888($zero)
	sw	$a1, 20884($zero)
	sw	$a1, 20880($zero)
	sw	$a1, 20876($zero)
	sw	$a1, 20872($zero)
	sw	$a1, 20868($zero)
	sw	$a1, 20864($zero)
	sw	$a1, 20860($zero)
	sw	$a1, 20856($zero)
	sw	$a1, 20852($zero)
	sw	$a1, 20848($zero)
	sw	$a1, 20844($zero)
	sw	$a1, 20840($zero)
	sw	$a1, 20836($zero)
	sw	$a1, 20832($zero)
	sw	$a1, 20828($zero)
	sw	$a1, 20824($zero)
	sw	$a1, 20820($zero)
	sw	$a1, 20816($zero)
	sw	$a1, 20812($zero)
	sw	$a1, 20808($zero)
	sw	$a1, 20804($zero)
	sw	$a1, 20800($zero)
	sw	$a1, 20796($zero)
	sw	$a1, 20792($zero)
	sw	$a1, 20788($zero)
	sw	$a1, 20784($zero)
	sw	$a1, 20780($zero)
	sw	$a1, 20776($zero)
	sw	$a1, 20772($zero)
	sw	$a1, 20768($zero)
	sw	$a1, 20764($zero)
	sw	$a1, 20760($zero)
	sw	$a1, 20756($zero)
	sw	$a1, 20752($zero)
	sw	$a1, 20748($zero)
	addi	$a1, $zero, 20748
	sw	$a1, 21000($zero)
	sw	$a2, 20996($zero)
	addi	$a1, $zero, 20988
	addi	$a2, $zero, 20996
	addi	$a3, $zero, 20996
	sw	$a3, 21008($zero)
	sw	$a2, 21004($zero)
	addi	$a2, $zero, 20996
	addi	$a3, $zero, 0
	swc1	$fzero, 21024($zero)
	sw	$a2, 21020($zero)
	sw	$a3, 21016($zero)
	addi	$a2, $zero, 21004
	sw	$a2, 21732($zero)
	sw	$a2, 21728($zero)
	sw	$a2, 21724($zero)
	sw	$a2, 21720($zero)
	sw	$a2, 21716($zero)
	sw	$a2, 21712($zero)
	sw	$a2, 21708($zero)
	sw	$a2, 21704($zero)
	sw	$a2, 21700($zero)
	sw	$a2, 21696($zero)
	sw	$a2, 21692($zero)
	sw	$a2, 21688($zero)
	sw	$a2, 21684($zero)
	sw	$a2, 21680($zero)
	sw	$a2, 21676($zero)
	sw	$a2, 21672($zero)
	sw	$a2, 21668($zero)
	sw	$a2, 21664($zero)
	sw	$a2, 21660($zero)
	sw	$a2, 21656($zero)
	sw	$a2, 21652($zero)
	sw	$a2, 21648($zero)
	sw	$a2, 21644($zero)
	sw	$a2, 21640($zero)
	sw	$a2, 21636($zero)
	sw	$a2, 21632($zero)
	sw	$a2, 21628($zero)
	sw	$a2, 21624($zero)
	sw	$a2, 21620($zero)
	sw	$a2, 21616($zero)
	sw	$a2, 21612($zero)
	sw	$a2, 21608($zero)
	sw	$a2, 21604($zero)
	sw	$a2, 21600($zero)
	sw	$a2, 21596($zero)
	sw	$a2, 21592($zero)
	sw	$a2, 21588($zero)
	sw	$a2, 21584($zero)
	sw	$a2, 21580($zero)
	sw	$a2, 21576($zero)
	sw	$a2, 21572($zero)
	sw	$a2, 21568($zero)
	sw	$a2, 21564($zero)
	sw	$a2, 21560($zero)
	sw	$a2, 21556($zero)
	sw	$a2, 21552($zero)
	sw	$a2, 21548($zero)
	sw	$a2, 21544($zero)
	sw	$a2, 21540($zero)
	sw	$a2, 21536($zero)
	sw	$a2, 21532($zero)
	sw	$a2, 21528($zero)
	sw	$a2, 21524($zero)
	sw	$a2, 21520($zero)
	sw	$a2, 21516($zero)
	sw	$a2, 21512($zero)
	sw	$a2, 21508($zero)
	sw	$a2, 21504($zero)
	sw	$a2, 21500($zero)
	sw	$a2, 21496($zero)
	sw	$a2, 21492($zero)
	sw	$a2, 21488($zero)
	sw	$a2, 21484($zero)
	sw	$a2, 21480($zero)
	sw	$a2, 21476($zero)
	sw	$a2, 21472($zero)
	sw	$a2, 21468($zero)
	sw	$a2, 21464($zero)
	sw	$a2, 21460($zero)
	sw	$a2, 21456($zero)
	sw	$a2, 21452($zero)
	sw	$a2, 21448($zero)
	sw	$a2, 21444($zero)
	sw	$a2, 21440($zero)
	sw	$a2, 21436($zero)
	sw	$a2, 21432($zero)
	sw	$a2, 21428($zero)
	sw	$a2, 21424($zero)
	sw	$a2, 21420($zero)
	sw	$a2, 21416($zero)
	sw	$a2, 21412($zero)
	sw	$a2, 21408($zero)
	sw	$a2, 21404($zero)
	sw	$a2, 21400($zero)
	sw	$a2, 21396($zero)
	sw	$a2, 21392($zero)
	sw	$a2, 21388($zero)
	sw	$a2, 21384($zero)
	sw	$a2, 21380($zero)
	sw	$a2, 21376($zero)
	sw	$a2, 21372($zero)
	sw	$a2, 21368($zero)
	sw	$a2, 21364($zero)
	sw	$a2, 21360($zero)
	sw	$a2, 21356($zero)
	sw	$a2, 21352($zero)
	sw	$a2, 21348($zero)
	sw	$a2, 21344($zero)
	sw	$a2, 21340($zero)
	sw	$a2, 21336($zero)
	sw	$a2, 21332($zero)
	sw	$a2, 21328($zero)
	sw	$a2, 21324($zero)
	sw	$a2, 21320($zero)
	sw	$a2, 21316($zero)
	sw	$a2, 21312($zero)
	sw	$a2, 21308($zero)
	sw	$a2, 21304($zero)
	sw	$a2, 21300($zero)
	sw	$a2, 21296($zero)
	sw	$a2, 21292($zero)
	sw	$a2, 21288($zero)
	sw	$a2, 21284($zero)
	sw	$a2, 21280($zero)
	sw	$a2, 21276($zero)
	sw	$a2, 21272($zero)
	sw	$a2, 21268($zero)
	sw	$a2, 21264($zero)
	sw	$a2, 21260($zero)
	sw	$a2, 21256($zero)
	sw	$a2, 21252($zero)
	sw	$a2, 21248($zero)
	sw	$a2, 21244($zero)
	sw	$a2, 21240($zero)
	sw	$a2, 21236($zero)
	sw	$a2, 21232($zero)
	sw	$a2, 21228($zero)
	sw	$a2, 21224($zero)
	sw	$a2, 21220($zero)
	sw	$a2, 21216($zero)
	sw	$a2, 21212($zero)
	sw	$a2, 21208($zero)
	sw	$a2, 21204($zero)
	sw	$a2, 21200($zero)
	sw	$a2, 21196($zero)
	sw	$a2, 21192($zero)
	sw	$a2, 21188($zero)
	sw	$a2, 21184($zero)
	sw	$a2, 21180($zero)
	sw	$a2, 21176($zero)
	sw	$a2, 21172($zero)
	sw	$a2, 21168($zero)
	sw	$a2, 21164($zero)
	sw	$a2, 21160($zero)
	sw	$a2, 21156($zero)
	sw	$a2, 21152($zero)
	sw	$a2, 21148($zero)
	sw	$a2, 21144($zero)
	sw	$a2, 21140($zero)
	sw	$a2, 21136($zero)
	sw	$a2, 21132($zero)
	sw	$a2, 21128($zero)
	sw	$a2, 21124($zero)
	sw	$a2, 21120($zero)
	sw	$a2, 21116($zero)
	sw	$a2, 21112($zero)
	sw	$a2, 21108($zero)
	sw	$a2, 21104($zero)
	sw	$a2, 21100($zero)
	sw	$a2, 21096($zero)
	sw	$a2, 21092($zero)
	sw	$a2, 21088($zero)
	sw	$a2, 21084($zero)
	sw	$a2, 21080($zero)
	sw	$a2, 21076($zero)
	sw	$a2, 21072($zero)
	sw	$a2, 21068($zero)
	sw	$a2, 21064($zero)
	sw	$a2, 21060($zero)
	sw	$a2, 21056($zero)
	sw	$a2, 21052($zero)
	sw	$a2, 21048($zero)
	sw	$a2, 21044($zero)
	sw	$a2, 21040($zero)
	sw	$a2, 21036($zero)
	sw	$a2, 21032($zero)
	sw	$a2, 21028($zero)
	sw	$a2, 21024($zero)
	sw	$a2, 21020($zero)
	sw	$a2, 21016($zero)
	addi	$a2, $zero, 21016
	addi	$a3, $zero, 0
	sw	$a3, 21736($zero)
	addi	$a3, $zero, 128
	addi	$t0, $zero, 128
	sw	$a3, 20616($zero)
	sw	$t0, 20620($zero)
	addi	$t0, $zero, 64
	sw	$t0, 20624($zero)
	addi	$t0, $zero, 64
	sw	$t0, 20628($zero)
	flui	$f0, 17152
	sw	$a2, 0($sp)
	sw	$a0, 4($sp)
	sw	$a1, 8($sp)
	swc1	$f0, 16($sp)
	add	$a0, $zero, $a3
	itof	$f0, $a0
	lwc1	$f1, 16($sp)
	div.s	$f0, $f1, $f0
	swc1	$f0, 20632($zero)
	lw	$a0, 20616($zero)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 24($sp)
	add	$a0, $zero, $a1
	sw	$ra, 28($sp)
	jal	min_caml_create_float_array
	lw	$ra, 28($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 28($sp)
	add	$a0, $zero, $a1
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 36($sp)
	jal	min_caml_create_array
	lw	$ra, 36($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 32($sp)
	add	$a0, $zero, $a1
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	lw	$a1, 32($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	lw	$a1, 32($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	lw	$a1, 32($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 36($sp)
	jal	min_caml_create_float_array
	lw	$ra, 36($sp)
	lw	$a1, 32($sp)
	sw	$a0, 16($a1)
	addi	$a0, $zero, 5
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 36($sp)
	jal	min_caml_create_array
	lw	$ra, 36($sp)
	addi	$a1, $zero, 5
	addi	$a2, $zero, 0
	sw	$a0, 36($sp)
	add	$a0, $zero, $a1
	add	$a1, $zero, $a2
	sw	$ra, 44($sp)
	jal	min_caml_create_array
	lw	$ra, 44($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 40($sp)
	add	$a0, $zero, $a1
	sw	$ra, 44($sp)
	jal	min_caml_create_float_array
	lw	$ra, 44($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 44($sp)
	jal	min_caml_create_array
	lw	$ra, 44($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 44($sp)
	add	$a0, $zero, $a1
	sw	$ra, 52($sp)
	jal	min_caml_create_float_array
	lw	$ra, 52($sp)
	lw	$a1, 44($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 52($sp)
	jal	min_caml_create_float_array
	lw	$ra, 52($sp)
	lw	$a1, 44($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 52($sp)
	jal	min_caml_create_float_array
	lw	$ra, 52($sp)
	lw	$a1, 44($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 52($sp)
	jal	min_caml_create_float_array
	lw	$ra, 52($sp)
	lw	$a1, 44($sp)
	sw	$a0, 16($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 52($sp)
	jal	min_caml_create_float_array
	lw	$ra, 52($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 52($sp)
	jal	min_caml_create_array
	lw	$ra, 52($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 48($sp)
	add	$a0, $zero, $a1
	sw	$ra, 52($sp)
	jal	min_caml_create_float_array
	lw	$ra, 52($sp)
	lw	$a1, 48($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 52($sp)
	jal	min_caml_create_float_array
	lw	$ra, 52($sp)
	lw	$a1, 48($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 52($sp)
	jal	min_caml_create_float_array
	lw	$ra, 52($sp)
	lw	$a1, 48($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 52($sp)
	jal	min_caml_create_float_array
	lw	$ra, 52($sp)
	lw	$a1, 48($sp)
	sw	$a0, 16($a1)
	addi	$a0, $zero, 1
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 52($sp)
	jal	min_caml_create_array
	lw	$ra, 52($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 52($sp)
	add	$a0, $zero, $a1
	sw	$ra, 60($sp)
	jal	min_caml_create_float_array
	lw	$ra, 60($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 60($sp)
	jal	min_caml_create_array
	lw	$ra, 60($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 56($sp)
	add	$a0, $zero, $a1
	sw	$ra, 60($sp)
	jal	min_caml_create_float_array
	lw	$ra, 60($sp)
	lw	$a1, 56($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 60($sp)
	jal	min_caml_create_float_array
	lw	$ra, 60($sp)
	lw	$a1, 56($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 60($sp)
	jal	min_caml_create_float_array
	lw	$ra, 60($sp)
	lw	$a1, 56($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 60($sp)
	jal	min_caml_create_float_array
	lw	$ra, 60($sp)
	lw	$a1, 56($sp)
	sw	$a0, 16($a1)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 32
	sw	$a1, 28($a0)
	lw	$a1, 52($sp)
	sw	$a1, 24($a0)
	lw	$a1, 48($sp)
	sw	$a1, 20($a0)
	lw	$a1, 44($sp)
	sw	$a1, 16($a0)
	lw	$a1, 40($sp)
	sw	$a1, 12($a0)
	lw	$a1, 36($sp)
	sw	$a1, 8($a0)
	lw	$a1, 32($sp)
	sw	$a1, 4($a0)
	lw	$a1, 28($sp)
	sw	$a1, 0($a0)
	add	$a1, $a0, $zero
	lw	$a0, 24($sp)
	sw	$ra, 60($sp)
	jal	min_caml_create_array
	lw	$ra, 60($sp)
	lw	$a1, 20616($zero)
	addi	$a1, $a1, -2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	init_line_elements.3082
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$a1, 20616($zero)
	addi	$a2, $zero, 3
	flui	$f0, 0
	sw	$a0, 60($sp)
	sw	$a1, 64($sp)
	add	$a0, $zero, $a2
	sw	$ra, 68($sp)
	jal	min_caml_create_float_array
	lw	$ra, 68($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 68($sp)
	add	$a0, $zero, $a1
	sw	$ra, 76($sp)
	jal	min_caml_create_float_array
	lw	$ra, 76($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 76($sp)
	jal	min_caml_create_array
	lw	$ra, 76($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 72($sp)
	add	$a0, $zero, $a1
	sw	$ra, 76($sp)
	jal	min_caml_create_float_array
	lw	$ra, 76($sp)
	lw	$a1, 72($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 76($sp)
	jal	min_caml_create_float_array
	lw	$ra, 76($sp)
	lw	$a1, 72($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 76($sp)
	jal	min_caml_create_float_array
	lw	$ra, 76($sp)
	lw	$a1, 72($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 76($sp)
	jal	min_caml_create_float_array
	lw	$ra, 76($sp)
	lw	$a1, 72($sp)
	sw	$a0, 16($a1)
	addi	$a0, $zero, 5
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 76($sp)
	jal	min_caml_create_array
	lw	$ra, 76($sp)
	addi	$a1, $zero, 5
	addi	$a2, $zero, 0
	sw	$a0, 76($sp)
	add	$a0, $zero, $a1
	add	$a1, $zero, $a2
	sw	$ra, 84($sp)
	jal	min_caml_create_array
	lw	$ra, 84($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 80($sp)
	add	$a0, $zero, $a1
	sw	$ra, 84($sp)
	jal	min_caml_create_float_array
	lw	$ra, 84($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 84($sp)
	jal	min_caml_create_array
	lw	$ra, 84($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 84($sp)
	add	$a0, $zero, $a1
	sw	$ra, 92($sp)
	jal	min_caml_create_float_array
	lw	$ra, 92($sp)
	lw	$a1, 84($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 92($sp)
	jal	min_caml_create_float_array
	lw	$ra, 92($sp)
	lw	$a1, 84($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 92($sp)
	jal	min_caml_create_float_array
	lw	$ra, 92($sp)
	lw	$a1, 84($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 92($sp)
	jal	min_caml_create_float_array
	lw	$ra, 92($sp)
	lw	$a1, 84($sp)
	sw	$a0, 16($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 92($sp)
	jal	min_caml_create_float_array
	lw	$ra, 92($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 92($sp)
	jal	min_caml_create_array
	lw	$ra, 92($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 88($sp)
	add	$a0, $zero, $a1
	sw	$ra, 92($sp)
	jal	min_caml_create_float_array
	lw	$ra, 92($sp)
	lw	$a1, 88($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 92($sp)
	jal	min_caml_create_float_array
	lw	$ra, 92($sp)
	lw	$a1, 88($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 92($sp)
	jal	min_caml_create_float_array
	lw	$ra, 92($sp)
	lw	$a1, 88($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 92($sp)
	jal	min_caml_create_float_array
	lw	$ra, 92($sp)
	lw	$a1, 88($sp)
	sw	$a0, 16($a1)
	addi	$a0, $zero, 1
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 92($sp)
	jal	min_caml_create_array
	lw	$ra, 92($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 92($sp)
	add	$a0, $zero, $a1
	sw	$ra, 100($sp)
	jal	min_caml_create_float_array
	lw	$ra, 100($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 100($sp)
	jal	min_caml_create_array
	lw	$ra, 100($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 96($sp)
	add	$a0, $zero, $a1
	sw	$ra, 100($sp)
	jal	min_caml_create_float_array
	lw	$ra, 100($sp)
	lw	$a1, 96($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 100($sp)
	jal	min_caml_create_float_array
	lw	$ra, 100($sp)
	lw	$a1, 96($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 100($sp)
	jal	min_caml_create_float_array
	lw	$ra, 100($sp)
	lw	$a1, 96($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 100($sp)
	jal	min_caml_create_float_array
	lw	$ra, 100($sp)
	lw	$a1, 96($sp)
	sw	$a0, 16($a1)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 32
	sw	$a1, 28($a0)
	lw	$a1, 92($sp)
	sw	$a1, 24($a0)
	lw	$a1, 88($sp)
	sw	$a1, 20($a0)
	lw	$a1, 84($sp)
	sw	$a1, 16($a0)
	lw	$a1, 80($sp)
	sw	$a1, 12($a0)
	lw	$a1, 76($sp)
	sw	$a1, 8($a0)
	lw	$a1, 72($sp)
	sw	$a1, 4($a0)
	lw	$a1, 68($sp)
	sw	$a1, 0($a0)
	add	$a1, $a0, $zero
	lw	$a0, 64($sp)
	sw	$ra, 100($sp)
	jal	min_caml_create_array
	lw	$ra, 100($sp)
	lw	$a1, 20616($zero)
	addi	$a1, $a1, -2
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	init_line_elements.3082
	addi	$sp, $sp, -104
	lw	$ra, 100($sp)
	lw	$a1, 20616($zero)
	addi	$a2, $zero, 3
	flui	$f0, 0
	sw	$a0, 100($sp)
	sw	$a1, 104($sp)
	add	$a0, $zero, $a2
	sw	$ra, 108($sp)
	jal	min_caml_create_float_array
	lw	$ra, 108($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 108($sp)
	add	$a0, $zero, $a1
	sw	$ra, 116($sp)
	jal	min_caml_create_float_array
	lw	$ra, 116($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 116($sp)
	jal	min_caml_create_array
	lw	$ra, 116($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 112($sp)
	add	$a0, $zero, $a1
	sw	$ra, 116($sp)
	jal	min_caml_create_float_array
	lw	$ra, 116($sp)
	lw	$a1, 112($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 116($sp)
	jal	min_caml_create_float_array
	lw	$ra, 116($sp)
	lw	$a1, 112($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 116($sp)
	jal	min_caml_create_float_array
	lw	$ra, 116($sp)
	lw	$a1, 112($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 116($sp)
	jal	min_caml_create_float_array
	lw	$ra, 116($sp)
	lw	$a1, 112($sp)
	sw	$a0, 16($a1)
	addi	$a0, $zero, 5
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 116($sp)
	jal	min_caml_create_array
	lw	$ra, 116($sp)
	addi	$a1, $zero, 5
	addi	$a2, $zero, 0
	sw	$a0, 116($sp)
	add	$a0, $zero, $a1
	add	$a1, $zero, $a2
	sw	$ra, 124($sp)
	jal	min_caml_create_array
	lw	$ra, 124($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 120($sp)
	add	$a0, $zero, $a1
	sw	$ra, 124($sp)
	jal	min_caml_create_float_array
	lw	$ra, 124($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 124($sp)
	jal	min_caml_create_array
	lw	$ra, 124($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 124($sp)
	add	$a0, $zero, $a1
	sw	$ra, 132($sp)
	jal	min_caml_create_float_array
	lw	$ra, 132($sp)
	lw	$a1, 124($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 132($sp)
	jal	min_caml_create_float_array
	lw	$ra, 132($sp)
	lw	$a1, 124($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 132($sp)
	jal	min_caml_create_float_array
	lw	$ra, 132($sp)
	lw	$a1, 124($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 132($sp)
	jal	min_caml_create_float_array
	lw	$ra, 132($sp)
	lw	$a1, 124($sp)
	sw	$a0, 16($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 132($sp)
	jal	min_caml_create_float_array
	lw	$ra, 132($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 132($sp)
	jal	min_caml_create_array
	lw	$ra, 132($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 128($sp)
	add	$a0, $zero, $a1
	sw	$ra, 132($sp)
	jal	min_caml_create_float_array
	lw	$ra, 132($sp)
	lw	$a1, 128($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 132($sp)
	jal	min_caml_create_float_array
	lw	$ra, 132($sp)
	lw	$a1, 128($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 132($sp)
	jal	min_caml_create_float_array
	lw	$ra, 132($sp)
	lw	$a1, 128($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 132($sp)
	jal	min_caml_create_float_array
	lw	$ra, 132($sp)
	lw	$a1, 128($sp)
	sw	$a0, 16($a1)
	addi	$a0, $zero, 1
	addi	$a2, $zero, 0
	add	$a1, $zero, $a2
	sw	$ra, 132($sp)
	jal	min_caml_create_array
	lw	$ra, 132($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 132($sp)
	add	$a0, $zero, $a1
	sw	$ra, 140($sp)
	jal	min_caml_create_float_array
	lw	$ra, 140($sp)
	add	$a1, $a0, $zero
	addi	$a0, $zero, 5
	sw	$ra, 140($sp)
	jal	min_caml_create_array
	lw	$ra, 140($sp)
	addi	$a1, $zero, 3
	flui	$f0, 0
	sw	$a0, 136($sp)
	add	$a0, $zero, $a1
	sw	$ra, 140($sp)
	jal	min_caml_create_float_array
	lw	$ra, 140($sp)
	lw	$a1, 136($sp)
	sw	$a0, 4($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 140($sp)
	jal	min_caml_create_float_array
	lw	$ra, 140($sp)
	lw	$a1, 136($sp)
	sw	$a0, 8($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 140($sp)
	jal	min_caml_create_float_array
	lw	$ra, 140($sp)
	lw	$a1, 136($sp)
	sw	$a0, 12($a1)
	addi	$a0, $zero, 3
	flui	$f0, 0
	sw	$ra, 140($sp)
	jal	min_caml_create_float_array
	lw	$ra, 140($sp)
	lw	$a1, 136($sp)
	sw	$a0, 16($a1)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 32
	sw	$a1, 28($a0)
	lw	$a1, 132($sp)
	sw	$a1, 24($a0)
	lw	$a1, 128($sp)
	sw	$a1, 20($a0)
	lw	$a1, 124($sp)
	sw	$a1, 16($a0)
	lw	$a1, 120($sp)
	sw	$a1, 12($a0)
	lw	$a1, 116($sp)
	sw	$a1, 8($a0)
	lw	$a1, 112($sp)
	sw	$a1, 4($a0)
	lw	$a1, 108($sp)
	sw	$a1, 0($a0)
	add	$a1, $a0, $zero
	lw	$a0, 104($sp)
	sw	$ra, 140($sp)
	jal	min_caml_create_array
	lw	$ra, 140($sp)
	lw	$a1, 20616($zero)
	addi	$a1, $a1, -2
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	init_line_elements.3082
	addi	$sp, $sp, -144
	lw	$ra, 140($sp)
	sw	$a0, 140($sp)
	readf	$f0
	swc1	$f0, 20288($zero)
	readf	$f0
	swc1	$f0, 20292($zero)
	readf	$f0
	swc1	$f0, 20296($zero)
	readf	$f0
	flui	$f1, 15502
	fori	$f1, $f1, 64053
	mul.s	$f0, $f0, $f1
	swc1	$f0, 144($sp)
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	cos.2638
	addi	$sp, $sp, -160
	lw	$ra, 156($sp)
	lwc1	$f1, 144($sp)
	swc1	$f0, 152($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	sin.2640
	addi	$sp, $sp, -168
	lw	$ra, 164($sp)
	swc1	$f0, 160($sp)
	readf	$f0
	flui	$f1, 15502
	fori	$f1, $f1, 64053
	mul.s	$f0, $f0, $f1
	swc1	$f0, 168($sp)
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	cos.2638
	addi	$sp, $sp, -184
	lw	$ra, 180($sp)
	lwc1	$f1, 168($sp)
	swc1	$f0, 176($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	sin.2640
	addi	$sp, $sp, -192
	lw	$ra, 188($sp)
	lwc1	$f1, 152($sp)
	mul.s	$f2, $f1, $f0
	flui	$f3, 17224
	mul.s	$f2, $f2, $f3
	swc1	$f2, 20684($zero)
	flui	$f2, -15544
	lwc1	$f3, 160($sp)
	mul.s	$f2, $f3, $f2
	swc1	$f2, 20688($zero)
	lwc1	$f2, 176($sp)
	mul.s	$f4, $f1, $f2
	flui	$f5, 17224
	mul.s	$f4, $f4, $f5
	swc1	$f4, 20692($zero)
	swc1	$f2, 20660($zero)
	swc1	$fzero, 20664($zero)
	sub.s	$f4, $fzero, $f0
	swc1	$f4, 20668($zero)
	sub.s	$f4, $fzero, $f3
	mul.s	$f0, $f4, $f0
	swc1	$f0, 20672($zero)
	sub.s	$f0, $fzero, $f1
	swc1	$f0, 20676($zero)
	sub.s	$f0, $fzero, $f3
	mul.s	$f0, $f0, $f2
	swc1	$f0, 20680($zero)
	lwc1	$f0, 20288($zero)
	lwc1	$f1, 20684($zero)
	sub.s	$f0, $f0, $f1
	swc1	$f0, 20300($zero)
	lwc1	$f0, 20292($zero)
	lwc1	$f1, 20688($zero)
	sub.s	$f0, $f0, $f1
	swc1	$f0, 20304($zero)
	lwc1	$f0, 20296($zero)
	lwc1	$f1, 20692($zero)
	sub.s	$f0, $f0, $f1
	swc1	$f0, 20308($zero)
	readi	$a0
	readf	$f0
	flui	$f1, 15502
	fori	$f1, $f1, 64053
	mul.s	$f0, $f0, $f1
	swc1	$f0, 184($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	sin.2640
	addi	$sp, $sp, -200
	lw	$ra, 196($sp)
	sub.s	$f0, $fzero, $f0
	swc1	$f0, 20316($zero)
	readf	$f0
	flui	$f1, 15502
	fori	$f1, $f1, 64053
	mul.s	$f0, $f0, $f1
	lwc1	$f1, 184($sp)
	swc1	$f0, 192($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	cos.2638
	addi	$sp, $sp, -208
	lw	$ra, 204($sp)
	lwc1	$f1, 192($sp)
	swc1	$f0, 200($sp)
	add.s	$f0, $fzero, $f1
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	sin.2640
	addi	$sp, $sp, -216
	lw	$ra, 212($sp)
	lwc1	$f1, 200($sp)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 20312($zero)
	lwc1	$f0, 192($sp)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	cos.2638
	addi	$sp, $sp, -216
	lw	$ra, 212($sp)
	lwc1	$f1, 200($sp)
	mul.s	$f0, $f1, $f0
	swc1	$f0, 20320($zero)
	readf	$f0
	swc1	$f0, 20324($zero)
	addi	$a0, $zero, 0
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	read_object.2785
	addi	$sp, $sp, -216
	lw	$ra, 212($sp)
	addi	$a0, $zero, 0
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	read_and_network.2793
	addi	$sp, $sp, -216
	lw	$ra, 212($sp)
	addi	$a0, $zero, 0
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	read_or_network.2791
	addi	$sp, $sp, -216
	lw	$ra, 212($sp)
	sw	$a0, 20536($zero)
	addi	$a0, $zero, 80
	outc	$a0
	addi	$a0, $zero, 54
	outc	$a0
	addi	$a0, $zero, 10
	outc	$a0
	lw	$a0, 20616($zero)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	print_my_sub.3044
	addi	$sp, $sp, -216
	lw	$ra, 212($sp)
	addi	$a0, $zero, 32
	outc	$a0
	lw	$a0, 20620($zero)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	print_my_sub.3044
	addi	$sp, $sp, -216
	lw	$ra, 212($sp)
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
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	create_dirvecs.3114
	addi	$sp, $sp, -216
	lw	$ra, 212($sp)
	addi	$a0, $zero, 9
	addi	$a1, $zero, 0
	addi	$a2, $zero, 0
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	calc_dirvec_rows.3105
	addi	$sp, $sp, -216
	lw	$ra, 212($sp)
	addi	$a0, $zero, 4
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	init_vecset_constants.3119
	addi	$sp, $sp, -216
	lw	$ra, 212($sp)
	lw	$a0, 20988($zero)
	lwc1	$f0, 20312($zero)
	swc1	$f0, 0($a0)
	lwc1	$f0, 20316($zero)
	swc1	$f0, 4($a0)
	lwc1	$f0, 20320($zero)
	swc1	$f0, 8($a0)
	lw	$a0, 20000($zero)
	addi	$a1, $a0, -1
	lw	$a0, 8($sp)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	iter_setup_dirvec_constants.2890
	addi	$sp, $sp, -216
	lw	$ra, 212($sp)
	lw	$a0, 20000($zero)
	addi	$a0, $a0, -1
	slti	$s0, $a0, 0
	beq	$s0, $zero, bne_else.25099
	j	bne_cont.25100
bne_else.25099:
	sll	$a1, $a0, 2
	lw	$a2, 4($sp)
	add	$s1, $a2, $a1
	lw	$a1, 0($s1)
	lw	$a2, 8($a1)
	addi	$s1, $zero, 2
	bne	$a2, $s1, beq_else.25101
	lw	$a2, 28($a1)
	lwc1	$f0, 0($a2)
	flui	$f1, 16256
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else.25103
	addi	$a2, $zero, 1
	j	bne_cont.25104
bne_else.25103:
	addi	$a2, $zero, 0
bne_cont.25104:
	bne	$a2, $zero, beq_else.25105
	j	beq_cont.25106
beq_else.25105:
	lw	$a2, 4($a1)
	addi	$s1, $zero, 1
	bne	$a2, $s1, beq_else.25107
	sll	$a0, $a0, 2
	lw	$a2, 21736($zero)
	flui	$f0, 16256
	lw	$a1, 28($a1)
	lwc1	$f1, 0($a1)
	sub.s	$f0, $f0, $f1
	lwc1	$f1, 20312($zero)
	sub.s	$f1, $fzero, $f1
	lwc1	$f2, 20316($zero)
	sub.s	$f2, $fzero, $f2
	lwc1	$f3, 20320($zero)
	sub.s	$f3, $fzero, $f3
	addi	$a1, $a0, 1
	lwc1	$f4, 20312($zero)
	addi	$a3, $zero, 3
	flui	$f5, 0
	swc1	$f1, 208($sp)
	sw	$a0, 216($sp)
	sw	$a2, 220($sp)
	sw	$a1, 224($sp)
	swc1	$f0, 232($sp)
	swc1	$f3, 240($sp)
	swc1	$f2, 248($sp)
	swc1	$f4, 256($sp)
	add	$a0, $zero, $a3
	add.s	$f0, $fzero, $f5
	sw	$ra, 268($sp)
	jal	min_caml_create_float_array
	lw	$ra, 268($sp)
	add	$a1, $a0, $zero
	lw	$a0, 20000($zero)
	sw	$a1, 264($sp)
	sw	$ra, 268($sp)
	jal	min_caml_create_array
	lw	$ra, 268($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 8
	sw	$a0, 4($a1)
	lw	$a0, 264($sp)
	sw	$a0, 0($a1)
	lwc1	$f0, 256($sp)
	swc1	$f0, 0($a0)
	lwc1	$f0, 248($sp)
	swc1	$f0, 4($a0)
	lwc1	$f1, 240($sp)
	swc1	$f1, 8($a0)
	lw	$a0, 20000($zero)
	addi	$a0, $a0, -1
	sw	$a1, 268($sp)
	add	$s7, $zero, $a1
	add	$a1, $zero, $a0
	add	$a0, $zero, $s7
	sw	$ra, 276($sp)
	addi	$sp, $sp, 280
	jal	iter_setup_dirvec_constants.2890
	addi	$sp, $sp, -280
	lw	$ra, 276($sp)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 16
	lwc1	$f0, 232($sp)
	swc1	$f0, 8($a0)
	lw	$a1, 268($sp)
	sw	$a1, 4($a0)
	lw	$a1, 224($sp)
	sw	$a1, 0($a0)
	lw	$a1, 220($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$s1, $a3, $a2
	sw	$a0, 0($s1)
	addi	$a0, $a1, 1
	lw	$a2, 216($sp)
	addi	$t0, $a2, 2
	lwc1	$f1, 20316($zero)
	addi	$t1, $zero, 3
	flui	$f2, 0
	sw	$a0, 272($sp)
	sw	$t0, 276($sp)
	swc1	$f1, 280($sp)
	add	$a0, $zero, $t1
	add.s	$f0, $fzero, $f2
	sw	$ra, 292($sp)
	jal	min_caml_create_float_array
	lw	$ra, 292($sp)
	add	$a1, $a0, $zero
	lw	$a0, 20000($zero)
	sw	$a1, 288($sp)
	sw	$ra, 292($sp)
	jal	min_caml_create_array
	lw	$ra, 292($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 8
	sw	$a0, 4($a1)
	lw	$a0, 288($sp)
	sw	$a0, 0($a1)
	lwc1	$f0, 208($sp)
	swc1	$f0, 0($a0)
	lwc1	$f1, 280($sp)
	swc1	$f1, 4($a0)
	lwc1	$f1, 240($sp)
	swc1	$f1, 8($a0)
	lw	$a0, 20000($zero)
	addi	$a0, $a0, -1
	sw	$a1, 292($sp)
	add	$s7, $zero, $a1
	add	$a1, $zero, $a0
	add	$a0, $zero, $s7
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	iter_setup_dirvec_constants.2890
	addi	$sp, $sp, -304
	lw	$ra, 300($sp)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 16
	lwc1	$f0, 232($sp)
	swc1	$f0, 8($a0)
	lw	$a1, 292($sp)
	sw	$a1, 4($a0)
	lw	$a1, 276($sp)
	sw	$a1, 0($a0)
	lw	$a1, 272($sp)
	sll	$a1, $a1, 2
	lw	$a2, 0($sp)
	add	$s1, $a2, $a1
	sw	$a0, 0($s1)
	lw	$a0, 220($sp)
	addi	$a1, $a0, 2
	lw	$a3, 216($sp)
	addi	$a3, $a3, 3
	lwc1	$f1, 20320($zero)
	addi	$t0, $zero, 3
	flui	$f2, 0
	sw	$a1, 296($sp)
	sw	$a3, 300($sp)
	swc1	$f1, 304($sp)
	add	$a0, $zero, $t0
	add.s	$f0, $fzero, $f2
	sw	$ra, 316($sp)
	jal	min_caml_create_float_array
	lw	$ra, 316($sp)
	add	$a1, $a0, $zero
	lw	$a0, 20000($zero)
	sw	$a1, 312($sp)
	sw	$ra, 316($sp)
	jal	min_caml_create_array
	lw	$ra, 316($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 8
	sw	$a0, 4($a1)
	lw	$a0, 312($sp)
	sw	$a0, 0($a1)
	lwc1	$f0, 208($sp)
	swc1	$f0, 0($a0)
	lwc1	$f0, 248($sp)
	swc1	$f0, 4($a0)
	lwc1	$f0, 304($sp)
	swc1	$f0, 8($a0)
	lw	$a0, 20000($zero)
	addi	$a0, $a0, -1
	sw	$a1, 316($sp)
	add	$s7, $zero, $a1
	add	$a1, $zero, $a0
	add	$a0, $zero, $s7
	sw	$ra, 324($sp)
	addi	$sp, $sp, 328
	jal	iter_setup_dirvec_constants.2890
	addi	$sp, $sp, -328
	lw	$ra, 324($sp)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 16
	lwc1	$f0, 232($sp)
	swc1	$f0, 8($a0)
	lw	$a1, 316($sp)
	sw	$a1, 4($a0)
	lw	$a1, 300($sp)
	sw	$a1, 0($a0)
	lw	$a1, 296($sp)
	sll	$a1, $a1, 2
	lw	$a2, 0($sp)
	add	$s1, $a2, $a1
	sw	$a0, 0($s1)
	lw	$a0, 220($sp)
	addi	$a0, $a0, 3
	sw	$a0, 21736($zero)
	j	beq_cont.25108
beq_else.25107:
	addi	$s1, $zero, 2
	bne	$a2, $s1, beq_else.25110
	sll	$a0, $a0, 2
	addi	$a0, $a0, 1
	lw	$a2, 21736($zero)
	flui	$f0, 16256
	lw	$a3, 28($a1)
	lwc1	$f1, 0($a3)
	sub.s	$f0, $f0, $f1
	lw	$a3, 16($a1)
	lwc1	$f1, 20312($zero)
	lwc1	$f2, 0($a3)
	mul.s	$f1, $f1, $f2
	lwc1	$f2, 20316($zero)
	lwc1	$f3, 4($a3)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lwc1	$f2, 20320($zero)
	lwc1	$f3, 8($a3)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	flui	$f2, 16384
	lw	$a3, 16($a1)
	lwc1	$f3, 0($a3)
	mul.s	$f2, $f2, $f3
	mul.s	$f2, $f2, $f1
	lwc1	$f3, 20312($zero)
	sub.s	$f2, $f2, $f3
	flui	$f3, 16384
	lw	$a3, 16($a1)
	lwc1	$f4, 4($a3)
	mul.s	$f3, $f3, $f4
	mul.s	$f3, $f3, $f1
	lwc1	$f4, 20316($zero)
	sub.s	$f3, $f3, $f4
	flui	$f4, 16384
	lw	$a1, 16($a1)
	lwc1	$f5, 8($a1)
	mul.s	$f4, $f4, $f5
	mul.s	$f1, $f4, $f1
	lwc1	$f4, 20320($zero)
	sub.s	$f1, $f1, $f4
	addi	$a1, $zero, 3
	flui	$f4, 0
	sw	$a2, 320($sp)
	sw	$a0, 324($sp)
	swc1	$f0, 328($sp)
	swc1	$f1, 336($sp)
	swc1	$f3, 344($sp)
	swc1	$f2, 352($sp)
	add	$a0, $zero, $a1
	add.s	$f0, $fzero, $f4
	sw	$ra, 364($sp)
	jal	min_caml_create_float_array
	lw	$ra, 364($sp)
	add	$a1, $a0, $zero
	lw	$a0, 20000($zero)
	sw	$a1, 360($sp)
	sw	$ra, 364($sp)
	jal	min_caml_create_array
	lw	$ra, 364($sp)
	add	$a1, $gp, $zero
	addi	$gp, $gp, 8
	sw	$a0, 4($a1)
	lw	$a0, 360($sp)
	sw	$a0, 0($a1)
	lwc1	$f0, 352($sp)
	swc1	$f0, 0($a0)
	lwc1	$f0, 344($sp)
	swc1	$f0, 4($a0)
	lwc1	$f0, 336($sp)
	swc1	$f0, 8($a0)
	lw	$a0, 20000($zero)
	addi	$a0, $a0, -1
	sw	$a1, 364($sp)
	add	$s7, $zero, $a1
	add	$a1, $zero, $a0
	add	$a0, $zero, $s7
	sw	$ra, 372($sp)
	addi	$sp, $sp, 376
	jal	iter_setup_dirvec_constants.2890
	addi	$sp, $sp, -376
	lw	$ra, 372($sp)
	add	$a0, $gp, $zero
	addi	$gp, $gp, 16
	lwc1	$f0, 328($sp)
	swc1	$f0, 8($a0)
	lw	$a1, 364($sp)
	sw	$a1, 4($a0)
	lw	$a1, 324($sp)
	sw	$a1, 0($a0)
	lw	$a1, 320($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$s1, $a3, $a2
	sw	$a0, 0($s1)
	addi	$a0, $a1, 1
	sw	$a0, 21736($zero)
	j	beq_cont.25111
beq_else.25110:
beq_cont.25111:
beq_cont.25108:
beq_cont.25106:
	j	beq_cont.25102
beq_else.25101:
beq_cont.25102:
bne_cont.25100:
	addi	$a0, $zero, 0
	addi	$a1, $zero, 0
	lwc1	$f0, 20632($zero)
	lw	$a2, 20628($zero)
	sub	$a0, $a0, $a2
	sw	$a1, 368($sp)
	swc1	$f0, 376($sp)
	itof	$f0, $a0
	lwc1	$f1, 376($sp)
	mul.s	$f0, $f1, $f0
	lwc1	$f1, 20672($zero)
	mul.s	$f1, $f0, $f1
	lwc1	$f2, 20684($zero)
	add.s	$f1, $f1, $f2
	lwc1	$f2, 20676($zero)
	mul.s	$f2, $f0, $f2
	lwc1	$f3, 20688($zero)
	add.s	$f2, $f2, $f3
	lwc1	$f3, 20680($zero)
	mul.s	$f0, $f0, $f3
	lwc1	$f3, 20692($zero)
	add.s	$f0, $f0, $f3
	lw	$a0, 20616($zero)
	addi	$a1, $a0, -1
	lw	$a0, 100($sp)
	lw	$a2, 368($sp)
	add.s	$f30, $fzero, $f2
	add.s	$f2, $fzero, $f0
	add.s	$f0, $fzero, $f1
	add.s	$f1, $fzero, $f30
	sw	$ra, 388($sp)
	addi	$sp, $sp, 392
	jal	pretrace_pixels.3055
	addi	$sp, $sp, -392
	lw	$ra, 388($sp)
	addi	$a0, $zero, 0
	addi	$t0, $zero, 2
	lw	$a1, 60($sp)
	lw	$a2, 100($sp)
	lw	$a3, 140($sp)
	sw	$ra, 388($sp)
	addi	$sp, $sp, 392
	jal	scan_line.3072
	addi	$sp, $sp, -392
	lw	$ra, 388($sp)
	addi	$zero, $zero, 0
last:
	j	last