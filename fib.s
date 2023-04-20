extern fib_even

section .text
    global fib_odd

fib_odd:
    push rbp
    mov rbp, rsp

    cmp edi, 1
    je base_case

    mov ecx, edi
    sub ecx, 1

    push rdi

    mov edi, ecx
    call fib_even

    pop rdi
    mul edi

    jmp _exit

base_case:
    mov eax, 1

_exit:
    pop rbp
    ret
