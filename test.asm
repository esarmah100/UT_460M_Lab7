start:
    addi $6, $1, 0
    andi $8, $8,0
    lui $4, 28672
    lui $5, 32767
    ori $8, $8, 11
loop:
    beq $6, $1, loop
    addi $6, $1, 0
    sll $7, $1, 1
    add $7, $8, $7
    jr $7
    j loop
call_table:
    jal operation0
    j loop
    jal operation1
    j loop
    jal operation2
    j loop
    jal operation3
    j loop
    jal operation4
    j loop
    jal operation5
    j loop
operation0:
    add8 $2, $4, $5
    jr $31
operation1:
    lui $2, 4096
    jr $31
operation2:
    rbit $2, $5
    jr $31
operation3:
    rev $2, $4
    jr $31
operation4:
    sadd $2, $5, $5
    jr $31
operation5:
    ssub $2, $4, $5
    jr $31