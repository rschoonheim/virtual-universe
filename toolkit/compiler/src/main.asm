; Brief     : Compiler for the Virtual Universe Language (VUL) for x86_64 Linux
; Autho     : Romano Schoonheim <romano@atmosphere.sh>
; Website   : https://www.romanoschoonnheim.nl/
; Version   : 0.1
;
section .data
    ; State Machine Data
    ; ---------------------------------------------------------------------------------
    ; This section contains data used by the compilers state machine
    ; to determine the next state to transition to.
    ;
    current_state db '0'
    possible_transitions db '1' '2'

    state_initial db '0'
    state_starting db '1'

section .text
    global _start

_start:
    ; Set the current state to the initial state
    mov rdi, state_initial
    call state_machine.set_state

    ; Print the current state
    mov rdi, state_starting
    call state_machine.set_state

    ; Print
    mov eax, 4
    mov ebx, 1
    mov ecx, current_state
    mov edx, 1
    int 0x80

    jmp _exit

_exit:
    mov eax, 1
    xor ebx, ebx
    int 0x80

; State Machine
; ---------------------------------------------------------------------------------
;
;
;
state_machine:
   .set_state:
        mov rsi, rdi
        mov al, [rsi]
        mov [current_state], al
        ret

