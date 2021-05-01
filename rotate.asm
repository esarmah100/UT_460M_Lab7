start: andi  $2, $2, 0
  addi  $2, $2, 128
  andi  $3, $3, 0
  addi  $3, $3, 129
  andi  $1, $1, 0
  addi  $1, $1, 1
loop: beq   $1, $2, rot
  sll   $1, $1, 1
  j     loop
rot: xor1 $1, $1, $3
  j     loop
