mov esi, [user_input]

; Validate esi to ensure it's within the allowed range
mov ecx, esi
cmp ecx, 0 ;check if it's less than zero. if it's less than zero it jumps to the error handling section
jle error_handling
mov edx, max_valid_value
cmp ecx, edx ;check if it's greater than the max value. if it's greater than the max value, it jumps to the error handling section
jge error_handling

; Calculate the memory address only after validation
add esi, ebx ;Add ebx to esi
add esi, 0x10 ;Add 0x10 to esi
mov eax, [esi*4] ;Access Memory
jmp end

error_handling:
; Handle invalid esi value, perhaps setting a default value or returning an error code
mov eax, -1 ;set eax to -1 to signify an error

end:
;continue execution