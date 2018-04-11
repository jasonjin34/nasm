	global	_start
	
	section	.text
_start:	mov	rax, 1	;system call for write accumulated register 
	mov 	rdi, 1	;file handle 1 is stdout
	mov 	rsi, message	;address of string to output
	mov	rdx, 13		; number of byte
	syscall	
	mov	rax, 60
	xor	rdi, rdi
	syscall
	
	section	.data
message: db 	"hello, world", 10

