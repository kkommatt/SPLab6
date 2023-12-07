gcd(int, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     DWORD PTR [rbp-20], edi
        mov     DWORD PTR [rbp-24], esi
        lea     rdx, [rbp-24]
        lea     rax, [rbp-20]
        mov     rsi, rdx
        mov     rdi, rax
        call    int const& std::min<int>(int const&, int const&)
        mov     eax, DWORD PTR [rax]
        mov     DWORD PTR [rbp-4], eax
        jmp     .L5
.L8:
        mov     eax, DWORD PTR [rbp-20]
        cdq
        idiv    DWORD PTR [rbp-4]
        mov     eax, edx
        test    eax, eax
        jne     .L6
        mov     eax, DWORD PTR [rbp-24]
        cdq
        idiv    DWORD PTR [rbp-4]
        mov     eax, edx
        test    eax, eax
        je      .L10
.L6:
        sub     DWORD PTR [rbp-4], 1
.L5:
        cmp     DWORD PTR [rbp-4], 0
        jg      .L8
        jmp     .L7
.L10:
        nop
.L7:
        mov     eax, DWORD PTR [rbp-4]
        leave
        ret
.LC0:
        .string "GCD of "
.LC1:
        .string " and "
.LC2:
        .string " is "
main:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 24
        mov     DWORD PTR [rbp-20], 100
        jmp     .L12
.L15:
        mov     DWORD PTR [rbp-24], 1500
        jmp     .L13
.L14:
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     rdx, rax
        mov     eax, DWORD PTR [rbp-20]
        mov     esi, eax
        mov     rdi, rdx
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     esi, OFFSET FLAT:.LC1
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     rdx, rax
        mov     eax, DWORD PTR [rbp-24]
        mov     esi, eax
        mov     rdi, rdx
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     esi, OFFSET FLAT:.LC2
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     rbx, rax
        mov     edx, DWORD PTR [rbp-24]
        mov     eax, DWORD PTR [rbp-20]
        mov     esi, edx
        mov     edi, eax
        call    gcd(int, int)
        mov     esi, eax
        mov     rdi, rbx
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        sub     DWORD PTR [rbp-24], 1
.L13:
        cmp     DWORD PTR [rbp-24], 999
        jg      .L14
        add     DWORD PTR [rbp-20], 1
.L12:
        cmp     DWORD PTR [rbp-20], 1499
        jle     .L15
        mov     eax, 0
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
