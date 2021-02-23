	flui	$fi0, 16294
	fori	$fi0, $fi0, 26214
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
_min_caml_start:
	addi	$sp, $sp, 600
	addi	$gp, $gp, 3000
	faddi	$f0, $fzero, $fi0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 5
	jal	min_caml_print_float
	addi	$sp, $sp, -5
	lw	$ra, 4($sp)
last:
	j	last