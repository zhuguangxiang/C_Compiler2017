.data
t140: .asciiz " "
t149: .asciiz " "
t160: .asciiz "gcd of 319, 377 = "
t164: .asciiz " "
t165: .asciiz "gcd of 98, 63 = "
t169: .asciiz "gcd of 1280, 1250 = "
t179: .asciiz "   fib of 20 = "
t186: .asciiz "your array length should be less than 100!!!"
t196: .asciiz "original array: "
t200: .asciiz " "
t207: .asciiz "sorted array: "
t211: .asciiz " "
.text
jal main
li $v0, 10
syscall
gcd:
subi $sp, $sp, 76
sw $ra, 72($sp)
sw $fp, 68($sp)
move $fp, $sp
lw $t0, 80($fp)
li $t1, 0
sw $t0, 0($fp)
bne $t0, $t1, Label_t0
lw $t0, 76($fp)
move $v0, $t0
lw $ra, 72($sp)
lw $fp, 68($sp)
addi $sp, $sp, 84
jr $ra
j Label_t4
Label_t0:
Label_t4:
lw $t0, 76($fp)
li $t1, 0
sw $t0, 8($fp)
bne $t0, $t1, Label_t5
lw $t0, 80($fp)
move $v0, $t0
lw $ra, 72($sp)
lw $fp, 68($sp)
addi $sp, $sp, 84
jr $ra
j Label_t9
Label_t5:
Label_t9:
lw $t0, 80($fp)
lw $t1, 76($fp)
sub $t2, $t0, $t1
sw $t0, 16($fp)
sw $t1, 20($fp)
sw $t2, 24($fp)
bltz $t2, Label_t10
lw $t0, 80($fp)
lw $t1, 76($fp)
sub $t2, $t0, $t1
subi $sp, $sp, 4
sw $t2, 0($sp)
lw $t3, 76($fp)
subi $sp, $sp, 4
sw $t3, 0($sp)
sw $t0, 28($fp)
sw $t1, 32($fp)
sw $t2, 36($fp)
sw $t3, 40($fp)
jal gcd
sw $v0, 44($fp)
lw $v0, 44($fp)
lw $ra, 72($sp)
lw $fp, 68($sp)
addi $sp, $sp, 84
jr $ra
j Label_t19
Label_t10:
lw $t0, 80($fp)
subi $sp, $sp, 4
sw $t0, 0($sp)
lw $t1, 76($fp)
lw $t2, 80($fp)
sub $t3, $t1, $t2
subi $sp, $sp, 4
sw $t3, 0($sp)
sw $t0, 48($fp)
sw $t1, 52($fp)
sw $t2, 56($fp)
sw $t3, 60($fp)
jal gcd
sw $v0, 64($fp)
lw $v0, 64($fp)
lw $ra, 72($sp)
lw $fp, 68($sp)
addi $sp, $sp, 84
jr $ra
Label_t19:
lw $ra, 72($sp)
lw $fp, 68($sp)
addi $sp, $sp, 84
jr $ra
compare:
subi $sp, $sp, 36
sw $ra, 32($sp)
sw $fp, 28($sp)
move $fp, $sp
lw $t0, 40($fp)
lw $t1, 36($fp)
sub $t2, $t0, $t1
sw $t0, 0($fp)
sw $t1, 4($fp)
sw $t2, 8($fp)
blez $t2, Label_t25
li $v0, 1
lw $ra, 32($sp)
lw $fp, 28($sp)
addi $sp, $sp, 44
jr $ra
j Label_t30
Label_t25:
Label_t30:
lw $t0, 40($fp)
lw $t1, 36($fp)
sub $t2, $t0, $t1
sw $t0, 12($fp)
sw $t1, 16($fp)
sw $t2, 20($fp)
bgtz $t2, Label_t31
li $t0, 1
neg $t1, $t0
move $v0, $t1
lw $ra, 32($sp)
lw $fp, 28($sp)
addi $sp, $sp, 44
jr $ra
j Label_t37
Label_t31:
Label_t37:
lw $ra, 32($sp)
lw $fp, 28($sp)
addi $sp, $sp, 44
jr $ra
bubblesort:
subi $sp, $sp, 124
sw $ra, 120($sp)
sw $fp, 116($sp)
move $fp, $sp
sw $s0, 112($fp)
sw $s1, 108($fp)
sw $s2, 104($fp)
lw $t0, 124($fp)
subi $t1, $t0, 1
move $s0, $t1
sw $t0, 12($fp)
sw $t1, 16($fp)
Label_t41:
li $s1, 0
Label_t44:
move $t0, $s1
sll $t0, $t0, 2
add $t0, $t0, $gp
lw $t1, 0($t0)
move $t2, $s1
addi $t3, $t2, 1
sll $t3, $t3, 2
add $t3, $t3, $gp
lw $t4, 0($t3)
sub $t5, $t1, $t4
sw $t0, 20($fp)
sw $t1, 24($fp)
sw $t2, 28($fp)
sw $t3, 32($fp)
sw $t4, 36($fp)
sw $t5, 40($fp)
blez $t5, Label_t46
move $t0, $s1
sll $t0, $t0, 2
add $t0, $t0, $gp
lw $t1, 0($t0)
move $s2, $t1
move $t2, $s1
move $t3, $s1
addi $t4, $t3, 1
sll $t4, $t4, 2
add $t4, $t4, $gp
lw $t5, 0($t4)
sll $t2, $t2, 2
add $t2, $t2, $gp
sw $t5, 0($t2)
move $t6, $s1
addi $t7, $t6, 1
move $t8, $s2
sll $t7, $t7, 2
add $t7, $t7, $gp
sw $t8, 0($t7)
sw $t0, 44($fp)
sw $t1, 48($fp)
sw $t2, 52($fp)
sw $t3, 56($fp)
sw $t4, 60($fp)
sw $t5, 64($fp)
sw $t6, 68($fp)
sw $t7, 72($fp)
sw $t8, 76($fp)
j Label_t65
Label_t46:
Label_t65:
addi $s1, $s1, 1
move $t0, $s1
move $t1, $s0
subi $t2, $t1, 1
sub $t3, $t0, $t2
sw $t0, 80($fp)
sw $t1, 84($fp)
sw $t2, 88($fp)
sw $t3, 92($fp)
blez $t3, Label_t44
subi $s0, $s0, 1
move $t0, $s0
subi $t1, $t0, 1
sw $t0, 96($fp)
sw $t1, 100($fp)
bgez $t1, Label_t41
lw $ra, 120($sp)
lw $fp, 116($sp)
lw $s0, 112($sp)
lw $s1, 108($sp)
lw $s2, 104($sp)
addi $sp, $sp, 128
jr $ra
fib:
subi $sp, $sp, 44
sw $ra, 40($sp)
sw $fp, 36($sp)
move $fp, $sp
lw $t0, 44($fp)
li $t1, 0
sw $t0, 0($fp)
bne $t0, $t1, Label_t74
li $v0, 0
lw $ra, 40($sp)
lw $fp, 36($sp)
addi $sp, $sp, 48
jr $ra
j Label_t78
Label_t74:
Label_t78:
lw $t0, 44($fp)
li $t1, 1
sw $t0, 4($fp)
bne $t0, $t1, Label_t79
li $v0, 1
lw $ra, 40($sp)
lw $fp, 36($sp)
addi $sp, $sp, 48
jr $ra
j Label_t83
Label_t79:
Label_t83:
lw $t0, 44($fp)
subi $t1, $t0, 1
subi $sp, $sp, 4
sw $t1, 0($sp)
sw $t0, 8($fp)
sw $t1, 12($fp)
jal fib
sw $v0, 16($fp)
lw $t0, 44($fp)
subi $t1, $t0, 2
subi $sp, $sp, 4
sw $t1, 0($sp)
sw $t0, 20($fp)
sw $t1, 24($fp)
jal fib
sw $v0, 28($fp)
lw $t0, 16($fp)
lw $t1, 28($fp)
add $t2, $t0, $t1
move $v0, $t2
lw $ra, 40($sp)
lw $fp, 36($sp)
addi $sp, $sp, 48
jr $ra
lw $ra, 40($sp)
lw $fp, 36($sp)
addi $sp, $sp, 48
jr $ra
complexfor:
subi $sp, $sp, 304
sw $ra, 300($sp)
sw $fp, 296($sp)
move $fp, $sp
sw $s0, 292($fp)
sw $s1, 288($fp)
sw $s2, 284($fp)
sw $s3, 280($fp)
sw $s4, 276($fp)
sw $s5, 272($fp)
sw $s6, 268($fp)
sw $s7, 264($fp)
li $s1, 1
li $s2, 1
li $s1, 1
Label_t96:
move $t0, $s1
move $t1, $s1
sll $t0, $t0, 2
add $t0, $t0, $fp
sw $t1, 72($t0)
move $t2, $s1
move $t3, $s1
sll $t2, $t2, 2
add $t2, $t2, $fp
sw $t3, 32($t2)
addi $s1, $s1, 1
move $t4, $s1
subi $t5, $t4, 8
sw $t0, 112($fp)
sw $t1, 116($fp)
sw $t2, 120($fp)
sw $t3, 124($fp)
sw $t4, 128($fp)
sw $t5, 132($fp)
blez $t5, Label_t96
li $s1, 1
Label_t106:
li $s5, 3
li $s0, 2
move $t0, $s0
li $t1, 0
sw $t0, 136($fp)
beq $t0, $t1, Label_t110
move $t0, $s0
subi $sp, $sp, 4
sw $t0, 0($sp)
subi $sp, $sp, 4
li $t1, 0
sw $t1, 0($sp)
sw $t0, 140($fp)
jal compare
sw $v0, 144($fp)
lw $t0, 144($fp)
move $t1, $t0
move $t2, $s0
mulo $t3, $t1, $t2
move $t4, $t3
move $t5, $s5
sll $t5, $t5, 2
add $t5, $t5, $fp
lw $t6, 72($t5)
move $s6, $t6
li $s2, 1
sw $t0, 16($fp)
sw $t1, 148($fp)
sw $t2, 152($fp)
sw $t3, 156($fp)
sw $t4, 0($fp)
sw $t5, 160($fp)
sw $t6, 164($fp)
Label_t122:
move $t0, $s6
lw $t1, 16($fp)
add $t2, $t0, $t1
sll $t2, $t2, 2
add $t2, $t2, $fp
lw $t3, 32($t2)
move $s4, $t3
move $t4, $s4
sll $t4, $t4, 2
add $t4, $t4, $fp
lw $t5, 72($t4)
move $s7, $t5
move $t6, $s6
move $t7, $s4
sll $t6, $t6, 2
add $t6, $t6, $fp
sw $t7, 32($t6)
move $t8, $s4
move $t9, $s6
sll $t8, $t8, 2
add $t8, $t8, $fp
sw $t9, 72($t8)
sw $t0, 168($fp)
move $t0, $s7
move $s6, $t0
li $s3, 1
sw $t0, 208($fp)
sw $t1, 172($fp)
sw $t2, 176($fp)
sw $t3, 180($fp)
sw $t4, 184($fp)
sw $t5, 188($fp)
sw $t6, 192($fp)
sw $t7, 196($fp)
sw $t8, 200($fp)
sw $t9, 204($fp)
Label_t136:
move $t0, $s3
sll $t0, $t0, 2
add $t0, $t0, $fp
lw $t1, 32($t0)
move $a0, $t1
li $v0, 1
syscall
la $a0, t140
li $v0, 4
syscall
addi $s3, $s3, 1
move $t2, $s3
subi $t3, $t2, 8
sw $t0, 212($fp)
sw $t1, 216($fp)
sw $t2, 220($fp)
sw $t3, 224($fp)
blez $t3, Label_t136
li $s3, 1
Label_t145:
move $t0, $s3
sll $t0, $t0, 2
add $t0, $t0, $fp
lw $t1, 72($t0)
move $a0, $t1
li $v0, 1
syscall
la $a0, t149
li $v0, 4
syscall
addi $s3, $s3, 1
move $t2, $s3
subi $t3, $t2, 8
sw $t0, 228($fp)
sw $t1, 232($fp)
sw $t2, 236($fp)
sw $t3, 240($fp)
blez $t3, Label_t145
addi $s2, $s2, 1
move $t0, $s2
lw $t1, 0($fp)
sub $t2, $t0, $t1
sw $t0, 244($fp)
sw $t1, 248($fp)
sw $t2, 252($fp)
blez $t2, Label_t122
j Label_t156
Label_t110:
Label_t156:
addi $s1, $s1, 1
move $t0, $s1
subi $t1, $t0, 1
sw $t0, 256($fp)
sw $t1, 260($fp)
blez $t1, Label_t106
lw $ra, 300($sp)
lw $fp, 296($sp)
lw $s0, 292($sp)
lw $s1, 288($sp)
lw $s2, 284($sp)
lw $s3, 280($sp)
lw $s4, 276($sp)
lw $s5, 272($sp)
lw $s6, 268($sp)
lw $s7, 264($sp)
addi $sp, $sp, 304
jr $ra
main:
subi $sp, $sp, 128
sw $ra, 124($sp)
move $fp, $sp
la $a0, t160
li $v0, 4
syscall
subi $sp, $sp, 4
li $t0, 319
sw $t0, 0($sp)
subi $sp, $sp, 4
li $t0, 377
sw $t0, 0($sp)
jal gcd
sw $v0, 12($fp)
lw $a0, 12($fp)
li $v0, 1
syscall
la $a0, t164
li $v0, 4
syscall
la $a0, t165
li $v0, 4
syscall
subi $sp, $sp, 4
li $t0, 98
sw $t0, 0($sp)
subi $sp, $sp, 4
li $t0, 63
sw $t0, 0($sp)
jal gcd
sw $v0, 16($fp)
lw $a0, 16($fp)
li $v0, 1
syscall
la $a0, t169
li $v0, 4
syscall
subi $sp, $sp, 4
li $t0, 1280
sw $t0, 0($sp)
subi $sp, $sp, 4
li $t0, 1250
sw $t0, 0($sp)
jal gcd
sw $v0, 20($fp)
lw $t0, 20($fp)
mulo $t1, $t0, 10
div $t2, $t1, 20
mulo $t3, $t2, 2
move $a0, $t3
li $v0, 1
syscall
sw $t0, 20($fp)
sw $t1, 24($fp)
sw $t2, 28($fp)
sw $t3, 32($fp)
jal complexfor
la $a0, t179
li $v0, 4
syscall
subi $sp, $sp, 4
li $t0, 20
sw $t0, 0($sp)
jal fib
sw $v0, 36($fp)
lw $a0, 36($fp)
li $v0, 1
syscall
li $v0, 5
syscall
move $s2, $v0
move $t0, $s2
subi $t1, $t0, 100
sw $t0, 40($fp)
sw $t1, 44($fp)
blez $t1, Label_t182
la $a0, t186
li $v0, 4
syscall
lw $ra, 124($sp)
addi $sp, $sp, 128
jr $ra
j Label_t187
Label_t182:
Label_t187:
li $s0, 0
Label_t189:
li $v0, 5
syscall
move $s1, $v0
move $t0, $s0
move $t1, $s1
sll $t0, $t0, 2
add $t0, $t0, $gp
sw $t1, 0($t0)
addi $s0, $s0, 1
move $t2, $s0
move $t3, $s2
sub $t4, $t2, $t3
sw $t0, 48($fp)
sw $t1, 52($fp)
sw $t2, 56($fp)
sw $t3, 60($fp)
sw $t4, 64($fp)
bltz $t4, Label_t189
la $a0, t196
li $v0, 4
syscall
li $s0, 0
Label_t198:
la $a0, t200
li $v0, 4
syscall
move $t0, $s0
sll $t0, $t0, 2
add $t0, $t0, $gp
lw $t1, 0($t0)
move $a0, $t1
li $v0, 1
syscall
addi $s0, $s0, 1
move $t2, $s0
move $t3, $s2
sub $t4, $t2, $t3
sw $t0, 68($fp)
sw $t1, 72($fp)
sw $t2, 76($fp)
sw $t3, 80($fp)
sw $t4, 84($fp)
bltz $t4, Label_t198
move $t0, $s2
subi $sp, $sp, 4
sw $t0, 0($sp)
sw $t0, 88($fp)
jal bubblesort
la $a0, t207
li $v0, 4
syscall
li $s0, 0
Label_t209:
la $a0, t211
li $v0, 4
syscall
move $t0, $s0
sll $t0, $t0, 2
add $t0, $t0, $gp
lw $t1, 0($t0)
move $a0, $t1
li $v0, 1
syscall
addi $s0, $s0, 1
move $t2, $s0
move $t3, $s2
sub $t4, $t2, $t3
sw $t0, 92($fp)
sw $t1, 96($fp)
sw $t2, 100($fp)
sw $t3, 104($fp)
sw $t4, 108($fp)
bltz $t4, Label_t209
lw $ra, 124($sp)
addi $sp, $sp, 128
jr $ra
