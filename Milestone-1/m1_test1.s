add $3, $2, $1        #  $3 = 0x0000001a
sub $3, $2, $1        #  $3 = 0x00000056
addu $3, $2, $1       #  $3 = 0x0000001a
subu $3, $2, $1       #  $3 = 0x00000056
and $3, $2, $1        #  $3 = 0x00000020
or $3, $2, $1         #  $3 = 0xfffffffa
nor $3, $2, $1        #  $3 = 0x00000005
slt $3, $2, $1        #  $3 = 0x00000000
slt $3, $1, $2        #  $3 = 0x00000001
sll $3, $2, 1         #  $3 = 0x00000070
srl $3, $2, 1         #  $3 = 0x0000001c
sra $3, $2, 3         #  $3 = 0x00000007
jr $2                 #  pc = 0x00000038 
nop    
nop
nop
nop
nop
nop
nop
nop