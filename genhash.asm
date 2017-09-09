BITS 32

global _genhash

section code use32 class=code

_genhash:
	push	ebp
	mov	ebp, esp

	push	ebx
	push	esi

	mov	esi, [ebp+0x08]

	xor     eax, eax
	xor     ebx, ebx    
.gen_loop:
	lodsb
	test    al, al
	jz      .endgen
	ror     ebx, 0x0D
	add     ebx, eax    
	jmp     .gen_loop
.endgen:
	mov     eax, ebx

	pop	esi
	pop	ebx

	mov	esp, ebp
	pop	ebp
	ret