mov ecx, [buffer_size]
; Check if ecx is within the allowed range
cmp ecx, 100 ; Example size limit
jge overflow_error
mov eax, [ebx+ecx*4] ; Access memory only if ecx is valid
jmp next_instruction
overflow_error:
; Handle the error appropriately
; For example, you could display an error message or exit the program
next_instruction: ; Continue execution