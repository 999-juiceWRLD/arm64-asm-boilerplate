.global _main
.align 2

; as -arch arm64 -o assembly.o assembly.s
; gcc -arch arm64 -o executable assembly.o
; ./executable

; or

; clang -arch arm64 -o executable assembly.s
; ./executable

; or

; as assembly.s -o assembly.o
; clang -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk assembly.s -o assem

; or

; as program.s -o program.o
; ld assembly.o -o assem -lSystem -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib
; ./assem

_main:
    mov X0, #1
    adr X1, helloworld
    mov X2, #16
    mov X16, #4
    svc #0x80

    mov X0, #0
    mov X16, #1
    svc #0xFFFF

helloworld: .ascii "Hello M1 World\n"