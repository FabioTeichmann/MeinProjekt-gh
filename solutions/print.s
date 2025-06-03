   .section .data
msg:    .ascii "Hello from GAS!\n"
len = . - msg

    .section .text
    .global _start
_start:
    movl $4, %eax        # syscall: sys_write (4)
    movl $1, %ebx        # file descriptor: stdout (1)
    movl $msg, %ecx      # Zeiger auf Nachricht
    movl $len, %edx      # Länge der Nachricht
    int $0x80            # interrupt: syscall ausführen

    movl $1, %eax        # syscall: sys_exit (1)
    movl $0, %ebx        # exit code 0
    int $0x80
