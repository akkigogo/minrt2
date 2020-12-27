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
_min_caml_start:
	lui	$sp, 1
	lui	$gp, 3
	readf	$f0
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else.816
	addi	$a0, $zero, 1
	j	bne_cont.817
bne_else.816:
	addi	$a0, $zero, 0
bne_cont.817:
	bne	$a0, $zero, beq_else.818
	addi	$a0, $zero, 39
	outi	$a0
	j	beq_cont.819
beq_else.818:
	addi	$a0, $zero, 10
	outi	$a0
beq_cont.819:
last:
	j	last