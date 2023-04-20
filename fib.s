extern fib_even

section .text
    global fib_odd

fib_odd:
    push rbp
    mov rbp, rsp


    cmp edi, 1          ;; Frist integer arg in EDI
    je base_case        ;; n == 1 ? base_case

    mov ecx, edi
    sub ecx, 1

    push rdi            ;; Save context

    mov edi, ecx        ;; Arg 1 in EDI
    call fib_even       ;; fib_even on n - 1, return value stored in EAX

    pop rdi             ;; Restore context

    mul edi             ;; MUL -> EXD:EAX = EAX * EDI

    jmp _exit

base_case:
    mov eax, 1          ;; Return value in EAX

_exit:
    pop rbp
    ret
