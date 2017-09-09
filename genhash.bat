@ECHO OFF

erase genhash.obj
nasmw -fobj -o genhash.obj genhash.asm
rem alink -oPE -o genhash.exe genhash.obj 
rem 

PAUSE