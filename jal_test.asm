start:
    andi $8, $8, 0
    addi $8, $8, 1
    jal operation0
    addi $8, $8, 1
operation0:    
    addi $8 $8, 4
    jr $31
