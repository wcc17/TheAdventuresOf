.subsections_via_symbols
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 4.4.0 (mono-4.4.0-branch-c7sr0/9bdc135 Mon Jun 20 15:57:59 EDT 2016)"
	.asciz "TheAdventuresOf.iOS.exe"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip TheAdventuresOf_iOS_Program__ctor
TheAdventuresOf_iOS_Program__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #112]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_1
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_iOS_Program_RunGame
TheAdventuresOf_iOS_Program_RunGame:
.word 0xa9bc7bfd
.word 0x910003fd

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #120]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #128]
bl _p_2
.word 0xf9001fa0
bl _p_3
.word 0xf9400bb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #136]
.word 0xf9000001
.word 0xf9400bb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #136]
.word 0xf9400000
.word 0xf9001ba0
.word 0xf9400bb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_4
.word 0xf9400bb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_iOS_Program_Main_string__
TheAdventuresOf_iOS_Program_Main_string__:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #144]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9001ba0
.word 0xd2800000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #152]
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9401fa2
.word 0xd2800001
bl _p_5
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_iOS_Program_FinishedLaunching_UIKit_UIApplication
TheAdventuresOf_iOS_Program_FinishedLaunching_UIKit_UIApplication:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #160]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
bl _p_6
.word 0xf94013b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_TheAdventuresOf__ctor
TheAdventuresOf_TheAdventuresOf__ctor:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #168]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_7
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #176]
bl _p_2
.word 0xf90027a0
.word 0xaa1a03e1
bl _p_8
.word 0xf9400fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xf9006740
.word 0x91032340
bl _p_9
.word 0xf94023a0
.word 0xf9400fb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_10
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #184]
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xaa0203e0
.word 0xf940005e
bl _p_11
.word 0xf9400fb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
bl _p_12
.word 0xf9400fb1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_TheAdventuresOf_Initialize
TheAdventuresOf_TheAdventuresOf_Initialize:
.word 0xa9b67bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #192]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
bl _p_13
.word 0xf9004fa0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_14
.word 0xf9004ba0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_15
.word 0x93407c00
.word 0xf9003ba0
.word 0xf9400fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
bl _p_13
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_14
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_16
.word 0x93407c00
.word 0xf9003fa0
.word 0xf9400fb1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #200]
bl _p_17
.word 0xf9403ba1
.word 0xf9403fa2
.word 0xf90037a0
bl _p_18
.word 0xf9400fb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf90033a0
.word 0xf9006f40
.word 0x91036340
bl _p_9
.word 0xf94033a0
.word 0xf9400fb1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #208]
bl _p_17
.word 0xf9002fa0
bl _p_19
.word 0xf9400fb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa0
.word 0xf9002ba0
.word 0xf9007b40
.word 0x9103c340
bl _p_9
.word 0xf9402ba0
.word 0xf9400fb1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9421231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #216]
bl _p_17
.word 0xf90027a0
bl _p_20
.word 0xf9400fb1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xf9007340
.word 0x91038340
bl _p_9
.word 0xf94023a0
.word 0xf9400fb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9427631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #224]
bl _p_17
.word 0xf9001fa0
bl _p_21
.word 0xf9400fb1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xf9007740
.word 0x9103a340
bl _p_9
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf942c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_22
.word 0xf9400fb1
.word 0xf942f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_5:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_TheAdventuresOf_LoadContent
TheAdventuresOf_TheAdventuresOf_LoadContent:
.word 0xa9ae7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #232]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_23
.word 0xf9008fa0
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #240]
bl _p_2
.word 0xf9408fa1
.word 0xf9008ba0
bl _p_24
.word 0xf9400fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba0
.word 0xf90087a0
.word 0xf9006b40
.word 0x91034340
bl _p_9
.word 0xf94087a0
.word 0xf9400fb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_23
.word 0xf90083a0
.word 0xf9400fb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
bl _p_25
.word 0xf9400fb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_23
.word 0xf9007fa0
.word 0xf9400fb1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa0
bl _p_26
.word 0xf9400fb1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9407b40
.word 0xf9007ba0
.word 0xf9400fb1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_27
.word 0xf9400fb1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9407340
.word 0xf90077a0
.word 0xf9400fb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94077a0
bl _p_28
.word 0xf90073a0
.word 0xf9400fb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf9006fa0
.word 0xf9007340
.word 0x91038340
bl _p_9
.word 0xf9406fa0
.word 0xf9400fb1
.word 0xf9421e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9407340
.word 0xf90057a0
.word 0xd280001e
.word 0xf2a8691e
.word 0x9e6703c0
.word 0xfd005ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #248]
.word 0xbd400000
.word 0xfd005fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #256]
.word 0xf9400000
.word 0xf9006ba0
.word 0xf9400fb1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_29
.word 0x93407c00
.word 0xf90067a0
.word 0xf9400fb1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xaa1a03e1
.word 0xf9407341
.word 0xb9805421
.word 0x6b1f003f
.word 0x10000011
.word 0x54001d60
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e003f
.word 0x9a9f17e2
.word 0x929ffffe
.word 0xf2b0001e
.word 0x6b1e001f
.word 0x9a9f17e3
.word 0xa030042
.word 0xd280003e
.word 0x6b1e005f
.word 0x10000011
.word 0x54001b60
.word 0xf100003f
.word 0x10000011
.word 0x54001b60
.word 0x929ffff0
.word 0xf2b00010
.word 0xeb10001f
.word 0x9a9f17f1
.word 0x92800010
.word 0xf2bffff0
.word 0xeb10003f
.word 0x9a9f17f0
.word 0x8a110210
.word 0xf100061f
.word 0x10000011
.word 0x54001980
.word 0x1ac10c00
.word 0xf9004fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #256]
.word 0xf9400000
.word 0xf90063a0
.word 0xf9400fb1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_30
.word 0x93407c00
.word 0xf90053a0
.word 0xf9400fb1
.word 0xf9437a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa1
.word 0xf94053a2
.word 0xf94057a3
.word 0xfd405ba0
.word 0xfd405fa1
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9403c70
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf943ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9407740
.word 0xf9004ba0
.word 0xf9400fb1
.word 0xf943ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
bl _p_31
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf943ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0xf90043a0
.word 0xf9007740
.word 0x9103a340
bl _p_9
.word 0xf94043a0
.word 0xf9400fb1
.word 0xf9441231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9407740
.word 0xf9002ba0
.word 0xd280001e
.word 0xf2a87f5e
.word 0x9e6703c0
.word 0xfd002fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #248]
.word 0xbd400000
.word 0xfd0033a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #264]
.word 0xf9400000
.word 0xf9003fa0
.word 0xf9400fb1
.word 0xf9446631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_29
.word 0x93407c00
.word 0xf9003ba0
.word 0xf9400fb1
.word 0xf9448e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa1a03e1
.word 0xf9407741
.word 0xb9805421
.word 0x6b1f003f
.word 0x10000011
.word 0x54000dc0
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e003f
.word 0x9a9f17e2
.word 0x929ffffe
.word 0xf2b0001e
.word 0x6b1e001f
.word 0x9a9f17e3
.word 0xa030042
.word 0xd280003e
.word 0x6b1e005f
.word 0x10000011
.word 0x54000bc0
.word 0xf100003f
.word 0x10000011
.word 0x54000bc0
.word 0x929ffff0
.word 0xf2b00010
.word 0xeb10001f
.word 0x9a9f17f1
.word 0x92800010
.word 0xf2bffff0
.word 0xeb10003f
.word 0x9a9f17f0
.word 0x8a110210
.word 0xf100061f
.word 0x10000011
.word 0x540009e0
.word 0x1ac10c00
.word 0xf90023a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #264]
.word 0xf9400000
.word 0xf90037a0
.word 0xf9400fb1
.word 0xf9454631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_30
.word 0x93407c00
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf9456e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xf94027a2
.word 0xf9402ba3
.word 0xfd402fa0
.word 0xfd4033a1
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9403c70
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf945a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf945b631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_10
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf945d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa0
bl _p_32
.word 0xf9400fb1
.word 0xf945ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf945fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_23
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9461a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
bl _p_33
.word 0xf9400fb1
.word 0xf9463231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9464231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8d27bfd
.word 0xd65f03c0
.word 0xd28027c0
.word 0xaa1103e1
bl _p_34
.word 0xd28016e0
.word 0xaa1103e1
bl _p_34

Lme_6:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_TheAdventuresOf_Update_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_TheAdventuresOf_Update_Microsoft_Xna_Framework_GameTime:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #272]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9406f20
.word 0xf9002ba0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf940005e
bl _p_35
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9407320
.word 0xf90027a0
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #280]
.word 0x39400000
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xf94027a3
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xf9400063
.word 0xf9403070
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9407720
.word 0x39420400
.word 0x350003a0
.word 0xf94013b1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9407720
.word 0xf90023a0
.word 0xaa1a03e0
.word 0xd2800000
.word 0xf94013b1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a3
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xd2800002
.word 0xf9400063
.word 0xf9403070
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9407b20
.word 0xf90027a0
.word 0xaa1903e0
.word 0xf9407320
.word 0xf90023a0
.word 0xf94013b1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xf94027a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_36
.word 0xf94013b1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9407720
.word 0x39420400
.word 0x35000380
.word 0xf94013b1
.word 0xf9421a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9407b20
.word 0xf90027a0
.word 0xaa1903e0
.word 0xf9407720
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xf94027a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_36
.word 0xf94013b1
.word 0xf9427631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9407720
.word 0x39420400
.word 0x35000380
.word 0xf94013b1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf942c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9407320
.word 0xf90027a0
.word 0xaa1903e0
.word 0xf9407720
.word 0xf90023a0
.word 0xf94013b1
.word 0xf942ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xf94027a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_37
.word 0xf94013b1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9433231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf9434a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_38
.word 0xf94013b1
.word 0xf9436631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9437631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_7:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_TheAdventuresOf_Draw_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_TheAdventuresOf_Draw_Microsoft_Xna_Framework_GameTime:
.word 0xd2804a10
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xa9007bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #288]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0x910763a0
.word 0xd2800001
.word 0xd2800881
.word 0xd2800001
.word 0xd2800882
bl _p_39
.word 0xf94013b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9406b20
.word 0xf9011ba0
.word 0xaa1903e0
.word 0xf9406f20
.word 0xf9011fa0
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9411fa1
.word 0x910663a0
.word 0xaa0003e8
.word 0xaa0103e0
.word 0xf940003e
bl _p_40
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0x910543a0
.word 0xd2800001
.word 0xd2800881
.word 0xd2800001
.word 0xd2800882
bl _p_39
.word 0x910543a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #296]
.word 0x910663a1
.word 0x910443a1
.word 0xf940cfa2
.word 0xf9008ba2
.word 0xf940d3a2
.word 0xf9008fa2
.word 0xf940d7a2
.word 0xf90093a2
.word 0xf940dba2
.word 0xf90097a2
.word 0xf940dfa2
.word 0xf9009ba2
.word 0xf940e3a2
.word 0xf9009fa2
.word 0xf940e7a2
.word 0xf900a3a2
.word 0xf940eba2
.word 0xf900a7a2
.word 0xaa0103e2
bl _p_41
.word 0x910543a1
.word 0x910323a0
.word 0xd2800882
.word 0xd2800882
bl _p_42
.word 0xf94013b1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910323a1
.word 0x910763a0
.word 0xd2800882
.word 0xd2800882
bl _p_42
.word 0xd2800000
.word 0xd2800000
.word 0xd2800000
.word 0xd2800000
.word 0xd2800000
.word 0xd2800000
.word 0x910763a1
.word 0x910203a0
.word 0xd2800882
.word 0xd2800882
bl _p_42
.word 0xf94013b1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9411ba9
.word 0xaa0903e0
.word 0xd2800001
.word 0xd2800002
.word 0xd2800003
.word 0xd2800004
.word 0xd2800005
.word 0xd2800006
.word 0x910203a7
.word 0x9100e3a7
.word 0xf94043aa
.word 0xf9001faa
.word 0xf94047aa
.word 0xf90023aa
.word 0xf9404baa
.word 0xf90027aa
.word 0xf9404faa
.word 0xf9002baa
.word 0xf94053aa
.word 0xf9002faa
.word 0xf94057aa
.word 0xf90033aa
.word 0xf9405baa
.word 0xf90037aa
.word 0xf9405faa
.word 0xf9003baa
.word 0xf94063aa
.word 0xf9003faa
.word 0xaa0703ea
.word 0xf940013e
bl _p_43
.word 0xf94013b1
.word 0xf9425a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9407b20
.word 0xf90117a0
.word 0xaa1903e0
.word 0xf9406b20
.word 0xf90113a0
.word 0xf94013b1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94113a1
.word 0xf94117a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_44
.word 0xf94013b1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9407720
.word 0x39420400
.word 0x35000460
.word 0xf94013b1
.word 0xf942c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf942d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9407720
.word 0xf9011ba0
.word 0xaa1903e0
.word 0xf9406b20
.word 0xf90113a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #264]
.word 0xf9400000
.word 0xf90117a0
.word 0xf94013b1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94113a1
.word 0xf94117a2
.word 0xf9411ba3
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9402c70
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9433e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9435e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9407320
.word 0xf90127a0
.word 0xaa1903e0
.word 0xf9406b20
.word 0xf9011fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #256]
.word 0xf9400000
.word 0xf90123a0
.word 0xf94013b1
.word 0xf9439a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9411fa1
.word 0xf94123a2
.word 0xf94127a3
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9402c70
.word 0xd63f0200
.word 0xf94013b1
.word 0xf943c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9406b20
.word 0xf9011ba0
.word 0xf94013b1
.word 0xf943e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9411ba0
bl _p_45
.word 0xf94013b1
.word 0xf943fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9406b20
.word 0xf90117a0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf9441a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94117a0
.word 0xaa1a03e1
bl _p_46
.word 0xf94013b1
.word 0xf9443631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9406b20
.word 0xf90113a0
.word 0xf94013b1
.word 0xf9445231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94113a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_47
.word 0xf94013b1
.word 0xf9447231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf9448a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_48
.word 0xf94013b1
.word 0xf944a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf944b631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa9407bfd
.word 0xd2804a10
.word 0x910003f1
.word 0x8b100231
.word 0x9100023f
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Screen__ctor_int_int
TheAdventuresOf_Screen__ctor_int_int:
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #304]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf94017b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #312]
.word 0xf9006ba0
.word 0xf94017b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba0
bl _p_49
.word 0xf94017b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xb9801ba0
.word 0xf90063a0
.word 0xb98023a0
.word 0xf90067a0
.word 0xf94017b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a1
.word 0xf94067a2
.word 0x910203a0
.word 0xaa0003e8
.word 0xaa1803e0
bl _p_50
.word 0xf94017b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x910203a1
.word 0x910103a1
.word 0xf94043a2
.word 0xf90023a2
.word 0xf94047a2
.word 0xf90027a2
.word 0xf9404ba2
.word 0xf9002ba2
.word 0xf9404fa2
.word 0xf9002fa2
.word 0xf94053a2
.word 0xf90033a2
.word 0xf94057a2
.word 0xf90037a2
.word 0xf9405ba2
.word 0xf9003ba2
.word 0xf9405fa2
.word 0xf9003fa2
.word 0xaa0103e2
bl _p_51
.word 0xf94017b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Screen_get_scaleMatrix
TheAdventuresOf_Screen_get_scaleMatrix:
.word 0xa9b07bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xf9000fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #320]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0x9102e3a0
.word 0xd2800000
.word 0xf9005fa0
.word 0xf90063a0
.word 0xf90067a0
.word 0xf9006ba0
.word 0xf9006fa0
.word 0xf90073a0
.word 0xf90077a0
.word 0xf9007ba0
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0x91004000
.word 0x9101e3a1
.word 0xf9400001
.word 0xf9003fa1
.word 0xf9400401
.word 0xf90043a1
.word 0xf9400801
.word 0xf90047a1
.word 0xf9400c01
.word 0xf9004ba1
.word 0xf9401001
.word 0xf9004fa1
.word 0xf9401401
.word 0xf90053a1
.word 0xf9401801
.word 0xf90057a1
.word 0xf9401c00
.word 0xf9005ba0
.word 0x9101e3a0
.word 0x9102e3a0
.word 0xf9403fa0
.word 0xf9005fa0
.word 0xf94043a0
.word 0xf90063a0
.word 0xf94047a0
.word 0xf90067a0
.word 0xf9404ba0
.word 0xf9006ba0
.word 0xf9404fa0
.word 0xf9006fa0
.word 0xf94053a0
.word 0xf90073a0
.word 0xf94057a0
.word 0xf90077a0
.word 0xf9405ba0
.word 0xf9007ba0
.word 0x9102e3a0
.word 0x9100e3a0
.word 0xf9405fa0
.word 0xf9001fa0
.word 0xf94063a0
.word 0xf90023a0
.word 0xf94067a0
.word 0xf90027a0
.word 0xf9406ba0
.word 0xf9002ba0
.word 0xf9406fa0
.word 0xf9002fa0
.word 0xf94073a0
.word 0xf90033a0
.word 0xf94077a0
.word 0xf90037a0
.word 0xf9407ba0
.word 0xf9003ba0
.word 0xf9400ba0
.word 0x9100e3a1
.word 0xaa0003e1
.word 0xf9401fa1
.word 0xf9000001
.word 0xf94023a1
.word 0xf9000401
.word 0xf94027a1
.word 0xf9000801
.word 0xf9402ba1
.word 0xf9000c01
.word 0xf9402fa1
.word 0xf9001001
.word 0xf94033a1
.word 0xf9001401
.word 0xf94037a1
.word 0xf9001801
.word 0xf9403ba1
.word 0xf9001c01
.word 0xf94013b1
.word 0xf941b631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0

Lme_a:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Screen_set_scaleMatrix_Microsoft_Xna_Framework_Matrix
TheAdventuresOf_Screen_set_scaleMatrix_Microsoft_Xna_Framework_Matrix:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #328]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x9100e3a2
.word 0xf9400022
.word 0xf9001fa2
.word 0xf9400422
.word 0xf90023a2
.word 0xf9400822
.word 0xf90027a2
.word 0xf9400c22
.word 0xf9002ba2
.word 0xf9401022
.word 0xf9002fa2
.word 0xf9401422
.word 0xf90033a2
.word 0xf9401822
.word 0xf90037a2
.word 0xf9401c21
.word 0xf9003ba1
.word 0x9100e3a1
.word 0x91004000
.word 0xf9401fa1
.word 0xf9000001
.word 0xf94023a1
.word 0xf9000401
.word 0xf94027a1
.word 0xf9000801
.word 0xf9402ba1
.word 0xf9000c01
.word 0xf9402fa1
.word 0xf9001001
.word 0xf94033a1
.word 0xf9001401
.word 0xf94037a1
.word 0xf9001801
.word 0xf9403ba1
.word 0xf9001c01
.word 0xf94013b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_b:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Screen_CreateScaleMatrix_int_int
TheAdventuresOf_Screen_CreateScaleMatrix_int_int:
.word 0xa9a57bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #336]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd280001e
.word 0x9e6703c0
.word 0xbd018ba0
.word 0xd280001e
.word 0x9e6703c0
.word 0xbd018fa0
.word 0x910523a0
.word 0xd2800000
.word 0xf900a7a0
.word 0xf900aba0
.word 0xf900afa0
.word 0xf900b3a0
.word 0xf900b7a0
.word 0xf900bba0
.word 0xf900bfa0
.word 0xf900c3a0
.word 0x910423a0
.word 0xd2800000
.word 0xf90087a0
.word 0xf9008ba0
.word 0xf9008fa0
.word 0xf90093a0
.word 0xf90097a0
.word 0xf9009ba0
.word 0xf9009fa0
.word 0xf900a3a0
.word 0xf9401bb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xf900d7a0
.word 0xf9401bb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940d7a0
bl _p_49
.word 0xf9401bb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xb98023a0
.word 0x1e220000
.word 0xd280001e
.word 0xf2a89e1e
.word 0x9e6703c1
.word 0x1e211800
.word 0xbd018ba0
.word 0xf9401bb1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb9802ba0
.word 0x1e220000
.word 0xd280001e
.word 0xf2a890fe
.word 0x9e6703c1
.word 0x1e211800
.word 0xbd018fa0
.word 0xf9401bb1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xbd418ba0
.word 0xfd00cba0
.word 0xbd418fa0
.word 0xfd00cfa0
.word 0xd280001e
.word 0xf2a7f01e
.word 0x9e6703c0
.word 0xfd00d3a0
.word 0xf9401bb1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.word 0xfd40cba0
.word 0xfd40cfa1
.word 0xfd40d3a2
.word 0x910323a0
.word 0xaa0003e8
bl _p_52
.word 0xf9401bb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0x910323a0
.word 0x910523a0
.word 0xf94067a0
.word 0xf900a7a0
.word 0xf9406ba0
.word 0xf900aba0
.word 0xf9406fa0
.word 0xf900afa0
.word 0xf94073a0
.word 0xf900b3a0
.word 0xf94077a0
.word 0xf900b7a0
.word 0xf9407ba0
.word 0xf900bba0
.word 0xf9407fa0
.word 0xf900bfa0
.word 0xf94083a0
.word 0xf900c3a0
.word 0xf9401bb1
.word 0xf9421631
.word 0xb4000051
.word 0xd63f0220
.word 0x910523a0
.word 0x910223a0
.word 0xf940a7a0
.word 0xf90047a0
.word 0xf940aba0
.word 0xf9004ba0
.word 0xf940afa0
.word 0xf9004fa0
.word 0xf940b3a0
.word 0xf90053a0
.word 0xf940b7a0
.word 0xf90057a0
.word 0xf940bba0
.word 0xf9005ba0
.word 0xf940bfa0
.word 0xf9005fa0
.word 0xf940c3a0
.word 0xf90063a0
.word 0x910223a0
.word 0x910423a0
.word 0xf94047a0
.word 0xf90087a0
.word 0xf9404ba0
.word 0xf9008ba0
.word 0xf9404fa0
.word 0xf9008fa0
.word 0xf94053a0
.word 0xf90093a0
.word 0xf94057a0
.word 0xf90097a0
.word 0xf9405ba0
.word 0xf9009ba0
.word 0xf9405fa0
.word 0xf9009fa0
.word 0xf94063a0
.word 0xf900a3a0
.word 0xf9401bb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0x910423a0
.word 0x910123a0
.word 0xf94087a0
.word 0xf90027a0
.word 0xf9408ba0
.word 0xf9002ba0
.word 0xf9408fa0
.word 0xf9002fa0
.word 0xf94093a0
.word 0xf90033a0
.word 0xf94097a0
.word 0xf90037a0
.word 0xf9409ba0
.word 0xf9003ba0
.word 0xf9409fa0
.word 0xf9003fa0
.word 0xf940a3a0
.word 0xf90043a0
.word 0xf9400ba0
.word 0x910123a1
.word 0xaa0003e1
.word 0xf94027a1
.word 0xf9000001
.word 0xf9402ba1
.word 0xf9000401
.word 0xf9402fa1
.word 0xf9000801
.word 0xf94033a1
.word 0xf9000c01
.word 0xf94037a1
.word 0xf9001001
.word 0xf9403ba1
.word 0xf9001401
.word 0xf9403fa1
.word 0xf9001801
.word 0xf94043a1
.word 0xf9001c01
.word 0xf9401bb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8db7bfd
.word 0xd65f03c0

Lme_c:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Screen_Update_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Screen_Update_Microsoft_Xna_Framework_GameTime:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #352]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90023a0
.word 0xf9400fa0
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94027a1
bl _p_53
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Screen_HandleInput_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Screen_HandleInput_Microsoft_Xna_Framework_GameTime:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a0
.word 0xf90017a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #360]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0xd2800018
.word 0xf9401bb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
bl _p_54
.word 0xf9401bb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf90043a0
.word 0xf9401bb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
bl _p_55
.word 0xf9003fa0
.word 0xf9401bb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0xf9003ba0
.word 0xaa0003f9
.word 0xf9401bb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xf90037a0
.word 0xf9401bb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_56
.word 0x93407c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xd2800001
.word 0x6b1f001f
.word 0x54000ccd
.word 0xf9401bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0x1400003e
.word 0xf9401bb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800040
.word 0xd280005e
.word 0x6b1e031f
.word 0x5400044a
.word 0xf9401bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1803e0
.word 0xf9401bb1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0x910123a0
.word 0xf9002ba0
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xf940033e
bl _p_57
.word 0xf9402bbe
.word 0xf90003c0
.word 0xf9401bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0x910123a0
.word 0xf94027a0
bl _p_58
.word 0xf9401bb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0xf9401bb1
.word 0xf9427a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf940033e
bl _p_56
.word 0x93407c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x6b00031f
.word 0x54fff54b
.word 0xf9401bb1
.word 0xf942ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Screen_GetTouchInput
TheAdventuresOf_Screen_GetTouchInput:
.word 0xd2804610
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xa9007bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #368]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0x910763a0
.word 0xf900efbf
.word 0xd2800018
.word 0x910743a0
.word 0xd2800000
.word 0xf900eba0
.word 0x910603a0
.word 0xd2800001
.word 0xd2800a01
.word 0xd2800001
.word 0xd2800a02
bl _p_39
.word 0x9105e3a0
.word 0xd2800000
.word 0xf900bfa0
.word 0x9104a3a0
.word 0xd2800001
.word 0xd2800a01
.word 0xd2800001
.word 0xd2800a02
bl _p_39
.word 0x910483a0
.word 0xd2800000
.word 0xf90093a0
.word 0x910463a0
.word 0xd2800000
.word 0xf9008fa0
.word 0xd2800017
.word 0xf9401bb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #376]
bl _p_17
.word 0xf90103a0
bl _p_59
.word 0xf9401bb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94103a0
.word 0xaa0003f9
.word 0xf9401bb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910443a0
.word 0xf900f3a0
bl _p_60
.word 0xf940f3be
.word 0xf90003c0
.word 0xf9401bb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0x910443a0
.word 0x910763a0
.word 0xf9408ba0
.word 0xf900efa0
.word 0xf9401bb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0x910763a0
.word 0xf900ffa0
.word 0xf9401bb1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940ffa0
bl _p_61
.word 0x93407c00
.word 0xf900fba0
.word 0xf9401bb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940fba0
.word 0xd2800001
.word 0x6b1f001f
.word 0x54001d0d
.word 0xf9401bb1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0x140000c0
.word 0xf9401bb1
.word 0xf941f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800040
.word 0xd280005e
.word 0x6b1e031f
.word 0x5400148a
.word 0xf9401bb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0x910743a0
.word 0xf900fba0
.word 0x910763a0
.word 0xf90113a0
.word 0xaa1803e0
.word 0xf9401bb1
.word 0xf9425a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94113a0
.word 0x910303a1
.word 0xaa0103e8
.word 0xaa1803e1
bl _p_62
.word 0xf9401bb1
.word 0xf9427e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910303a1
.word 0x910603a0
.word 0xd2800a02
.word 0xd2800a02
bl _p_42
.word 0x910603a0
.word 0xf9010fa0
.word 0xf9401bb1
.word 0xf942aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9410fa0
.word 0x9102e3a1
.word 0xf900f3a1
bl _p_63
.word 0xf940f3be
.word 0xbd0003c0
.word 0xbd0007c1
.word 0xf9401bb1
.word 0xf942d631
.word 0xb4000051
.word 0xd63f0220
.word 0x9102e3a0
.word 0x9105e3a0
.word 0xf9405fa0
.word 0xf900bfa0
.word 0x9105e3a0
.word 0xbd417ba0
.word 0x9e380000
.word 0x93407c00
.word 0xf900ffa0
.word 0x910763a0
.word 0xf9010ba0
.word 0xaa1803e0
.word 0xf9401bb1
.word 0xf9431631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9410ba0
.word 0x9101a3a1
.word 0xaa0103e8
.word 0xaa1803e1
bl _p_62
.word 0xf9401bb1
.word 0xf9433a31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101a3a1
.word 0x9104a3a0
.word 0xd2800a02
.word 0xd2800a02
bl _p_42
.word 0x9104a3a0
.word 0xf90107a0
.word 0xf9401bb1
.word 0xf9436631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94107a0
.word 0x910183a1
.word 0xf900f3a1
bl _p_63
.word 0xf940f3be
.word 0xbd0003c0
.word 0xbd0007c1
.word 0xf9401bb1
.word 0xf9439231
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0x910483a0
.word 0xf94033a0
.word 0xf90093a0
.word 0x910483a0
.word 0xbd4127a0
.word 0x9e380000
.word 0x93407c00
.word 0xf90103a0
.word 0xf9401bb1
.word 0xf943c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940fba0
.word 0xf940ffa1
.word 0xf94103a2
bl _p_64
.word 0xf9401bb1
.word 0xf943e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x910743a0
.word 0x910143a0
.word 0xf940eba0
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf9440a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0xf900f3a0
.word 0xaa1a03e0
.word 0x910143a1
.word 0xf9402ba1
bl _p_65
.word 0xf940f3be
.word 0xf90003c0
.word 0xf9401bb1
.word 0xf9443a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x910463a0
.word 0xf9402fa0
.word 0xf9008fa0
.word 0xf9401bb1
.word 0xf9445a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x910463a0
.word 0x910123a0
.word 0xf9408fa0
.word 0xf90027a0
.word 0xf9401bb1
.word 0xf9447e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x910123a1
.word 0xf94027a1
.word 0xf940033e
bl _p_66
.word 0xf9401bb1
.word 0xf944a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf944c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf944d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf944fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x910763a0
.word 0xf900ffa0
.word 0xf9401bb1
.word 0xf9451a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940ffa0
bl _p_61
.word 0x93407c00
.word 0xf900fba0
.word 0xf9401bb1
.word 0xf9453a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940fba0
.word 0x6b00031f
.word 0x54ffe50b
.word 0xf9401bb1
.word 0xf9455631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9457631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903f7
.word 0xf9401bb1
.word 0xf9458e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9401bb1
.word 0xf945a631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa9407bfd
.word 0xd2804610
.word 0x910003f1
.word 0x8b100231
.word 0x9100023f
.word 0xd65f03c0

Lme_f:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Screen_GetScaledTouchInput_Microsoft_Xna_Framework_Point
TheAdventuresOf_Screen_GetScaledTouchInput_Microsoft_Xna_Framework_Point:
.word 0xd2804810
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xa9007bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #384]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0x910743a0
.word 0xd2800000
.word 0xf900eba0
.word 0xf900efa0
.word 0xf900f3a0
.word 0xf900f7a0
.word 0xf900fba0
.word 0xf900ffa0
.word 0xf90103a0
.word 0xf90107a0
.word 0x910723a0
.word 0xd2800000
.word 0xf900e7a0
.word 0x910703a0
.word 0xd2800000
.word 0xf900e3a0
.word 0x9106e3a0
.word 0xd2800000
.word 0xf900dfa0
.word 0xf9401fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf9011ba0
.word 0xf9401fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9411ba0
.word 0x9105e3a1
.word 0xaa0103e8
bl _p_40
.word 0xf9401fb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0x9104e3a0
.word 0xaa0003e8
.word 0x9105e3a0
.word 0x910383a0
.word 0xf940bfa1
.word 0xf90073a1
.word 0xf940c3a1
.word 0xf90077a1
.word 0xf940c7a1
.word 0xf9007ba1
.word 0xf940cba1
.word 0xf9007fa1
.word 0xf940cfa1
.word 0xf90083a1
.word 0xf940d3a1
.word 0xf90087a1
.word 0xf940d7a1
.word 0xf9008ba1
.word 0xf940dba1
.word 0xf9008fa1
.word 0xaa0003e1
bl _p_67
.word 0xf9401fb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0x9104e3a0
.word 0x910743a0
.word 0xf9409fa0
.word 0xf900eba0
.word 0xf940a3a0
.word 0xf900efa0
.word 0xf940a7a0
.word 0xf900f3a0
.word 0xf940aba0
.word 0xf900f7a0
.word 0xf940afa0
.word 0xf900fba0
.word 0xf940b3a0
.word 0xf900ffa0
.word 0xf940b7a0
.word 0xf90103a0
.word 0xf940bba0
.word 0xf90107a0
.word 0xf9401fb1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0xf90117a0
.word 0xf9401fb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94117a0
.word 0x9104c3a1
.word 0xf9010ba1
bl _p_68
.word 0xf9410bbe
.word 0xbd0003c0
.word 0xbd0007c1
.word 0xf9401fb1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0x910743a0
.word 0x910283a0
.word 0xf940eba0
.word 0xf90053a0
.word 0xf940efa0
.word 0xf90057a0
.word 0xf940f3a0
.word 0xf9005ba0
.word 0xf940f7a0
.word 0xf9005fa0
.word 0xf940fba0
.word 0xf90063a0
.word 0xf940ffa0
.word 0xf90067a0
.word 0xf94103a0
.word 0xf9006ba0
.word 0xf94107a0
.word 0xf9006fa0
.word 0xf9401fb1
.word 0xf9425631
.word 0xb4000051
.word 0xd63f0220
.word 0x9104a3a0
.word 0xf9010ba0
.word 0x9104c3a0
.word 0xbd4133a0
.word 0xbd4137a1
.word 0x910283a0
.word 0x910183a0
.word 0xf94053a1
.word 0xf90033a1
.word 0xf94057a1
.word 0xf90037a1
.word 0xf9405ba1
.word 0xf9003ba1
.word 0xf9405fa1
.word 0xf9003fa1
.word 0xf94063a1
.word 0xf90043a1
.word 0xf94067a1
.word 0xf90047a1
.word 0xf9406ba1
.word 0xf9004ba1
.word 0xf9406fa1
.word 0xf9004fa1
.word 0xaa0003e1
bl _p_69
.word 0xf9410bbe
.word 0xbd0003c0
.word 0xbd0007c1
.word 0xf9401fb1
.word 0xf942d631
.word 0xb4000051
.word 0xd63f0220
.word 0x9104a3a0
.word 0x910703a0
.word 0xf94097a0
.word 0xf900e3a0
.word 0x910703a0
.word 0xf90113a0
.word 0xf9401fb1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94113a0
.word 0x910483a1
.word 0xf9010ba1
bl _p_70
.word 0xf9410bbe
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0x910483a0
.word 0x910723a0
.word 0xf94093a0
.word 0xf900e7a0
.word 0xf9401fb1
.word 0xf9434631
.word 0xb4000051
.word 0xd63f0220
.word 0x910723a0
.word 0x910163a0
.word 0xf940e7a0
.word 0xf9002fa0
.word 0x910163a0
.word 0x9106e3a0
.word 0xf9402fa0
.word 0xf900dfa0
.word 0xf9401fb1
.word 0xf9437631
.word 0xb4000051
.word 0xd63f0220
.word 0x9106e3a0
.word 0x910143a0
.word 0xf940dfa0
.word 0xf9002ba0
.word 0x910143a0
.word 0x910043a0
.word 0xf9402ba0
.word 0xf9000ba0
.word 0xf9401fb1
.word 0xf943a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910003bf
.word 0xa9407bfd
.word 0xd2804810
.word 0x910003f1
.word 0x8b100231
.word 0x9100023f
.word 0xd65f03c0

Lme_10:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Character__ctor
TheAdventuresOf_Character__ctor:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #392]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd280001e
.word 0x9e6703c0
.word 0xbd003340
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x3901875e
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x9100c3a0
.word 0xf9001fa0
bl _p_71
.word 0xf9401fbe
.word 0xf90003c0
.word 0xf9400fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100c3a0
.word 0x91019340
.word 0xb98033a1
.word 0xb9000001
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Character_HandleMovement_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Character_HandleMovement_Microsoft_Xna_Framework_GameTime:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #400]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_12:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Character_InitializeAnimation
TheAdventuresOf_Character_InitializeAnimation:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #408]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Character_Move_Microsoft_Xna_Framework_GameTime_int
TheAdventuresOf_Character_Move_Microsoft_Xna_Framework_GameTime_int:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #416]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_14:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Character_HandleAnimation_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Character_HandleAnimation_Microsoft_Xna_Framework_GameTime:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #424]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Character_InitializeCharacter_single_single_int_int
TheAdventuresOf_Character_InitializeCharacter_single_single_int_int:
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f8
.word 0xbd002ba0
.word 0xbd0033a1
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #432]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9401fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #440]
.word 0xf90063a0
.word 0xf9401fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
bl _p_49
.word 0xf9401fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0xb9005b19
.word 0xf9401fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xb9005f1a
.word 0xf9401fb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xbd402ba0
.word 0xfd005ba0
.word 0xbd4033a0
.word 0xfd005fa0
.word 0xf9401fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd405ba0
.word 0xfd405fa1
.word 0x910223a0
.word 0xd2800000
.word 0xf90047a0
.word 0x910223a0
bl _p_72
.word 0x910223a0
.word 0x9101a3a0
.word 0xf94047a0
.word 0xf90037a0
.word 0xf9401fb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101a3a0
.word 0x91011300
.word 0xf94037a1
.word 0xf9000001
.word 0xf9401fb1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0x531f7f20
.word 0xb190000
.word 0x13017c00
.word 0x1e220000
.word 0xfd0053a0
.word 0xaa1a03e0
.word 0x531f7f40
.word 0xb1a0000
.word 0x13017c00
.word 0x1e220000
.word 0xfd0057a0
.word 0xf9401fb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4053a0
.word 0xfd4057a1
.word 0x910203a0
.word 0xd2800000
.word 0xf90043a0
.word 0x910203a0
bl _p_72
.word 0x910203a0
.word 0x910183a0
.word 0xf94043a0
.word 0xf90033a0
.word 0xf9401fb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0x91013300
.word 0xf94033a1
.word 0xf9000001
.word 0xf9401fb1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54000920
.word 0x91011300
.word 0xbd404700
.word 0x9e380000
.word 0x93407c00
.word 0xf9004ba0
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54000800
.word 0x91011300
.word 0xbd404b00
.word 0x9e380000
.word 0x93407c00
.word 0xf9004fa0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9401fb1
.word 0xf9426e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba1
.word 0xf9404fa2
.word 0x9101c3a0
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0
.word 0x9101c3a0
.word 0xaa1903e3
.word 0xaa1a03e4
bl _p_73
.word 0x9101c3a0
.word 0x910143a0
.word 0xf9403ba0
.word 0xf9002ba0
.word 0xf9403fa0
.word 0xf9002fa0
.word 0xf9401fb1
.word 0xf942be31
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0x9100d300
.word 0xf9402ba1
.word 0xf9000001
.word 0xf9402fa1
.word 0xf9000401
.word 0xf9401fb1
.word 0xf942e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9401fb1
.word 0xf942fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9404830
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9431a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9432a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_16:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Character_UpdateCharacterBounds
TheAdventuresOf_Character_UpdateCharacterBounds:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #448]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x54000520
.word 0x9100d340
.word 0xaa1a03e1
.word 0xeb1f035f
.word 0x10000011
.word 0x54000480
.word 0x91011341
.word 0xbd404740
.word 0x9e380001
.word 0x93407c21
.word 0xb9000001
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x540002e0
.word 0x9100d340
.word 0xaa1a03e1
.word 0xeb1f035f
.word 0x10000011
.word 0x54000240
.word 0x91011341
.word 0xbd404b40
.word 0x9e380001
.word 0x93407c21
.word 0xb9000401
.word 0xf9400fb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_17:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Character_HandleLevelBoundCollision_int_int
TheAdventuresOf_Character_HandleLevelBoundCollision_int_int:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #456]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x340000f9
.word 0xaa1903e0
.word 0xd2800020
.word 0xd280003e
.word 0x6b1e033f
.word 0x54000260
.word 0x14000025
.word 0xf94017b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x540005c0
.word 0x91011300
.word 0xaa1a03e1
.word 0x1e220340
.word 0xbd000000
.word 0xf94017b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000014
.word 0xf94017b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x540003a0
.word 0x91011300
.word 0xaa1a03e1
.word 0xaa1803e1
.word 0xb9805b01
.word 0x4b010341
.word 0x1e220020
.word 0xbd000000
.word 0xf94017b1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_18:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Character_Update_Microsoft_Xna_Framework_GameTime_bool
TheAdventuresOf_Character_Update_Microsoft_Xna_Framework_GameTime_bool:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #464]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90027a0
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xf94027a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9404050
.word 0xd63f0200
.word 0xf94017b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_19:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Character_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
TheAdventuresOf_Character_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D:
.word 0xd2807010
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xa9007bfd
.word 0x910003fd
.word 0xd2800410
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #472]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0x910ca3a0
.word 0xd2800000
.word 0xf90197a0
.word 0xf9019ba0
.word 0xd2800017
.word 0x910c63a0
.word 0xd2800000
.word 0xf9018fa0
.word 0xb90323bf
.word 0x910c03a0
.word 0xd2800000
.word 0xf90183a0
.word 0xf90187a0
.word 0xb90313bf
.word 0xd280001e
.word 0x9e6703c0
.word 0xbd033ba0
.word 0x910bc3a0
.word 0xd2800000
.word 0xf9017ba0
.word 0xb902fbbf
.word 0x910b63a0
.word 0xd2800000
.word 0xf9016fa0
.word 0xf90173a0
.word 0xb902ebbf
.word 0xf9401bb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9401300
.word 0xf901aba0
.word 0xf9401bb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xf941aba1
.word 0x910b23a0
.word 0xf901a3a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_74
.word 0xf941a3be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9401bb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910b23a0
.word 0x910ca3a0
.word 0xf94167a0
.word 0xf90197a0
.word 0xf9416ba0
.word 0xf9019ba0
.word 0xf9401bb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x39418700
.word 0x34002360
.word 0xf9401bb1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1a03f7
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54004840
.word 0x91011300
.word 0xbd404700
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54004780
.word 0x91013300
.word 0xbd404f01
.word 0x1e212800
.word 0xfd01b7a0
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54004680
.word 0x91011300
.word 0xbd404b00
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x540045c0
.word 0x91013300
.word 0xbd405301
.word 0x1e212800
.word 0xfd01bba0
.word 0xf9401bb1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd41b7a0
.word 0xfd41bba1
.word 0x910b03a0
.word 0xd2800000
.word 0xf90163a0
.word 0x910b03a0
bl _p_72
.word 0x910b03a0
.word 0x9108c3a0
.word 0xf94163a0
.word 0xf9011ba0
.word 0xf9401bb1
.word 0xf9426631
.word 0xb4000051
.word 0xd63f0220
.word 0x910ac3a0
.word 0xd2800000
.word 0xf9015ba0
.word 0xb902bbbf
.word 0x910ac3a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x9108c3a1
.word 0xbd4233a0
.word 0xbd4237a1
bl _p_75
.word 0x910ac3a0
.word 0x910883a0
.word 0xf9415ba0
.word 0xf90113a0
.word 0xb982bba0
.word 0xb9022ba0
.word 0xf9401bb1
.word 0xf942be31
.word 0xb4000051
.word 0xd63f0220
.word 0x910883a0
.word 0x910c63a0
.word 0xf94113a0
.word 0xf9018fa0
.word 0xb9822ba0
.word 0xb90323a0
.word 0x910ca3a0
.word 0x910843a0
.word 0xf94197a0
.word 0xf9010ba0
.word 0xf9419ba0
.word 0xf9010fa0
.word 0x910a63a0
.word 0xd2800000
.word 0xf9014fa0
.word 0xf90153a0
.word 0xb902abbf
.word 0x910a63a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #488]
.word 0x910843a1
.word 0xf9410ba1
.word 0xf9410fa2
bl _p_76
.word 0x910a63a0
.word 0x9107e3a0
.word 0xf9414fa0
.word 0xf900ffa0
.word 0xf94153a0
.word 0xf90103a0
.word 0xb982aba0
.word 0xb9020ba0
.word 0xf9401bb1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
.word 0x9107e3a0
.word 0x910c03a0
.word 0xf940ffa0
.word 0xf90183a0
.word 0xf94103a0
.word 0xf90187a0
.word 0xb9820ba0
.word 0xb90313a0
.word 0xaa1803e0
.word 0xbd403300
.word 0xbd033ba0
.word 0xaa1803e0
.word 0x91013300
.word 0x9107c3a1
.word 0xf9400000
.word 0xf900fba0
.word 0x910a23a0
.word 0xd2800000
.word 0xf90147a0
.word 0xb90293bf
.word 0x910a23a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x9107c3a1
.word 0xbd41f3a0
.word 0xbd41f7a1
bl _p_75
.word 0x910a23a0
.word 0x910783a0
.word 0xf94147a0
.word 0xf900f3a0
.word 0xb98293a0
.word 0xb901eba0
.word 0xf9401bb1
.word 0xf943ea31
.word 0xb4000051
.word 0xd63f0220
.word 0x910783a0
.word 0x910bc3a0
.word 0xf940f3a0
.word 0xf9017ba0
.word 0xb981eba0
.word 0xb902fba0
.word 0xaa1a03e0
.word 0x910c63a0
.word 0x910743a0
.word 0xf9418fa0
.word 0xf900eba0
.word 0xb98323a0
.word 0xb901dba0
.word 0x910b63a0
.word 0xd2800000
.word 0xf9016fa0
.word 0xf90173a0
.word 0xb902ebbf
.word 0x910b63a0
.word 0x9106e3a0
.word 0xf9416fa0
.word 0xf900dfa0
.word 0xf94173a0
.word 0xf900e3a0
.word 0xb982eba0
.word 0xb901cba0
.word 0x910c03a0
.word 0x910683a0
.word 0xf94183a0
.word 0xf900d3a0
.word 0xf94187a0
.word 0xf900d7a0
.word 0xb98313a0
.word 0xb901b3a0
.word 0x910bc3a0
.word 0x910643a0
.word 0xf9417ba0
.word 0xf900cba0
.word 0xb982fba0
.word 0xb9019ba0
.word 0xbd433ba0
.word 0xfd01afa0
.word 0x910bc3a0
.word 0xd2800000
.word 0xf9017ba0
.word 0xb902fbbf
.word 0x910bc3a0
.word 0x910603a0
.word 0xf9417ba0
.word 0xf900c3a0
.word 0xb982fba0
.word 0xb9018ba0
.word 0xaa1803e0
.word 0x91019300
.word 0x9105e3a1
.word 0xb9800000
.word 0xb9017ba0
.word 0x910a03a0
.word 0xd2800000
.word 0xf90143a0
.word 0x910a03a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #496]
.word 0x9105e3a1
.word 0xf940bfa1
bl _p_77
.word 0x910a03a0
.word 0x9105c3a0
.word 0xf94143a0
.word 0xf900bba0
.word 0xf9401bb1
.word 0xf9451631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd01b3a0
.word 0xf9401bb1
.word 0xf9453631
.word 0xb4000051
.word 0xd63f0220
.word 0xfd41afa0
.word 0xfd41b3a1
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0x910743a2
.word 0xf940eba2
.word 0xf940efa3
.word 0x9106e3a4
.word 0x910563a4
.word 0xf940dfa5
.word 0xf900afa5
.word 0xf940e3a5
.word 0xf900b3a5
.word 0xf940e7a5
.word 0xf900b7a5
.word 0xaa0403e5
.word 0x910683a5
.word 0x910503a5
.word 0xf940d3a6
.word 0xf900a3a6
.word 0xf940d7a6
.word 0xf900a7a6
.word 0xf940dba6
.word 0xf900aba6
.word 0xaa0503e6
.word 0x910643a6
.word 0xf940cba6
.word 0xf940cfa7
.word 0x910603a9
.word 0xf940c3a9
.word 0xf90003e9
.word 0xf940c7a9
.word 0xf90007e9
.word 0x9105c3a9
.word 0xf940bba9
.word 0xf9000be9
.word 0xb9001bff
.word 0xf940033e
bl _p_78
.word 0xf9401bb1
.word 0xf945e231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000122
.word 0xf9401bb1
.word 0xf945f631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x39418300
.word 0x34002360
.word 0xf9401bb1
.word 0xf9461231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9462231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1a03f7
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54002420
.word 0x91011300
.word 0xbd404700
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54002360
.word 0x91013300
.word 0xbd404f01
.word 0x1e212800
.word 0xfd01b7a0
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54002260
.word 0x91011300
.word 0xbd404b00
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x540021a0
.word 0x91013300
.word 0xbd405301
.word 0x1e212800
.word 0xfd01bba0
.word 0xf9401bb1
.word 0xf946ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd41b7a0
.word 0xfd41bba1
.word 0x9109e3a0
.word 0xd2800000
.word 0xf9013fa0
.word 0x9109e3a0
bl _p_72
.word 0x9109e3a0
.word 0x9104e3a0
.word 0xf9413fa0
.word 0xf9009fa0
.word 0xf9401bb1
.word 0xf946ea31
.word 0xb4000051
.word 0xd63f0220
.word 0x9109a3a0
.word 0xd2800000
.word 0xf90137a0
.word 0xb90273bf
.word 0x9109a3a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x9104e3a1
.word 0xbd413ba0
.word 0xbd413fa1
bl _p_75
.word 0x9109a3a0
.word 0x9104a3a0
.word 0xf94137a0
.word 0xf90097a0
.word 0xb98273a0
.word 0xb90133a0
.word 0xf9401bb1
.word 0xf9474231
.word 0xb4000051
.word 0xd63f0220
.word 0x9104a3a0
.word 0x910bc3a0
.word 0xf94097a0
.word 0xf9017ba0
.word 0xb98133a0
.word 0xb902fba0
.word 0x910ca3a0
.word 0x910463a0
.word 0xf94197a0
.word 0xf9008fa0
.word 0xf9419ba0
.word 0xf90093a0
.word 0x910943a0
.word 0xd2800000
.word 0xf9012ba0
.word 0xf9012fa0
.word 0xb90263bf
.word 0x910943a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #488]
.word 0x910463a1
.word 0xf9408fa1
.word 0xf94093a2
bl _p_76
.word 0x910943a0
.word 0x910403a0
.word 0xf9412ba0
.word 0xf90083a0
.word 0xf9412fa0
.word 0xf90087a0
.word 0xb98263a0
.word 0xb90113a0
.word 0xf9401bb1
.word 0xf947d631
.word 0xb4000051
.word 0xd63f0220
.word 0x910403a0
.word 0x910c03a0
.word 0xf94083a0
.word 0xf90183a0
.word 0xf94087a0
.word 0xf90187a0
.word 0xb98113a0
.word 0xb90313a0
.word 0xaa1803e0
.word 0xbd403300
.word 0xbd033ba0
.word 0xaa1803e0
.word 0x91013300
.word 0x9103e3a1
.word 0xf9400000
.word 0xf9007fa0
.word 0x910903a0
.word 0xd2800000
.word 0xf90123a0
.word 0xb9024bbf
.word 0x910903a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x9103e3a1
.word 0xbd40fba0
.word 0xbd40ffa1
bl _p_75
.word 0x910903a0
.word 0x9103a3a0
.word 0xf94123a0
.word 0xf90077a0
.word 0xb9824ba0
.word 0xb900f3a0
.word 0xf9401bb1
.word 0xf9486e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9103a3a0
.word 0x910c63a0
.word 0xf94077a0
.word 0xf9018fa0
.word 0xb980f3a0
.word 0xb90323a0
.word 0xaa1a03e0
.word 0x910bc3a0
.word 0x910363a0
.word 0xf9417ba0
.word 0xf9006fa0
.word 0xb982fba0
.word 0xb900e3a0
.word 0x910b63a0
.word 0xd2800000
.word 0xf9016fa0
.word 0xf90173a0
.word 0xb902ebbf
.word 0x910b63a0
.word 0x910303a0
.word 0xf9416fa0
.word 0xf90063a0
.word 0xf94173a0
.word 0xf90067a0
.word 0xb982eba0
.word 0xb900d3a0
.word 0x910c03a0
.word 0x9102a3a0
.word 0xf94183a0
.word 0xf90057a0
.word 0xf94187a0
.word 0xf9005ba0
.word 0xb98313a0
.word 0xb900bba0
.word 0x910c63a0
.word 0x910263a0
.word 0xf9418fa0
.word 0xf9004fa0
.word 0xb98323a0
.word 0xb900a3a0
.word 0xbd433ba0
.word 0xfd01afa0
.word 0x910c63a0
.word 0xd2800000
.word 0xf9018fa0
.word 0xb90323bf
.word 0x910c63a0
.word 0x910223a0
.word 0xf9418fa0
.word 0xf90047a0
.word 0xb98323a0
.word 0xb90093a0
.word 0xaa1803e0
.word 0x91019300
.word 0x910203a1
.word 0xb9800000
.word 0xb90083a0
.word 0x9108e3a0
.word 0xd2800000
.word 0xf9011fa0
.word 0x9108e3a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #496]
.word 0x910203a1
.word 0xf94043a1
bl _p_77
.word 0x9108e3a0
.word 0x9101e3a0
.word 0xf9411fa0
.word 0xf9003fa0
.word 0xf9401bb1
.word 0xf9499a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd01b3a0
.word 0xf9401bb1
.word 0xf949ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd41afa0
.word 0xfd41b3a1
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0x910363a2
.word 0xf9406fa2
.word 0xf94073a3
.word 0x910303a4
.word 0x910183a4
.word 0xf94063a5
.word 0xf90033a5
.word 0xf94067a5
.word 0xf90037a5
.word 0xf9406ba5
.word 0xf9003ba5
.word 0xaa0403e5
.word 0x9102a3a5
.word 0x910123a5
.word 0xf94057a6
.word 0xf90027a6
.word 0xf9405ba6
.word 0xf9002ba6
.word 0xf9405fa6
.word 0xf9002fa6
.word 0xaa0503e6
.word 0x910263a6
.word 0xf9404fa6
.word 0xf94053a7
.word 0x910223a9
.word 0xf94047a9
.word 0xf90003e9
.word 0xf9404ba9
.word 0xf90007e9
.word 0x9101e3a9
.word 0xf9403fa9
.word 0xf9000be9
.word 0xd280003e
.word 0xb9001bfe
.word 0xf940033e
bl _p_78
.word 0xf9401bb1
.word 0xf94a6a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf94a8a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf94a9a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa9407bfd
.word 0xd2807010
.word 0x910003f1
.word 0x8b100231
.word 0x9100023f
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_1a:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_FrameRate_LoadContent_Microsoft_Xna_Framework_Content_ContentManager
TheAdventuresOf_FrameRate_LoadContent_Microsoft_Xna_Framework_Content_ContentManager:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #504]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90023a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa1
.word 0xf94023a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #520]

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #528]
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9405050
.word 0xd63f0200
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xf9000001
.word 0xf9400fb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1b:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_FrameRate_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_FrameRate_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_GameTime:
.word 0xa9b47bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #544]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001e
.word 0x9e6703c0
.word 0xbd0063a0
.word 0x910163a0
.word 0xf9002fbf
.word 0xf94013b1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd280001e
.word 0xf2a7f01e
.word 0x9e6703c0
.word 0xfd0053a0
.word 0xf9400fa0
.word 0xf9005fa0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910143a0
.word 0xf90037a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_79
.word 0xf94037be
.word 0xf90003c0
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0x910163a0
.word 0xf9402ba0
.word 0xf9002fa0
.word 0x910163a0
.word 0xf9005ba0
.word 0xf94013b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
bl _p_80
.word 0xfd0057a0
.word 0xf94013b1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4053a0
.word 0xfd4057a1
.word 0x1e624021
.word 0x1e211800
.word 0xbd0063a0
.word 0xf94013b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90043a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xf9400000
.word 0xf9003ba0
.word 0x910183a0
.word 0xf9004fa0
.word 0xf94013b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
bl _p_81
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd0047a0
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd004ba0
.word 0xf94013b1
.word 0xf941b231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4047a0
.word 0xfd404ba1
.word 0x910123a0
.word 0xd2800000
.word 0xf90027a0
.word 0x910123a0
bl _p_72
.word 0x910123a0
.word 0x9100e3a0
.word 0xf94027a0
.word 0xf9001fa0
.word 0xf94013b1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0xf90037a0
bl _p_71
.word 0xf94037be
.word 0xf90003c0
.word 0xf94013b1
.word 0xf9421231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba1
.word 0xf9403fa2
.word 0xf94043a4
.word 0xaa0403e0
.word 0x9100e3a3
.word 0xbd403ba0
.word 0xbd403fa1
.word 0x910103a3
.word 0xf94023a3
.word 0xf940009e
bl _p_82
.word 0xf94013b1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_1c:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_AnimationFrame__ctor
TheAdventuresOf_AnimationFrame__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #552]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1d:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_AnimationFrame_get_sourceRectangle
TheAdventuresOf_AnimationFrame_get_sourceRectangle:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf90013a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #560]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0x910183a0
.word 0xd2800000
.word 0xf90033a0
.word 0xf90037a0
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0x91004000
.word 0x910143a1
.word 0xf9400001
.word 0xf9002ba1
.word 0xf9400400
.word 0xf9002fa0
.word 0x910143a0
.word 0x910183a0
.word 0xf9402ba0
.word 0xf90033a0
.word 0xf9402fa0
.word 0xf90037a0
.word 0x910183a0
.word 0x910103a0
.word 0xf94033a0
.word 0xf90023a0
.word 0xf94037a0
.word 0xf90027a0
.word 0x910103a0
.word 0x910043a0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf94017b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_1e:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_AnimationFrame_set_sourceRectangle_Microsoft_Xna_Framework_Rectangle
TheAdventuresOf_AnimationFrame_set_sourceRectangle_Microsoft_Xna_Framework_Rectangle:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #568]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910063a1
.word 0x910103a1
.word 0xf9400fa1
.word 0xf90023a1
.word 0xf94013a1
.word 0xf90027a1
.word 0x910103a1
.word 0x91004000
.word 0xf94023a1
.word 0xf9000001
.word 0xf94027a1
.word 0xf9000401
.word 0xf94017b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1f:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_AnimationFrame_get_duration
TheAdventuresOf_AnimationFrame_get_duration:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf90013a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #576]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0x910143a0
.word 0xf9002bbf
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0x91008000
.word 0x910123a1
.word 0xf9400000
.word 0xf90027a0
.word 0x910123a0
.word 0x910143a0
.word 0xf94027a0
.word 0xf9002ba0
.word 0x910143a0
.word 0x910103a0
.word 0xf9402ba0
.word 0xf90023a0
.word 0x910103a0
.word 0x910043a0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94017b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_20:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_AnimationFrame_set_duration_System_TimeSpan
TheAdventuresOf_AnimationFrame_set_duration_System_TimeSpan:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #584]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910063a1
.word 0x910103a1
.word 0xf9400fa1
.word 0xf90023a1
.word 0x910103a1
.word 0x91008000
.word 0xf94023a1
.word 0xf9000001
.word 0xf94017b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_21:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Animation__ctor
TheAdventuresOf_Animation__ctor:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #592]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #600]
bl _p_17
.word 0xf9001fa0
bl _p_83
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xf9000b40
.word 0x91004340
bl _p_9
.word 0xf9401ba0
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_22:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Animation_get_CurrentRectangle
TheAdventuresOf_Animation_get_CurrentRectangle:
.word 0xa9aa7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #608]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0x910403a0
.word 0xf90083bf
.word 0xd2800018
.word 0x9103a3a0
.word 0xd2800000
.word 0xf90077a0
.word 0xf9007ba0
.word 0xf9007fa0
.word 0x910363a0
.word 0xd2800000
.word 0xf9006fa0
.word 0xf90073a0
.word 0xf9401fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800019
.word 0xf9401fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0x9e6703e0
.word 0xf9401fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0x910343a0
.word 0xf90087a0
.word 0x9e6703e0
bl _p_84
.word 0xf94087be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0x910343a0
.word 0x910403a0
.word 0xf9406ba0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf9009ba0
.word 0xf9401fb1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409ba1
.word 0x9102e3a0
.word 0xaa0003e8
.word 0xaa0103e0
.word 0xf940003e
bl _p_85
.word 0xf9401fb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0x9102e3a0
.word 0x9103a3a0
.word 0xf9405fa0
.word 0xf90077a0
.word 0xf94063a0
.word 0xf9007ba0
.word 0xf94067a0
.word 0xf9007fa0
.word 0x140000a9
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0x9103a3a0
.word 0xf900aba0
.word 0xf9401fb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940aba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #616]
bl _p_86
.word 0xf900a7a0
.word 0xf9401fb1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940a7a0
.word 0xf900a3a0
.word 0xaa0003f8
.word 0xf9401fb1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9421231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940a3a0
.word 0x910403a1
.word 0x9101c3a1
.word 0xf94083a1
.word 0xf9003ba1
.word 0xf9009fa0
.word 0xf9401fb1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa1
.word 0x9102c3a0
.word 0xf90087a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_87
.word 0xf94087be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0x9102a3a0
.word 0xf90087a0
.word 0x9101c3a0
.word 0xf9403ba0
.word 0x9102c3a1
.word 0xf9405ba1
bl _p_88
.word 0xf94087be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x91006340
.word 0x9101a3a1
.word 0xf9400000
.word 0xf90037a0
.word 0xf9401fb1
.word 0xf942c231
.word 0xb4000051
.word 0xd63f0220
.word 0x9102a3a0
.word 0xf94057a0
.word 0x9101a3a1
.word 0xf94037a1
bl _p_89
.word 0x53001c00
.word 0xf9009ba0
.word 0xf9401fb1
.word 0xf942ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409ba0
.word 0x34000280
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9431631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803f9
.word 0xf9401fb1
.word 0xf9433e31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400004d
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9436231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9437231
.word 0xb4000051
.word 0xd63f0220
.word 0x910403a0
.word 0x910183a0
.word 0xf94083a0
.word 0xf90033a0
.word 0xaa1803e0
.word 0xf9401fb1
.word 0xf9439631
.word 0xb4000051
.word 0xd63f0220
.word 0x910283a0
.word 0xf90087a0
.word 0xaa1803e0
.word 0xf940031e
bl _p_87
.word 0xf94087be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf943c231
.word 0xb4000051
.word 0xd63f0220
.word 0x910263a0
.word 0xf90087a0
.word 0x910183a0
.word 0xf94033a0
.word 0x910283a1
.word 0xf94053a1
bl _p_88
.word 0xf94087be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf943f631
.word 0xb4000051
.word 0xd63f0220
.word 0x910263a0
.word 0x910403a0
.word 0xf9404fa0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf9441631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9442631
.word 0xb4000051
.word 0xd63f0220
.word 0x9103a3a0
.word 0xf9009fa0
.word 0xf9401fb1
.word 0xf9443e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #616]
bl _p_90
.word 0x53001c00
.word 0xf9009ba0
.word 0xf9401fb1
.word 0xf9446a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409ba0
.word 0x35ffe8c0
.word 0x94000002
.word 0x14000013
.word 0xf90093be
.word 0x9103a3a0
.word 0xf9009ba0
.word 0xf9401fb1
.word 0xf9449631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #616]
bl _p_91
.word 0xf9401fb1
.word 0xf944ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093be
.word 0xd61f03c0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf944e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb5000499
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9450a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9451a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf9009fa0
.word 0xf9401fb1
.word 0xf9453631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #624]
bl _p_92
.word 0xf9009ba0
.word 0xf9401fb1
.word 0xf9455e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409ba0
.word 0xaa0003f9
.word 0xf9401fb1
.word 0xf9457631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9459631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb40004b9
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf945be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf945ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401fb1
.word 0xf945e231
.word 0xb4000051
.word 0xd63f0220
.word 0x910223a0
.word 0xf90087a0
.word 0xaa1903e0
.word 0xf940033e
bl _p_93
.word 0xf94087be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9401fb1
.word 0xf9461231
.word 0xb4000051
.word 0xd63f0220
.word 0x910223a0
.word 0x910363a0
.word 0xf94047a0
.word 0xf9006fa0
.word 0xf9404ba0
.word 0xf90073a0
.word 0x1400001d
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9464e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9465e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101e3a0
.word 0xf90087a0
bl _p_94
.word 0xf94087be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9401fb1
.word 0xf9468631
.word 0xb4000051
.word 0xd63f0220
.word 0x9101e3a0
.word 0x910363a0
.word 0xf9403fa0
.word 0xf9006fa0
.word 0xf94043a0
.word 0xf90073a0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf946be31
.word 0xb4000051
.word 0xd63f0220
.word 0x910363a0
.word 0x910143a0
.word 0xf9406fa0
.word 0xf9002ba0
.word 0xf94073a0
.word 0xf9002fa0
.word 0x910143a0
.word 0x9100a3a0
.word 0xf9402ba0
.word 0xf90017a0
.word 0xf9402fa0
.word 0xf9001ba0
.word 0xf9401fb1
.word 0xf946fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0xf94017a0
.word 0xf9401ba1
.word 0x910003bf
.word 0xa8d67bfd
.word 0xd65f03c0

Lme_23:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Animation_CalculateAnimationDuration
TheAdventuresOf_Animation_CalculateAnimationDuration:
.word 0xa9b07bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #632]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0x9e6703e0
.word 0xfd0043a0
.word 0xd2800019
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0x910183a0
.word 0xf90033bf
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9e6703e0
.word 0xfd0043a0
.word 0xf94013b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf9005ba0
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1
.word 0x910123a0
.word 0xaa0003e8
.word 0xaa0103e0
.word 0xf940003e
bl _p_85
.word 0xf94013b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0x910123a0
.word 0x9101a3a0
.word 0xf94027a0
.word 0xf90037a0
.word 0xf9402ba0
.word 0xf9003ba0
.word 0xf9402fa0
.word 0xf9003fa0
.word 0x14000051
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101a3a0
.word 0xf90077a0
.word 0xf94013b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94077a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #616]
bl _p_86
.word 0xf90073a0
.word 0xf94013b1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf9006fa0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406fa0
.word 0xfd4043a0
.word 0xfd005fa0
.word 0xf9006ba0
.word 0xf94013b1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba1
.word 0x910103a0
.word 0xf90047a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_87
.word 0xf94047be
.word 0xf90003c0
.word 0xf94013b1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910183a0
.word 0xf94023a0
.word 0xf90033a0
.word 0x910183a0
.word 0xf90067a0
.word 0xf94013b1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
bl _p_80
.word 0xfd0063a0
.word 0xf94013b1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd405fa0
.word 0xfd4063a1
.word 0x1e612800
.word 0xfd0043a0
.word 0xf94013b1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101a3a0
.word 0xf9007ba0
.word 0xf94013b1
.word 0xf9427631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #616]
bl _p_90
.word 0x53001c00
.word 0xf9005ba0
.word 0xf94013b1
.word 0xf942a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35fff3c0
.word 0x94000002
.word 0x14000013
.word 0xf90053be
.word 0x9101a3a0
.word 0xf9005ba0
.word 0xf94013b1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #616]
bl _p_91
.word 0xf94013b1
.word 0xf942f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053be
.word 0xd61f03c0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9431a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xfd4043a0
.word 0xfd005fa0
.word 0xf94013b1
.word 0xf9433631
.word 0xb4000051
.word 0xd63f0220
.word 0xfd405fa0
.word 0x9100e3a0
.word 0xf90047a0
bl _p_84
.word 0xf94047be
.word 0xf90003c0
.word 0xf94013b1
.word 0xf9435e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100e3a0
.word 0x91008340
.word 0xf9401fa1
.word 0xf9000001
.word 0xf94013b1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9438e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0

Lme_24:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Animation_AddFrame_Microsoft_Xna_Framework_Rectangle_System_TimeSpan
TheAdventuresOf_Animation_AddFrame_Microsoft_Xna_Framework_Rectangle_System_TimeSpan:
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xf90017a1
.word 0xf9001ba2
.word 0xf9001fa3

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #640]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd2800019
.word 0xd2800018
.word 0xf94027b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #648]
bl _p_17
.word 0xf9004ba0
bl _p_95
.word 0xf94027b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xaa0003f8
.word 0xf94027b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x9100a3a0
.word 0x9101a3a0
.word 0xf94017a0
.word 0xf90037a0
.word 0xf9401ba0
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x9101a3a1
.word 0xf94037a1
.word 0xf9403ba2
.word 0xf940031e
bl _p_96
.word 0xf94027b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf90047a0
.word 0x9100e3a0
.word 0x910183a0
.word 0xf9401fa0
.word 0xf90033a0
.word 0xf94027b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a2
.word 0xaa0203e0
.word 0x910183a1
.word 0xf94033a1
.word 0xf940005e
bl _p_97
.word 0xf94027b1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa0003f9
.word 0xf94027b1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf90043a0
.word 0xaa1903e0
.word 0xf94027b1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0xf940005e
bl _p_98
.word 0xf94027b1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf94027b1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_99
.word 0xf94027b1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_25:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Animation_Update_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Animation_Update_Microsoft_Xna_Framework_GameTime:
.word 0xa9b47bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #656]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0x9e6703e0
.word 0xfd002ba0
.word 0x910123a0
.word 0xf90027bf
.word 0x9e6703e0
.word 0xfd002fa0
.word 0xf94013b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000ea0
.word 0x91006320
.word 0xf9005ba0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
bl _p_80
.word 0xfd004ba0
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf90057a0
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a1
.word 0x910103a0
.word 0xf90033a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_79
.word 0xf94033be
.word 0xf90003c0
.word 0xf94013b1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910123a0
.word 0xf94023a0
.word 0xf90027a0
.word 0x910123a0
.word 0xf90053a0
.word 0xf94013b1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
bl _p_80
.word 0xfd004fa0
.word 0xf94013b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd404ba0
.word 0xfd404fa1
.word 0x1e612800
.word 0xfd002ba0
.word 0xf94013b1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd402ba0
.word 0xfd003fa0
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x540006e0
.word 0x91008320
.word 0xf90047a0
.word 0xf94013b1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
bl _p_80
.word 0xfd0043a0
.word 0xf94013b1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd403fa0
.word 0xfd4043a1
bl _p_100
.word 0xfd002fa0
.word 0xf94013b1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xfd402fa0
.word 0xfd003ba0
.word 0xf94013b1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd403ba0
.word 0x9100e3a0
.word 0xf90033a0
bl _p_84
.word 0xf94033be
.word 0xf90003c0
.word 0xf94013b1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.word 0x9100e3a0
.word 0x91006320
.word 0xf9401fa1
.word 0xf9000001
.word 0xf94013b1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_26:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Controller_InitializeController_Microsoft_Xna_Framework_Graphics_GraphicsDevice
TheAdventuresOf_Controller_InitializeController_Microsoft_Xna_Framework_Graphics_GraphicsDevice:
.word 0xa9ad7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #664]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9400000
.word 0xf90093a0
.word 0xf9400fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_29
.word 0x93407c00
.word 0xf9008fa0
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408fa0
.word 0x1e220000
.word 0xfd0077a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9400000
.word 0xf9008ba0
.word 0xf9400fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_30
.word 0x93407c00
.word 0xf90087a0
.word 0xf9400fb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94087a0
.word 0x1e220000
.word 0xfd007ba0
.word 0xd280001e
.word 0xf2a8491e
.word 0x9e6703c0
.word 0xfd007fa0
.word 0xd288001e
.word 0xf2a88b1e
.word 0x9e6703c0
.word 0xfd0083a0
.word 0xf9400fb1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #680]
bl _p_17
.word 0xfd4077a0
.word 0xfd407ba1
.word 0xfd407fa2
.word 0xfd4083a3
.word 0xf90073a0
bl _p_101
.word 0xf9400fb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #688]
.word 0xf9000001
.word 0xf9400fb1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9400000
.word 0xf9006fa0
.word 0xf9400fb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_29
.word 0x93407c00
.word 0xf9006ba0
.word 0xf9400fb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba0
.word 0x1e220000
.word 0xfd0053a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9400000
.word 0xf90067a0
.word 0xf9400fb1
.word 0xf9421a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_30
.word 0x93407c00
.word 0xf90063a0
.word 0xf9400fb1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0x1e220000
.word 0xfd0057a0
.word 0xd280001e
.word 0xf2a872de
.word 0x9e6703c0
.word 0xfd005ba0
.word 0xd288001e
.word 0xf2a88b1e
.word 0x9e6703c0
.word 0xfd005fa0
.word 0xf9400fb1
.word 0xf9427e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #680]
bl _p_17
.word 0xfd4053a0
.word 0xfd4057a1
.word 0xfd405ba2
.word 0xfd405fa3
.word 0xf9004fa0
bl _p_101
.word 0xf9400fb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #696]
.word 0xf9000001
.word 0xf9400fb1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9400000
.word 0xf9004ba0
.word 0xf9400fb1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_29
.word 0x93407c00
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0x1e220000
.word 0xfd002fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9400000
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9435631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_30
.word 0x93407c00
.word 0xf9003fa0
.word 0xf9400fb1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0x1e220000
.word 0xfd0033a0
.word 0xd288001e
.word 0xf2a899de
.word 0x9e6703c0
.word 0xfd0037a0
.word 0xd288001e
.word 0xf2a88b1e
.word 0x9e6703c0
.word 0xfd003ba0
.word 0xf9400fb1
.word 0xf943ba31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #680]
bl _p_17
.word 0xfd402fa0
.word 0xfd4033a1
.word 0xfd4037a2
.word 0xfd403ba3
.word 0xf9002ba0
bl _p_101
.word 0xf9400fb1
.word 0xf943f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #704]
.word 0xf9000001
.word 0xf9400fb1
.word 0xf9441631
.word 0xb4000051
.word 0xd63f0220
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd0023a0
.word 0xd290001e
.word 0xf2a88a9e
.word 0x9e6703c0
.word 0xfd0027a0
.word 0xf9400fb1
.word 0xf9444231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4023a0
.word 0xfd4027a1
.word 0x9100e3a0
.word 0xd2800000
.word 0xf9001fa0
.word 0x9100e3a0
bl _p_72
.word 0x9100e3a0
.word 0x9100c3a0
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9447e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #712]
.word 0x9100c3a1
.word 0xaa0003e1
.word 0xf9401ba1
.word 0xf9000001
.word 0xf9400fb1
.word 0xf944aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf944ba31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8d37bfd
.word 0xd65f03c0

Lme_27:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Controller_HandleInput_Microsoft_Xna_Framework_Point
TheAdventuresOf_Controller_HandleInput_Microsoft_Xna_Framework_Point:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #720]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #688]
.word 0xf9400000
.word 0xf9002fa0
.word 0x910043a0
.word 0x910123a0
.word 0xf9400ba0
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa2
.word 0xaa0203e0
.word 0x910123a1
.word 0xf94027a1
.word 0xf940005e
bl _p_102
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x34000560
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #728]
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_49
.word 0xf94013b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #280]
.word 0xd280003e
.word 0x3900001e
.word 0xf94013b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #736]
.word 0xd280003e
.word 0x3900001e
.word 0xf94013b1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #696]
.word 0xf9400000
.word 0xf9002fa0
.word 0x910043a0
.word 0x910103a0
.word 0xf9400ba0
.word 0xf90023a0
.word 0xf94013b1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa2
.word 0xaa0203e0
.word 0x910103a1
.word 0xf94023a1
.word 0xf940005e
bl _p_102
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x34000560
.word 0xf94013b1
.word 0xf9421231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #744]
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_49
.word 0xf94013b1
.word 0xf9425a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #280]
.word 0xd280003e
.word 0x3900001e
.word 0xf94013b1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xd280003e
.word 0x3900001e
.word 0xf94013b1
.word 0xf942aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf942ca31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #704]
.word 0xf9400000
.word 0xf9002fa0
.word 0x910043a0
.word 0x9100e3a0
.word 0xf9400ba0
.word 0xf9001fa0
.word 0xf94013b1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa2
.word 0xaa0203e0
.word 0x9100e3a1
.word 0xf9401fa1
.word 0xf940005e
bl _p_102
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9432e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x34000560
.word 0xf94013b1
.word 0xf9434631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9435631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #760]
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9437631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_49
.word 0xf94013b1
.word 0xf9438e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #280]
.word 0xd280003e
.word 0x3900001e
.word 0xf94013b1
.word 0xf943b631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #768]
.word 0xd280003e
.word 0x3900001e
.word 0xf94013b1
.word 0xf943de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf943fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9440e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_28:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Controller_ResetButtonPressedValues
TheAdventuresOf_Controller_ResetButtonPressedValues:
.word 0xa9bd7bfd
.word 0x910003fd

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #776]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #280]
.word 0x3900001f
.word 0xf9400bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #736]
.word 0x3900001f
.word 0xf9400bb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #752]
.word 0x3900001f
.word 0xf9400bb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #768]
.word 0x3900001f
.word 0xf9400bb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_29:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Controller_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch
TheAdventuresOf_Controller_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch:
.word 0xa9a97bfd
.word 0x910003fd
.word 0xd2800410
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #784]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0x9103e3a0
.word 0xd2800000
.word 0xf9007fa0
.word 0xf90083a0
.word 0xb9010bbf
.word 0x9103a3a0
.word 0xd2800000
.word 0xf90077a0
.word 0xb900f3bf
.word 0x910383a0
.word 0xd2800000
.word 0xf90073a0
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #792]
.word 0xf9400000
.word 0xf900afa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #712]
.word 0x910323a1
.word 0xf9400000
.word 0xf90067a0
.word 0x910343a0
.word 0xd2800000
.word 0xf9006ba0
.word 0xb900dbbf
.word 0x910343a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x910323a1
.word 0xbd40cba0
.word 0xbd40cfa1
bl _p_75
.word 0x910343a0
.word 0x9102e3a0
.word 0xf9406ba0
.word 0xf9005fa0
.word 0xb980dba0
.word 0xb900c3a0
.word 0xf9400fb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9103e3a0
.word 0xd2800000
.word 0xf9007fa0
.word 0xf90083a0
.word 0xb9010bbf
.word 0x9103e3a0
.word 0x910283a0
.word 0xf9407fa0
.word 0xf90053a0
.word 0xf94083a0
.word 0xf90057a0
.word 0xb9810ba0
.word 0xb900b3a0
.word 0x9103e3a0
.word 0xd2800000
.word 0xf9007fa0
.word 0xf90083a0
.word 0xb9010bbf
.word 0x9103e3a0
.word 0x910223a0
.word 0xf9407fa0
.word 0xf90047a0
.word 0xf94083a0
.word 0xf9004ba0
.word 0xb9810ba0
.word 0xb9009ba0
.word 0x9103a3a0
.word 0xd2800000
.word 0xf90077a0
.word 0xb900f3bf
.word 0x9103a3a0
.word 0x9101e3a0
.word 0xf94077a0
.word 0xf9003fa0
.word 0xb980f3a0
.word 0xb90083a0
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd00b3a0
.word 0x9103a3a0
.word 0xd2800000
.word 0xf90077a0
.word 0xb900f3bf
.word 0x9103a3a0
.word 0x9101a3a0
.word 0xf94077a0
.word 0xf90037a0
.word 0xb980f3a0
.word 0xb90073a0
.word 0x910383a0
.word 0xd2800000
.word 0xf90073a0
.word 0x910383a0
.word 0x910183a0
.word 0xf94073a0
.word 0xf90033a0
.word 0xd2800000
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd00b7a0
.word 0xf9400fb1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940afa1
.word 0xfd40b3a0
.word 0xfd40b7a1
.word 0xaa1a03e0
.word 0x9102e3a2
.word 0xf9405fa2
.word 0xf94063a3
.word 0x910283a4
.word 0x910123a4
.word 0xf94053a5
.word 0xf90027a5
.word 0xf94057a5
.word 0xf9002ba5
.word 0xf9405ba5
.word 0xf9002fa5
.word 0xaa0403e5
.word 0x910223a5
.word 0x9100c3a5
.word 0xf94047a6
.word 0xf9001ba6
.word 0xf9404ba6
.word 0xf9001fa6
.word 0xf9404fa6
.word 0xf90023a6
.word 0xaa0503e6
.word 0x9101e3a6
.word 0xf9403fa6
.word 0xf94043a7
.word 0x9101a3a9
.word 0xf94037a9
.word 0xf90003e9
.word 0xf9403ba9
.word 0xf90007e9
.word 0x910183a9
.word 0xf94033a9
.word 0xf9000be9
.word 0xb9001bff
.word 0xf940035e
bl _p_78
.word 0xf9400fb1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #688]
.word 0xf9400000
.word 0xf900a7a0
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9400000
.word 0xf900a3a0
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd00aba0
.word 0xd2800000
.word 0xf9400fb1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940a3a2
.word 0xf940a7a4
.word 0xfd40aba0
.word 0xaa0403e0
.word 0xaa1a03e1
.word 0xd2800003
.word 0xf940009e
bl _p_103
.word 0xf9400fb1
.word 0xf9435631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #696]
.word 0xf9400000
.word 0xf9009ba0
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9400000
.word 0xf90097a0
.word 0xd281fb7e
.word 0xf2a8093e
.word 0x9e6703c0
.word 0xfd009fa0
.word 0xd2800040
.word 0xf9400fb1
.word 0xf943a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94097a2
.word 0xf9409ba4
.word 0xfd409fa0
.word 0xaa0403e0
.word 0xaa1a03e1
.word 0xd2800043
.word 0xf940009e
bl _p_103
.word 0xf9400fb1
.word 0xf943d631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #704]
.word 0xf9400000
.word 0xf9008fa0
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9400000
.word 0xf9008ba0
.word 0xd281fb7e
.word 0xf2a7f93e
.word 0x9e6703c0
.word 0xfd0093a0
.word 0xd2800000
.word 0xf9400fb1
.word 0xf9442631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba2
.word 0xf9408fa4
.word 0xfd4093a0
.word 0xaa0403e0
.word 0xaa1a03e1
.word 0xd2800003
.word 0xf940009e
bl _p_103
.word 0xf9400fb1
.word 0xf9445631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9446631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8d77bfd
.word 0xd65f03c0

Lme_2a:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Button__ctor_single_single_single_single
TheAdventuresOf_Button__ctor_single_single_single_single:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xbd001ba0
.word 0xbd0023a1
.word 0xbd002ba2
.word 0xbd0033a3

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #800]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xbd402ba0
.word 0xbd002340
.word 0xf9401fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xbd4033a0
.word 0xbd002740
.word 0xf9401fb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xbd401ba0
.word 0xbd002b40
.word 0xf9401fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xbd4023a0
.word 0xbd002f40
.word 0xf9401fb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_104
.word 0xf9401fb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_2b:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Button_InitializeButton
TheAdventuresOf_Button_InitializeButton:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #808]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xbd402340
.word 0xaa1a03e0
.word 0xbd402b41
.word 0xd280001e
.word 0xf2a8001e
.word 0x9e6703c2
.word 0x1e221821
.word 0x1e212800
.word 0xfd0033a0
.word 0xaa1a03e0
.word 0xbd402740
.word 0xaa1a03e0
.word 0xbd402f41
.word 0xd280001e
.word 0xf2a8001e
.word 0x9e6703c2
.word 0x1e221821
.word 0x1e212800
.word 0xfd0037a0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4033a0
.word 0xfd4037a1
.word 0x910123a0
.word 0xd2800000
.word 0xf90027a0
.word 0x910123a0
bl _p_72
.word 0x910123a0
.word 0x9100e3a0
.word 0xf94027a0
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0x9100e3a0
.word 0x9100c340
.word 0xf9401fa1
.word 0xf9000001
.word 0xf9400fb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xbd402b40
.word 0xd280001e
.word 0xf2a8001e
.word 0x9e6703c1
.word 0x1e211800
.word 0xfd002ba0
.word 0xaa1a03e0
.word 0xbd402f40
.word 0xd280001e
.word 0xf2a8001e
.word 0x9e6703c1
.word 0x1e211800
.word 0xfd002fa0
.word 0xf9400fb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd402ba0
.word 0xfd402fa1
.word 0x910103a0
.word 0xd2800000
.word 0xf90023a0
.word 0x910103a0
bl _p_72
.word 0x910103a0
.word 0x9100c3a0
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100c3a0
.word 0x9100e340
.word 0xf9401ba1
.word 0xf9000001
.word 0xf9400fb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf941e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_105
.word 0xf9400fb1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_2c:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Button_InitializeBounds
TheAdventuresOf_Button_InitializeBounds:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #816]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xbd402340
.word 0x9e380000
.word 0x93407c00
.word 0xf9002ba0
.word 0xaa1a03e0
.word 0xbd402740
.word 0x9e380000
.word 0x93407c00
.word 0xf9002fa0
.word 0xaa1a03e0
.word 0xbd402b40
.word 0x9e380000
.word 0x93407c00
.word 0xf90033a0
.word 0xaa1a03e0
.word 0xbd402f40
.word 0x9e380000
.word 0x93407c00
.word 0xf90037a0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xf9402fa2
.word 0xf94033a3
.word 0xf94037a4
.word 0x910103a0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0x910103a0
bl _p_73
.word 0x910103a0
.word 0x9100c3a0
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf94027a0
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100c3a0
.word 0x91004340
.word 0xf9401ba1
.word 0xf9000001
.word 0xf9401fa1
.word 0xf9000401
.word 0xf9400fb1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_2d:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Button_IsPressed_Microsoft_Xna_Framework_Point
TheAdventuresOf_Button_IsPressed_Microsoft_Xna_Framework_Point:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #824]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000700
.word 0x91004000
.word 0xf9002fa0
.word 0x910083a0
.word 0x910123a0
.word 0xf94013a0
.word 0xf90027a0
.word 0xf9401bb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa0
.word 0x910123a1
.word 0xf94027a1
bl _p_106
.word 0x53001c00
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x34000160
.word 0xf9401bb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800039
.word 0x14000006
.word 0xf9401bb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800019
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9401bb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_2e:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Button_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D_single_Microsoft_Xna_Framework_Graphics_SpriteEffects
TheAdventuresOf_Button_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D_single_Microsoft_Xna_Framework_Graphics_SpriteEffects:
.word 0xa9b17bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xaa0003f7
.word 0xf9000fa1
.word 0xf90013a2
.word 0xbd002ba0
.word 0xf9001ba3

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #832]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0x910263a0
.word 0xd2800000
.word 0xf9004fa0
.word 0xf90053a0
.word 0xb900abbf
.word 0xf9401fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf9006ba0
.word 0xf94013a0
.word 0xf90063a0
.word 0xaa1703e0
.word 0x9100c2e0
.word 0x910223a1
.word 0xf9400000
.word 0xf90047a0
.word 0x910263a0
.word 0xd2800000
.word 0xf9004fa0
.word 0xf90053a0
.word 0xb900abbf
.word 0x910263a0
.word 0x9101c3a0
.word 0xf9404fa0
.word 0xf9003ba0
.word 0xf94053a0
.word 0xf9003fa0
.word 0xb980aba0
.word 0xb90083a0
.word 0xf9401fb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0x910243a0
.word 0xf9005ba0
bl _p_71
.word 0xf9405bbe
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xbd402ba0
.word 0xfd006fa0
.word 0xaa1703e0
.word 0x9100e2e0
.word 0x9101a3a1
.word 0xf9400000
.word 0xf90037a0
.word 0xd280001e
.word 0xf2a7f01e
.word 0x9e6703c0
.word 0xfd0073a0
.word 0xb98033a0
.word 0xf90067a0
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd0077a0
.word 0xf9401fb1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a1
.word 0xf94067a4
.word 0xf9406ba5
.word 0xfd406fa2
.word 0xfd4073a5
.word 0xfd4077a6
.word 0xaa0503e0
.word 0x910223a2
.word 0xbd408ba0
.word 0xbd408fa1
.word 0x9101c3a2
.word 0x910143a2
.word 0xf9403ba3
.word 0xf9002ba3
.word 0xf9403fa3
.word 0xf9002fa3
.word 0xf94043a3
.word 0xf90033a3
.word 0xaa0203e3
.word 0x910243a3
.word 0xf9404ba3
.word 0x9101a3a6
.word 0xbd406ba3
.word 0xbd406fa4
.word 0xf94000be
bl _p_107
.word 0xf9401fb1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8cf7bfd
.word 0xd65f03c0

Lme_2f:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Level__ctor
TheAdventuresOf_Level__ctor:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #840]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd0023a0
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd0027a0
.word 0xf9400fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4023a0
.word 0xfd4027a1
.word 0x9100e3a0
.word 0xd2800000
.word 0xf9001fa0
.word 0x9100e3a0
bl _p_72
.word 0x9100e3a0
.word 0x9100c3a0
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #848]
.word 0x9100c3a1
.word 0xaa0003e1
.word 0xf9401ba1
.word 0xf9000001
.word 0xf9400fb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_30:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Level_InitializeLevel
TheAdventuresOf_Level_InitializeLevel:
.word 0xa9b47bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #856]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #864]
.word 0xb9800000
.word 0xf90053a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #872]
.word 0xf9400000
.word 0xf9005ba0
.word 0xf9400fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_30
.word 0x93407c00
.word 0xf90057a0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a3
.word 0xf94057a4
.word 0x910183a0
.word 0xd2800000
.word 0xf90033a0
.word 0xf90037a0
.word 0x910183a0
.word 0xd2800001
.word 0xd2800002
bl _p_73
.word 0x910183a0
.word 0x910103a0
.word 0xf94033a0
.word 0xf90023a0
.word 0xf94037a0
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #880]
.word 0x910103a1
.word 0xaa0003e1
.word 0xf94023a1
.word 0xf9000001
.word 0xf94027a1
.word 0xf9000401
.word 0xf9400fb1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #872]
.word 0xf9400000
.word 0xf9004fa0
.word 0xf9400fb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_29
.word 0x93407c00
.word 0xf9004ba0
.word 0xf9400fb1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #888]
.word 0xb9800021
.word 0x4b010000
.word 0xf9003ba0
.word 0xd2800000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #888]
.word 0xb9800000
.word 0xf9003fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #872]
.word 0xf9400000
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf941f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_30
.word 0x93407c00
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9421a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba1
.word 0xf9403fa3
.word 0xf94043a4
.word 0x910143a0
.word 0xd2800000
.word 0xf9002ba0
.word 0xf9002fa0
.word 0x910143a0
.word 0xd2800002
bl _p_73
.word 0x910143a0
.word 0x9100c3a0
.word 0xf9402ba0
.word 0xf9001ba0
.word 0xf9402fa0
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #896]
.word 0x9100c3a1
.word 0xaa0003e1
.word 0xf9401ba1
.word 0xf9000001
.word 0xf9401fa1
.word 0xf9000401
.word 0xf9400fb1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf942ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_31:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Level_CheckCollision_TheAdventuresOf_Character
TheAdventuresOf_Level_CheckCollision_TheAdventuresOf_Character:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #904]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #880]
.word 0xf90037a0
.word 0xaa1a03e0
.word 0x9100d340
.word 0x910123a1
.word 0xf9400001
.word 0xf90027a1
.word 0xf9400400
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0x910123a1
.word 0xf94027a1
.word 0xf9402ba2
bl _p_108
.word 0x53001c00
.word 0xf90033a0
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x34000580
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #912]
.word 0xf90037a0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
bl _p_49
.word 0xf94013b1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #864]
.word 0xb9800000
.word 0xf90033a0
.word 0xf94013b1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a2
.word 0xaa1a03e0
.word 0xd2800001
.word 0xf9400343
.word 0xf9403470
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #896]
.word 0xf90037a0
.word 0xaa1a03e0
.word 0x9100d340
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400400
.word 0xf90023a0
.word 0xf94013b1
.word 0xf941e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0x9100e3a1
.word 0xf9401fa1
.word 0xf94023a2
bl _p_108
.word 0x53001c00
.word 0xf90033a0
.word 0xf94013b1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x34000820
.word 0xf94013b1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #920]
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9425631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
bl _p_49
.word 0xf94013b1
.word 0xf9426e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #872]
.word 0xf9400000
.word 0xf9003ba0
.word 0xf94013b1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_29
.word 0x93407c00
.word 0xf90037a0
.word 0xf94013b1
.word 0xf942c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #888]
.word 0xb9800021
.word 0x4b010000
.word 0xf90033a0
.word 0xf94013b1
.word 0xf942ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a2
.word 0xaa1a03e0
.word 0xd2800021
.word 0xf9400343
.word 0xf9403470
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9431631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9433631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9434631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_32:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Level_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch
TheAdventuresOf_Level_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch:
.word 0xa9ac7bfd
.word 0x910003fd
.word 0xd2800410
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #928]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0x910403a0
.word 0xd2800000
.word 0xf90083a0
.word 0xf90087a0
.word 0xb90113bf
.word 0x9103c3a0
.word 0xd2800000
.word 0xf9007ba0
.word 0xb900fbbf
.word 0x9103a3a0
.word 0xd2800000
.word 0xf90077a0
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf90097a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #872]
.word 0xf9400000
.word 0xf90093a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #848]
.word 0x910343a1
.word 0xf9400000
.word 0xf9006ba0
.word 0x910363a0
.word 0xd2800000
.word 0xf9006fa0
.word 0xb900e3bf
.word 0x910363a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x910343a1
.word 0xbd40d3a0
.word 0xbd40d7a1
bl _p_75
.word 0x910363a0
.word 0x910303a0
.word 0xf9406fa0
.word 0xf90063a0
.word 0xb980e3a0
.word 0xb900cba0
.word 0xf94013b1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0x910403a0
.word 0xd2800000
.word 0xf90083a0
.word 0xf90087a0
.word 0xb90113bf
.word 0x910403a0
.word 0x9102a3a0
.word 0xf94083a0
.word 0xf90057a0
.word 0xf94087a0
.word 0xf9005ba0
.word 0xb98113a0
.word 0xb900bba0
.word 0x910403a0
.word 0xd2800000
.word 0xf90083a0
.word 0xf90087a0
.word 0xb90113bf
.word 0x910403a0
.word 0x910243a0
.word 0xf94083a0
.word 0xf9004ba0
.word 0xf94087a0
.word 0xf9004fa0
.word 0xb98113a0
.word 0xb900a3a0
.word 0x9103c3a0
.word 0xd2800000
.word 0xf9007ba0
.word 0xb900fbbf
.word 0x9103c3a0
.word 0x910203a0
.word 0xf9407ba0
.word 0xf90043a0
.word 0xb980fba0
.word 0xb9008ba0
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd009ba0
.word 0x9103c3a0
.word 0xd2800000
.word 0xf9007ba0
.word 0xb900fbbf
.word 0x9103c3a0
.word 0x9101c3a0
.word 0xf9407ba0
.word 0xf9003ba0
.word 0xb980fba0
.word 0xb9007ba0
.word 0x9103a3a0
.word 0xd2800000
.word 0xf90077a0
.word 0x9103a3a0
.word 0x9101a3a0
.word 0xf94077a0
.word 0xf90037a0
.word 0xd2800000
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd009fa0
.word 0xf94013b1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a1
.word 0xf94097a9
.word 0xfd409ba0
.word 0xfd409fa1
.word 0xaa0903e0
.word 0x910303a2
.word 0xf94063a2
.word 0xf94067a3
.word 0x9102a3a4
.word 0x910143a4
.word 0xf94057a5
.word 0xf9002ba5
.word 0xf9405ba5
.word 0xf9002fa5
.word 0xf9405fa5
.word 0xf90033a5
.word 0xaa0403e5
.word 0x910243a5
.word 0x9100e3a5
.word 0xf9404ba6
.word 0xf9001fa6
.word 0xf9404fa6
.word 0xf90023a6
.word 0xf94053a6
.word 0xf90027a6
.word 0xaa0503e6
.word 0x910203a6
.word 0xf94043a6
.word 0xf94047a7
.word 0x9101c3aa
.word 0xf9403baa
.word 0xf90003ea
.word 0xf9403faa
.word 0xf90007ea
.word 0x9101a3aa
.word 0xf94037aa
.word 0xf9000bea
.word 0xb9001bff
.word 0xf940013e
bl _p_78
.word 0xf94013b1
.word 0xf942e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf942f231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8d47bfd
.word 0xd65f03c0

Lme_33:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Level__cctor
TheAdventuresOf_Level__cctor:
.word 0xa9bd7bfd
.word 0x910003fd

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #936]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28010e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #864]
.word 0xd28010fe
.word 0xb900001e
.word 0xf9400bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #888]
.word 0xd2800fbe
.word 0xb900001e
.word 0xf9400bb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd290001e
.word 0xf2a8859e
.word 0x9e6703c0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #248]
.word 0xbd000000
.word 0xf9400bb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_34:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player__ctor
TheAdventuresOf_Player__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #944]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_109
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_35:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_InitializeCharacter_single_single_int_int
TheAdventuresOf_Player_InitializeCharacter_single_single_int_int:
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f8
.word 0xbd0023a0
.word 0xbd002ba1
.word 0xaa0103f9
.word 0xf9001ba2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #952]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xbd4023a0
.word 0xfd0067a0
.word 0xbd402ba0
.word 0xfd006ba0
.word 0xaa1903e0
.word 0xb98033a0
.word 0xf90063a0
.word 0xf9401fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a2
.word 0xfd4067a0
.word 0xfd406ba1
.word 0xaa1803e0
.word 0xaa1903e1
bl _p_110
.word 0xf9401fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xbd4023a0
.word 0xaa1903e0
.word 0x1e220321
.word 0x1e212800
.word 0xaa1803e0
.word 0xbd408701
.word 0x1e213800
.word 0xfd005ba0
.word 0xbd402ba0
.word 0xaa1803e0
.word 0xbd408b01
.word 0x1e212800
.word 0xfd005fa0
.word 0xf9401fb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xfd405ba0
.word 0xfd405fa1
.word 0x9101e3a0
.word 0xd2800000
.word 0xf9003fa0
.word 0x9101e3a0
bl _p_72
.word 0x9101e3a0
.word 0x910183a0
.word 0xf9403fa0
.word 0xf90033a0
.word 0xf9401fb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0x91023300
.word 0xf94033a1
.word 0xf9000001
.word 0xf9401fb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xbd402ba0
.word 0xaa1803e0
.word 0xbd406f01
.word 0x1e213800
.word 0xbd009b00
.word 0xf9401fb1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xbd406b00
.word 0xbd009700
.word 0xf9401fb1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54000b60
.word 0x91023300
.word 0xbd408f00
.word 0x9e380000
.word 0x93407c00
.word 0xf90043a0
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54000a40
.word 0x91023300
.word 0xbd409300
.word 0x9e380000
.word 0x93407c00
.word 0xf90047a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #960]
.word 0xf9400000
.word 0xf90057a0
.word 0xf9401fb1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_29
.word 0x93407c00
.word 0xf9004ba0
.word 0xf9401fb1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #960]
.word 0xf9400000
.word 0xf90053a0
.word 0xf9401fb1
.word 0xf9427631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_30
.word 0x93407c00
.word 0xf9004fa0
.word 0xf9401fb1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xf94047a2
.word 0xf9404ba3
.word 0xf9404fa4
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0x9101a3a0
bl _p_73
.word 0x9101a3a0
.word 0x910143a0
.word 0xf94037a0
.word 0xf9002ba0
.word 0xf9403ba0
.word 0xf9002fa0
.word 0xf9401fb1
.word 0xf942ee31
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0x9101c300
.word 0xf9402ba1
.word 0xf9000001
.word 0xf9402fa1
.word 0xf9000401
.word 0xf9401fb1
.word 0xf9431631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_36:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_InitializeAnimation
TheAdventuresOf_Player_InitializeAnimation:
.word 0xa9ac7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #968]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #976]
bl _p_17
.word 0xf9009fa0
bl _p_111
.word 0xf9400fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa0
.word 0xf9009ba0
.word 0xf9000f40
.word 0x91006340
bl _p_9
.word 0xf9409ba0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400f40
.word 0xf9008ba0
.word 0xd2800000
.word 0xd2800000
.word 0xaa1a03e0
.word 0xb9805b40
.word 0x51000400
.word 0xf90093a0
.word 0xaa1a03e0
.word 0xb9805f40
.word 0xf90097a0
.word 0xf9400fb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a3
.word 0xf94097a4
.word 0x910263a0
.word 0xd2800000
.word 0xf9004fa0
.word 0xf90053a0
.word 0x910263a0
.word 0xd2800001
.word 0xd2800002
bl _p_73
.word 0x910263a0
.word 0x910143a0
.word 0xf9404fa0
.word 0xf9002ba0
.word 0xf94053a0
.word 0xf9002fa0
.word 0xf9400fb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xbd402f40
.word 0x1e22c000
.word 0xfd008fa0
.word 0xf9400fb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd408fa0
.word 0x910243a0
.word 0xf90057a0
bl _p_84
.word 0xf94057be
.word 0xf90003c0
.word 0xf9400fb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba4
.word 0xaa0403e0
.word 0x910143a1
.word 0xf9402ba1
.word 0xf9402fa2
.word 0x910243a3
.word 0xf9404ba3
.word 0xf940009e
bl _p_112
.word 0xf9400fb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400f40
.word 0xf90077a0
.word 0xaa1a03e0
.word 0xb9805b40
.word 0xf9007fa0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xb9805b40
.word 0x51000400
.word 0xf90083a0
.word 0xaa1a03e0
.word 0xb9805f40
.word 0xf90087a0
.word 0xf9400fb1
.word 0xf9421e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa1
.word 0xf94083a3
.word 0xf94087a4
.word 0x910203a0
.word 0xd2800000
.word 0xf90043a0
.word 0xf90047a0
.word 0x910203a0
.word 0xd2800002
bl _p_73
.word 0x910203a0
.word 0x910103a0
.word 0xf94043a0
.word 0xf90023a0
.word 0xf94047a0
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf9426e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xbd402f40
.word 0x1e22c000
.word 0xfd007ba0
.word 0xf9400fb1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd407ba0
.word 0x9101e3a0
.word 0xf90057a0
bl _p_84
.word 0xf94057be
.word 0xf90003c0
.word 0xf9400fb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94077a4
.word 0xaa0403e0
.word 0x910103a1
.word 0xf94023a1
.word 0xf94027a2
.word 0x9101e3a3
.word 0xf9403fa3
.word 0xf940009e
bl _p_112
.word 0xf9400fb1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #976]
bl _p_17
.word 0xf90073a0
bl _p_111
.word 0xf9400fb1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf9006fa0
.word 0xf9000b40
.word 0x91004340
bl _p_9
.word 0xf9406fa0
.word 0xf9400fb1
.word 0xf9434e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf9005fa0
.word 0xd2800000
.word 0xd2800000
.word 0xaa1a03e0
.word 0xb9805b40
.word 0x51000400
.word 0xf90067a0
.word 0xaa1a03e0
.word 0xb9805f40
.word 0xf9006ba0
.word 0xf9400fb1
.word 0xf9438e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a3
.word 0xf9406ba4
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0x9101a3a0
.word 0xd2800001
.word 0xd2800002
bl _p_73
.word 0x9101a3a0
.word 0x9100c3a0
.word 0xf94037a0
.word 0xf9001ba0
.word 0xf9403ba0
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf943de31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xbd402f40
.word 0x1e22c000
.word 0xfd0063a0
.word 0xf9400fb1
.word 0xf943fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4063a0
.word 0x910183a0
.word 0xf90057a0
bl _p_84
.word 0xf94057be
.word 0xf90003c0
.word 0xf9400fb1
.word 0xf9442631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa4
.word 0xaa0403e0
.word 0x9100c3a1
.word 0xf9401ba1
.word 0xf9401fa2
.word 0x910183a3
.word 0xf94033a3
.word 0xf940009e
bl _p_112
.word 0xf9400fb1
.word 0xf9445a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf9005ba0
.word 0xf9001340
.word 0x91008340
bl _p_9
.word 0xf9405ba0
.word 0xf9400fb1
.word 0xf9448a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9449e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_113
.word 0xf9400fb1
.word 0xf944b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf944c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8d47bfd
.word 0xd65f03c0

Lme_37:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_Update_Microsoft_Xna_Framework_GameTime_bool
TheAdventuresOf_Player_Update_Microsoft_Xna_Framework_GameTime_bool:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #984]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0xf94017b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e1
bl _p_114
.word 0xf94017b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800000
.word 0x39018b1f
.word 0xf94017b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x3400031a
.word 0xf94017b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0xf94017b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xf9400302
.word 0xf9404c50
.word 0xd63f0200
.word 0xf94017b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf94017b1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xaa1a03e2
bl _p_115
.word 0xf94017b1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_38:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_HandleMovement_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Player_HandleMovement_Microsoft_Xna_Framework_GameTime:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #992]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #736]
.word 0x39400000
.word 0x340006a0
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1000]
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
bl _p_49
.word 0xf94013b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xd2800000
.word 0xf94013b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd2800002
.word 0xf9400323
.word 0xf9404470
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403830
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #752]
.word 0x39400000
.word 0x340006a0
.word 0xf94013b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1008]
.word 0xf90023a0
.word 0xf94013b1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
bl _p_49
.word 0xf94013b1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xd2800020
.word 0xf94013b1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd2800022
.word 0xf9400323
.word 0xf9404470
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9421e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403830
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_39:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_HandleLevelBoundCollision_int_int
TheAdventuresOf_Player_HandleLevelBoundCollision_int_int:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90013a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1016]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0xb98023a0
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xaa1803e0
.word 0xaa1903e1
bl _p_116
.word 0xf94017b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0xf94017b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e1
bl _p_117
.word 0xf94017b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_3a:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_CheckCollision_TheAdventuresOf_Monster
TheAdventuresOf_Player_CheckCollision_TheAdventuresOf_Monster:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1024]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54001040
.word 0x9101c320
.word 0xf90037a0
.word 0xaa1a03e0
.word 0x9100d340
.word 0x910123a1
.word 0xf9400001
.word 0xf90027a1
.word 0xf9400400
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0x910123a1
.word 0xf94027a1
.word 0xf9402ba2
bl _p_108
.word 0x53001c00
.word 0xf90033a0
.word 0xf94013b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x34000400
.word 0xf94013b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x3902035e
.word 0xf94013b1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1032]
.word 0xf90033a0
.word 0xf94013b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_49
.word 0xf94013b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000039
.word 0xf94013b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000820
.word 0x9100d320
.word 0xf90037a0
.word 0xaa1a03e0
.word 0x9100d340
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400400
.word 0xf90023a0
.word 0xf94013b1
.word 0xf941b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0x9100e3a1
.word 0xf9401fa1
.word 0xf94023a2
bl _p_108
.word 0x53001c00
.word 0xf90033a0
.word 0xf94013b1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x340002e0
.word 0xf94013b1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1040]
.word 0xf90033a0
.word 0xf94013b1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_49
.word 0xf94013b1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9426e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_3b:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_HandleAnimation_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Player_HandleAnimation_Microsoft_Xna_Framework_GameTime:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1048]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39427720
.word 0x35000be0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39418b20
.word 0x340004e0
.word 0xf94013b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9400f20
.word 0xf90027a0
.word 0xf9001320
.word 0x91008320
bl _p_9
.word 0xf94027a0
.word 0xf94013b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401320
.word 0xf90023a0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf940005e
bl _p_118
.word 0xf94013b1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000026
.word 0xf94013b1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9400b20
.word 0xf90027a0
.word 0xf9001320
.word 0x91008320
bl _p_9
.word 0xf94027a0
.word 0xf94013b1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401320
.word 0xf90023a0
.word 0xaa1a03e0
.word 0xf94013b1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf940005e
bl _p_118
.word 0xf94013b1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9421e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_3c:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_HandleJump_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Player_HandleJump_Microsoft_Xna_Framework_GameTime:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1056]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #768]
.word 0x39400000
.word 0x340003e0
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1064]
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
bl _p_49
.word 0xf94013b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800020
.word 0xd280003e
.word 0x3902733e
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39427320
.word 0x34000380
.word 0xaa1903e0
.word 0x39427720
.word 0x35000320
.word 0xf94013b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800000
.word 0x3902733f
.word 0xf94013b1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800020
.word 0xd280003e
.word 0x3902773e
.word 0xf94013b1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000014
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800000
.word 0x3902733f
.word 0xf94013b1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39427720
.word 0x34000460
.word 0xf94013b1
.word 0xf9421631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9400b20
.word 0xf90027a0
.word 0xf9001320
.word 0x91008320
bl _p_9
.word 0xf94027a0
.word 0xf94013b1
.word 0xf9425631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa1903e0
bl _p_119
.word 0xf94013b1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf942ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf942be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_3d:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_Move_Microsoft_Xna_Framework_GameTime_int
TheAdventuresOf_Player_Move_Microsoft_Xna_Framework_GameTime_int:
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1072]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0x9101a3a0
.word 0xf90037bf
.word 0x910183a0
.word 0xf90033bf
.word 0xf9401fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x340000fa
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x6b1e035f
.word 0x54000ae0
.word 0x140000aa
.word 0xf9401fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800020
.word 0xd280003e
.word 0x39018b1e
.word 0xf9401fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800000
.word 0x3901871f
.word 0xf9401fb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800020
.word 0xd280003e
.word 0x3901831e
.word 0xf9401fb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54001540
.word 0x91011300
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xaa1703e0
.word 0xbd4002e0
.word 0xfd0043a0
.word 0xaa1803e0
.word 0xbd402b00
.word 0xfd0047a0
.word 0xaa1903e0
.word 0xf9401fb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0xf9003ba0
.word 0xaa1903e0
.word 0xf940033e
bl _p_79
.word 0xf9403bbe
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x9101a3a0
.word 0xf9402fa0
.word 0xf90037a0
.word 0x9101a3a0
.word 0xf9004fa0
.word 0xf9401fb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
bl _p_80
.word 0xfd004ba0
.word 0xf9401fb1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4043a0
.word 0xfd4047a1
.word 0xfd404ba2
.word 0x1e624042
.word 0x1e220821
.word 0x1e213800
.word 0xbd0002e0
.word 0xf9401fb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000055
.word 0xf9401fb1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800020
.word 0xd280003e
.word 0x39018b1e
.word 0xf9401fb1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800020
.word 0xd280003e
.word 0x3901871e
.word 0xf9401fb1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800000
.word 0x3901831f
.word 0xf9401fb1
.word 0xf9426631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54000aa0
.word 0x91011300
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xaa1603e0
.word 0xbd4002c0
.word 0xfd0043a0
.word 0xaa1803e0
.word 0xbd402b00
.word 0xfd0047a0
.word 0xaa1903e0
.word 0xf9401fb1
.word 0xf942ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0xf9003ba0
.word 0xaa1903e0
.word 0xf940033e
bl _p_79
.word 0xf9403bbe
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0x910183a0
.word 0xf9402ba0
.word 0xf90033a0
.word 0x910183a0
.word 0xf9004fa0
.word 0xf9401fb1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
bl _p_80
.word 0xfd004ba0
.word 0xf9401fb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4043a0
.word 0xfd4047a1
.word 0xfd404ba2
.word 0x1e624042
.word 0x1e220821
.word 0x1e212800
.word 0xbd0002c0
.word 0xf9401fb1
.word 0xf9434a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9436a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xf9401fb1
.word 0xf9438231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_117
.word 0xf9401fb1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf943ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_3e:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_UpdateCharacterBounds
TheAdventuresOf_Player_UpdateCharacterBounds:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1080]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_120
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_121
.word 0xf9400fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3f:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_UpdateSwordBounds
TheAdventuresOf_Player_UpdateSwordBounds:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1088]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x54000520
.word 0x9101c340
.word 0xaa1a03e1
.word 0xeb1f035f
.word 0x10000011
.word 0x54000480
.word 0x91023341
.word 0xbd408f40
.word 0x9e380001
.word 0x93407c21
.word 0xb9000001
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x540002e0
.word 0x9101c340
.word 0xaa1a03e1
.word 0xeb1f035f
.word 0x10000011
.word 0x54000240
.word 0x91023341
.word 0xbd409340
.word 0x9e380001
.word 0x93407c21
.word 0xb9000401
.word 0xf9400fb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_40:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_MoveSword_int
TheAdventuresOf_Player_MoveSword_int:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1096]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x340000fa
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x6b1e035f
.word 0x540003c0
.word 0x14000038
.word 0xf94013b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000800
.word 0x91023320
.word 0xaa1903e1
.word 0xeb1f033f
.word 0x10000011
.word 0x54000760
.word 0x91011321
.word 0xbd404720
.word 0xaa1903e1
.word 0xb9805b21
.word 0x1e220021
.word 0x1e213800
.word 0xaa1903e1
.word 0xbd408321
.word 0x1e213800
.word 0xbd000000
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001c
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000480
.word 0x91023320
.word 0xaa1903e1
.word 0xeb1f033f
.word 0x10000011
.word 0x540003e0
.word 0x91011321
.word 0xbd404720
.word 0xaa1903e1
.word 0xb9805b21
.word 0x1e220021
.word 0x1e212800
.word 0xaa1903e1
.word 0xbd408721
.word 0x1e213800
.word 0xbd000000
.word 0xf94013b1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_41:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_Jump_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Player_Jump_Microsoft_Xna_Framework_GameTime:
.word 0xa9b07bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xaa0003f9
.word 0xf9001ba1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1104]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0x910163a0
.word 0xf9002fbf
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54002b60
.word 0x91011320
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xbd400700
.word 0xfd006ba0
.word 0xaa1903e0
.word 0xbd409720
.word 0xfd006fa0
.word 0xf9401ba0
.word 0xf9007ba0
.word 0xf9401fb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba1
.word 0x910143a0
.word 0xf90033a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_79
.word 0xf94033be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0x910163a0
.word 0xf9402ba0
.word 0xf9002fa0
.word 0x910163a0
.word 0xf90077a0
.word 0xf9401fb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94077a0
bl _p_80
.word 0xfd0073a0
.word 0xf9401fb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xfd406ba0
.word 0xfd406fa1
.word 0xfd4073a2
.word 0x1e624042
.word 0x1e220821
.word 0x1e213800
.word 0xbd000700
.word 0xf9401fb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54002400
.word 0x91023320
.word 0xaa1903e1
.word 0xeb1f033f
.word 0x10000011
.word 0x54002360
.word 0x91011321
.word 0xbd404b20
.word 0xaa1903e1
.word 0xbd408b21
.word 0x1e212800
.word 0xbd000400
.word 0xf9401fb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903f7
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xbd409720
.word 0xd280001e
.word 0xf2a8291e
.word 0x9e6703c1
.word 0x1e213800
.word 0xbd009720
.word 0xf9401fb1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1112]
.word 0xf90063a0
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54001f60
.word 0x91011320
.word 0xbd404b20
.word 0xfd0067a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1120]
bl _p_17
.word 0xaa0003e1
.word 0xf94063a0
.word 0xfd4067a0
.word 0xbd001020
bl _p_122
.word 0xf9005fa0
.word 0xf9401fb1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa0
bl _p_49
.word 0xf9401fb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1128]
.word 0xf90057a0
.word 0xaa1903e0
.word 0xbd409720
.word 0xfd005ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1120]
bl _p_17
.word 0xaa0003e1
.word 0xf94057a0
.word 0xfd405ba0
.word 0xbd001020
bl _p_122
.word 0xf90053a0
.word 0xf9401fb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
bl _p_49
.word 0xf9401fb1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1136]
.word 0xf9004ba0
.word 0xaa1903e0
.word 0xbd409b20
.word 0xfd004fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1120]
bl _p_17
.word 0xaa0003e1
.word 0xf9404ba0
.word 0xfd404fa0
.word 0xbd001020
bl _p_122
.word 0xf90047a0
.word 0xf9401fb1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
bl _p_49
.word 0xf9401fb1
.word 0xf9433a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1144]
.word 0xf9003fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #248]
.word 0xbd400000
.word 0xfd0043a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1120]
bl _p_17
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xfd4043a0
.word 0xbd001020
bl _p_122
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf9439631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_49
.word 0xf9401fb1
.word 0xf943ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x540011a0
.word 0x91011320
.word 0xbd404b20
.word 0xaa1903e0
.word 0xbd409b21
.word 0x1e212000
.word 0x540004a8
.word 0xf9401fb1
.word 0xf943e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf943f631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1152]
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf9441631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_49
.word 0xf9401fb1
.word 0xf9442e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903f6
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xbd409720
.word 0xd280001e
.word 0xf2b7f01e
.word 0x9e6703c1
.word 0x1e210800
.word 0xbd009720
.word 0xf9401fb1
.word 0xf9446631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9448631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000ae0
.word 0x91011320
.word 0xbd404b20
.word 0x9e380000
.word 0x93407c00

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #248]
.word 0xbd400020
.word 0x9e380001
.word 0x93407c21
.word 0x6b01001f
.word 0x5400074b
.word 0xaa1903e0
.word 0xbd409720
.word 0xd280001e
.word 0x9e6703c1
.word 0x1e212000
.word 0x54000682
.word 0xf9401fb1
.word 0xf944ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf944fe31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1160]
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf9451e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_49
.word 0xf9401fb1
.word 0xf9453631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800000
.word 0x3902773f
.word 0xf9401fb1
.word 0xf9455231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000480
.word 0x91011320

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #248]
.word 0xbd400020
.word 0xbd000400
.word 0xf9401fb1
.word 0xf9458a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xbd406b20
.word 0xbd009720
.word 0xf9401fb1
.word 0xf945aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf945ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf945da31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_42:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Player_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
TheAdventuresOf_Player_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D:
.word 0xa9a17bfd
.word 0x910003fd
.word 0xd2800410
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xa90167b8
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90013a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1168]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0x9106e3a0
.word 0xd2800000
.word 0xf900dfa0
.word 0xf900e3a0
.word 0xb901cbbf
.word 0x9106a3a0
.word 0xd2800000
.word 0xf900d7a0
.word 0xb901b3bf
.word 0x910683a0
.word 0xd2800000
.word 0xf900d3a0
.word 0xf94017b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0xf94013a0
.word 0xf900eba0
.word 0xf94017b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940eba2
.word 0xaa1803e0
.word 0xaa1903e1
bl _p_123
.word 0xf94017b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x39418700
.word 0x340012c0
.word 0xf94017b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #960]
.word 0xf9400000
.word 0xf900eba0
.word 0xaa1803e0
.word 0x91023300
.word 0x9105e3a1
.word 0xf9400000
.word 0xf900bfa0
.word 0x910643a0
.word 0xd2800000
.word 0xf900cba0
.word 0xb9019bbf
.word 0x910643a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x9105e3a1
.word 0xbd417ba0
.word 0xbd417fa1
bl _p_75
.word 0x910643a0
.word 0x9105a3a0
.word 0xf940cba0
.word 0xf900b7a0
.word 0xb9819ba0
.word 0xb90173a0
.word 0xf94017b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9106e3a0
.word 0xd2800000
.word 0xf900dfa0
.word 0xf900e3a0
.word 0xb901cbbf
.word 0x9106e3a0
.word 0x910543a0
.word 0xf940dfa0
.word 0xf900aba0
.word 0xf940e3a0
.word 0xf900afa0
.word 0xb981cba0
.word 0xb90163a0
.word 0x9106e3a0
.word 0xd2800000
.word 0xf900dfa0
.word 0xf900e3a0
.word 0xb901cbbf
.word 0x9106e3a0
.word 0x9104e3a0
.word 0xf940dfa0
.word 0xf9009fa0
.word 0xf940e3a0
.word 0xf900a3a0
.word 0xb981cba0
.word 0xb9014ba0
.word 0x9106a3a0
.word 0xd2800000
.word 0xf900d7a0
.word 0xb901b3bf
.word 0x9106a3a0
.word 0x9104a3a0
.word 0xf940d7a0
.word 0xf90097a0
.word 0xb981b3a0
.word 0xb90133a0
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd00efa0
.word 0x9106a3a0
.word 0xd2800000
.word 0xf900d7a0
.word 0xb901b3bf
.word 0x9106a3a0
.word 0x910463a0
.word 0xf940d7a0
.word 0xf9008fa0
.word 0xb981b3a0
.word 0xb90123a0
.word 0x910683a0
.word 0xd2800000
.word 0xf900d3a0
.word 0x910683a0
.word 0x910443a0
.word 0xf940d3a0
.word 0xf9008ba0
.word 0xd2800000
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd00f3a0
.word 0xf94017b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940eba1
.word 0xfd40efa0
.word 0xfd40f3a1
.word 0xaa1903e0
.word 0x9105a3a2
.word 0xf940b7a2
.word 0xf940bba3
.word 0x910543a4
.word 0x9103e3a4
.word 0xf940aba5
.word 0xf9007fa5
.word 0xf940afa5
.word 0xf90083a5
.word 0xf940b3a5
.word 0xf90087a5
.word 0xaa0403e5
.word 0x9104e3a5
.word 0x910383a5
.word 0xf9409fa6
.word 0xf90073a6
.word 0xf940a3a6
.word 0xf90077a6
.word 0xf940a7a6
.word 0xf9007ba6
.word 0xaa0503e6
.word 0x9104a3a6
.word 0xf94097a6
.word 0xf9409ba7
.word 0x910463a9
.word 0xf9408fa9
.word 0xf90003e9
.word 0xf94093a9
.word 0xf90007e9
.word 0x910443a9
.word 0xf9408ba9
.word 0xf9000be9
.word 0xb9001bff
.word 0xf940033e
bl _p_78
.word 0xf94017b1
.word 0xf9434a31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400009d
.word 0xf94017b1
.word 0xf9435e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x39418300
.word 0x340012c0
.word 0xf94017b1
.word 0xf9437a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9438a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #960]
.word 0xf9400000
.word 0xf900eba0
.word 0xaa1803e0
.word 0x91023300
.word 0x910363a1
.word 0xf9400000
.word 0xf9006fa0
.word 0x910603a0
.word 0xd2800000
.word 0xf900c3a0
.word 0xb9018bbf
.word 0x910603a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x910363a1
.word 0xbd40dba0
.word 0xbd40dfa1
bl _p_75
.word 0x910603a0
.word 0x910323a0
.word 0xf940c3a0
.word 0xf90067a0
.word 0xb9818ba0
.word 0xb900d3a0
.word 0xf94017b1
.word 0xf9440e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9106e3a0
.word 0xd2800000
.word 0xf900dfa0
.word 0xf900e3a0
.word 0xb901cbbf
.word 0x9106e3a0
.word 0x9102c3a0
.word 0xf940dfa0
.word 0xf9005ba0
.word 0xf940e3a0
.word 0xf9005fa0
.word 0xb981cba0
.word 0xb900c3a0
.word 0x9106e3a0
.word 0xd2800000
.word 0xf900dfa0
.word 0xf900e3a0
.word 0xb901cbbf
.word 0x9106e3a0
.word 0x910263a0
.word 0xf940dfa0
.word 0xf9004fa0
.word 0xf940e3a0
.word 0xf90053a0
.word 0xb981cba0
.word 0xb900aba0
.word 0x9106a3a0
.word 0xd2800000
.word 0xf900d7a0
.word 0xb901b3bf
.word 0x9106a3a0
.word 0x910223a0
.word 0xf940d7a0
.word 0xf90047a0
.word 0xb981b3a0
.word 0xb90093a0
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd00efa0
.word 0x9106a3a0
.word 0xd2800000
.word 0xf900d7a0
.word 0xb901b3bf
.word 0x9106a3a0
.word 0x9101e3a0
.word 0xf940d7a0
.word 0xf9003fa0
.word 0xb981b3a0
.word 0xb90083a0
.word 0x910683a0
.word 0xd2800000
.word 0xf900d3a0
.word 0x910683a0
.word 0x9101c3a0
.word 0xf940d3a0
.word 0xf9003ba0
.word 0xd2800020
.word 0xd280001e
.word 0x9e6703c0
.word 0xfd00f3a0
.word 0xf94017b1
.word 0xf9450e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940eba1
.word 0xfd40efa0
.word 0xfd40f3a1
.word 0xaa1903e0
.word 0x910323a2
.word 0xf94067a2
.word 0xf9406ba3
.word 0x9102c3a4
.word 0x910163a4
.word 0xf9405ba5
.word 0xf9002fa5
.word 0xf9405fa5
.word 0xf90033a5
.word 0xf94063a5
.word 0xf90037a5
.word 0xaa0403e5
.word 0x910263a5
.word 0x910103a5
.word 0xf9404fa6
.word 0xf90023a6
.word 0xf94053a6
.word 0xf90027a6
.word 0xf94057a6
.word 0xf9002ba6
.word 0xaa0503e6
.word 0x910223a6
.word 0xf94047a6
.word 0xf9404ba7
.word 0x9101e3a9
.word 0xf9403fa9
.word 0xf90003e9
.word 0xf94043a9
.word 0xf90007e9
.word 0x9101c3a9
.word 0xf9403ba9
.word 0xf9000be9
.word 0xd280003e
.word 0xb9001bfe
.word 0xf940033e
bl _p_78
.word 0xf94017b1
.word 0xf945be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf945de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf945ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8df7bfd
.word 0xd65f03c0

Lme_43:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_XmlImporter_GetXMLInformation
TheAdventuresOf_XmlImporter_GetXMLInformation:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa9016bb9

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1176]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd280001a
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1184]
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
bl _p_124
.word 0xf9003ba0
.word 0xf94013b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003fa
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xf90037a0
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
bl _p_124
.word 0xf90033a0
.word 0xf94013b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa0
bl _p_125
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1200]
.word 0xf9000001
.word 0xf94013b1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
bl _p_125
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1208]
.word 0xf9000001
.word 0xf94013b1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_44:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_XmlImporter_LoadPlayerInformation_TheAdventuresOf_Player
TheAdventuresOf_XmlImporter_LoadPlayerInformation_TheAdventuresOf_Player:
.word 0xa9a27bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1216]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1200]
.word 0xf9400000
.word 0xf900eba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1224]
.word 0xf900efa0
.word 0xf9401bb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940efa0
bl _p_126
.word 0xf900e7a0
.word 0xf9401bb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940e7a1
.word 0xf940eba2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf900e3a0
.word 0xf9401bb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940e3a0
.word 0xf900dfa0
.word 0xaa0003f9
.word 0xf9401bb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940dfa0
.word 0xf900d7a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1232]
.word 0xf900dba0
.word 0xf9401bb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940dba0
bl _p_126
.word 0xf900d3a0
.word 0xf9401bb1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940d3a1
.word 0xf940d7a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf900cfa0
.word 0xf9401bb1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940cfa0
.word 0xf900cba0
.word 0xaa0003f8
.word 0xf9401bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940cba0
.word 0xaa1a03e1
.word 0xf900c3a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1240]
.word 0xf900c7a0
.word 0xf9401bb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940c7a0
bl _p_126
.word 0xf900bfa0
.word 0xf9401bb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940bfa1
.word 0xf940c3a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf900bba0
.word 0xf9401bb1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940bba0
bl _p_128
.word 0x1e204000
.word 0xfd00b7a0
.word 0xf9401bb1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd40b7a0
.word 0xbd002b40
.word 0xf9401bb1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xf900afa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1248]
.word 0xf900b3a0
.word 0xf9401bb1
.word 0xf9426631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940b3a0
bl _p_126
.word 0xf900aba0
.word 0xf9401bb1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940aba1
.word 0xf940afa2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf900a7a0
.word 0xf9401bb1
.word 0xf942aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940a7a0
bl _p_128
.word 0x1e204000
.word 0xfd00a3a0
.word 0xf9401bb1
.word 0xf942ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd40a3a0
.word 0xbd002f40
.word 0xf9401bb1
.word 0xf942e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xf9009ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1256]
.word 0xf9009fa0
.word 0xf9401bb1
.word 0xf9430e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa0
bl _p_126
.word 0xf90097a0
.word 0xf9401bb1
.word 0xf9432a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94097a1
.word 0xf9409ba2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf90093a0
.word 0xf9401bb1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
bl _p_128
.word 0x1e204000
.word 0xfd008fa0
.word 0xf9401bb1
.word 0xf9437231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd408fa0
.word 0xbd006b40
.word 0xf9401bb1
.word 0xf9438a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xf90087a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1264]
.word 0xf9008ba0
.word 0xf9401bb1
.word 0xf943b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba0
bl _p_126
.word 0xf90083a0
.word 0xf9401bb1
.word 0xf943d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a1
.word 0xf94087a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf9007fa0
.word 0xf9401bb1
.word 0xf943fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa0
bl _p_128
.word 0x1e204000
.word 0xfd007ba0
.word 0xf9401bb1
.word 0xf9441a31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd407ba0
.word 0xbd006f40
.word 0xf9401bb1
.word 0xf9443231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xf90073a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1272]
.word 0xf90077a0
.word 0xf9401bb1
.word 0xf9445e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94077a0
bl _p_126
.word 0xf9006fa0
.word 0xf9401bb1
.word 0xf9447a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406fa1
.word 0xf94073a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf9006ba0
.word 0xf9401bb1
.word 0xf944a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba0
bl _p_128
.word 0x1e204000
.word 0xfd0067a0
.word 0xf9401bb1
.word 0xf944c231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4067a0
.word 0xbd008340
.word 0xf9401bb1
.word 0xf944da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xf9005fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1280]
.word 0xf90063a0
.word 0xf9401bb1
.word 0xf9450631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
bl _p_126
.word 0xf9005ba0
.word 0xf9401bb1
.word 0xf9452231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1
.word 0xf9405fa2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf90057a0
.word 0xf9401bb1
.word 0xf9454a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
bl _p_128
.word 0x1e204000
.word 0xfd0053a0
.word 0xf9401bb1
.word 0xf9456a31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4053a0
.word 0xbd008740
.word 0xf9401bb1
.word 0xf9458231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xf9004ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1288]
.word 0xf9004fa0
.word 0xf9401bb1
.word 0xf945ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
bl _p_126
.word 0xf90047a0
.word 0xf9401bb1
.word 0xf945ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a1
.word 0xf9404ba2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf90043a0
.word 0xf9401bb1
.word 0xf945f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
bl _p_128
.word 0x1e204000
.word 0xfd003fa0
.word 0xf9401bb1
.word 0xf9461231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd403fa0
.word 0xbd008b40
.word 0xf9401bb1
.word 0xf9462a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xf90037a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1296]
.word 0xf9003ba0
.word 0xf9401bb1
.word 0xf9465631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_126
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9467231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a1
.word 0xf94037a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9469a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa0
bl _p_129
.word 0x93407c00
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf946ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb9005740
.word 0xf9401bb1
.word 0xf946d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03f7
.word 0xf9401bb1
.word 0xf946ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9401bb1
.word 0xf9470231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8de7bfd
.word 0xd65f03c0

Lme_45:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_XmlImporter_LoadBlockMonsterInformation_TheAdventuresOf_Monster
TheAdventuresOf_XmlImporter_LoadBlockMonsterInformation_TheAdventuresOf_Monster:
.word 0xa9a27bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1304]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xf9401fb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1200]
.word 0xf9400000
.word 0xf900eba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1224]
.word 0xf900efa0
.word 0xf9401fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940efa0
bl _p_126
.word 0xf900e7a0
.word 0xf9401fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940e7a1
.word 0xf940eba2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf900e3a0
.word 0xf9401fb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940e3a0
.word 0xf900dfa0
.word 0xaa0003f9
.word 0xf9401fb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940dfa0
.word 0xf900d7a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1312]
.word 0xf900dba0
.word 0xf9401fb1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940dba0
bl _p_126
.word 0xf900d3a0
.word 0xf9401fb1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940d3a1
.word 0xf940d7a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf900cfa0
.word 0xf9401fb1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940cfa0
.word 0xf900cba0
.word 0xaa0003f8
.word 0xf9401fb1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940cba0
.word 0xf900c3a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1320]
.word 0xf900c7a0
.word 0xf9401fb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940c7a0
bl _p_126
.word 0xf900bfa0
.word 0xf9401fb1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940bfa1
.word 0xf940c3a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf900bba0
.word 0xf9401fb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940bba0
.word 0xf900b7a0
.word 0xaa0003f7
.word 0xf9401fb1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940b7a0
.word 0xaa1a03e1
.word 0xf900afa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1240]
.word 0xf900b3a0
.word 0xf9401fb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940b3a0
bl _p_126
.word 0xf900aba0
.word 0xf9401fb1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940aba1
.word 0xf940afa2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf900a7a0
.word 0xf9401fb1
.word 0xf9429231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940a7a0
bl _p_128
.word 0x1e204000
.word 0xfd00a3a0
.word 0xf9401fb1
.word 0xf942b231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd40a3a0
.word 0xbd002b40
.word 0xf9401fb1
.word 0xf942ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1703e0
.word 0xf9009ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1248]
.word 0xf9009fa0
.word 0xf9401fb1
.word 0xf942f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa0
bl _p_126
.word 0xf90097a0
.word 0xf9401fb1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94097a1
.word 0xf9409ba2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf90093a0
.word 0xf9401fb1
.word 0xf9433a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
bl _p_128
.word 0x1e204000
.word 0xfd008fa0
.word 0xf9401fb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd408fa0
.word 0xbd002f40
.word 0xf9401fb1
.word 0xf9437231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1703e0
.word 0xf90087a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1296]
.word 0xf9008ba0
.word 0xf9401fb1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba0
bl _p_126
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf943ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a1
.word 0xf94087a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf9007fa0
.word 0xf9401fb1
.word 0xf943e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa0
bl _p_129
.word 0x93407c00
.word 0xf9007ba0
.word 0xf9401fb1
.word 0xf9440231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xb9005740
.word 0xf9401fb1
.word 0xf9441a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1703e0
.word 0xf90073a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1328]
.word 0xf90077a0
.word 0xf9401fb1
.word 0xf9444631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94077a0
bl _p_126
.word 0xf9006fa0
.word 0xf9401fb1
.word 0xf9446231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406fa1
.word 0xf94073a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf9006ba0
.word 0xf9401fb1
.word 0xf9448a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba0
bl _p_129
.word 0x93407c00
.word 0xf90067a0
.word 0xf9401fb1
.word 0xf944aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xb9007340
.word 0xf9401fb1
.word 0xf944c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1703e0
.word 0xf9005fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1336]
.word 0xf90063a0
.word 0xf9401fb1
.word 0xf944ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
bl _p_126
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf9450a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1
.word 0xf9405fa2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf90057a0
.word 0xf9401fb1
.word 0xf9453231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
bl _p_128
.word 0x1e204000
.word 0xfd0053a0
.word 0xf9401fb1
.word 0xf9455231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4053a0
.word 0xbd007740
.word 0xf9401fb1
.word 0xf9456a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1703e0
.word 0xf9004ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1344]
.word 0xf9004fa0
.word 0xf9401fb1
.word 0xf9459631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
bl _p_126
.word 0xf90047a0
.word 0xf9401fb1
.word 0xf945b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a1
.word 0xf9404ba2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf945da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
bl _p_128
.word 0x1e204000
.word 0xfd003fa0
.word 0xf9401fb1
.word 0xf945fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd403fa0
.word 0xbd007b40
.word 0xf9401fb1
.word 0xf9461231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1703e0
.word 0xf90037a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1352]
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf9463e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_126
.word 0xf90033a0
.word 0xf9401fb1
.word 0xf9465a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a1
.word 0xf94037a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_127
.word 0xf9002fa0
.word 0xf9401fb1
.word 0xf9468231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa0
bl _p_128
.word 0x1e204000
.word 0xfd002ba0
.word 0xf9401fb1
.word 0xf946a231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd402ba0
.word 0xbd007f40
.word 0xf9401fb1
.word 0xf946ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03f6
.word 0xf9401fb1
.word 0xf946d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9401fb1
.word 0xf946ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8de7bfd
.word 0xd65f03c0

Lme_46:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_AssetManager_LoadGameAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice
TheAdventuresOf_AssetManager_LoadGameAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1360]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9001bbf
.word 0xf9001fbf
.word 0xf90023bf
.word 0xf9400fb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1368]
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
bl _p_124
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401ba0
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a1
.word 0xaa1a03e0
bl _p_130
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9000001
.word 0xf9400fb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0x94000002
.word 0x1400001a
.word 0xf9002fbe
.word 0xf9401ba0
.word 0xb40002a0
.word 0xf9401ba0
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #1376]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fbe
.word 0xd61f03c0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1384]
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf941f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
bl _p_124
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9001fa0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401fa0
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a1
.word 0xaa1a03e0
bl _p_130
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #792]
.word 0xf9000001
.word 0xf9400fb1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0x94000002
.word 0x1400001a
.word 0xf90037be
.word 0xf9401fa0
.word 0xb40002a0
.word 0xf9401fa0
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #1376]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf9430a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037be
.word 0xd61f03c0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9433231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1392]
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
bl _p_124
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9436e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9439631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf943a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf94023a0
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf943c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a1
.word 0xaa1a03e0
bl _p_130
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf943e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #960]
.word 0xf9000001
.word 0xf9400fb1
.word 0xf9440631
.word 0xb4000051
.word 0xd63f0220
.word 0x94000002
.word 0x1400001a
.word 0xf9003fbe
.word 0xf94023a0
.word 0xb40002a0
.word 0xf94023a0
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9443231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #1376]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf9446a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fbe
.word 0xd61f03c0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9449231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf944a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_47:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_AssetManager_LoadLevelAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice
TheAdventuresOf_AssetManager_LoadLevelAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1400]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9001bbf
.word 0xf9001fbf
.word 0xf90023bf
.word 0xf9400fb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1408]
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
bl _p_124
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401ba0
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a1
.word 0xaa1a03e0
bl _p_130
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #256]
.word 0xf9000001
.word 0xf9400fb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0x94000002
.word 0x1400001a
.word 0xf9002fbe
.word 0xf9401ba0
.word 0xb40002a0
.word 0xf9401ba0
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #1376]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fbe
.word 0xd61f03c0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1416]
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf941f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
bl _p_124
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9001fa0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401fa0
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a1
.word 0xaa1a03e0
bl _p_130
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #872]
.word 0xf9000001
.word 0xf9400fb1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0x94000002
.word 0x1400001a
.word 0xf90037be
.word 0xf9401fa0
.word 0xb40002a0
.word 0xf9401fa0
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #1376]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf9430a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037be
.word 0xd61f03c0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9433231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1424]
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
bl _p_124
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9436e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9439631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf943a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf94023a0
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf943c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a1
.word 0xaa1a03e0
bl _p_130
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf943e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #264]
.word 0xf9000001
.word 0xf9400fb1
.word 0xf9440631
.word 0xb4000051
.word 0xd63f0220
.word 0x94000002
.word 0x1400001a
.word 0xf9003fbe
.word 0xf94023a0
.word 0xb40002a0
.word 0xf94023a0
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9443231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #1376]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf9446a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fbe
.word 0xd61f03c0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9449231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf944a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_48:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_AssetManager_DisposeLevelAssets
TheAdventuresOf_AssetManager_DisposeLevelAssets:
.word 0xa9bb7bfd
.word 0x910003fd

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1432]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #256]
.word 0xf9400000
.word 0xf90023a0
.word 0xf9400bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_131
.word 0xf9400bb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #872]
.word 0xf9400000
.word 0xf9001fa0
.word 0xf9400bb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_131
.word 0xf9400bb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #264]
.word 0xf9400000
.word 0xf9001ba0
.word 0xf9400bb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_131
.word 0xf9400bb1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_49:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster__ctor
TheAdventuresOf_Monster__ctor:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1440]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd280001e
.word 0x9e6703c0
.word 0xbd008740
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x9e6703e0
.word 0x9100c3a0
.word 0xf9001fa0
.word 0x9e6703e0
bl _p_84
.word 0xf9401fbe
.word 0xf90003c0
.word 0xf9400fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0x9100c3a0
.word 0x91022340
.word 0xf9401ba1
.word 0xf9000001
.word 0xf9400fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1448]
bl _p_17
.word 0xf90027a0
bl _p_132
.word 0xf9400fb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf90023a0
.word 0xf9003740
.word 0x9101a340
bl _p_9
.word 0xf94023a0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_109
.word 0xf9400fb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_4a:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster_InitializeAnimation
TheAdventuresOf_Monster_InitializeAnimation:
.word 0xa9b07bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1456]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #976]
bl _p_17
.word 0xf9007fa0
bl _p_111
.word 0xf9400fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa0
.word 0xf9007ba0
.word 0xf9000f40
.word 0x91006340
bl _p_9
.word 0xf9407ba0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400f40
.word 0xf90067a0
.word 0xaa1a03e0
.word 0xb9805b40
.word 0xf9006fa0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xb9805b40
.word 0xf90073a0
.word 0xaa1a03e0
.word 0xb9805f40
.word 0xf90077a0
.word 0xf9400fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406fa1
.word 0xf94073a3
.word 0xf94077a4
.word 0x9101c3a0
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0
.word 0x9101c3a0
.word 0xd2800002
bl _p_73
.word 0x9101c3a0
.word 0x910103a0
.word 0xf9403ba0
.word 0xf90023a0
.word 0xf9403fa0
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xbd402f40
.word 0x1e22c000
.word 0xfd006ba0
.word 0xf9400fb1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd406ba0
.word 0x9101a3a0
.word 0xf90043a0
bl _p_84
.word 0xf94043be
.word 0xf90003c0
.word 0xf9400fb1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a4
.word 0xaa0403e0
.word 0x910103a1
.word 0xf94023a1
.word 0xf94027a2
.word 0x9101a3a3
.word 0xf94037a3
.word 0xf940009e
bl _p_112
.word 0xf9400fb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #976]
bl _p_17
.word 0xf90063a0
bl _p_111
.word 0xf9400fb1
.word 0xf9421631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xf9005fa0
.word 0xf9000b40
.word 0x91004340
bl _p_9
.word 0xf9405fa0
.word 0xf9400fb1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf9004fa0
.word 0xd2800000
.word 0xd2800000
.word 0xaa1a03e0
.word 0xb9805b40
.word 0xf90057a0
.word 0xaa1a03e0
.word 0xb9805f40
.word 0xf9005ba0
.word 0xf9400fb1
.word 0xf9427a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a3
.word 0xf9405ba4
.word 0x910163a0
.word 0xd2800000
.word 0xf9002fa0
.word 0xf90033a0
.word 0x910163a0
.word 0xd2800001
.word 0xd2800002
bl _p_73
.word 0x910163a0
.word 0x9100c3a0
.word 0xf9402fa0
.word 0xf9001ba0
.word 0xf94033a0
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf942ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xbd402f40
.word 0x1e22c000
.word 0xfd0053a0
.word 0xf9400fb1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4053a0
.word 0x910143a0
.word 0xf90043a0
bl _p_84
.word 0xf94043be
.word 0xf90003c0
.word 0xf9400fb1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa4
.word 0xaa0403e0
.word 0x9100c3a1
.word 0xf9401ba1
.word 0xf9401fa2
.word 0x910143a3
.word 0xf9402ba3
.word 0xf940009e
bl _p_112
.word 0xf9400fb1
.word 0xf9434631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf9004ba0
.word 0xf9001340
.word 0x91008340
bl _p_9
.word 0xf9404ba0
.word 0xf9400fb1
.word 0xf9437631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9438a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_113
.word 0xf9400fb1
.word 0xf943a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf943b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0

Lme_4b:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster_HandleLevelBoundCollision_int_int
TheAdventuresOf_Monster_HandleLevelBoundCollision_int_int:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1464]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90023a0
.word 0xb9801ba0
.word 0xf90027a0
.word 0xb98023a0
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9402ba2
bl _p_116
.word 0xf94017b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4c:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster_Update_Microsoft_Xna_Framework_GameTime_bool
TheAdventuresOf_Monster_Update_Microsoft_Xna_Framework_GameTime_bool:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf90013a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1472]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39420320
.word 0x350014e0
.word 0xf94017b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39424320
.word 0x35000fc0
.word 0xf94017b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39418b20
.word 0x350002a0
.word 0xf94017b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94017b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
bl _p_133
.word 0xf94017b1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000056
.word 0xf94017b1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xbd408720
.word 0xaa1903e0
.word 0xb9807320
.word 0x1e220001
.word 0x1e212000
.word 0x54000420
.word 0x5400040b
.word 0xf94017b1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd280001e
.word 0x9e6703c0
.word 0xbd008720
.word 0xf94017b1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800000
.word 0x39018b3f
.word 0xf94017b1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800020
.word 0xd280003e
.word 0x3902433e
.word 0xf94017b1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xd2800000
.word 0xf94017b1
.word 0xf9421a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd2800002
bl _p_115
.word 0xf94017b1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf94017b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xf9400322
.word 0xf9404c50
.word 0xd63f0200
.word 0xf94017b1
.word 0xf9427631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000016
.word 0xf94017b1
.word 0xf942aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf942ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf94017b1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_134
.word 0xf94017b1
.word 0xf942ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9430e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000022
.word 0xf94017b1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9433231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9400f20
.word 0xf90023a0
.word 0xf9001320
.word 0x91008320
bl _p_9
.word 0xf94023a0
.word 0xf94017b1
.word 0xf9436231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf94017b1
.word 0xf9437a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_135
.word 0xf94017b1
.word 0xf9439631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf943b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf943c631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_4d:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster_HandleDelay_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Monster_HandleDelay_Microsoft_Xna_Framework_GameTime:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1480]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000f00
.word 0x91022320
.word 0xf9003ba0
.word 0xf9400fa0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa1
.word 0x910123a0
.word 0xf9002ba0
.word 0xaa0103e0
.word 0xf940003e
bl _p_79
.word 0xf9402bbe
.word 0xf90003c0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x910103a1
.word 0xf9002ba1
.word 0x910123a1
.word 0xf94027a1
bl _p_136
.word 0xf9402bbe
.word 0xf90003c0
.word 0xf94013b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x91022320
.word 0xf94023a1
.word 0xf9000001
.word 0xf94013b1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000980
.word 0x91022320
.word 0xf90037a0
.word 0xf94013b1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
bl _p_80
.word 0xfd0033a0
.word 0xf94013b1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4033a0
.word 0xaa1903e0
.word 0xbd407721
.word 0x1e22c021
.word 0x1e612000
.word 0x54000520
.word 0x5400050b
.word 0xf94013b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800000
.word 0x3902433f
.word 0xf94013b1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x9e6703e0
.word 0xf94013b1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0x9100e3a0
.word 0xf9002ba0
.word 0x9e6703e0
bl _p_84
.word 0xf9402bbe
.word 0xf90003c0
.word 0xf94013b1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100e3a0
.word 0x91022320
.word 0xf9401fa1
.word 0xf9000001
.word 0xf94013b1
.word 0xf9421a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_4e:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster_HandleDeath_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Monster_HandleDeath_Microsoft_Xna_Framework_GameTime:
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1488]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd280001e
.word 0x9e6703c0
.word 0xbd0073a0
.word 0x9101a3a0
.word 0xf90037bf
.word 0xd280001e
.word 0x9e6703c0
.word 0xbd0077a0
.word 0x910183a0
.word 0xf90033bf
.word 0xf9401fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39418320
.word 0x34000120
.word 0xaa1903e0
.word 0xbd403320

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1496]
.word 0xbd400001
.word 0x1e212000
.word 0x540001cb
.word 0xaa1903e0
.word 0x39418720
.word 0x34001880
.word 0xaa1903e0
.word 0xbd403320

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1496]
.word 0xbd400001
.word 0x1e214021
.word 0x1e212000
.word 0x54001760
.word 0x5400174b
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xbd407b20
.word 0xfd0043a0
.word 0xaa1a03e0
.word 0xf9401fb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0xf9003fa0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_79
.word 0xf9403fbe
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x9101a3a0
.word 0xf9402fa0
.word 0xf90037a0
.word 0x9101a3a0
.word 0xf9004ba0
.word 0xf9401fb1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
bl _p_80
.word 0xfd0047a0
.word 0xf9401fb1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4043a0
.word 0xfd4047a1
.word 0x1e624021
.word 0x1e210800
.word 0xbd0073a0
.word 0xf9401fb1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0xbd4073a0
.word 0xd281fb7e
.word 0xf2a8093e
.word 0x9e6703c1
.word 0x1e210800
.word 0xd280001e
.word 0xf2a8669e
.word 0x9e6703c1
.word 0x1e211800
.word 0xbd0077a0
.word 0xf9401fb1
.word 0xf9421631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39418320
.word 0x34000620
.word 0xf9401fb1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903f6
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xbd403320
.word 0xbd4077a1
.word 0x1e212800
.word 0xbd003320
.word 0xf9401fb1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1504]
.word 0xf90053a0
.word 0xaa1903e0
.word 0xbd403320
.word 0xfd0057a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1120]
bl _p_17
.word 0xaa0003e1
.word 0xf94053a0
.word 0xfd4057a0
.word 0xbd001020
bl _p_122
.word 0xf9004fa0
.word 0xf9401fb1
.word 0xf942c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
bl _p_49
.word 0xf9401fb1
.word 0xf942de31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000037
.word 0xf9401fb1
.word 0xf942f231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39418720
.word 0x34000600
.word 0xf9401fb1
.word 0xf9430e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903f7
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xbd403320
.word 0xbd4077a1
.word 0x1e213800
.word 0xbd003320
.word 0xf9401fb1
.word 0xf9434e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1504]
.word 0xf90053a0
.word 0xaa1903e0
.word 0xbd403320
.word 0xfd0057a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1120]
bl _p_17
.word 0xaa0003e1
.word 0xf94053a0
.word 0xfd4057a0
.word 0xbd001020
bl _p_122
.word 0xf9004fa0
.word 0xf9401fb1
.word 0xf943a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
bl _p_49
.word 0xf9401fb1
.word 0xf943ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf943da31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000074
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf943fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000f40
.word 0x91011320
.word 0xbd404b20
.word 0xd280001e
.word 0xf2a890fe
.word 0x9e6703c1
.word 0x1e212000
.word 0x54000862
.word 0xf9401fb1
.word 0xf9443a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9444a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000ce0
.word 0x91011320
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xbd400700
.word 0xfd0043a0
.word 0xaa1903e0
.word 0xbd407f20
.word 0xfd0047a0
.word 0xaa1a03e0
.word 0xf9401fb1
.word 0xf9449231
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0xf9003fa0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_79
.word 0xf9403fbe
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf944be31
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0x910183a0
.word 0xf9402ba0
.word 0xf90033a0
.word 0x910183a0
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf944e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
bl _p_80
.word 0xfd0057a0
.word 0xf9401fb1
.word 0xf9450231
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4043a0
.word 0xfd4047a1
.word 0xfd4057a2
.word 0x1e624042
.word 0x1e220821
.word 0x1e212800
.word 0xbd000700
.word 0xf9401fb1
.word 0xf9452e31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001f
.word 0xf9401fb1
.word 0xf9454231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9455231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800020
.word 0xd280003e
.word 0x3902073e
.word 0xf9401fb1
.word 0xf9457231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1512]
.word 0xf9004fa0
.word 0xf9401fb1
.word 0xf9459231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
bl _p_49
.word 0xf9401fb1
.word 0xf945aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf945ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf945da31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_4f:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster_RandomizeMovement
TheAdventuresOf_Monster_RandomizeMovement:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1520]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9403740
.word 0xf9001fa0
.word 0xd2800000
.word 0xd2800040
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa3
.word 0xaa0303e0
.word 0xd2800001
.word 0xd2800042
.word 0xf9400063
.word 0xf9403470
.word 0xd63f0200
.word 0x93407c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x350003a0
.word 0xf9400fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x39018b5e
.word 0xf9400fb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_137
.word 0xf9400fb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000011
.word 0xf9400fb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x3902435e
.word 0xf9400fb1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_50:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster_ChooseRandomDirection
TheAdventuresOf_Monster_ChooseRandomDirection:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1528]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9403740
.word 0xf9001fa0
.word 0xd2800000
.word 0xd2800040
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa3
.word 0xaa0303e0
.word 0xd2800001
.word 0xd2800042
.word 0xf9400063
.word 0xf9403470
.word 0xd63f0200
.word 0x93407c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x35000320
.word 0xf9400fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0x3901875f
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x3901835e
.word 0xf9400fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000018
.word 0xf9400fb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0x3901835f
.word 0xf9400fb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x3901875e
.word 0xf9400fb1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf941b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_51:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster_HandleAnimation_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Monster_HandleAnimation_Microsoft_Xna_Framework_GameTime:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1536]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39418b40
.word 0x340002c0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400f40
.word 0xf90023a0
.word 0xf9001340
.word 0x91008340
bl _p_9
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000015
.word 0xf94013b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf90023a0
.word 0xf9001340
.word 0x91008340
bl _p_9
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_52:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster_HandleMovement_Microsoft_Xna_Framework_GameTime
TheAdventuresOf_Monster_HandleMovement_Microsoft_Xna_Framework_GameTime:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1544]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39418320
.word 0x34000500
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xd2800000
.word 0xf94013b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd2800002
.word 0xf9400323
.word 0xf9404470
.word 0xd63f0200
.word 0xf94013b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403830
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400002e
.word 0xf94013b1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39418720
.word 0x340004e0
.word 0xf94013b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xd2800020
.word 0xf94013b1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd2800022
.word 0xf9400323
.word 0xf9404470
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403830
.word 0xd63f0200
.word 0xf94013b1
.word 0xf941c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_53:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster_Move_Microsoft_Xna_Framework_GameTime_int
TheAdventuresOf_Monster_Move_Microsoft_Xna_Framework_GameTime_int:
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xf9001bb8
.word 0xf9001fba
.word 0xaa0003f8
.word 0xf90023a1
.word 0xaa0203fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1552]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd280001e
.word 0x9e6703c0
.word 0xbd0073a0
.word 0x9101a3a0
.word 0xf90037bf
.word 0xf94027b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xbd402b00
.word 0xfd0043a0
.word 0xf94023a0
.word 0xf9004fa0
.word 0xf94027b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa1
.word 0x910183a0
.word 0xf9003fa0
.word 0xaa0103e0
.word 0xf940003e
bl _p_79
.word 0xf9403fbe
.word 0xf90003c0
.word 0xf94027b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0x9101a3a0
.word 0xf94033a0
.word 0xf90037a0
.word 0x9101a3a0
.word 0xf9004ba0
.word 0xf94027b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
bl _p_80
.word 0xfd0047a0
.word 0xf94027b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xfd4043a0
.word 0xfd4047a1
.word 0x1e624021
.word 0x1e210800
.word 0xbd0073a0
.word 0xf94027b1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x340000fa
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x6b1e035f
.word 0x54000460
.word 0x14000042
.word 0xf94027b1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x540009a0
.word 0x91011300
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xaa1703e0
.word 0xbd4002e0
.word 0xbd4073a1
.word 0x1e213800
.word 0xbd0002e0
.word 0xf94027b1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803f6
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xbd408700
.word 0xbd4073a1
.word 0x1e212800
.word 0xbd008700
.word 0xf94027b1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000021
.word 0xf94027b1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xeb1f031f
.word 0x10000011
.word 0x54000580
.word 0x91011300
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xaa1503e0
.word 0xbd4002a0
.word 0xbd4073a1
.word 0x1e212800
.word 0xbd0002a0
.word 0xf94027b1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803f4
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xbd408700
.word 0xbd4073a1
.word 0x1e212800
.word 0xbd008700
.word 0xf94027b1
.word 0xf9426e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xf9401bb8
.word 0xf9401fba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd28026e0
.word 0xaa1103e1
bl _p_34

Lme_54:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
TheAdventuresOf_Monster_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1560]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90023a0
.word 0xf9400fa0
.word 0xf90027a0
.word 0xf94013a0
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9402ba2
bl _p_123
.word 0xf94017b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_55:
.text
	.align 4
	.no_dead_strip TheAdventuresOf_Monster__cctor
TheAdventuresOf_Monster__cctor:
.word 0xa9bd7bfd
.word 0x910003fd

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1568]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd281fb7e
.word 0xf2a7f93e
.word 0x9e6703c0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1496]
.word 0xbd000000
.word 0xf9400bb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_56:
.text
ut_88:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Matrix__ctor_Microsoft_Xna_Framework_Matrix
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_88
	.long LDIFF_SYM3
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Matrix__ctor_Microsoft_Xna_Framework_Matrix
System_Nullable_1_Microsoft_Xna_Framework_Matrix__ctor_Microsoft_Xna_Framework_Matrix:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1576]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x3901035e
.word 0xf94013b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fa0
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400801
.word 0xf90027a1
.word 0xf9400c01
.word 0xf9002ba1
.word 0xf9401001
.word 0xf9002fa1
.word 0xf9401401
.word 0xf90033a1
.word 0xf9401801
.word 0xf90037a1
.word 0xf9401c00
.word 0xf9003ba0
.word 0x9100e3a0
.word 0xaa1a03e0
.word 0xf9401fa0
.word 0xf9000340
.word 0xf94023a0
.word 0xf9000740
.word 0xf94027a0
.word 0xf9000b40
.word 0xf9402ba0
.word 0xf9000f40
.word 0xf9402fa0
.word 0xf9001340
.word 0xf94033a0
.word 0xf9001740
.word 0xf94037a0
.word 0xf9001b40
.word 0xf9403ba0
.word 0xf9001f40
.word 0xf94013b1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_58:
.text
ut_89:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_HasValue
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_HasValue
System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_HasValue:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1584]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x39410000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_59:
.text
ut_90:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_Value
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_Value
System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_Value:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa8
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1592]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39410340
.word 0x35000220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xd283c9a0
.word 0xf2a00020
.word 0xd283c9a0
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd28021c0
.word 0xf2a04000
.word 0xd28021c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e3a0
.word 0xf9400340
.word 0xf9001fa0
.word 0xf9400740
.word 0xf90023a0
.word 0xf9400b40
.word 0xf90027a0
.word 0xf9400f40
.word 0xf9002ba0
.word 0xf9401340
.word 0xf9002fa0
.word 0xf9401740
.word 0xf90033a0
.word 0xf9401b40
.word 0xf90037a0
.word 0xf9401f40
.word 0xf9003ba0
.word 0xf9400fa0
.word 0x9100e3a1
.word 0xaa0003e1
.word 0xf9401fa1
.word 0xf9000001
.word 0xf94023a1
.word 0xf9000401
.word 0xf94027a1
.word 0xf9000801
.word 0xf9402ba1
.word 0xf9000c01
.word 0xf9402fa1
.word 0xf9001001
.word 0xf94033a1
.word 0xf9001401
.word 0xf94037a1
.word 0xf9001801
.word 0xf9403ba1
.word 0xf9001c01
.word 0xf94013b1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_5a:
.text
ut_91:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_object
System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_object:
.word 0xa9b17bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1600]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500017a
.word 0xf9401bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39410320
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x14000049
.word 0xf9401bb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03f8
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1608]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xb5000117
.word 0xf9401bb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x1400002f
.word 0xf9401bb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #296]
.word 0x910243a0
.word 0xaa0003e8
.word 0xaa1a03e0
bl _p_140

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #296]
.word 0xaa1903e0
.word 0x910243a1
.word 0x910123a1
.word 0xf9404ba2
.word 0xf90027a2
.word 0xf9404fa2
.word 0xf9002ba2
.word 0xf94053a2
.word 0xf9002fa2
.word 0xf94057a2
.word 0xf90033a2
.word 0xf9405ba2
.word 0xf90037a2
.word 0xf9405fa2
.word 0xf9003ba2
.word 0xf94063a2
.word 0xf9003fa2
.word 0xf94067a2
.word 0xf90043a2
.word 0xf9406ba2
.word 0xf90047a2
.word 0xaa0103e2
bl _p_141
.word 0x53001c00
.word 0xf90073a0
.word 0xf9401bb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf9401bb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8cf7bfd
.word 0xd65f03c0

Lme_5b:
.text
ut_92:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_System_Nullable_1_Microsoft_Xna_Framework_Matrix
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_System_Nullable_1_Microsoft_Xna_Framework_Matrix
System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_System_Nullable_1_Microsoft_Xna_Framework_Matrix:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1616]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0x39410000
.word 0xaa1a03e1
.word 0x39410341
.word 0x6b01001f
.word 0x54000100
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000048
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39410340
.word 0x35000100
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x1400003a
.word 0xf94013b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf90047a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e3a0
.word 0xf9400340
.word 0xf9001fa0
.word 0xf9400740
.word 0xf90023a0
.word 0xf9400b40
.word 0xf90027a0
.word 0xf9400f40
.word 0xf9002ba0
.word 0xf9401340
.word 0xf9002fa0
.word 0xf9401740
.word 0xf90033a0
.word 0xf9401b40
.word 0xf90037a0
.word 0xf9401f40
.word 0xf9003ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1624]
bl _p_17
.word 0xaa0003e1
.word 0xf94047a0
.word 0x9100e3a2
.word 0x91004022
.word 0xf9401fa3
.word 0xf9000043
.word 0xf94023a3
.word 0xf9000443
.word 0xf94027a3
.word 0xf9000843
.word 0xf9402ba3
.word 0xf9000c43
.word 0xf9402fa3
.word 0xf9001043
.word 0xf94033a3
.word 0xf9001443
.word 0xf94037a3
.word 0xf9001843
.word 0xf9403ba3
.word 0xf9001c43
bl _p_142
.word 0x53001c00
.word 0xf90043a0
.word 0xf94013b1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf94013b1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_5c:
.text
ut_93:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetHashCode
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetHashCode
System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetHashCode:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1632]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39410340
.word 0x35000100
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000010
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_143
.word 0x93407c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5d:
.text
ut_94:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault
System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xf9000fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1640]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400801
.word 0xf90027a1
.word 0xf9400c01
.word 0xf9002ba1
.word 0xf9401001
.word 0xf9002fa1
.word 0xf9401401
.word 0xf90033a1
.word 0xf9401801
.word 0xf90037a1
.word 0xf9401c00
.word 0xf9003ba0
.word 0xf9400ba0
.word 0x9100e3a1
.word 0xaa0003e1
.word 0xf9401fa1
.word 0xf9000001
.word 0xf94023a1
.word 0xf9000401
.word 0xf94027a1
.word 0xf9000801
.word 0xf9402ba1
.word 0xf9000c01
.word 0xf9402fa1
.word 0xf9001001
.word 0xf94033a1
.word 0xf9001401
.word 0xf94037a1
.word 0xf9001801
.word 0xf9403ba1
.word 0xf9001c01
.word 0xf94013b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_5e:
.text
ut_95:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault_Microsoft_Xna_Framework_Matrix
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault_Microsoft_Xna_Framework_Matrix
System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault_Microsoft_Xna_Framework_Matrix:
.word 0xa9ac7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa8
.word 0xaa0003fa
.word 0xf90013a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1648]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39410340
.word 0x340004e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x910303a0
.word 0xf9400340
.word 0xf90063a0
.word 0xf9400740
.word 0xf90067a0
.word 0xf9400b40
.word 0xf9006ba0
.word 0xf9400f40
.word 0xf9006fa0
.word 0xf9401340
.word 0xf90073a0
.word 0xf9401740
.word 0xf90077a0
.word 0xf9401b40
.word 0xf9007ba0
.word 0xf9401f40
.word 0xf9007fa0
.word 0x910303a0
.word 0x910403a0
.word 0xf94063a0
.word 0xf90083a0
.word 0xf94067a0
.word 0xf90087a0
.word 0xf9406ba0
.word 0xf9008ba0
.word 0xf9406fa0
.word 0xf9008fa0
.word 0xf94073a0
.word 0xf90093a0
.word 0xf94077a0
.word 0xf90097a0
.word 0xf9407ba0
.word 0xf9009ba0
.word 0xf9407fa0
.word 0xf9009fa0
.word 0x14000025
.word 0xf94013a0
.word 0x910203a1
.word 0xf9400001
.word 0xf90043a1
.word 0xf9400401
.word 0xf90047a1
.word 0xf9400801
.word 0xf9004ba1
.word 0xf9400c01
.word 0xf9004fa1
.word 0xf9401001
.word 0xf90053a1
.word 0xf9401401
.word 0xf90057a1
.word 0xf9401801
.word 0xf9005ba1
.word 0xf9401c00
.word 0xf9005fa0
.word 0x910203a0
.word 0x910403a0
.word 0xf94043a0
.word 0xf90083a0
.word 0xf94047a0
.word 0xf90087a0
.word 0xf9404ba0
.word 0xf9008ba0
.word 0xf9404fa0
.word 0xf9008fa0
.word 0xf94053a0
.word 0xf90093a0
.word 0xf94057a0
.word 0xf90097a0
.word 0xf9405ba0
.word 0xf9009ba0
.word 0xf9405fa0
.word 0xf9009fa0
.word 0x910403a0
.word 0x910103a0
.word 0xf94083a0
.word 0xf90023a0
.word 0xf94087a0
.word 0xf90027a0
.word 0xf9408ba0
.word 0xf9002ba0
.word 0xf9408fa0
.word 0xf9002fa0
.word 0xf94093a0
.word 0xf90033a0
.word 0xf94097a0
.word 0xf90037a0
.word 0xf9409ba0
.word 0xf9003ba0
.word 0xf9409fa0
.word 0xf9003fa0
.word 0xf9400fa0
.word 0x910103a1
.word 0xaa0003e1
.word 0xf94023a1
.word 0xf9000001
.word 0xf94027a1
.word 0xf9000401
.word 0xf9402ba1
.word 0xf9000801
.word 0xf9402fa1
.word 0xf9000c01
.word 0xf94033a1
.word 0xf9001001
.word 0xf94037a1
.word 0xf9001401
.word 0xf9403ba1
.word 0xf9001801
.word 0xf9403fa1
.word 0xf9001c01
.word 0xf94017b1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8d47bfd
.word 0xd65f03c0

Lme_5f:
.text
ut_96:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Matrix_ToString
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Matrix_ToString
System_Nullable_1_Microsoft_Xna_Framework_Matrix_ToString:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1656]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39410340
.word 0x34000200
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_144
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x14000009
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1664]
.word 0xf9400000
.word 0xf9400fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_60:
.text
ut_97:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Matrix_Box_System_Nullable_1_Microsoft_Xna_Framework_Matrix
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Matrix_Box_System_Nullable_1_Microsoft_Xna_Framework_Matrix
System_Nullable_1_Microsoft_Xna_Framework_Matrix_Box_System_Nullable_1_Microsoft_Xna_Framework_Matrix:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1672]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x39410000
.word 0x35000100
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x1400002d
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x9100c3a1
.word 0xf9400001
.word 0xf9001ba1
.word 0xf9400401
.word 0xf9001fa1
.word 0xf9400801
.word 0xf90023a1
.word 0xf9400c01
.word 0xf90027a1
.word 0xf9401001
.word 0xf9002ba1
.word 0xf9401401
.word 0xf9002fa1
.word 0xf9401801
.word 0xf90033a1
.word 0xf9401c00
.word 0xf90037a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1624]
bl _p_17
.word 0x9100c3a1
.word 0x91004001
.word 0xf9401ba2
.word 0xf9000022
.word 0xf9401fa2
.word 0xf9000422
.word 0xf94023a2
.word 0xf9000822
.word 0xf94027a2
.word 0xf9000c22
.word 0xf9402ba2
.word 0xf9001022
.word 0xf9402fa2
.word 0xf9001422
.word 0xf94033a2
.word 0xf9001822
.word 0xf94037a2
.word 0xf9001c22
.word 0xf9400fb1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_61:
.text
ut_98:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Matrix_Unbox_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Matrix_Unbox_object
System_Nullable_1_Microsoft_Xna_Framework_Matrix_Unbox_object:
.word 0xa9a27bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa8
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1680]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0x910643a0
.word 0xd2800001
.word 0xd2800881
.word 0xd2800001
.word 0xd2800882
bl _p_39
.word 0xf94013b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb50002fa
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910643a0
.word 0xd2800001
.word 0xd2800881
.word 0xd2800001
.word 0xd2800882
bl _p_39
.word 0x910643a1
.word 0x910403a0
.word 0xd2800882
.word 0xd2800882
bl _p_42
.word 0xf9400fa0
.word 0x910403a1
.word 0xaa0003e2
.word 0xd2800882
.word 0xd2800882
bl _p_42
.word 0x14000052
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000a01
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1608]
.word 0xeb01001f
.word 0x10000011
.word 0x54000901
.word 0x91004340
.word 0x910303a1
.word 0xf9400001
.word 0xf90063a1
.word 0xf9400401
.word 0xf90067a1
.word 0xf9400801
.word 0xf9006ba1
.word 0xf9400c01
.word 0xf9006fa1
.word 0xf9401001
.word 0xf90073a1
.word 0xf9401401
.word 0xf90077a1
.word 0xf9401801
.word 0xf9007ba1
.word 0xf9401c00
.word 0xf9007fa0
.word 0x910523a0
.word 0xd2800001
.word 0xd2800881
.word 0xd2800001
.word 0xd2800882
bl _p_39
.word 0x910523a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #296]
.word 0x910303a1
.word 0x910203a1
.word 0xf94063a2
.word 0xf90043a2
.word 0xf94067a2
.word 0xf90047a2
.word 0xf9406ba2
.word 0xf9004ba2
.word 0xf9406fa2
.word 0xf9004fa2
.word 0xf94073a2
.word 0xf90053a2
.word 0xf94077a2
.word 0xf90057a2
.word 0xf9407ba2
.word 0xf9005ba2
.word 0xf9407fa2
.word 0xf9005fa2
.word 0xaa0103e2
bl _p_41
.word 0x910523a1
.word 0x9100e3a0
.word 0xd2800882
.word 0xd2800882
bl _p_42
.word 0xf94013b1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0x9100e3a1
.word 0xaa0003e2
.word 0xd2800882
.word 0xd2800882
bl _p_42
.word 0xf94013b1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8de7bfd
.word 0xd65f03c0
.word 0xd28021a0
.word 0xaa1103e1
bl _p_34

Lme_62:
.text
ut_100:
add x0, x0, 16
b System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point__ctor_System_Array
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point__ctor_System_Array
System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point__ctor_System_Array:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1688]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf9000320
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_9
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x92800020
.word 0xf2bfffe0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9000b3e
.word 0xf94013b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_64:
.text
ut_101:
add x0, x0, 16
b System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_Dispose
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_Dispose
System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_Dispose:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1696]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_65:
.text
ut_102:
add x0, x0, 16
b System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_MoveNext
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_MoveNext
System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_MoveNext:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1704]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xf9401fb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000201
.word 0xf9401fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400340
.word 0xb9801800
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb9000b40
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000300
.word 0xaa1a03e0
.word 0xaa1a03f7
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x51000400
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xaa1603e1
.word 0xaa1603f9
.word 0xb9000b40
.word 0xaa1603e0
.word 0x92800000
.word 0xf2bfffe0
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e02df
.word 0x9a9f17e0
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0xaa0003f8
.word 0x14000003
.word 0xd2800000
.word 0xd2800018
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9401fb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_66:
.text
ut_103:
add x0, x0, 16
b System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_get_Current
System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_get_Current:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1712]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000221
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xd29920c0
.word 0xf2a00020
.word 0xd29920c0
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd28021c0
.word 0xf2a04000
.word 0xd28021c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94017b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000221
.word 0xf94017b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2992b80
.word 0xf2a00020
.word 0xd2992b80
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd28021c0
.word 0xf2a04000
.word 0xd28021c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94017b1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0xf9002ba0
.word 0xaa1a03e0
.word 0xf9400340
.word 0xb9801800
.word 0xf9002fa0
.word 0xf94017b1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9402fa1
.word 0x51000421
.word 0xaa1a03e2
.word 0xb9800b42
.word 0x4b020021

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #1720]
.word 0xf940001e
.word 0x910103a2
.word 0xf90027a2
bl _p_145
.word 0xf94027be
.word 0xf90003c0
.word 0xf94017b1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910063a0
.word 0xf94023a0
.word 0xf9000fa0
.word 0xf94017b1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_67:
.text
ut_104:
add x0, x0, 16
b System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_Reset
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_Reset
System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_Reset:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1728]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_68:
.text
ut_105:
add x0, x0, 16
b System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_get_Current
System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_get_Current:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1736]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #1744]
.word 0x9100c3a1
.word 0xf9001fa1
bl _p_146
.word 0xf9401fbe
.word 0xf90003c0
.word 0xf9400fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1752]
bl _p_17
.word 0x9100c3a1
.word 0x91004001
.word 0xf9401ba2
.word 0xf9000022
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_69:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_Microsoft_Xna_Framework_Point
System_Array_InternalArray__IEnumerable_GetEnumerator_Microsoft_Xna_Framework_Point:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1760]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0x910103a0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0x910103a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #1744]
bl _p_147
.word 0x910103a0
.word 0x9100c3a0
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf94027a0
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1744]
bl _p_17
.word 0x9100c3a1
.word 0xf9002ba0
.word 0x91004001
.word 0xaa0103e0
.word 0xf9401ba2
.word 0xf90033a2
.word 0xf9000022
.word 0xf9002fa0
bl _p_9
.word 0xf9402ba0
.word 0xf9402fa1
.word 0xf94033a2
.word 0x91002021
.word 0xf9401fa2
.word 0xf9000022
.word 0xf9400fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_6a:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_Count
System_Array_InternalArray__ICollection_get_Count:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1768]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9801800
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_72:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_IsReadOnly
System_Array_InternalArray__ICollection_get_IsReadOnly:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1776]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_73:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Clear
System_Array_InternalArray__ICollection_Clear:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1784]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xd297d140
.word 0xf2a00020
.word 0xd297d140
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd2800100
.word 0xf2a04000
.word 0xd2800100
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_74:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Add_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
System_Array_InternalArray__ICollection_Add_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1792]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xd297d740
.word 0xf2a00020
.word 0xd297d740
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd2800100
.word 0xf2a04000
.word 0xd2800100
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_75:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Remove_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
System_Array_InternalArray__ICollection_Remove_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1800]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xd297d740
.word 0xf2a00020
.word 0xd297d740
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd2800100
.word 0xf2a04000
.word 0xd2800100
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_76:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Contains_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
System_Array_InternalArray__ICollection_Contains_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xf90017a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1808]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xd2800018
.word 0x9101c3a0
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0x3940a800
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ed
.word 0xf9401fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xd297dec0
.word 0xf2a00020
.word 0xd297dec0
.word 0xf2a00020
bl _p_138
bl _p_148
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xd2802860
.word 0xf2a04000
.word 0xd2802860
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf9401fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9801b40
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f9
.word 0xf9401fb1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0x14000063
.word 0xf9401fb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0x9101c3a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1816]
.word 0x93407f00
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0x9101a3a1
.word 0xf9400000
.word 0xf90037a0
.word 0x9101a3a0
.word 0x9101c3a0
.word 0xf94037a0
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0x910183a0
.word 0xf94017a0
.word 0xf90033a0
.word 0x14000016
.word 0xf9401fb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0
.word 0x910163a0
.word 0xf9403ba0
.word 0xf9002fa0
.word 0x14000008
.word 0xf9401fb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x14000047
.word 0xf9401fb1
.word 0xf9421231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000025
.word 0xf9401fb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0xf90047a0
.word 0x9101c3a0
.word 0x910143a0
.word 0xf9403ba0
.word 0xf9002ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1752]
bl _p_17
.word 0xaa0003e1
.word 0xf94047a0
.word 0x910143a2
.word 0x91004022
.word 0xf9402ba3
.word 0xf9000043
bl _p_149
.word 0x53001c00
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000100
.word 0xf9401fb1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x1400001e
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf942c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf942f231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0x6b19031f
.word 0x54fff26b
.word 0xf9401fb1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0xf9401fb1
.word 0xf9432a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_77:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_CopyTo_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point___int
System_Array_InternalArray__ICollection_CopyTo_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point___int:
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xf90013b6
.word 0xa902e7b8
.word 0xf9001fba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90023a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1824]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xf94027b1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb50001f9
.word 0xf94027b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xd282ac40
.word 0xd282ac40
bl _p_138
.word 0xaa0003e1
.word 0xd28006c0
.word 0xf2a04000
.word 0xd28006c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94027b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400300
.word 0x3940a800
.word 0xf9006ba0
.word 0xf94027b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ed
.word 0xf94027b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xd297dec0
.word 0xf2a00020
.word 0xd297dec0
.word 0xf2a00020
bl _p_138
bl _p_148
.word 0xf9006ba0
.word 0xf94027b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba1
.word 0xd2802860
.word 0xf2a04000
.word 0xd2802860
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94027b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xb98043a0
.word 0xf90033a0
.word 0xaa1803f6
.word 0xd2800000
.word 0xf9400b15
.word 0xeb1f02bf
.word 0x54000060
.word 0xb98002b4
.word 0x14000002
.word 0xb9801ad4
.word 0xf94027b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xb140000
.word 0xf90037a0
.word 0xaa1903e0
.word 0xd2800000
.word 0xf9400b20
.word 0xf9003ba0
.word 0xeb1f001f
.word 0x54000080
.word 0xf9403ba0
.word 0xb980041a
.word 0x14000002
.word 0xd280001a
.word 0xf94027b1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9003fb9
.word 0xd2800000
.word 0xf9403fa0
.word 0xf9400800
.word 0xf90043a0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf94043a0
.word 0xb9800000
.word 0xf90047a0
.word 0x14000004
.word 0xf9403fa0
.word 0xb9801800
.word 0xf90047a0
.word 0xf94047a0
.word 0xf90047a0
.word 0xf94027b1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0xb000341
.word 0xf94037a0
.word 0x6b01001f
.word 0x5400022d
.word 0xf94027b1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xd297e9c0
.word 0xf2a00020
.word 0xd297e9c0
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd28006a0
.word 0xf2a04000
.word 0xd28006a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94027b1
.word 0xf9428631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400320
.word 0x3940a800
.word 0xf9006ba0
.word 0xf94027b1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ed
.word 0xf94027b1
.word 0xf942ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xd297dec0
.word 0xf2a00020
.word 0xd297dec0
.word 0xf2a00020
bl _p_138
bl _p_148
.word 0xf9006ba0
.word 0xf94027b1
.word 0xf942f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba1
.word 0xd2802860
.word 0xf2a04000
.word 0xd2802860
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94027b1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0xb98043a0
.word 0xd2800001
.word 0x6b1f001f
.word 0x5400038a
.word 0xf94027b1
.word 0xf9434231
.word 0xb4000051
.word 0xd63f0220
.word 0xd281dba0
.word 0xd281dba0
bl _p_138
.word 0xf9006ba0
.word 0xd2980220
.word 0xf2a00020
.word 0xd2980220
.word 0xf2a00020
bl _p_138
bl _p_148
.word 0xf9006fa0
.word 0xf94027b1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba1
.word 0xf9406fa2
.word 0xd28006e0
.word 0xf2a04000
.word 0xd28006e0
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_139
.word 0xf94027b1
.word 0xf943ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9004bb8
.word 0xaa1803e0
.word 0xd2800000
.word 0xf9400b00
.word 0xf9004fa0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf9404fa0
.word 0xb9800400
.word 0xf90053a0
.word 0x14000002
.word 0xf90053bf
.word 0xf94053a0
.word 0xf90053a0
.word 0xf94027b1
.word 0xf943f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf90057b9
.word 0xb98043a0
.word 0xf9005ba0
.word 0xf9005fb8
.word 0xd2800000
.word 0xf9405fa0
.word 0xf9400800
.word 0xf90063a0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf94063a0
.word 0xb9800000
.word 0xf90067a0
.word 0x14000004
.word 0xf9405fa0
.word 0xb9801800
.word 0xf90067a0
.word 0xf94067a0
.word 0xf90067a0
.word 0xf94027b1
.word 0xf9445231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94053a1
.word 0xf94057a2
.word 0xf9405ba3
.word 0xf94067a4
bl _p_150
.word 0xf94027b1
.word 0xf9447a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9448a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xf94013b6
.word 0xa942e7b8
.word 0xf9401fba
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_78:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1832]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_7a:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_get_Default
System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_get_Default:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1840]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xd280001a
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1848]
.word 0xf9400000
.word 0xaa0003fa
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb50003da
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #1856]
bl _p_151
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9001fa0
.word 0xaa0003fa
.word 0xf9400fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa1
.word 0xaa0103e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1848]
.word 0xf9001ba0
.word 0xd50330bf
.word 0xf9401ba0
.word 0xf9000001
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_7b:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_CreateComparer
System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_CreateComparer:
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #1864]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd280001a
.word 0xd2800019
.word 0xd2800018
.word 0xf9402bb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1872]
.word 0xf90037a0
.word 0xb4000180
.word 0xf94037a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1880]
.word 0xeb01001f
.word 0x10000011
.word 0x54003f81
.word 0xf94037ba
.word 0xf9402bb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1888]
.word 0xaa1a03e0
bl _p_152
.word 0x53001c00
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x340003e0
.word 0xf9402bb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1896]
bl _p_17
.word 0xf9004fa0
.word 0xf9404fa0
bl _p_153
.word 0xf9402bb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0xb4000180
.word 0xf9404fa0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1904]
.word 0xeb01001f
.word 0x10000011
.word 0x540039a1
.word 0xf9404fa0
.word 0x140001c0
.word 0xf9402bb1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1912]
.word 0xaa1a03e0
bl _p_152
.word 0x53001c00
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x340003a0
.word 0xf9402bb1
.word 0xf941c631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1920]
bl _p_17
.word 0xaa0003f7
.word 0xaa1703e0
bl _p_154
.word 0xf9402bb1
.word 0xf941f231
.word 0xb4000051
.word 0xd63f0220
.word 0xb4000177
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1904]
.word 0xeb01001f
.word 0x10000011
.word 0x540033e1
.word 0xaa1703e0
.word 0x14000192
.word 0xf9402bb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x2, [x16, #1928]
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9406c50
.word 0xd63f0200
.word 0x53001c00
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x340003e0
.word 0xf9402bb1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_155
.word 0xf9004ba0
.word 0xf9402bb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xb4000180
.word 0xf9404ba0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1904]
.word 0xeb01001f
.word 0x10000011
.word 0x54002d81
.word 0xf9404ba0
.word 0x1400015f
.word 0xf9402bb1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940e030
.word 0xd63f0200
.word 0x53001c00
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf9432e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x34001160
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9408c30
.word 0xd63f0200
.word 0xf90057a0
.word 0xf9402bb1
.word 0xf9435e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1944]
bl _p_152
.word 0x53001c00
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf9438a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x34000e80
.word 0xf9402bb1
.word 0xf943a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9409030
.word 0xd63f0200
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf943ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xd2800001
.word 0xb9801801
.word 0xeb1f003f
.word 0x10000011
.word 0x54002629
.word 0xf9401000
.word 0xf9003fa0
.word 0xb4000180
.word 0xf9403fa0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1880]
.word 0xeb01001f
.word 0x10000011
.word 0x54002401
.word 0xf9403fb9
.word 0xf9402bb1
.word 0xf9442e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1952]
.word 0xf9005fa0
.word 0xd2800020

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1960]
.word 0xd2800021
bl _p_156
.word 0xf90043a0
.word 0xf94043a0
.word 0xf9005ba0
.word 0xf94043a3
.word 0xd2800000
.word 0xaa1903e2
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9406070
.word 0xd63f0200
.word 0xf9405ba1
.word 0xf9405fa2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9409850
.word 0xd63f0200
.word 0xf90057a0
.word 0xf9402bb1
.word 0xf944ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a2
.word 0xaa1903e1
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9406c50
.word 0xd63f0200
.word 0x53001c00
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf944de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x340003e0
.word 0xf9402bb1
.word 0xf944f631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1968]
.word 0xaa1903e1
.word 0xaa1903e1
bl _p_155
.word 0xf90047a0
.word 0xf9402bb1
.word 0xf9452231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0xb4000180
.word 0xf94047a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1904]
.word 0xeb01001f
.word 0x10000011
.word 0x54001a21
.word 0xf94047a0
.word 0x140000c4
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9457e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940f030
.word 0xd63f0200
.word 0x53001c00
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf945aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x34001380
.word 0xf9402bb1
.word 0xf945c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_157
.word 0xf9005ba0
.word 0xf9402bb1
.word 0xf945e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
bl _p_158
.word 0x93407c00
.word 0xf90057a0
.word 0xf9402bb1
.word 0xf9460231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
.word 0xf90053a0
.word 0xaa0003f8
.word 0xf9402bb1
.word 0xf9461e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003e1
.word 0x51001416
.word 0xd280011e
.word 0x6b1e02df
.word 0x54000f62
.word 0xd37df2c0
.word 0x2a0003e1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1976]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xf9402bb1
.word 0xf9466631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1984]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_155
.word 0xaa0003f3
.word 0xf9402bb1
.word 0xf9469231
.word 0xb4000051
.word 0xd63f0220
.word 0xb4000173
.word 0xf9400260
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1904]
.word 0xeb01001f
.word 0x10000011
.word 0x54000ee1
.word 0xaa1303e0
.word 0x1400006a
.word 0xf9402bb1
.word 0xf946d631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1992]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_155
.word 0xaa0003f5
.word 0xf9402bb1
.word 0xf9470231
.word 0xb4000051
.word 0xd63f0220
.word 0xb4000175
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1904]
.word 0xeb01001f
.word 0x10000011
.word 0x54000b61
.word 0xaa1503e0
.word 0x1400004e
.word 0xf9402bb1
.word 0xf9474631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2000]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_155
.word 0xaa0003f4
.word 0xf9402bb1
.word 0xf9477231
.word 0xb4000051
.word 0xd63f0220
.word 0xb4000174
.word 0xf9400280
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1904]
.word 0xeb01001f
.word 0x10000011
.word 0x540007e1
.word 0xaa1403e0
.word 0x14000032
.word 0xf9402bb1
.word 0xf947b631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2008]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_155
.word 0xf9003ba0
.word 0xf9402bb1
.word 0xf947e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xb4000180
.word 0xf9403ba0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #1904]
.word 0xeb01001f
.word 0x10000011
.word 0x54000421
.word 0xf9403ba0
.word 0x14000014
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9483e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2016]
bl _p_17
.word 0xf90053a0
bl _p_159
.word 0xf9402bb1
.word 0xf9486631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf9402bb1
.word 0xf9487a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd28021a0
.word 0xaa1103e1
bl _p_34
.word 0xd2802120
.word 0xaa1103e1
bl _p_34

Lme_7c:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int
System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001bb9
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xf9001fa2
.word 0xaa0303f9
.word 0xf90027a4

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2024]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800016
.word 0xd2800015
.word 0xf9402bb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb9804ba0
.word 0xb000320
.word 0xaa0003f6
.word 0xf9402bb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903f5
.word 0x14000035
.word 0xf9402bb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1503e0
.word 0x93407ea0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540008e9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0x9101c3a1
.word 0xf9400000
.word 0xf9003ba0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xaa1703e0
.word 0x9101c3a1
.word 0xf9403ba1
.word 0x9101a3a2
.word 0xf94037a2
.word 0xf94002e3
.word 0xf9404470
.word 0xd63f0200
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402bb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000100
.word 0xf9402bb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1503e0
.word 0x1400001c
.word 0xf9402bb1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0x110006a0
.word 0xaa0003f5
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1603e0
.word 0x6b1602bf
.word 0x54fff82b
.word 0xf9402bb1
.word 0xf941b231
.word 0xb4000051
.word 0xd63f0220
.word 0x92800000
.word 0xf2bfffe0
.word 0x92800000
.word 0xf2bfffe0
.word 0xf9402bb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xf9401bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_34

Lme_7f:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_GetHashCode_object
System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_GetHashCode_object:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013ba
.word 0xf90017a0
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2032]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500011a
.word 0xf9401bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000046
.word 0xf9401bb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03f8
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2040]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xb40004d7
.word 0xf9401bb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a2
.word 0xaa1a03e0
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000621
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2040]
.word 0xeb01001f
.word 0x10000011
.word 0x54000521
.word 0x91004340
.word 0x910123a1
.word 0xf9400000
.word 0xf90027a0
.word 0xaa0203e0
.word 0x910123a1
.word 0xf94027a1
.word 0xf9400042
.word 0xf9404050
.word 0xd63f0200
.word 0x93407c00
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x1400000e
.word 0xf9401bb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800040
.word 0xd2800040
bl _p_160
.word 0xf9401bb1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0xf9401bb1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd28021a0
.word 0xaa1103e1
bl _p_34

Lme_80:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_Equals_object_object
System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_Equals_object_object:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa9036bb9
.word 0xf90023a0
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2048]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xf94027b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xeb1a033f
.word 0x54000101
.word 0xf94027b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x14000080
.word 0xf94027b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb4000079
.word 0xaa1a03e0
.word 0xb500019a
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x1400006d
.word 0xf94027b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903f7
.word 0xaa1903f6
.word 0xeb1f033f
.word 0x54000160
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2040]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xb4000936
.word 0xaa1a03f5
.word 0xaa1a03f4
.word 0xeb1f035f
.word 0x54000160
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2040]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800014
.word 0xb4000754
.word 0xf94027b1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a3
.word 0xaa1903e0
.word 0xf9400320
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000941
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2040]
.word 0xeb01001f
.word 0x10000011
.word 0x54000841
.word 0x91004320
.word 0x9101a3a1
.word 0xf9400000
.word 0xf90037a0
.word 0xaa1a03e0
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000701
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2040]
.word 0xeb01001f
.word 0x10000011
.word 0x54000601
.word 0x91004340
.word 0x910183a1
.word 0xf9400000
.word 0xf90033a0
.word 0xaa0303e0
.word 0x9101a3a1
.word 0xf94037a1
.word 0x910183a2
.word 0xf94033a2
.word 0xf9400063
.word 0xf9404470
.word 0xd63f0200
.word 0x53001c00
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x14000012
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800040
.word 0xd2800040
bl _p_160
.word 0xf94027b1
.word 0xf9428631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0xf94027b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd28021a0
.word 0xaa1103e1
bl _p_34

Lme_81:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2056]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_161
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_82:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90017a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2064]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9401fb1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
.word 0x9101a3a0
.word 0xf9400fa0
.word 0xf90037a0
.word 0x14000001
.word 0xf9401fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0x910183a0
.word 0xf94017a0
.word 0xf90033a0
.word 0x14000001
.word 0xf9401fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
.word 0x9100a3a1
.word 0x910163a1
.word 0xf94017a1
.word 0xf9002fa1
.word 0x910163a1
.word 0xf9402fa1
bl _p_162
.word 0x53001c00
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x1400001e
.word 0xf9401fb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000017
.word 0xf9401fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0x910143a0
.word 0xf94017a0
.word 0xf9002ba0
.word 0x14000001
.word 0xf9401fb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000007
.word 0xf9401fb1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0xf9401fb1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_83:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point
System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2072]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
.word 0x910103a0
.word 0xf9400fa0
.word 0xf90023a0
.word 0x14000008
.word 0xf94017b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x1400000e
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
bl _p_163
.word 0x93407c00
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf94017b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_84:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int
System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int:
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001bb9
.word 0xf9001fa0
.word 0xaa0103f8
.word 0xf90023a2
.word 0xaa0303f9
.word 0xf9002ba4

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2080]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xf9402fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb98053a0
.word 0xb000320
.word 0xaa0003f7
.word 0xf9402fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910223a0
.word 0xf94023a0
.word 0xf90047a0
.word 0x14000035
.word 0xf9402fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903f6
.word 0x14000021
.word 0xf9402fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1603e0
.word 0x93407ec0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54001129
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0x910203a1
.word 0xf9400000
.word 0xf90043a0
.word 0x14000008
.word 0xf9402fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1603e0
.word 0x14000071
.word 0xf9402fb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0x110006c0
.word 0xaa0003f6
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1703e0
.word 0x6b1702df
.word 0x54fffaab
.word 0x14000051
.word 0xf9402fb1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903f5
.word 0x1400003e
.word 0xf9402fb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1503e0
.word 0x93407ea0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000aa9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0x9101e3a1
.word 0xf9400000
.word 0xf9003fa0
.word 0x14000001
.word 0xaa1803e0
.word 0xaa1503e0
.word 0x93407ea0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540008e9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0x910103a1
.word 0x9101c3a1
.word 0xf94023a1
.word 0xf9003ba1
.word 0x9101c3a1
.word 0xf9403ba1
bl _p_162
.word 0x53001c00
.word 0xf9004ba0
.word 0xf9402fb1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0x34000100
.word 0xf9402fb1
.word 0xf9425631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1503e0
.word 0x14000024
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0x110006a0
.word 0xaa0003f5
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf942ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x6b1702bf
.word 0x54fff70b
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf942de31
.word 0xb4000051
.word 0xd63f0220
.word 0x92800000
.word 0xf2bfffe0
.word 0x92800000
.word 0xf2bfffe0
.word 0xf9402fb1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xf9401bb9
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_34

Lme_85:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object
System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xf90017a0
.word 0xf9001ba1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2088]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xf9401fb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb8
.word 0xaa1803f7
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2096]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xaa1703f9
.word 0xf9401fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xd2800000
.word 0xeb1f02ff
.word 0x9a9f17e0
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0xf9401fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_86:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode
System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2104]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9400c00
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405030
.word 0xd63f0200
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_87:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_Microsoft_Xna_Framework_Point_invoke_bool_T_Microsoft_Xna_Framework_Point
wrapper_delegate_invoke_System_Predicate_1_Microsoft_Xna_Framework_Point_invoke_bool_T_Microsoft_Xna_Framework_Point:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa
.word 0xf9002ba1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2112]
.word 0xf90033b0
.word 0xf9400a11
.word 0xf90037b1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf94033b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2120]
.word 0xb9400000
.word 0x34000240
.word 0xf94033b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
bl _p_164
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf9004ba0
.word 0xb4000073
.word 0xf9404ba0
bl _p_139
.word 0xf9404ba0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xf94033b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xb5000a17
.word 0xf94033b1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xf94033b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb4000455
.word 0xf94033b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0x910143a0
.word 0x910223a0
.word 0xf9402ba0
.word 0xf90047a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b42
.word 0xaa1503e0
.word 0x910223a1
.word 0xf94047a1
.word 0xd63f0040
.word 0x53001c00
.word 0xf90053a0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x14000075
.word 0xf94033b1
.word 0xf941f231
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0x910203a0
.word 0xf9402ba0
.word 0xf90043a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b41
.word 0x910203a0
.word 0xf94043a0
.word 0xd63f0020
.word 0x53001c00
.word 0xf90053a0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9425631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x14000056
.word 0xf94033b1
.word 0xf9426e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xf94033b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800019
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf942ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540008c9
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xf94033b1
.word 0xf942ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xf90057a0
.word 0x910143a0
.word 0x9101e3a0
.word 0xf9402ba0
.word 0xf9003fa0
.word 0xaa1603e0
.word 0x9101e3a1
.word 0xf9403fa1
.word 0xf9400ed0
.word 0xd63f0200
.word 0xf94057a1
.word 0x53001c00
.word 0xf90053a0
.word 0xf94033b1
.word 0xf9433631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003f4
.word 0xf94033b1
.word 0xf9434e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xf94033b1
.word 0xf9436a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1803e0
.word 0x6b18033f
.word 0x54fff8cb
.word 0xf94033b1
.word 0xf9438a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf943ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xf94033b1
.word 0xf943c231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_34

Lme_8c:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_Microsoft_Xna_Framework_Point_invoke_int_T_T_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
wrapper_delegate_invoke_System_Comparison_1_Microsoft_Xna_Framework_Point_invoke_int_T_T_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point:
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa
.word 0xf9002ba1
.word 0xf90033a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2128]
.word 0xf9003bb0
.word 0xf9400a11
.word 0xf9003fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9403bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2120]
.word 0xb9400000
.word 0x34000240
.word 0xf9403bb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403bb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
bl _p_164
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf9005fa0
.word 0xb4000073
.word 0xf9405fa0
bl _p_139
.word 0xf9405fa0
.word 0xf9403fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xf9403bb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xb5000b97
.word 0xf9403bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xf9403bb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb4000515
.word 0xf9403bb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0x910143a0
.word 0x9102c3a0
.word 0xf9402ba0
.word 0xf9005ba0
.word 0x910183a0
.word 0x9102a3a0
.word 0xf94033a0
.word 0xf90057a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b43
.word 0xaa1503e0
.word 0x9102c3a1
.word 0xf9405ba1
.word 0x9102a3a2
.word 0xf94057a2
.word 0xd63f0060
.word 0x93407c00
.word 0xf90063a0
.word 0xf9403fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403bb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0x14000082
.word 0xf9403bb1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0x910283a0
.word 0xf9402ba0
.word 0xf90053a0
.word 0x910183a0
.word 0x910263a0
.word 0xf94033a0
.word 0xf9004fa0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b42
.word 0x910283a0
.word 0xf94053a0
.word 0x910263a1
.word 0xf9404fa1
.word 0xd63f0040
.word 0x93407c00
.word 0xf90063a0
.word 0xf9403fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403bb1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0x1400005d
.word 0xf9403bb1
.word 0xf942a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xf9403bb1
.word 0xf942be31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800019
.word 0xf9403fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403bb1
.word 0xf942e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540009a9
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xf9403bb1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xf90067a0
.word 0x910143a0
.word 0x910243a0
.word 0xf9402ba0
.word 0xf9004ba0
.word 0x910183a0
.word 0x910223a0
.word 0xf94033a0
.word 0xf90047a0
.word 0xaa1603e0
.word 0x910243a1
.word 0xf9404ba1
.word 0x910223a2
.word 0xf94047a2
.word 0xf9400ed0
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94067a0
.word 0xf90063a1
.word 0xf9403bb1
.word 0xf9438631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa0003f4
.word 0xf9403bb1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xf9403bb1
.word 0xf943ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1803e0
.word 0x6b18033f
.word 0x54fff7eb
.word 0xf9403bb1
.word 0xf943da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xf9403fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403bb1
.word 0xf943fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xf9403bb1
.word 0xf9441231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_34

Lme_92:
.text
ut_147:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Vector2__ctor_Microsoft_Xna_Framework_Vector2
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Vector2__ctor_Microsoft_Xna_Framework_Vector2
System_Nullable_1_Microsoft_Xna_Framework_Vector2__ctor_Microsoft_Xna_Framework_Vector2:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xbd001ba0
.word 0xbd001fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2136]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf9402fb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x3900235e
.word 0xf9402fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x910063a0
.word 0x9101c3a0
.word 0xf9400fa0
.word 0xf9003ba0
.word 0x9101c3a0
.word 0xaa1a03e0
.word 0xf9403ba0
.word 0xf9000340
.word 0xf9402fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_93:
.text
ut_148:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_HasValue
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_HasValue
System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_HasValue:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2144]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x39402000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_94:
.text
ut_149:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_Value
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_Value
System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_Value:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2152]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf9402fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39402340
.word 0x35000220
.word 0xf9402fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xd283c9a0
.word 0xf2a00020
.word 0xd283c9a0
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd28021c0
.word 0xf2a04000
.word 0xd28021c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf9402fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101c3a0
.word 0xf9400340
.word 0xf9003ba0
.word 0x9101c3a0
.word 0x910063a0
.word 0xf9403ba0
.word 0xf9000fa0
.word 0xf9402fb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xbd401ba0
.word 0xbd401fa1
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_95:
.text
ut_150:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_object
System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_object:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2160]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500017a
.word 0xf9401bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39402320
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x1400003a
.word 0xf9401bb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03f8
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2168]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xb5000117
.word 0xf9401bb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000020
.word 0xf9401bb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x910123a0
.word 0xf9002fa0
.word 0xaa1a03e0
bl _p_165
.word 0xf9402fbe
.word 0xf90003c0
.word 0xf90007c1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #480]
.word 0xaa1903e0
.word 0x910123a1
.word 0xf94027a1
.word 0xf9402ba2
bl _p_166
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xf9401bb1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_96:
.text
ut_151:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_System_Nullable_1_Microsoft_Xna_Framework_Vector2
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_System_Nullable_1_Microsoft_Xna_Framework_Vector2
System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_System_Nullable_1_Microsoft_Xna_Framework_Vector2:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2176]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
.word 0x394083a0
.word 0xaa1a03e1
.word 0x39402341
.word 0x6b01001f
.word 0x54000100
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x1400002c
.word 0xf94017b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39402340
.word 0x35000100
.word 0xf94017b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x1400001e
.word 0xf94017b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
.word 0xf9002fa0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x910103a0
.word 0xf9400340
.word 0xf90023a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2184]
bl _p_17
.word 0xaa0003e1
.word 0xf9402fa0
.word 0x910103a2
.word 0x91004022
.word 0xf94023a3
.word 0xf9000043
bl _p_167
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf94017b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_97:
.text
ut_152:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetHashCode
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetHashCode
System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetHashCode:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2192]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39402340
.word 0x35000100
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000010
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_168
.word 0x93407c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_98:
.text
ut_153:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault
System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9002ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2200]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf9402fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x9101c3a1
.word 0xf9400000
.word 0xf9003ba0
.word 0x9101c3a0
.word 0x910043a0
.word 0xf9403ba0
.word 0xf9000ba0
.word 0xf9402fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xbd4013a0
.word 0xbd4017a1
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_99:
.text
ut_154:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault_Microsoft_Xna_Framework_Vector2
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault_Microsoft_Xna_Framework_Vector2
System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault_Microsoft_Xna_Framework_Vector2:
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xbd005ba0
.word 0xbd005fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2208]
.word 0xf9004fb0
.word 0xf9400a11
.word 0xf90053b1
.word 0xf9404fb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39402340
.word 0x34000160
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x910303a0
.word 0xf9400340
.word 0xf90063a0
.word 0x910303a0
.word 0x910323a0
.word 0xf94063a0
.word 0xf90067a0
.word 0x14000009
.word 0x910163a0
.word 0x9102e3a0
.word 0xf9402fa0
.word 0xf9005fa0
.word 0x9102e3a0
.word 0x910323a0
.word 0xf9405fa0
.word 0xf90067a0
.word 0x910323a0
.word 0x9102c3a0
.word 0xf94067a0
.word 0xf9005ba0
.word 0x9102c3a0
.word 0x910063a0
.word 0xf9405ba0
.word 0xf9000fa0
.word 0xf9404fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xbd401ba0
.word 0xbd401fa1
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_9a:
.text
ut_155:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Vector2_ToString
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Vector2_ToString
System_Nullable_1_Microsoft_Xna_Framework_Vector2_ToString:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2216]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39402340
.word 0x34000200
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_169
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x14000009
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1664]
.word 0xf9400000
.word 0xf9400fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_9b:
.text
ut_156:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Vector2_Box_System_Nullable_1_Microsoft_Xna_Framework_Vector2
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Vector2_Box_System_Nullable_1_Microsoft_Xna_Framework_Vector2
System_Nullable_1_Microsoft_Xna_Framework_Vector2_Box_System_Nullable_1_Microsoft_Xna_Framework_Vector2:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2224]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910043a0
.word 0x394063a0
.word 0x35000100
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000011
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910043a0
.word 0x9100e3a1
.word 0xf9400000
.word 0xf9001fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2184]
bl _p_17
.word 0x9100e3a1
.word 0x91004001
.word 0xf9401fa2
.word 0xf9000022
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_9c:
.text
ut_157:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Vector2_Unbox_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Vector2_Unbox_object
System_Nullable_1_Microsoft_Xna_Framework_Vector2_Unbox_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2232]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0x9101e3a0
.word 0xd2800000
.word 0xf9003fa0
.word 0xb90083bf
.word 0xf94017b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb50002da
.word 0xf94017b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101e3a0
.word 0xd2800000
.word 0xf9003fa0
.word 0xb90083bf
.word 0x9101e3a0
.word 0x910163a0
.word 0xf9403fa0
.word 0xf9002fa0
.word 0xb98083a0
.word 0xb90063a0
.word 0x910163a0
.word 0x910063a0
.word 0xf9402fa0
.word 0xf9000fa0
.word 0xb98063a0
.word 0xb90023a0
.word 0x14000033
.word 0xf94017b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000661
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2168]
.word 0xeb01001f
.word 0x10000011
.word 0x54000561
.word 0x91004340
.word 0x910143a1
.word 0xf9400000
.word 0xf9002ba0
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xb90073bf
.word 0x9101a3a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x910143a1
.word 0xbd4053a0
.word 0xbd4057a1
bl _p_75
.word 0x9101a3a0
.word 0x910103a0
.word 0xf94037a0
.word 0xf90023a0
.word 0xb98073a0
.word 0xb9004ba0
.word 0xf94017b1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910063a0
.word 0xf94023a0
.word 0xf9000fa0
.word 0xb9804ba0
.word 0xb90023a0
.word 0xf94017b1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0xf94013a1
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd28021a0
.word 0xaa1103e1
bl _p_34

Lme_9d:
.text
ut_158:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Rectangle__ctor_Microsoft_Xna_Framework_Rectangle
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Rectangle__ctor_Microsoft_Xna_Framework_Rectangle
System_Nullable_1_Microsoft_Xna_Framework_Rectangle__ctor_Microsoft_Xna_Framework_Rectangle:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2240]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x3900435e
.word 0xf94017b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x910063a0
.word 0x910103a0
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf94013a0
.word 0xf90027a0
.word 0x910103a0
.word 0xaa1a03e0
.word 0xf94023a0
.word 0xf9000340
.word 0xf94027a0
.word 0xf9000740
.word 0xf94017b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_9e:
.text
ut_159:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_HasValue
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_HasValue
System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_HasValue:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2248]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x39404000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_9f:
.text
ut_160:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_Value
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_Value
System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_Value:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2256]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39404340
.word 0x35000220
.word 0xf94017b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xd283c9a0
.word 0xf2a00020
.word 0xd283c9a0
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd28021c0
.word 0xf2a04000
.word 0xd28021c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94017b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x910103a0
.word 0xf9400340
.word 0xf90023a0
.word 0xf9400740
.word 0xf90027a0
.word 0x910103a0
.word 0x910063a0
.word 0xf94023a0
.word 0xf9000fa0
.word 0xf94027a0
.word 0xf90013a0
.word 0xf94017b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0xf94013a1
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_a0:
.text
ut_161:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_object
System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2264]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500017a
.word 0xf9401bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39404320
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x1400003d
.word 0xf9401bb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03f8
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2272]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xb5000117
.word 0xf9401bb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000023
.word 0xf9401bb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #488]
.word 0x910183a0
.word 0xaa0003e8
.word 0xaa1a03e0
bl _p_170

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #488]
.word 0xaa1903e0
.word 0x910183a1
.word 0x910123a1
.word 0xf94033a2
.word 0xf90027a2
.word 0xf94037a2
.word 0xf9002ba2
.word 0xf9403ba2
.word 0xf9002fa2
.word 0xaa0103e2
bl _p_171
.word 0x53001c00
.word 0xf90043a0
.word 0xf9401bb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9401bb1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_a1:
.text
ut_162:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_System_Nullable_1_Microsoft_Xna_Framework_Rectangle
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_System_Nullable_1_Microsoft_Xna_Framework_Rectangle
System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_System_Nullable_1_Microsoft_Xna_Framework_Rectangle:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2280]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0x39404000
.word 0xaa1a03e1
.word 0x39404341
.word 0x6b01001f
.word 0x54000100
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000030
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39404340
.word 0x35000100
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x14000022
.word 0xf94013b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf9002fa0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e3a0
.word 0xf9400340
.word 0xf9001fa0
.word 0xf9400740
.word 0xf90023a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2288]
bl _p_17
.word 0xaa0003e1
.word 0xf9402fa0
.word 0x9100e3a2
.word 0x91004022
.word 0xf9401fa3
.word 0xf9000043
.word 0xf94023a3
.word 0xf9000443
bl _p_172
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf94013b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_a2:
.text
ut_163:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetHashCode
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetHashCode
System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetHashCode:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2296]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39404340
.word 0x35000100
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000010
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_173
.word 0x93407c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_a3:
.text
ut_164:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault
System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2304]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0x910103a1
.word 0xf9400001
.word 0xf90023a1
.word 0xf9400400
.word 0xf90027a0
.word 0x910103a0
.word 0x910043a0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf94017b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_a4:
.text
ut_165:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault_Microsoft_Xna_Framework_Rectangle
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault_Microsoft_Xna_Framework_Rectangle
System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault_Microsoft_Xna_Framework_Rectangle:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf90017a1
.word 0xf9001ba2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2312]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9401fb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39404340
.word 0x340001e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101c3a0
.word 0xf9400340
.word 0xf9003ba0
.word 0xf9400740
.word 0xf9003fa0
.word 0x9101c3a0
.word 0x910203a0
.word 0xf9403ba0
.word 0xf90043a0
.word 0xf9403fa0
.word 0xf90047a0
.word 0x1400000d
.word 0x9100a3a0
.word 0x910183a0
.word 0xf94017a0
.word 0xf90033a0
.word 0xf9401ba0
.word 0xf90037a0
.word 0x910183a0
.word 0x910203a0
.word 0xf94033a0
.word 0xf90043a0
.word 0xf94037a0
.word 0xf90047a0
.word 0x910203a0
.word 0x910143a0
.word 0xf94043a0
.word 0xf9002ba0
.word 0xf94047a0
.word 0xf9002fa0
.word 0x910143a0
.word 0x910063a0
.word 0xf9402ba0
.word 0xf9000fa0
.word 0xf9402fa0
.word 0xf90013a0
.word 0xf9401fb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0xf94013a1
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_a5:
.text
ut_166:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Rectangle_ToString
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Rectangle_ToString
System_Nullable_1_Microsoft_Xna_Framework_Rectangle_ToString:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2320]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39404340
.word 0x34000200
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_174
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x14000009
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1664]
.word 0xf9400000
.word 0xf9400fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_a6:
.text
ut_167:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Box_System_Nullable_1_Microsoft_Xna_Framework_Rectangle
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Box_System_Nullable_1_Microsoft_Xna_Framework_Rectangle
System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Box_System_Nullable_1_Microsoft_Xna_Framework_Rectangle:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2328]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x39404000
.word 0x35000100
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000015
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x9100c3a1
.word 0xf9400001
.word 0xf9001ba1
.word 0xf9400400
.word 0xf9001fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2288]
bl _p_17
.word 0x9100c3a1
.word 0x91004001
.word 0xf9401ba2
.word 0xf9000022
.word 0xf9401fa2
.word 0xf9000422
.word 0xf9400fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_a7:
.text
ut_168:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Unbox_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Unbox_object
System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Unbox_object:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa8
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2336]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0x910243a0
.word 0xd2800000
.word 0xf9004ba0
.word 0xf9004fa0
.word 0xb900a3bf
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500039a
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0x910243a0
.word 0xd2800000
.word 0xf9004ba0
.word 0xf9004fa0
.word 0xb900a3bf
.word 0x910243a0
.word 0x910183a0
.word 0xf9404ba0
.word 0xf90033a0
.word 0xf9404fa0
.word 0xf90037a0
.word 0xb980a3a0
.word 0xb90073a0
.word 0xf9400fa0
.word 0x910183a1
.word 0xaa0003e1
.word 0xf94033a1
.word 0xf9000001
.word 0xf94037a1
.word 0xf9000401
.word 0xb98073a1
.word 0xb9001001
.word 0x1400003b
.word 0xf94013b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000721
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2272]
.word 0xeb01001f
.word 0x10000011
.word 0x54000621
.word 0x91004340
.word 0x910143a1
.word 0xf9400001
.word 0xf9002ba1
.word 0xf9400400
.word 0xf9002fa0
.word 0x9101e3a0
.word 0xd2800000
.word 0xf9003fa0
.word 0xf90043a0
.word 0xb9008bbf
.word 0x9101e3a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #488]
.word 0x910143a1
.word 0xf9402ba1
.word 0xf9402fa2
bl _p_76
.word 0x9101e3a0
.word 0x9100e3a0
.word 0xf9403fa0
.word 0xf9001fa0
.word 0xf94043a0
.word 0xf90023a0
.word 0xb9808ba0
.word 0xb9004ba0
.word 0xf94013b1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0x9100e3a1
.word 0xaa0003e1
.word 0xf9401fa1
.word 0xf9000001
.word 0xf94023a1
.word 0xf9000401
.word 0xb9804ba1
.word 0xb9001001
.word 0xf94013b1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd28021a0
.word 0xaa1103e1
bl _p_34

Lme_a8:
.text
ut_169:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Color__ctor_Microsoft_Xna_Framework_Color
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Color__ctor_Microsoft_Xna_Framework_Color
System_Nullable_1_Microsoft_Xna_Framework_Color__ctor_Microsoft_Xna_Framework_Color:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2344]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x3900135e
.word 0xf94017b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x910063a0
.word 0x910103a0
.word 0xb9801ba0
.word 0xb90043a0
.word 0x910103a0
.word 0xaa1a03e0
.word 0xb98043a0
.word 0xb9000340
.word 0xf94017b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_a9:
.text
ut_170:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Color_get_HasValue
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Color_get_HasValue
System_Nullable_1_Microsoft_Xna_Framework_Color_get_HasValue:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2352]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x39401000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_aa:
.text
ut_171:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Color_get_Value
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Color_get_Value
System_Nullable_1_Microsoft_Xna_Framework_Color_get_Value:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2360]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39401340
.word 0x35000220
.word 0xf94017b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xd283c9a0
.word 0xf2a00020
.word 0xd283c9a0
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd28021c0
.word 0xf2a04000
.word 0xd28021c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94017b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x910103a0
.word 0xb9800340
.word 0xb90043a0
.word 0x910103a0
.word 0x910063a0
.word 0xb98043a0
.word 0xb9001ba0
.word 0xf94017b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_ab:
.text
ut_172:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_object
System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_object:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2368]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500017a
.word 0xf9401bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39401320
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x14000038
.word 0xf9401bb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03f8
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2376]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xb5000117
.word 0xf9401bb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x1400001e
.word 0xf9401bb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #496]
.word 0x910123a0
.word 0xf9002ba0
.word 0xaa1a03e0
bl _p_175
.word 0xf9402bbe
.word 0xf90003c0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #496]
.word 0xaa1903e0
.word 0x910123a1
.word 0xf94027a1
bl _p_176
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xf9401bb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_ac:
.text
ut_173:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_System_Nullable_1_Microsoft_Xna_Framework_Color
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_System_Nullable_1_Microsoft_Xna_Framework_Color
System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_System_Nullable_1_Microsoft_Xna_Framework_Color:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2384]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
.word 0x394073a0
.word 0xaa1a03e1
.word 0x39401341
.word 0x6b01001f
.word 0x54000100
.word 0xf94017b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x1400002c
.word 0xf94017b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39401340
.word 0x35000100
.word 0xf94017b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x1400001e
.word 0xf94017b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
.word 0xf9002fa0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x910103a0
.word 0xb9800340
.word 0xb90043a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2392]
bl _p_17
.word 0xaa0003e1
.word 0xf9402fa0
.word 0x910103a2
.word 0x91004022
.word 0xb98043a3
.word 0xb9000043
bl _p_177
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf94017b1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_ad:
.text
ut_174:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Color_GetHashCode
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Color_GetHashCode
System_Nullable_1_Microsoft_Xna_Framework_Color_GetHashCode:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2400]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39401340
.word 0x35000100
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000010
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_178
.word 0x93407c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_ae:
.text
ut_175:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault
System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2408]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0x910103a1
.word 0xb9800000
.word 0xb90043a0
.word 0x910103a0
.word 0x910043a0
.word 0xb98043a0
.word 0xb90013a0
.word 0xf94017b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_af:
.text
ut_176:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault_Microsoft_Xna_Framework_Color
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault_Microsoft_Xna_Framework_Color
System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault_Microsoft_Xna_Framework_Color:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf90017a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2416]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9401fb1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39401340
.word 0x34000160
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x910183a0
.word 0xb9800340
.word 0xb90063a0
.word 0x910183a0
.word 0x9101a3a0
.word 0xb98063a0
.word 0xb9006ba0
.word 0x14000009
.word 0x9100a3a0
.word 0x910163a0
.word 0xb9802ba0
.word 0xb9005ba0
.word 0x910163a0
.word 0x9101a3a0
.word 0xb9805ba0
.word 0xb9006ba0
.word 0x9101a3a0
.word 0x910143a0
.word 0xb9806ba0
.word 0xb90053a0
.word 0x910143a0
.word 0x910063a0
.word 0xb98053a0
.word 0xb9001ba0
.word 0xf9401fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_b0:
.text
ut_177:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Color_ToString
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Color_ToString
System_Nullable_1_Microsoft_Xna_Framework_Color_ToString:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2424]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39401340
.word 0x34000200
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_179
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x14000009
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1664]
.word 0xf9400000
.word 0xf9400fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b1:
.text
ut_178:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Color_Box_System_Nullable_1_Microsoft_Xna_Framework_Color
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Color_Box_System_Nullable_1_Microsoft_Xna_Framework_Color
System_Nullable_1_Microsoft_Xna_Framework_Color_Box_System_Nullable_1_Microsoft_Xna_Framework_Color:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2432]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0x910043a0
.word 0x394053a0
.word 0x35000100
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000011
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910043a0
.word 0x9100e3a1
.word 0xb9800000
.word 0xb9003ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2392]
bl _p_17
.word 0x9100e3a1
.word 0x91004001
.word 0xb9803ba2
.word 0xb9000022
.word 0xf94013b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b2:
.text
ut_179:
add x0, x0, 16
b System_Nullable_1_Microsoft_Xna_Framework_Color_Unbox_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_Microsoft_Xna_Framework_Color_Unbox_object
System_Nullable_1_Microsoft_Xna_Framework_Color_Unbox_object:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2440]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0x910183a0
.word 0xd2800000
.word 0xf90033a0
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500023a
.word 0xf94017b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0xd2800000
.word 0xf90033a0
.word 0x910183a0
.word 0x910143a0
.word 0xf94033a0
.word 0xf9002ba0
.word 0x910143a0
.word 0x910063a0
.word 0xf9402ba0
.word 0xf9000fa0
.word 0x1400002d
.word 0xf94017b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000581
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2376]
.word 0xeb01001f
.word 0x10000011
.word 0x54000481
.word 0x91004340
.word 0x910123a1
.word 0xb9800000
.word 0xb9004ba0
.word 0x910163a0
.word 0xd2800000
.word 0xf9002fa0
.word 0x910163a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x15, [x16, #496]
.word 0x910123a1
.word 0xf94027a1
bl _p_77
.word 0x910163a0
.word 0x910103a0
.word 0xf9402fa0
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910063a0
.word 0xf94023a0
.word 0xf9000fa0
.word 0xf94017b1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd28021a0
.word 0xaa1103e1
bl _p_34

Lme_b3:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9002baf
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2448]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90043a0
.word 0x910103a0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0x910103a0
.word 0xf9003fa0
.word 0xf9402ba0
bl _p_180
.word 0xaa0003ef
.word 0xf9403fa0
.word 0xf94043a1
bl _p_181
.word 0x910103a0
.word 0x9100c3a0
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf94027a0
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_180
bl _p_2
.word 0x9100c3a1
.word 0xf90033a0
.word 0x91004001
.word 0xaa0103e0
.word 0xf9401ba2
.word 0xf9003ba2
.word 0xf9000022
.word 0xf90037a0
bl _p_9
.word 0xf94033a0
.word 0xf94037a1
.word 0xf9403ba2
.word 0x91002021
.word 0xf9401fa2
.word 0xf9000022
.word 0xf9400fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_b4:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Add_T_REF_T_REF
System_Array_InternalArray__ICollection_Add_T_REF_T_REF:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2456]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd297d740
.word 0xf2a00020
.word 0xd297d740
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd2800100
.word 0xf2a04000
.word 0xd2800100
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94013b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b5:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
System_Array_InternalArray__ICollection_Remove_T_REF_T_REF:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2464]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd297d740
.word 0xf2a00020
.word 0xd297d740
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd2800100
.word 0xf2a04000
.word 0xd2800100
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94013b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b6:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
System_Array_InternalArray__ICollection_Contains_T_REF_T_REF:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90027af
.word 0xaa0003fa
.word 0xf90017a1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2472]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0xd2800018
.word 0xf9002bbf
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0x3940a800
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ed
.word 0xf9401bb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xd297dec0
.word 0xf2a00020
.word 0xd297dec0
.word 0xf2a00020
bl _p_138
bl _p_148
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a1
.word 0xd2802860
.word 0xf2a04000
.word 0xd2802860
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf9401bb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9801b40
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f9
.word 0xf9401bb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0x1400004d
.word 0xf9401bb1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0x910143a0
.word 0xf94027a0
bl _p_182
.word 0x93407f00
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400000
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb5000260
.word 0xf9401bb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb5000100
.word 0xf9401bb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x1400003d
.word 0xf9401bb1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001b
.word 0xf9401bb1
.word 0xf941f231
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0xf9402ba1
.word 0xf94017a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9402850
.word 0xd63f0200
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x34000100
.word 0xf9401bb1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x1400001e
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0x6b19031f
.word 0x54fff52b
.word 0xf9401bb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0xf9401bb1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_b7:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int:
.word 0xa9b17bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xf90013b6
.word 0xa902e7b8
.word 0xf9001fba
.word 0xf9006baf
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90023a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2480]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xf94027b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb50001f9
.word 0xf94027b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xd282ac40
.word 0xd282ac40
bl _p_138
.word 0xaa0003e1
.word 0xd28006c0
.word 0xf2a04000
.word 0xd28006c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94027b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400300
.word 0x3940a800
.word 0xf90073a0
.word 0xf94027b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ed
.word 0xf94027b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xd297dec0
.word 0xf2a00020
.word 0xd297dec0
.word 0xf2a00020
bl _p_138
bl _p_148
.word 0xf90073a0
.word 0xf94027b1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a1
.word 0xd2802860
.word 0xf2a04000
.word 0xd2802860
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94027b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb98043a0
.word 0xf90033a0
.word 0xaa1803f6
.word 0xd2800000
.word 0xf9400b15
.word 0xeb1f02bf
.word 0x54000060
.word 0xb98002b4
.word 0x14000002
.word 0xb9801ad4
.word 0xf94027b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xb140000
.word 0xf90037a0
.word 0xaa1903e0
.word 0xd2800000
.word 0xf9400b20
.word 0xf9003ba0
.word 0xeb1f001f
.word 0x54000080
.word 0xf9403ba0
.word 0xb980041a
.word 0x14000002
.word 0xd280001a
.word 0xf94027b1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9003fb9
.word 0xd2800000
.word 0xf9403fa0
.word 0xf9400800
.word 0xf90043a0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf94043a0
.word 0xb9800000
.word 0xf90047a0
.word 0x14000004
.word 0xf9403fa0
.word 0xb9801800
.word 0xf90047a0
.word 0xf94047a0
.word 0xf90047a0
.word 0xf94027b1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0xb000341
.word 0xf94037a0
.word 0x6b01001f
.word 0x5400022d
.word 0xf94027b1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd297e9c0
.word 0xf2a00020
.word 0xd297e9c0
.word 0xf2a00020
bl _p_138
.word 0xaa0003e1
.word 0xd28006a0
.word 0xf2a04000
.word 0xd28006a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94027b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400320
.word 0x3940a800
.word 0xf90073a0
.word 0xf94027b1
.word 0xf942aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ed
.word 0xf94027b1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xd297dec0
.word 0xf2a00020
.word 0xd297dec0
.word 0xf2a00020
bl _p_138
bl _p_148
.word 0xf90073a0
.word 0xf94027b1
.word 0xf942fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a1
.word 0xd2802860
.word 0xf2a04000
.word 0xd2802860
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf94027b1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xb98043a0
.word 0xd2800001
.word 0x6b1f001f
.word 0x5400038a
.word 0xf94027b1
.word 0xf9434631
.word 0xb4000051
.word 0xd63f0220
.word 0xd281dba0
.word 0xd281dba0
bl _p_138
.word 0xf90073a0
.word 0xd2980220
.word 0xf2a00020
.word 0xd2980220
.word 0xf2a00020
bl _p_138
bl _p_148
.word 0xf90077a0
.word 0xf94027b1
.word 0xf9438231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a1
.word 0xf94077a2
.word 0xd28006e0
.word 0xf2a04000
.word 0xd28006e0
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_139
.word 0xf94027b1
.word 0xf943b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9004bb8
.word 0xaa1803e0
.word 0xd2800000
.word 0xf9400b00
.word 0xf9004fa0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf9404fa0
.word 0xb9800400
.word 0xf90053a0
.word 0x14000002
.word 0xf90053bf
.word 0xf94053a0
.word 0xf90053a0
.word 0xf94027b1
.word 0xf943fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf90057b9
.word 0xb98043a0
.word 0xf9005ba0
.word 0xf9005fb8
.word 0xd2800000
.word 0xf9405fa0
.word 0xf9400800
.word 0xf90063a0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf94063a0
.word 0xb9800000
.word 0xf90067a0
.word 0x14000004
.word 0xf9405fa0
.word 0xb9801800
.word 0xf90067a0
.word 0xf94067a0
.word 0xf90067a0
.word 0xf94027b1
.word 0xf9445631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94053a1
.word 0xf94057a2
.word 0xf9405ba3
.word 0xf94067a4
bl _p_150
.word 0xf94027b1
.word 0xf9447e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9448e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xf94013b6
.word 0xa942e7b8
.word 0xf9401fba
.word 0x910003bf
.word 0xa8cf7bfd
.word 0xd65f03c0

Lme_b8:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_TheAdventuresOf_AnimationFrame_invoke_bool_T_TheAdventuresOf_AnimationFrame
wrapper_delegate_invoke_System_Predicate_1_TheAdventuresOf_AnimationFrame_invoke_bool_T_TheAdventuresOf_AnimationFrame:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2488]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2120]
.word 0xb9400000
.word 0x34000240
.word 0xf9402bb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
bl _p_164
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_139
.word 0xf9403ba0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xf9402bb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb5000916
.word 0xf9402bb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xf9402bb1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xb40003d4
.word 0xf9402bb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x1400006d
.word 0xf9402bb1
.word 0xf941e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x14000052
.word 0xf9402bb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xf9402bb1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000849
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xf9402bb1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xf90047a0
.word 0xaa1a03e0
.word 0xaa1503e0
.word 0xaa1a03e1
.word 0xf9400eb0
.word 0xd63f0200
.word 0xf94047a1
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402bb1
.word 0xf9430631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xf9402bb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xf9402bb1
.word 0xf9433a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1703e0
.word 0x6b17031f
.word 0x54fff94b
.word 0xf9402bb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf9439231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_34

Lme_b9:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_TheAdventuresOf_AnimationFrame_invoke_int_T_T_TheAdventuresOf_AnimationFrame_TheAdventuresOf_AnimationFrame
wrapper_delegate_invoke_System_Comparison_1_TheAdventuresOf_AnimationFrame_invoke_int_T_T_TheAdventuresOf_AnimationFrame_TheAdventuresOf_AnimationFrame:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2496]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xb9006bbf
.word 0xf9402bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2120]
.word 0xb9400000
.word 0x34000240
.word 0xf9402bb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
bl _p_164
.word 0xf9003ba0
.word 0xf9403ba1
.word 0xf9403ba0
.word 0xf9003fa1
.word 0xb4000060
.word 0xf9403fa0
bl _p_139
.word 0xf9403fa0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9101a300
.word 0xf9403700
.word 0xaa0003f5
.word 0xf9402bb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb5000995
.word 0xf9402bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91008300
.word 0xf9401300
.word 0xaa0003f3
.word 0xf9402bb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xb4000413
.word 0xf9402bb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b03
.word 0xaa1303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x14000073
.word 0xf9402bb1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x14000056
.word 0xf9402bb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb9801aa0
.word 0xaa0003f6
.word 0xf9402bb1
.word 0xf9427e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800017
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf942a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x93407ee0
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x540008c9
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f4
.word 0xf9402bb1
.word 0xf942e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xf90047a0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1403e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf9400e90
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xb9006ba0
.word 0xf9402bb1
.word 0xf9433e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xf9402bb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1603e0
.word 0x6b1602ff
.word 0x54fff8eb
.word 0xf9402bb1
.word 0xf9437a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb9806ba0
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf943a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9402bb1
.word 0xf943b631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_34

Lme_ba:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Count
System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Count:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2504]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9801800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_bb:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Item_int
System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Item_int:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2512]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xb9801b20
.word 0x6b00035f
.word 0x540000c3
.word 0xf9401bb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
bl _p_183
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xaa1a03e1
.word 0x93407f41
.word 0xd37df021
.word 0x8b010000
.word 0x91008000
.word 0x910123a1
.word 0xf9400000
.word 0xf90027a0
.word 0xf9401bb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0x910123a0
.word 0x910083a0
.word 0xf94027a0
.word 0xf90013a0
.word 0xf9401bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_bc:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_Add_Microsoft_Xna_Framework_Point
System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_Add_Microsoft_Xna_Framework_Point:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003fa
.word 0xf9001fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2520]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd2800019
.word 0xf94027b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9801b40
.word 0xaa1a03e1
.word 0xf9400b41
.word 0xb9801821
.word 0x6b01001f
.word 0x54000161
.word 0xf94027b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xb9801b40
.word 0x11000401
.word 0xaa1a03e0
bl _p_184
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xaa1a03e1
.word 0xaa1a03f8
.word 0xaa1a03e1
.word 0xaa1a03e1
.word 0xb9801b41
.word 0xaa0103f7
.word 0xaa1703e1
.word 0xaa1703e2
.word 0xaa1703f9
.word 0x11000421
.word 0xb9001b41
.word 0xaa1703e1
.word 0x9100e3a1
.word 0x910183a1
.word 0xf9401fa1
.word 0xf90033a1
.word 0x93407ee1
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540003a9
.word 0xd37df021
.word 0x8b010000
.word 0x91008000
.word 0x910183a1
.word 0xaa0003e1
.word 0xf94033a1
.word 0xf9000001
.word 0xf94027b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03f6
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xb9801f40
.word 0x11000400
.word 0xb9001f40
.word 0xf94027b1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_34

Lme_bd:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__ctor
System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__ctor:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2528]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2536]
.word 0xf9400000
.word 0xf9001ba0
.word 0xf9000b40
.word 0x91004340
bl _p_9
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_be:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__get_Item_Microsoft_Xna_Framework_Point_int
System_Array_InternalArray__get_Item_Microsoft_Xna_Framework_Point_int:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2544]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0x910163a0
.word 0xd2800000
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xb9801b20
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x6b00035f
.word 0x540001e3
.word 0xf9401bb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xd281dba0
.word 0xd281dba0
bl _p_138
.word 0xaa0003e1
.word 0xd28006e0
.word 0xf2a04000
.word 0xd28006e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_139
.word 0xf9401bb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0x910163a0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1816]
.word 0x93407f40
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0x910143a1
.word 0xf9400000
.word 0xf9002ba0
.word 0x910143a0
.word 0x910163a0
.word 0xf9402ba0
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x910123a0
.word 0xf9402fa0
.word 0xf90027a0
.word 0x910123a0
.word 0x910083a0
.word 0xf94027a0
.word 0xf90013a0
.word 0xf9401bb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_bf:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2552]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_161
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c0:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90017a2

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2560]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9401fb1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
.word 0x9101a3a0
.word 0xf9400fa0
.word 0xf90037a0
.word 0x14000001
.word 0xf9401fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0x910183a0
.word 0xf94017a0
.word 0xf90033a0
.word 0x14000001
.word 0xf9401fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
.word 0xf9003fa0
.word 0x9100a3a0
.word 0x910163a0
.word 0xf94017a0
.word 0xf9002fa0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1752]
bl _p_17
.word 0xaa0003e1
.word 0xf9403fa0
.word 0x910163a2
.word 0x91004022
.word 0xf9402fa3
.word 0xf9000043
bl _p_149
.word 0x53001c00
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x1400001e
.word 0xf9401fb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000017
.word 0xf9401fb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0x910143a0
.word 0xf94017a0
.word 0xf9002ba0
.word 0x14000001
.word 0xf9401fb1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000007
.word 0xf9401fb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0xf9401fb1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_c1:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point
System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2568]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
.word 0x910103a0
.word 0xf9400fa0
.word 0xf90023a0
.word 0x14000008
.word 0xf94017b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x1400000e
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
bl _p_163
.word 0x93407c00
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf94017b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_c2:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int
System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int:
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001bb9
.word 0xf9001fa0
.word 0xaa0103f8
.word 0xf90023a2
.word 0xaa0303f9
.word 0xf9002ba4

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2576]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xf9402fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb98053a0
.word 0xb000320
.word 0xaa0003f7
.word 0xf9402fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910223a0
.word 0xf94023a0
.word 0xf90047a0
.word 0x14000035
.word 0xf9402fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903f6
.word 0x14000021
.word 0xf9402fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1603e0
.word 0x93407ec0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54001249
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0x910203a1
.word 0xf9400000
.word 0xf90043a0
.word 0x14000008
.word 0xf9402fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1603e0
.word 0x1400007a
.word 0xf9402fb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0x110006c0
.word 0xaa0003f6
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1703e0
.word 0x6b1702df
.word 0x54fffaab
.word 0x1400005a
.word 0xf9402fb1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903f5
.word 0x14000047
.word 0xf9402fb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1503e0
.word 0x93407ea0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000bc9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0x9101e3a1
.word 0xf9400000
.word 0xf9003fa0
.word 0x14000001
.word 0xaa1803e0
.word 0xaa1503e0
.word 0x93407ea0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000a09
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9004fa0
.word 0x910103a0
.word 0x9101c3a0
.word 0xf94023a0
.word 0xf9003ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #1752]
bl _p_17
.word 0xaa0003e1
.word 0xf9404fa0
.word 0x9101c3a2
.word 0x91004022
.word 0xf9403ba3
.word 0xf9000043
bl _p_149
.word 0x53001c00
.word 0xf9004ba0
.word 0xf9402fb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0x34000100
.word 0xf9402fb1
.word 0xf9427a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1503e0
.word 0x14000024
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0x110006a0
.word 0xaa0003f5
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x6b1702bf
.word 0x54fff5eb
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.word 0x92800000
.word 0xf2bfffe0
.word 0x92800000
.word 0xf2bfffe0
.word 0xf9402fb1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xf9401bb9
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_34

Lme_c3:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object
System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xf90017a0
.word 0xf9001ba1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2584]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xf9401fb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb8
.word 0xaa1803f7
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x1, [x16, #2592]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xaa1703f9
.word 0xf9401fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xd2800000
.word 0xeb1f02ff
.word 0x9a9f17e0
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0xf9401fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_c4:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode
System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2600]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9400c00
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405030
.word 0xd63f0200
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_c5:
.text
ut_198:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
System_Array_InternalEnumerator_1_T_REF__ctor_System_Array:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9001faf
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2608]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf9000320
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_9
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x92800020
.word 0xf2bfffe0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9000b3e
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_c6:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_EnsureCapacity_int
System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_EnsureCapacity_int:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2616]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800018
.word 0xf9401bb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xb9801800
.word 0xaa1a03e1
.word 0x6b1a001f
.word 0x540008ea
.word 0xf9401bb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xb9801800
.word 0x35000080
.word 0xd2800080
.word 0xd2800097
.word 0x14000006
.word 0xaa1903e0
.word 0xf9400b20
.word 0xb9801800
.word 0x531f7800
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xaa1703f8
.word 0xf9401bb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xd29fffe0
.word 0xf2affde0
.word 0xd29ffffe
.word 0xf2affdfe
.word 0x6b1e02ff
.word 0x540000e9
.word 0xf9401bb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xd29ffff8
.word 0xf2affdf8
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0x6b1a031f
.word 0x540000ea
.word 0xf9401bb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03f8
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1803e0
.word 0xaa1903e0
.word 0xaa1803e1
bl _p_185
.word 0xf9401bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_c7:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__cctor
System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__cctor:
.word 0xa9bd7bfd
.word 0x910003fd

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2624]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2632]
.word 0xd2800001
bl _p_156
.word 0xaa0003e1

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2536]
.word 0xf9000001
.word 0xf9400bb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c8:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_set_Capacity_int
System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_set_Capacity_int:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2640]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800018
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xb9801b20
.word 0x6b00035f
.word 0x5400014a
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xd28001e0
.word 0xd28002a0
.word 0xd28001e0
.word 0xd28002a1
bl _p_186
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xf9400b20
.word 0xb9801800
.word 0x6b00035f
.word 0x54000900
.word 0xf94017b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0x6b1f035f
.word 0x5400064d
.word 0xf94017b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2632]
.word 0xaa1a03e1
bl _p_156
.word 0xaa0003f8
.word 0xf94017b1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb9801b20
.word 0xd2800001
.word 0x6b1f001f
.word 0x5400020d
.word 0xf94017b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xd2800001
.word 0xaa1803e1
.word 0xd2800001
.word 0xaa1903e1
.word 0xb9801b24
.word 0xd2800001
.word 0xaa1803e2
.word 0xd2800003
bl _p_150
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1803e0
.word 0xf9000b38
.word 0x91004320
bl _p_9
.word 0x1400000f
.word 0xf94017b1
.word 0xf941c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x0, [x16, #2536]
.word 0xf9400000
.word 0xf90023a0
.word 0xf9000b20
.word 0x91004320
bl _p_9
.word 0xf94023a0
.word 0xf94017b1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_c9:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl TheAdventuresOf_iOS_Program__ctor
bl TheAdventuresOf_iOS_Program_RunGame
bl TheAdventuresOf_iOS_Program_Main_string__
bl TheAdventuresOf_iOS_Program_FinishedLaunching_UIKit_UIApplication
bl TheAdventuresOf_TheAdventuresOf__ctor
bl TheAdventuresOf_TheAdventuresOf_Initialize
bl TheAdventuresOf_TheAdventuresOf_LoadContent
bl TheAdventuresOf_TheAdventuresOf_Update_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_TheAdventuresOf_Draw_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Screen__ctor_int_int
bl TheAdventuresOf_Screen_get_scaleMatrix
bl TheAdventuresOf_Screen_set_scaleMatrix_Microsoft_Xna_Framework_Matrix
bl TheAdventuresOf_Screen_CreateScaleMatrix_int_int
bl TheAdventuresOf_Screen_Update_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Screen_HandleInput_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Screen_GetTouchInput
bl TheAdventuresOf_Screen_GetScaledTouchInput_Microsoft_Xna_Framework_Point
bl TheAdventuresOf_Character__ctor
bl TheAdventuresOf_Character_HandleMovement_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Character_InitializeAnimation
bl TheAdventuresOf_Character_Move_Microsoft_Xna_Framework_GameTime_int
bl TheAdventuresOf_Character_HandleAnimation_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Character_InitializeCharacter_single_single_int_int
bl TheAdventuresOf_Character_UpdateCharacterBounds
bl TheAdventuresOf_Character_HandleLevelBoundCollision_int_int
bl TheAdventuresOf_Character_Update_Microsoft_Xna_Framework_GameTime_bool
bl TheAdventuresOf_Character_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
bl TheAdventuresOf_FrameRate_LoadContent_Microsoft_Xna_Framework_Content_ContentManager
bl TheAdventuresOf_FrameRate_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_AnimationFrame__ctor
bl TheAdventuresOf_AnimationFrame_get_sourceRectangle
bl TheAdventuresOf_AnimationFrame_set_sourceRectangle_Microsoft_Xna_Framework_Rectangle
bl TheAdventuresOf_AnimationFrame_get_duration
bl TheAdventuresOf_AnimationFrame_set_duration_System_TimeSpan
bl TheAdventuresOf_Animation__ctor
bl TheAdventuresOf_Animation_get_CurrentRectangle
bl TheAdventuresOf_Animation_CalculateAnimationDuration
bl TheAdventuresOf_Animation_AddFrame_Microsoft_Xna_Framework_Rectangle_System_TimeSpan
bl TheAdventuresOf_Animation_Update_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Controller_InitializeController_Microsoft_Xna_Framework_Graphics_GraphicsDevice
bl TheAdventuresOf_Controller_HandleInput_Microsoft_Xna_Framework_Point
bl TheAdventuresOf_Controller_ResetButtonPressedValues
bl TheAdventuresOf_Controller_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch
bl TheAdventuresOf_Button__ctor_single_single_single_single
bl TheAdventuresOf_Button_InitializeButton
bl TheAdventuresOf_Button_InitializeBounds
bl TheAdventuresOf_Button_IsPressed_Microsoft_Xna_Framework_Point
bl TheAdventuresOf_Button_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D_single_Microsoft_Xna_Framework_Graphics_SpriteEffects
bl TheAdventuresOf_Level__ctor
bl TheAdventuresOf_Level_InitializeLevel
bl TheAdventuresOf_Level_CheckCollision_TheAdventuresOf_Character
bl TheAdventuresOf_Level_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch
bl TheAdventuresOf_Level__cctor
bl TheAdventuresOf_Player__ctor
bl TheAdventuresOf_Player_InitializeCharacter_single_single_int_int
bl TheAdventuresOf_Player_InitializeAnimation
bl TheAdventuresOf_Player_Update_Microsoft_Xna_Framework_GameTime_bool
bl TheAdventuresOf_Player_HandleMovement_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Player_HandleLevelBoundCollision_int_int
bl TheAdventuresOf_Player_CheckCollision_TheAdventuresOf_Monster
bl TheAdventuresOf_Player_HandleAnimation_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Player_HandleJump_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Player_Move_Microsoft_Xna_Framework_GameTime_int
bl TheAdventuresOf_Player_UpdateCharacterBounds
bl TheAdventuresOf_Player_UpdateSwordBounds
bl TheAdventuresOf_Player_MoveSword_int
bl TheAdventuresOf_Player_Jump_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Player_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
bl TheAdventuresOf_XmlImporter_GetXMLInformation
bl TheAdventuresOf_XmlImporter_LoadPlayerInformation_TheAdventuresOf_Player
bl TheAdventuresOf_XmlImporter_LoadBlockMonsterInformation_TheAdventuresOf_Monster
bl TheAdventuresOf_AssetManager_LoadGameAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice
bl TheAdventuresOf_AssetManager_LoadLevelAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice
bl TheAdventuresOf_AssetManager_DisposeLevelAssets
bl TheAdventuresOf_Monster__ctor
bl TheAdventuresOf_Monster_InitializeAnimation
bl TheAdventuresOf_Monster_HandleLevelBoundCollision_int_int
bl TheAdventuresOf_Monster_Update_Microsoft_Xna_Framework_GameTime_bool
bl TheAdventuresOf_Monster_HandleDelay_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Monster_HandleDeath_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Monster_RandomizeMovement
bl TheAdventuresOf_Monster_ChooseRandomDirection
bl TheAdventuresOf_Monster_HandleAnimation_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Monster_HandleMovement_Microsoft_Xna_Framework_GameTime
bl TheAdventuresOf_Monster_Move_Microsoft_Xna_Framework_GameTime_int
bl TheAdventuresOf_Monster_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
bl TheAdventuresOf_Monster__cctor
bl method_addresses
bl System_Nullable_1_Microsoft_Xna_Framework_Matrix__ctor_Microsoft_Xna_Framework_Matrix
bl System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_HasValue
bl System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_Value
bl System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_object
bl System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_System_Nullable_1_Microsoft_Xna_Framework_Matrix
bl System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetHashCode
bl System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault
bl System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault_Microsoft_Xna_Framework_Matrix
bl System_Nullable_1_Microsoft_Xna_Framework_Matrix_ToString
bl System_Nullable_1_Microsoft_Xna_Framework_Matrix_Box_System_Nullable_1_Microsoft_Xna_Framework_Matrix
bl System_Nullable_1_Microsoft_Xna_Framework_Matrix_Unbox_object
bl method_addresses
bl System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point__ctor_System_Array
bl System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_Dispose
bl System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_MoveNext
bl System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_get_Current
bl System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_Reset
bl System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_get_Current
bl System_Array_InternalArray__IEnumerable_GetEnumerator_Microsoft_Xna_Framework_Point
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl System_Array_InternalArray__ICollection_get_Count
bl System_Array_InternalArray__ICollection_get_IsReadOnly
bl System_Array_InternalArray__ICollection_Clear
bl System_Array_InternalArray__ICollection_Add_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
bl System_Array_InternalArray__ICollection_Remove_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
bl System_Array_InternalArray__ICollection_Contains_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
bl System_Array_InternalArray__ICollection_CopyTo_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point___int
bl method_addresses
bl System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
bl System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_get_Default
bl System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_CreateComparer
bl method_addresses
bl method_addresses
bl System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int
bl System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_GetHashCode_object
bl System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_Equals_object_object
bl System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
bl System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
bl System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point
bl System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int
bl System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object
bl System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_Predicate_1_Microsoft_Xna_Framework_Point_invoke_bool_T_Microsoft_Xna_Framework_Point
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_Comparison_1_Microsoft_Xna_Framework_Point_invoke_int_T_T_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
bl System_Nullable_1_Microsoft_Xna_Framework_Vector2__ctor_Microsoft_Xna_Framework_Vector2
bl System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_HasValue
bl System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_Value
bl System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_object
bl System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_System_Nullable_1_Microsoft_Xna_Framework_Vector2
bl System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetHashCode
bl System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault
bl System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault_Microsoft_Xna_Framework_Vector2
bl System_Nullable_1_Microsoft_Xna_Framework_Vector2_ToString
bl System_Nullable_1_Microsoft_Xna_Framework_Vector2_Box_System_Nullable_1_Microsoft_Xna_Framework_Vector2
bl System_Nullable_1_Microsoft_Xna_Framework_Vector2_Unbox_object
bl System_Nullable_1_Microsoft_Xna_Framework_Rectangle__ctor_Microsoft_Xna_Framework_Rectangle
bl System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_HasValue
bl System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_Value
bl System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_object
bl System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_System_Nullable_1_Microsoft_Xna_Framework_Rectangle
bl System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetHashCode
bl System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault
bl System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault_Microsoft_Xna_Framework_Rectangle
bl System_Nullable_1_Microsoft_Xna_Framework_Rectangle_ToString
bl System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Box_System_Nullable_1_Microsoft_Xna_Framework_Rectangle
bl System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Unbox_object
bl System_Nullable_1_Microsoft_Xna_Framework_Color__ctor_Microsoft_Xna_Framework_Color
bl System_Nullable_1_Microsoft_Xna_Framework_Color_get_HasValue
bl System_Nullable_1_Microsoft_Xna_Framework_Color_get_Value
bl System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_object
bl System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_System_Nullable_1_Microsoft_Xna_Framework_Color
bl System_Nullable_1_Microsoft_Xna_Framework_Color_GetHashCode
bl System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault
bl System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault_Microsoft_Xna_Framework_Color
bl System_Nullable_1_Microsoft_Xna_Framework_Color_ToString
bl System_Nullable_1_Microsoft_Xna_Framework_Color_Box_System_Nullable_1_Microsoft_Xna_Framework_Color
bl System_Nullable_1_Microsoft_Xna_Framework_Color_Unbox_object
bl System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
bl System_Array_InternalArray__ICollection_Add_T_REF_T_REF
bl System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
bl System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
bl System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
bl wrapper_delegate_invoke_System_Predicate_1_TheAdventuresOf_AnimationFrame_invoke_bool_T_TheAdventuresOf_AnimationFrame
bl wrapper_delegate_invoke_System_Comparison_1_TheAdventuresOf_AnimationFrame_invoke_int_T_T_TheAdventuresOf_AnimationFrame_TheAdventuresOf_AnimationFrame
bl System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Count
bl System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Item_int
bl System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_Add_Microsoft_Xna_Framework_Point
bl System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__ctor
bl System_Array_InternalArray__get_Item_Microsoft_Xna_Framework_Point_int
bl System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
bl System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
bl System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point
bl System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int
bl System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object
bl System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode
bl System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
bl System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_EnsureCapacity_int
bl System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__cctor
bl System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_set_Capacity_int
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 88,89,90,91,92,93,94,95
	.long 96,97,98,100,101,102,103,104
	.long 105,147,148,149,150,151,152,153
	.long 154,155,156,157,158,159,160,161
	.long 162,163,164,165,166,167,168,169
	.long 170,171,172,173,174,175,176,177
	.long 178,179,198
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_88
bl ut_89
bl ut_90
bl ut_91
bl ut_92
bl ut_93
bl ut_94
bl ut_95
bl ut_96
bl ut_97
bl ut_98
bl ut_100
bl ut_101
bl ut_102
bl ut_103
bl ut_104
bl ut_105
bl ut_147
bl ut_148
bl ut_149
bl ut_150
bl ut_151
bl ut_152
bl ut_153
bl ut_154
bl ut_155
bl ut_156
bl ut_157
bl ut_158
bl ut_159
bl ut_160
bl ut_161
bl ut_162
bl ut_163
bl ut_164
bl ut_165
bl ut_166
bl ut_167
bl ut_168
bl ut_169
bl ut_170
bl ut_171
bl ut_172
bl ut_173
bl ut_174
bl ut_175
bl ut_176
bl ut_177
bl ut_178
bl ut_179
bl ut_198

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 0,13,12,31,0,68,14,48,157,6,158,5,68,13,29,13,12,31,0,68,14,64,157,8,158,7,68,13,29,16,12,31
	.byte 0,68,14,80,157,10,158,9,68,13,29,68,154,8,17,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,154,18
	.byte 17,12,31,0,68,14,160,2,157,36,158,35,68,13,29,68,154,34,18,12,31,0,68,14,96,157,12,158,11,68,13,29
	.byte 68,153,10,154,9,19,12,31,0,84,14,208,4,157,74,158,73,68,13,29,68,153,72,154,71,17,12,31,0,68,14,224
	.byte 1,157,28,158,27,68,13,29,68,152,26,14,12,31,0,68,14,128,2,157,32,158,31,68,13,29,14,12,31,0,68,14
	.byte 128,1,157,16,158,15,68,13,29,14,12,31,0,68,14,176,3,157,54,158,53,68,13,29,13,12,31,0,68,14,80,157
	.byte 10,158,9,68,13,29,19,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,152,16,153,15,24,12,31,0,84,14
	.byte 176,4,157,70,158,69,68,13,29,68,151,68,152,67,68,153,66,154,65,14,12,31,0,84,14,192,4,157,72,158,71,68
	.byte 13,29,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6,22,12,31,0,68,14,208,1,157,26,158,25,68
	.byte 13,29,68,152,24,153,23,68,154,22,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4,21,12,31,0,68
	.byte 14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4,24,12,31,0,84,14,128,7,157,112,158,111,68,13,29
	.byte 84,151,110,152,109,68,153,108,154,107,14,12,31,0,68,14,192,1,157,24,158,23,68,13,29,13,12,31,0,68,14,112
	.byte 157,14,158,13,68,13,29,13,12,31,0,68,14,96,157,12,158,11,68,13,29,22,12,31,0,68,14,224,2,157,44,158
	.byte 43,68,13,29,68,152,42,153,41,68,154,40,19,12,31,0,68,14,128,2,157,32,158,31,68,13,29,68,153,30,154,29
	.byte 22,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,152,18,153,17,68,154,16,17,12,31,0,68,14,192,1,157
	.byte 24,158,23,68,13,29,68,153,22,14,12,31,0,68,14,176,2,157,38,158,37,68,13,29,17,12,31,0,68,14,240,2
	.byte 157,46,158,45,68,13,29,84,154,44,16,12,31,0,68,14,112,157,14,158,13,68,13,29,68,154,12,16,12,31,0,68
	.byte 14,96,157,12,158,11,68,13,29,68,153,10,17,12,31,0,68,14,240,1,157,30,158,29,68,13,29,68,151,28,17,12
	.byte 31,0,68,14,128,1,157,16,158,15,68,13,29,68,154,14,14,12,31,0,68,14,192,2,157,40,158,39,68,13,29,19
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,152,26,153,25,17,12,31,0,68,14,192,2,157,40,158,39,68
	.byte 13,29,68,154,38,18,12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7,18,12,31,0,68,14,80,157
	.byte 10,158,9,68,13,29,68,152,8,153,7,18,12,31,0,68,14,112,157,14,158,13,68,13,29,68,153,12,154,11,16,12
	.byte 31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,27,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,150
	.byte 18,151,17,68,152,16,153,15,68,154,14,18,12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5,24,12
	.byte 31,0,68,14,128,2,157,32,158,31,68,13,29,68,150,30,151,29,68,152,28,153,27,19,12,31,0,68,14,240,3,157
	.byte 62,158,61,68,13,29,84,152,60,153,59,19,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,153,14,154,13,24
	.byte 12,31,0,68,14,224,3,157,60,158,59,68,13,29,68,151,58,152,57,68,153,56,154,55,27,12,31,0,68,14,224,3
	.byte 157,60,158,59,68,13,29,68,150,58,151,57,68,152,56,153,55,68,154,54,17,12,31,0,68,14,144,1,157,18,158,17
	.byte 68,13,29,68,154,16,17,12,31,0,68,14,128,2,157,32,158,31,68,13,29,68,154,30,17,12,31,0,68,14,128,1
	.byte 157,16,158,15,68,13,29,68,153,14,27,12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,150,22,151,21,68,152
	.byte 20,153,19,68,154,18,30,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,148,18,149,17,68,150,16,151,15,68
	.byte 152,14,68,154,13,24,12,31,0,68,14,240,1,157,30,158,29,68,13,29,68,151,28,152,27,68,153,26,154,25,17,12
	.byte 31,0,68,14,224,3,157,60,158,59,68,13,29,68,154,58,26,12,31,0,68,14,96,157,12,158,11,68,13,29,68,150
	.byte 10,151,9,68,152,8,153,7,68,154,6,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10,22,12,31,0
	.byte 68,14,144,1,157,18,158,17,68,13,29,68,152,16,153,15,68,154,14,30,12,31,0,68,14,224,1,157,28,158,27,68
	.byte 13,29,68,148,26,149,25,68,150,24,68,152,23,153,22,68,154,21,34,12,31,0,68,14,192,1,157,24,158,23,68,13
	.byte 29,68,147,22,148,21,68,149,20,150,19,68,151,18,152,17,68,153,16,154,15,27,12,31,0,68,14,144,1,157,18,158
	.byte 17,68,13,29,68,149,16,150,15,68,151,14,152,13,68,153,12,21,12,31,0,68,14,96,157,12,158,11,68,13,29,68
	.byte 151,10,152,9,68,154,8,29,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,148,14,149,13,68,150,12,151,11
	.byte 68,153,10,154,9,27,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,149,18,150,17,68,151,16,152,15,68,153
	.byte 14,21,12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8,152,7,68,153,6,34,12,31,0,68,14,176,1,157
	.byte 22,158,21,68,13,29,68,147,20,148,19,68,149,18,150,17,68,151,16,152,15,68,153,14,154,13,34,12,31,0,68,14
	.byte 208,1,157,26,158,25,68,13,29,68,147,24,148,23,68,149,22,150,21,68,151,20,152,19,68,153,18,154,17,23,12,31
	.byte 0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,153,10,154,9,17,12,31,0,68,14,208,1,157,26,158
	.byte 25,68,13,29,68,154,24,24,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,151,16,152,15,68,153,14,154,13
	.byte 17,12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,154,20,14,12,31,0,68,14,144,1,157,18,158,17,68,13
	.byte 29,21,12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10,30,12,31,0,68,14,240,1,157
	.byte 30,158,29,68,13,29,68,148,28,149,27,68,150,26,68,152,25,153,24,68,154,23,34,12,31,0,68,14,144,1,157,18
	.byte 158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10,154,9,26,12,31,0,68,14,112
	.byte 157,14,158,13,68,13,29,68,150,12,151,11,68,152,10,153,9,68,154,8,23,12,31,0,68,14,80,157,10,158,9,68
	.byte 13,29,68,151,8,152,7,68,153,6,154,5,21,12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68
	.byte 154,6

.text
	.align 4
plt:
mono_aot_TheAdventuresOf_iOS_plt:
	.no_dead_strip plt_UIKit_UIApplicationDelegate__ctor
plt_UIKit_UIApplicationDelegate__ctor:
_p_1:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2656]
br x16
.word 4117
	.no_dead_strip plt__jit_icall_mono_object_new_specific
plt__jit_icall_mono_object_new_specific:
_p_2:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2664]
br x16
.word 4122
	.no_dead_strip plt_TheAdventuresOf_TheAdventuresOf__ctor
plt_TheAdventuresOf_TheAdventuresOf__ctor:
_p_3:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2672]
br x16
.word 4149
	.no_dead_strip plt_Microsoft_Xna_Framework_Game_Run
plt_Microsoft_Xna_Framework_Game_Run:
_p_4:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2680]
br x16
.word 4151
	.no_dead_strip plt_UIKit_UIApplication_Main_string___string_string
plt_UIKit_UIApplication_Main_string___string_string:
_p_5:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2688]
br x16
.word 4156
	.no_dead_strip plt_TheAdventuresOf_iOS_Program_RunGame
plt_TheAdventuresOf_iOS_Program_RunGame:
_p_6:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2696]
br x16
.word 4161
	.no_dead_strip plt_Microsoft_Xna_Framework_Game__ctor
plt_Microsoft_Xna_Framework_Game__ctor:
_p_7:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2704]
br x16
.word 4163
	.no_dead_strip plt_Microsoft_Xna_Framework_GraphicsDeviceManager__ctor_Microsoft_Xna_Framework_Game
plt_Microsoft_Xna_Framework_GraphicsDeviceManager__ctor_Microsoft_Xna_Framework_Game:
_p_8:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2712]
br x16
.word 4168
	.no_dead_strip plt_wrapper_write_barrier_object_wbarrier_noconc_intptr
plt_wrapper_write_barrier_object_wbarrier_noconc_intptr:
_p_9:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2720]
br x16
.word 4173
	.no_dead_strip plt_Microsoft_Xna_Framework_Game_get_Content
plt_Microsoft_Xna_Framework_Game_get_Content:
_p_10:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2728]
br x16
.word 4180
	.no_dead_strip plt_Microsoft_Xna_Framework_Content_ContentManager_set_RootDirectory_string
plt_Microsoft_Xna_Framework_Content_ContentManager_set_RootDirectory_string:
_p_11:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2736]
br x16
.word 4185
	.no_dead_strip plt_TheAdventuresOf_XmlImporter_GetXMLInformation
plt_TheAdventuresOf_XmlImporter_GetXMLInformation:
_p_12:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2744]
br x16
.word 4190
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_GraphicsAdapter_get_DefaultAdapter
plt_Microsoft_Xna_Framework_Graphics_GraphicsAdapter_get_DefaultAdapter:
_p_13:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2752]
br x16
.word 4192
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_GraphicsAdapter_get_CurrentDisplayMode
plt_Microsoft_Xna_Framework_Graphics_GraphicsAdapter_get_CurrentDisplayMode:
_p_14:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2760]
br x16
.word 4197
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_DisplayMode_get_Width
plt_Microsoft_Xna_Framework_Graphics_DisplayMode_get_Width:
_p_15:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2768]
br x16
.word 4202
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_DisplayMode_get_Height
plt_Microsoft_Xna_Framework_Graphics_DisplayMode_get_Height:
_p_16:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2776]
br x16
.word 4207
	.no_dead_strip plt__jit_icall_mono_object_new_fast
plt__jit_icall_mono_object_new_fast:
_p_17:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2784]
br x16
.word 4212
	.no_dead_strip plt_TheAdventuresOf_Screen__ctor_int_int
plt_TheAdventuresOf_Screen__ctor_int_int:
_p_18:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2792]
br x16
.word 4235
	.no_dead_strip plt_TheAdventuresOf_Level__ctor
plt_TheAdventuresOf_Level__ctor:
_p_19:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2800]
br x16
.word 4237
	.no_dead_strip plt_TheAdventuresOf_Player__ctor
plt_TheAdventuresOf_Player__ctor:
_p_20:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2808]
br x16
.word 4239
	.no_dead_strip plt_TheAdventuresOf_Monster__ctor
plt_TheAdventuresOf_Monster__ctor:
_p_21:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2816]
br x16
.word 4241
	.no_dead_strip plt_Microsoft_Xna_Framework_Game_Initialize
plt_Microsoft_Xna_Framework_Game_Initialize:
_p_22:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2824]
br x16
.word 4243
	.no_dead_strip plt_Microsoft_Xna_Framework_Game_get_GraphicsDevice
plt_Microsoft_Xna_Framework_Game_get_GraphicsDevice:
_p_23:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2832]
br x16
.word 4248
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_SpriteBatch__ctor_Microsoft_Xna_Framework_Graphics_GraphicsDevice
plt_Microsoft_Xna_Framework_Graphics_SpriteBatch__ctor_Microsoft_Xna_Framework_Graphics_GraphicsDevice:
_p_24:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2840]
br x16
.word 4253
	.no_dead_strip plt_TheAdventuresOf_AssetManager_LoadGameAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice
plt_TheAdventuresOf_AssetManager_LoadGameAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice:
_p_25:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2848]
br x16
.word 4258
	.no_dead_strip plt_TheAdventuresOf_AssetManager_LoadLevelAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice
plt_TheAdventuresOf_AssetManager_LoadLevelAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice:
_p_26:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2856]
br x16
.word 4260
	.no_dead_strip plt_TheAdventuresOf_Level_InitializeLevel
plt_TheAdventuresOf_Level_InitializeLevel:
_p_27:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2864]
br x16
.word 4262
	.no_dead_strip plt_TheAdventuresOf_XmlImporter_LoadPlayerInformation_TheAdventuresOf_Player
plt_TheAdventuresOf_XmlImporter_LoadPlayerInformation_TheAdventuresOf_Player:
_p_28:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2872]
br x16
.word 4264
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_Texture2D_get_Width
plt_Microsoft_Xna_Framework_Graphics_Texture2D_get_Width:
_p_29:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2880]
br x16
.word 4266
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_Texture2D_get_Height
plt_Microsoft_Xna_Framework_Graphics_Texture2D_get_Height:
_p_30:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2888]
br x16
.word 4271
	.no_dead_strip plt_TheAdventuresOf_XmlImporter_LoadBlockMonsterInformation_TheAdventuresOf_Monster
plt_TheAdventuresOf_XmlImporter_LoadBlockMonsterInformation_TheAdventuresOf_Monster:
_p_31:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2896]
br x16
.word 4276
	.no_dead_strip plt_TheAdventuresOf_FrameRate_LoadContent_Microsoft_Xna_Framework_Content_ContentManager
plt_TheAdventuresOf_FrameRate_LoadContent_Microsoft_Xna_Framework_Content_ContentManager:
_p_32:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2904]
br x16
.word 4278
	.no_dead_strip plt_TheAdventuresOf_Controller_InitializeController_Microsoft_Xna_Framework_Graphics_GraphicsDevice
plt_TheAdventuresOf_Controller_InitializeController_Microsoft_Xna_Framework_Graphics_GraphicsDevice:
_p_33:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2912]
br x16
.word 4280
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_34:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2920]
br x16
.word 4282
	.no_dead_strip plt_TheAdventuresOf_Screen_Update_Microsoft_Xna_Framework_GameTime
plt_TheAdventuresOf_Screen_Update_Microsoft_Xna_Framework_GameTime:
_p_35:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2928]
br x16
.word 4317
	.no_dead_strip plt_TheAdventuresOf_Level_CheckCollision_TheAdventuresOf_Character
plt_TheAdventuresOf_Level_CheckCollision_TheAdventuresOf_Character:
_p_36:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2936]
br x16
.word 4319
	.no_dead_strip plt_TheAdventuresOf_Player_CheckCollision_TheAdventuresOf_Monster
plt_TheAdventuresOf_Player_CheckCollision_TheAdventuresOf_Monster:
_p_37:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2944]
br x16
.word 4321
	.no_dead_strip plt_Microsoft_Xna_Framework_Game_Update_Microsoft_Xna_Framework_GameTime
plt_Microsoft_Xna_Framework_Game_Update_Microsoft_Xna_Framework_GameTime:
_p_38:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2952]
br x16
.word 4323
	.no_dead_strip plt_string_memset_byte__int_int
plt_string_memset_byte__int_int:
_p_39:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2960]
br x16
.word 4328
	.no_dead_strip plt_TheAdventuresOf_Screen_get_scaleMatrix
plt_TheAdventuresOf_Screen_get_scaleMatrix:
_p_40:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2968]
br x16
.word 4333
	.no_dead_strip plt_System_Nullable_1_Microsoft_Xna_Framework_Matrix__ctor_Microsoft_Xna_Framework_Matrix
plt_System_Nullable_1_Microsoft_Xna_Framework_Matrix__ctor_Microsoft_Xna_Framework_Matrix:
_p_41:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2976]
br x16
.word 4335
	.no_dead_strip plt_string_memcpy_byte__byte__int
plt_string_memcpy_byte__byte__int:
_p_42:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2984]
br x16
.word 4346
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_SpriteBatch_Begin_Microsoft_Xna_Framework_Graphics_SpriteSortMode_Microsoft_Xna_Framework_Graphics_BlendState_Microsoft_Xna_Framework_Graphics_SamplerState_Microsoft_Xna_Framework_Graphics_DepthStencilState_Microsoft_Xna_Framework_Graphics_RasterizerState_Microsoft_Xna_Framework_Graphics_Effect_System_Nullable_1_Microsoft_Xna_Framework_Matrix
plt_Microsoft_Xna_Framework_Graphics_SpriteBatch_Begin_Microsoft_Xna_Framework_Graphics_SpriteSortMode_Microsoft_Xna_Framework_Graphics_BlendState_Microsoft_Xna_Framework_Graphics_SamplerState_Microsoft_Xna_Framework_Graphics_DepthStencilState_Microsoft_Xna_Framework_Graphics_RasterizerState_Microsoft_Xna_Framework_Graphics_Effect_System_Nullable_1_Microsoft_Xna_Framework_Matrix:
_p_43:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #2992]
br x16
.word 4351
	.no_dead_strip plt_TheAdventuresOf_Level_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch
plt_TheAdventuresOf_Level_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch:
_p_44:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3000]
br x16
.word 4356
	.no_dead_strip plt_TheAdventuresOf_Controller_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch
plt_TheAdventuresOf_Controller_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch:
_p_45:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3008]
br x16
.word 4358
	.no_dead_strip plt_TheAdventuresOf_FrameRate_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_GameTime
plt_TheAdventuresOf_FrameRate_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_GameTime:
_p_46:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3016]
br x16
.word 4360
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_SpriteBatch_End
plt_Microsoft_Xna_Framework_Graphics_SpriteBatch_End:
_p_47:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3024]
br x16
.word 4362
	.no_dead_strip plt_Microsoft_Xna_Framework_Game_Draw_Microsoft_Xna_Framework_GameTime
plt_Microsoft_Xna_Framework_Game_Draw_Microsoft_Xna_Framework_GameTime:
_p_48:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3032]
br x16
.word 4367
	.no_dead_strip plt_System_Console_WriteLine_string
plt_System_Console_WriteLine_string:
_p_49:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3040]
br x16
.word 4372
	.no_dead_strip plt_TheAdventuresOf_Screen_CreateScaleMatrix_int_int
plt_TheAdventuresOf_Screen_CreateScaleMatrix_int_int:
_p_50:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3048]
br x16
.word 4377
	.no_dead_strip plt_TheAdventuresOf_Screen_set_scaleMatrix_Microsoft_Xna_Framework_Matrix
plt_TheAdventuresOf_Screen_set_scaleMatrix_Microsoft_Xna_Framework_Matrix:
_p_51:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3056]
br x16
.word 4379
	.no_dead_strip plt_Microsoft_Xna_Framework_Matrix_CreateScale_single_single_single
plt_Microsoft_Xna_Framework_Matrix_CreateScale_single_single_single:
_p_52:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3064]
br x16
.word 4381
	.no_dead_strip plt_TheAdventuresOf_Screen_HandleInput_Microsoft_Xna_Framework_GameTime
plt_TheAdventuresOf_Screen_HandleInput_Microsoft_Xna_Framework_GameTime:
_p_53:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3072]
br x16
.word 4386
	.no_dead_strip plt_TheAdventuresOf_Controller_ResetButtonPressedValues
plt_TheAdventuresOf_Controller_ResetButtonPressedValues:
_p_54:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3080]
br x16
.word 4388
	.no_dead_strip plt_TheAdventuresOf_Screen_GetTouchInput
plt_TheAdventuresOf_Screen_GetTouchInput:
_p_55:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3088]
br x16
.word 4390
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Count
plt_System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Count:
_p_56:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3096]
br x16
.word 4392
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Item_int
plt_System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Item_int:
_p_57:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3104]
br x16
.word 4403
	.no_dead_strip plt_TheAdventuresOf_Controller_HandleInput_Microsoft_Xna_Framework_Point
plt_TheAdventuresOf_Controller_HandleInput_Microsoft_Xna_Framework_Point:
_p_58:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3112]
br x16
.word 4414
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__ctor
plt_System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__ctor:
_p_59:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3120]
br x16
.word 4416
	.no_dead_strip plt_Microsoft_Xna_Framework_Input_Touch_TouchPanel_GetState
plt_Microsoft_Xna_Framework_Input_Touch_TouchPanel_GetState:
_p_60:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3128]
br x16
.word 4427
	.no_dead_strip plt_Microsoft_Xna_Framework_Input_Touch_TouchCollection_get_Count
plt_Microsoft_Xna_Framework_Input_Touch_TouchCollection_get_Count:
_p_61:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3136]
br x16
.word 4432
	.no_dead_strip plt_Microsoft_Xna_Framework_Input_Touch_TouchCollection_get_Item_int
plt_Microsoft_Xna_Framework_Input_Touch_TouchCollection_get_Item_int:
_p_62:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3144]
br x16
.word 4437
	.no_dead_strip plt_Microsoft_Xna_Framework_Input_Touch_TouchLocation_get_Position
plt_Microsoft_Xna_Framework_Input_Touch_TouchLocation_get_Position:
_p_63:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3152]
br x16
.word 4442
	.no_dead_strip plt_Microsoft_Xna_Framework_Point__ctor_int_int
plt_Microsoft_Xna_Framework_Point__ctor_int_int:
_p_64:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3160]
br x16
.word 4447
	.no_dead_strip plt_TheAdventuresOf_Screen_GetScaledTouchInput_Microsoft_Xna_Framework_Point
plt_TheAdventuresOf_Screen_GetScaledTouchInput_Microsoft_Xna_Framework_Point:
_p_65:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3168]
br x16
.word 4452
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_Add_Microsoft_Xna_Framework_Point
plt_System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_Add_Microsoft_Xna_Framework_Point:
_p_66:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3176]
br x16
.word 4454
	.no_dead_strip plt_Microsoft_Xna_Framework_Matrix_Invert_Microsoft_Xna_Framework_Matrix
plt_Microsoft_Xna_Framework_Matrix_Invert_Microsoft_Xna_Framework_Matrix:
_p_67:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3184]
br x16
.word 4465
	.no_dead_strip plt_Microsoft_Xna_Framework_Point_ToVector2
plt_Microsoft_Xna_Framework_Point_ToVector2:
_p_68:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3192]
br x16
.word 4470
	.no_dead_strip plt_Microsoft_Xna_Framework_Vector2_Transform_Microsoft_Xna_Framework_Vector2_Microsoft_Xna_Framework_Matrix
plt_Microsoft_Xna_Framework_Vector2_Transform_Microsoft_Xna_Framework_Vector2_Microsoft_Xna_Framework_Matrix:
_p_69:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3200]
br x16
.word 4475
	.no_dead_strip plt_Microsoft_Xna_Framework_Vector2_ToPoint
plt_Microsoft_Xna_Framework_Vector2_ToPoint:
_p_70:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3208]
br x16
.word 4480
	.no_dead_strip plt_Microsoft_Xna_Framework_Color_get_White
plt_Microsoft_Xna_Framework_Color_get_White:
_p_71:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3216]
br x16
.word 4485
	.no_dead_strip plt_Microsoft_Xna_Framework_Vector2__ctor_single_single
plt_Microsoft_Xna_Framework_Vector2__ctor_single_single:
_p_72:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3224]
br x16
.word 4490
	.no_dead_strip plt_Microsoft_Xna_Framework_Rectangle__ctor_int_int_int_int
plt_Microsoft_Xna_Framework_Rectangle__ctor_int_int_int_int:
_p_73:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3232]
br x16
.word 4495
	.no_dead_strip plt_TheAdventuresOf_Animation_get_CurrentRectangle
plt_TheAdventuresOf_Animation_get_CurrentRectangle:
_p_74:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3240]
br x16
.word 4500
	.no_dead_strip plt_System_Nullable_1_Microsoft_Xna_Framework_Vector2__ctor_Microsoft_Xna_Framework_Vector2
plt_System_Nullable_1_Microsoft_Xna_Framework_Vector2__ctor_Microsoft_Xna_Framework_Vector2:
_p_75:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3248]
br x16
.word 4502
	.no_dead_strip plt_System_Nullable_1_Microsoft_Xna_Framework_Rectangle__ctor_Microsoft_Xna_Framework_Rectangle
plt_System_Nullable_1_Microsoft_Xna_Framework_Rectangle__ctor_Microsoft_Xna_Framework_Rectangle:
_p_76:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3256]
br x16
.word 4513
	.no_dead_strip plt_System_Nullable_1_Microsoft_Xna_Framework_Color__ctor_Microsoft_Xna_Framework_Color
plt_System_Nullable_1_Microsoft_Xna_Framework_Color__ctor_Microsoft_Xna_Framework_Color:
_p_77:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3264]
br x16
.word 4524
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_SpriteBatch_Draw_Microsoft_Xna_Framework_Graphics_Texture2D_System_Nullable_1_Microsoft_Xna_Framework_Vector2_System_Nullable_1_Microsoft_Xna_Framework_Rectangle_System_Nullable_1_Microsoft_Xna_Framework_Rectangle_System_Nullable_1_Microsoft_Xna_Framework_Vector2_single_System_Nullable_1_Microsoft_Xna_Framework_Vector2_System_Nullable_1_Microsoft_Xna_Framework_Color_Microsoft_Xna_Framework_Graphics_SpriteEffects_single
plt_Microsoft_Xna_Framework_Graphics_SpriteBatch_Draw_Microsoft_Xna_Framework_Graphics_Texture2D_System_Nullable_1_Microsoft_Xna_Framework_Vector2_System_Nullable_1_Microsoft_Xna_Framework_Rectangle_System_Nullable_1_Microsoft_Xna_Framework_Rectangle_System_Nullable_1_Microsoft_Xna_Framework_Vector2_single_System_Nullable_1_Microsoft_Xna_Framework_Vector2_System_Nullable_1_Microsoft_Xna_Framework_Color_Microsoft_Xna_Framework_Graphics_SpriteEffects_single:
_p_78:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3272]
br x16
.word 4535
	.no_dead_strip plt_Microsoft_Xna_Framework_GameTime_get_ElapsedGameTime
plt_Microsoft_Xna_Framework_GameTime_get_ElapsedGameTime:
_p_79:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3280]
br x16
.word 4540
	.no_dead_strip plt_System_TimeSpan_get_TotalSeconds
plt_System_TimeSpan_get_TotalSeconds:
_p_80:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3288]
br x16
.word 4545
	.no_dead_strip plt_single_ToString
plt_single_ToString:
_p_81:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3296]
br x16
.word 4550
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_SpriteBatch_DrawString_Microsoft_Xna_Framework_Graphics_SpriteFont_string_Microsoft_Xna_Framework_Vector2_Microsoft_Xna_Framework_Color
plt_Microsoft_Xna_Framework_Graphics_SpriteBatch_DrawString_Microsoft_Xna_Framework_Graphics_SpriteFont_string_Microsoft_Xna_Framework_Vector2_Microsoft_Xna_Framework_Color:
_p_82:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3304]
br x16
.word 4555
	.no_dead_strip plt_System_Collections_Generic_List_1_TheAdventuresOf_AnimationFrame__ctor
plt_System_Collections_Generic_List_1_TheAdventuresOf_AnimationFrame__ctor:
_p_83:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3312]
br x16
.word 4560
	.no_dead_strip plt_System_TimeSpan_FromSeconds_double
plt_System_TimeSpan_FromSeconds_double:
_p_84:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3320]
br x16
.word 4571
	.no_dead_strip plt_System_Collections_Generic_List_1_TheAdventuresOf_AnimationFrame_GetEnumerator
plt_System_Collections_Generic_List_1_TheAdventuresOf_AnimationFrame_GetEnumerator:
_p_85:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3328]
br x16
.word 4576
	.no_dead_strip plt_System_Collections_Generic_List_1_Enumerator_TheAdventuresOf_AnimationFrame_get_Current
plt_System_Collections_Generic_List_1_Enumerator_TheAdventuresOf_AnimationFrame_get_Current:
_p_86:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3336]
br x16
.word 4587
	.no_dead_strip plt_TheAdventuresOf_AnimationFrame_get_duration
plt_TheAdventuresOf_AnimationFrame_get_duration:
_p_87:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3344]
br x16
.word 4598
	.no_dead_strip plt_System_TimeSpan_op_Addition_System_TimeSpan_System_TimeSpan
plt_System_TimeSpan_op_Addition_System_TimeSpan_System_TimeSpan:
_p_88:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3352]
br x16
.word 4600
	.no_dead_strip plt_System_TimeSpan_op_GreaterThanOrEqual_System_TimeSpan_System_TimeSpan
plt_System_TimeSpan_op_GreaterThanOrEqual_System_TimeSpan_System_TimeSpan:
_p_89:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3360]
br x16
.word 4605
	.no_dead_strip plt_System_Collections_Generic_List_1_Enumerator_TheAdventuresOf_AnimationFrame_MoveNext
plt_System_Collections_Generic_List_1_Enumerator_TheAdventuresOf_AnimationFrame_MoveNext:
_p_90:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3368]
br x16
.word 4610
	.no_dead_strip plt_System_Collections_Generic_List_1_Enumerator_TheAdventuresOf_AnimationFrame_Dispose
plt_System_Collections_Generic_List_1_Enumerator_TheAdventuresOf_AnimationFrame_Dispose:
_p_91:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3376]
br x16
.word 4621
	.no_dead_strip plt_System_Linq_Enumerable_LastOrDefault_TheAdventuresOf_AnimationFrame_System_Collections_Generic_IEnumerable_1_TheAdventuresOf_AnimationFrame
plt_System_Linq_Enumerable_LastOrDefault_TheAdventuresOf_AnimationFrame_System_Collections_Generic_IEnumerable_1_TheAdventuresOf_AnimationFrame:
_p_92:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3384]
br x16
.word 4641
	.no_dead_strip plt_TheAdventuresOf_AnimationFrame_get_sourceRectangle
plt_TheAdventuresOf_AnimationFrame_get_sourceRectangle:
_p_93:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3392]
br x16
.word 4653
	.no_dead_strip plt_Microsoft_Xna_Framework_Rectangle_get_Empty
plt_Microsoft_Xna_Framework_Rectangle_get_Empty:
_p_94:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3400]
br x16
.word 4655
	.no_dead_strip plt_TheAdventuresOf_AnimationFrame__ctor
plt_TheAdventuresOf_AnimationFrame__ctor:
_p_95:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3408]
br x16
.word 4660
	.no_dead_strip plt_TheAdventuresOf_AnimationFrame_set_sourceRectangle_Microsoft_Xna_Framework_Rectangle
plt_TheAdventuresOf_AnimationFrame_set_sourceRectangle_Microsoft_Xna_Framework_Rectangle:
_p_96:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3416]
br x16
.word 4662
	.no_dead_strip plt_TheAdventuresOf_AnimationFrame_set_duration_System_TimeSpan
plt_TheAdventuresOf_AnimationFrame_set_duration_System_TimeSpan:
_p_97:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3424]
br x16
.word 4664
	.no_dead_strip plt_System_Collections_Generic_List_1_TheAdventuresOf_AnimationFrame_Add_TheAdventuresOf_AnimationFrame
plt_System_Collections_Generic_List_1_TheAdventuresOf_AnimationFrame_Add_TheAdventuresOf_AnimationFrame:
_p_98:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3432]
br x16
.word 4666
	.no_dead_strip plt_TheAdventuresOf_Animation_CalculateAnimationDuration
plt_TheAdventuresOf_Animation_CalculateAnimationDuration:
_p_99:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3440]
br x16
.word 4677
	.no_dead_strip plt__jit_icall___emul_frem
plt__jit_icall___emul_frem:
_p_100:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3448]
br x16
.word 4679
	.no_dead_strip plt_TheAdventuresOf_Button__ctor_single_single_single_single
plt_TheAdventuresOf_Button__ctor_single_single_single_single:
_p_101:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3456]
br x16
.word 4693
	.no_dead_strip plt_TheAdventuresOf_Button_IsPressed_Microsoft_Xna_Framework_Point
plt_TheAdventuresOf_Button_IsPressed_Microsoft_Xna_Framework_Point:
_p_102:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3464]
br x16
.word 4695
	.no_dead_strip plt_TheAdventuresOf_Button_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D_single_Microsoft_Xna_Framework_Graphics_SpriteEffects
plt_TheAdventuresOf_Button_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D_single_Microsoft_Xna_Framework_Graphics_SpriteEffects:
_p_103:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3472]
br x16
.word 4697
	.no_dead_strip plt_TheAdventuresOf_Button_InitializeButton
plt_TheAdventuresOf_Button_InitializeButton:
_p_104:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3480]
br x16
.word 4699
	.no_dead_strip plt_TheAdventuresOf_Button_InitializeBounds
plt_TheAdventuresOf_Button_InitializeBounds:
_p_105:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3488]
br x16
.word 4701
	.no_dead_strip plt_Microsoft_Xna_Framework_Rectangle_Contains_Microsoft_Xna_Framework_Point
plt_Microsoft_Xna_Framework_Rectangle_Contains_Microsoft_Xna_Framework_Point:
_p_106:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3496]
br x16
.word 4703
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_SpriteBatch_Draw_Microsoft_Xna_Framework_Graphics_Texture2D_Microsoft_Xna_Framework_Vector2_System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Microsoft_Xna_Framework_Color_single_Microsoft_Xna_Framework_Vector2_single_Microsoft_Xna_Framework_Graphics_SpriteEffects_single
plt_Microsoft_Xna_Framework_Graphics_SpriteBatch_Draw_Microsoft_Xna_Framework_Graphics_Texture2D_Microsoft_Xna_Framework_Vector2_System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Microsoft_Xna_Framework_Color_single_Microsoft_Xna_Framework_Vector2_single_Microsoft_Xna_Framework_Graphics_SpriteEffects_single:
_p_107:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3504]
br x16
.word 4708
	.no_dead_strip plt_Microsoft_Xna_Framework_Rectangle_Intersects_Microsoft_Xna_Framework_Rectangle
plt_Microsoft_Xna_Framework_Rectangle_Intersects_Microsoft_Xna_Framework_Rectangle:
_p_108:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3512]
br x16
.word 4713
	.no_dead_strip plt_TheAdventuresOf_Character__ctor
plt_TheAdventuresOf_Character__ctor:
_p_109:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3520]
br x16
.word 4718
	.no_dead_strip plt_TheAdventuresOf_Character_InitializeCharacter_single_single_int_int
plt_TheAdventuresOf_Character_InitializeCharacter_single_single_int_int:
_p_110:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3528]
br x16
.word 4720
	.no_dead_strip plt_TheAdventuresOf_Animation__ctor
plt_TheAdventuresOf_Animation__ctor:
_p_111:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3536]
br x16
.word 4722
	.no_dead_strip plt_TheAdventuresOf_Animation_AddFrame_Microsoft_Xna_Framework_Rectangle_System_TimeSpan
plt_TheAdventuresOf_Animation_AddFrame_Microsoft_Xna_Framework_Rectangle_System_TimeSpan:
_p_112:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3544]
br x16
.word 4724
	.no_dead_strip plt_TheAdventuresOf_Character_InitializeAnimation
plt_TheAdventuresOf_Character_InitializeAnimation:
_p_113:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3552]
br x16
.word 4726
	.no_dead_strip plt_TheAdventuresOf_Player_HandleJump_Microsoft_Xna_Framework_GameTime
plt_TheAdventuresOf_Player_HandleJump_Microsoft_Xna_Framework_GameTime:
_p_114:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3560]
br x16
.word 4728
	.no_dead_strip plt_TheAdventuresOf_Character_Update_Microsoft_Xna_Framework_GameTime_bool
plt_TheAdventuresOf_Character_Update_Microsoft_Xna_Framework_GameTime_bool:
_p_115:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3568]
br x16
.word 4730
	.no_dead_strip plt_TheAdventuresOf_Character_HandleLevelBoundCollision_int_int
plt_TheAdventuresOf_Character_HandleLevelBoundCollision_int_int:
_p_116:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3576]
br x16
.word 4732
	.no_dead_strip plt_TheAdventuresOf_Player_MoveSword_int
plt_TheAdventuresOf_Player_MoveSword_int:
_p_117:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3584]
br x16
.word 4734
	.no_dead_strip plt_TheAdventuresOf_Animation_Update_Microsoft_Xna_Framework_GameTime
plt_TheAdventuresOf_Animation_Update_Microsoft_Xna_Framework_GameTime:
_p_118:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3592]
br x16
.word 4736
	.no_dead_strip plt_TheAdventuresOf_Player_Jump_Microsoft_Xna_Framework_GameTime
plt_TheAdventuresOf_Player_Jump_Microsoft_Xna_Framework_GameTime:
_p_119:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3600]
br x16
.word 4738
	.no_dead_strip plt_TheAdventuresOf_Character_UpdateCharacterBounds
plt_TheAdventuresOf_Character_UpdateCharacterBounds:
_p_120:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3608]
br x16
.word 4740
	.no_dead_strip plt_TheAdventuresOf_Player_UpdateSwordBounds
plt_TheAdventuresOf_Player_UpdateSwordBounds:
_p_121:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3616]
br x16
.word 4742
	.no_dead_strip plt_string_Concat_object_object
plt_string_Concat_object_object:
_p_122:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3624]
br x16
.word 4744
	.no_dead_strip plt_TheAdventuresOf_Character_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
plt_TheAdventuresOf_Character_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D:
_p_123:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3632]
br x16
.word 4749
	.no_dead_strip plt_Microsoft_Xna_Framework_TitleContainer_OpenStream_string
plt_Microsoft_Xna_Framework_TitleContainer_OpenStream_string:
_p_124:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3640]
br x16
.word 4751
	.no_dead_strip plt_System_Xml_Linq_XDocument_Load_System_IO_Stream
plt_System_Xml_Linq_XDocument_Load_System_IO_Stream:
_p_125:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3648]
br x16
.word 4756
	.no_dead_strip plt_System_Xml_Linq_XName_op_Implicit_string
plt_System_Xml_Linq_XName_op_Implicit_string:
_p_126:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3656]
br x16
.word 4761
	.no_dead_strip plt_System_Xml_Linq_XContainer_Element_System_Xml_Linq_XName
plt_System_Xml_Linq_XContainer_Element_System_Xml_Linq_XName:
_p_127:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3664]
br x16
.word 4766
	.no_dead_strip plt_System_Xml_Linq_XElement_op_Explicit_System_Xml_Linq_XElement
plt_System_Xml_Linq_XElement_op_Explicit_System_Xml_Linq_XElement:
_p_128:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3672]
br x16
.word 4771
	.no_dead_strip plt_System_Xml_Linq_XElement_op_Explicit_System_Xml_Linq_XElement_0
plt_System_Xml_Linq_XElement_op_Explicit_System_Xml_Linq_XElement_0:
_p_129:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3680]
br x16
.word 4776
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_Texture2D_FromStream_Microsoft_Xna_Framework_Graphics_GraphicsDevice_System_IO_Stream
plt_Microsoft_Xna_Framework_Graphics_Texture2D_FromStream_Microsoft_Xna_Framework_Graphics_GraphicsDevice_System_IO_Stream:
_p_130:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3688]
br x16
.word 4781
	.no_dead_strip plt_Microsoft_Xna_Framework_Graphics_GraphicsResource_Dispose
plt_Microsoft_Xna_Framework_Graphics_GraphicsResource_Dispose:
_p_131:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3696]
br x16
.word 4786
	.no_dead_strip plt_System_Random__ctor
plt_System_Random__ctor:
_p_132:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3704]
br x16
.word 4791
	.no_dead_strip plt_TheAdventuresOf_Monster_RandomizeMovement
plt_TheAdventuresOf_Monster_RandomizeMovement:
_p_133:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3712]
br x16
.word 4796
	.no_dead_strip plt_TheAdventuresOf_Monster_HandleDelay_Microsoft_Xna_Framework_GameTime
plt_TheAdventuresOf_Monster_HandleDelay_Microsoft_Xna_Framework_GameTime:
_p_134:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3720]
br x16
.word 4798
	.no_dead_strip plt_TheAdventuresOf_Monster_HandleDeath_Microsoft_Xna_Framework_GameTime
plt_TheAdventuresOf_Monster_HandleDeath_Microsoft_Xna_Framework_GameTime:
_p_135:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3728]
br x16
.word 4800
	.no_dead_strip plt_System_TimeSpan_Add_System_TimeSpan
plt_System_TimeSpan_Add_System_TimeSpan:
_p_136:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3736]
br x16
.word 4802
	.no_dead_strip plt_TheAdventuresOf_Monster_ChooseRandomDirection
plt_TheAdventuresOf_Monster_ChooseRandomDirection:
_p_137:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3744]
br x16
.word 4807
	.no_dead_strip plt__jit_icall_mono_helper_ldstr_mscorlib
plt__jit_icall_mono_helper_ldstr_mscorlib:
_p_138:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3752]
br x16
.word 4809
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_139:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3760]
br x16
.word 4838
	.no_dead_strip plt_System_Nullable_1_Microsoft_Xna_Framework_Matrix_Unbox_object
plt_System_Nullable_1_Microsoft_Xna_Framework_Matrix_Unbox_object:
_p_140:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3768]
br x16
.word 4866
	.no_dead_strip plt_System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_System_Nullable_1_Microsoft_Xna_Framework_Matrix
plt_System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_System_Nullable_1_Microsoft_Xna_Framework_Matrix:
_p_141:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3776]
br x16
.word 4887
	.no_dead_strip plt_Microsoft_Xna_Framework_Matrix_Equals_object
plt_Microsoft_Xna_Framework_Matrix_Equals_object:
_p_142:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3784]
br x16
.word 4908
	.no_dead_strip plt_Microsoft_Xna_Framework_Matrix_GetHashCode
plt_Microsoft_Xna_Framework_Matrix_GetHashCode:
_p_143:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3792]
br x16
.word 4913
	.no_dead_strip plt_Microsoft_Xna_Framework_Matrix_ToString
plt_Microsoft_Xna_Framework_Matrix_ToString:
_p_144:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3800]
br x16
.word 4918
	.no_dead_strip plt_System_Array_InternalArray__get_Item_Microsoft_Xna_Framework_Point_int
plt_System_Array_InternalArray__get_Item_Microsoft_Xna_Framework_Point_int:
_p_145:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3808]
br x16
.word 4923
	.no_dead_strip plt_System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_get_Current
plt_System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_get_Current:
_p_146:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3816]
br x16
.word 4943
	.no_dead_strip plt_System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point__ctor_System_Array
plt_System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point__ctor_System_Array:
_p_147:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3824]
br x16
.word 4962
	.no_dead_strip plt_Locale_GetText_string
plt_Locale_GetText_string:
_p_148:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3832]
br x16
.word 4981
	.no_dead_strip plt_Microsoft_Xna_Framework_Point_Equals_object
plt_Microsoft_Xna_Framework_Point_Equals_object:
_p_149:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3840]
br x16
.word 4986
	.no_dead_strip plt_System_Array_Copy_System_Array_int_System_Array_int_int
plt_System_Array_Copy_System_Array_int_System_Array_int_int:
_p_150:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3848]
br x16
.word 4991
	.no_dead_strip plt_System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_CreateComparer
plt_System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_CreateComparer:
_p_151:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3856]
br x16
.word 4996
	.no_dead_strip plt_System_Type_op_Equality_System_Type_System_Type
plt_System_Type_op_Equality_System_Type_System_Type:
_p_152:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3864]
br x16
.word 5015
	.no_dead_strip plt_System_Collections_Generic_ByteEqualityComparer__ctor
plt_System_Collections_Generic_ByteEqualityComparer__ctor:
_p_153:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3872]
br x16
.word 5020
	.no_dead_strip plt_System_Collections_Generic_InternalStringComparer__ctor
plt_System_Collections_Generic_InternalStringComparer__ctor:
_p_154:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3880]
br x16
.word 5025
	.no_dead_strip plt_System_RuntimeType_CreateInstanceForAnotherGenericParameter_System_Type_System_RuntimeType
plt_System_RuntimeType_CreateInstanceForAnotherGenericParameter_System_Type_System_RuntimeType:
_p_155:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3888]
br x16
.word 5030
	.no_dead_strip plt__jit_icall_mono_array_new_specific
plt__jit_icall_mono_array_new_specific:
_p_156:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3896]
br x16
.word 5035
	.no_dead_strip plt_System_Enum_GetUnderlyingType_System_Type
plt_System_Enum_GetUnderlyingType_System_Type:
_p_157:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3904]
br x16
.word 5061
	.no_dead_strip plt_System_Type_GetTypeCode_System_Type
plt_System_Type_GetTypeCode_System_Type:
_p_158:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3912]
br x16
.word 5066
	.no_dead_strip plt_System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
plt_System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor:
_p_159:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3920]
br x16
.word 5071
	.no_dead_strip plt_System_ThrowHelper_ThrowArgumentException_System_ExceptionResource
plt_System_ThrowHelper_ThrowArgumentException_System_ExceptionResource:
_p_160:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3928]
br x16
.word 5090
	.no_dead_strip plt_System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
plt_System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point__ctor:
_p_161:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3936]
br x16
.word 5095
	.no_dead_strip plt_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point
plt_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point:
_p_162:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3944]
br x16
.word 5114
	.no_dead_strip plt_Microsoft_Xna_Framework_Point_GetHashCode
plt_Microsoft_Xna_Framework_Point_GetHashCode:
_p_163:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3952]
br x16
.word 5119
	.no_dead_strip plt__jit_icall_mono_thread_interruption_checkpoint
plt__jit_icall_mono_thread_interruption_checkpoint:
_p_164:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3960]
br x16
.word 5124
	.no_dead_strip plt_System_Nullable_1_Microsoft_Xna_Framework_Vector2_Unbox_object
plt_System_Nullable_1_Microsoft_Xna_Framework_Vector2_Unbox_object:
_p_165:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3968]
br x16
.word 5162
	.no_dead_strip plt_System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_System_Nullable_1_Microsoft_Xna_Framework_Vector2
plt_System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_System_Nullable_1_Microsoft_Xna_Framework_Vector2:
_p_166:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3976]
br x16
.word 5183
	.no_dead_strip plt_Microsoft_Xna_Framework_Vector2_Equals_object
plt_Microsoft_Xna_Framework_Vector2_Equals_object:
_p_167:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3984]
br x16
.word 5204
	.no_dead_strip plt_Microsoft_Xna_Framework_Vector2_GetHashCode
plt_Microsoft_Xna_Framework_Vector2_GetHashCode:
_p_168:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #3992]
br x16
.word 5209
	.no_dead_strip plt_Microsoft_Xna_Framework_Vector2_ToString
plt_Microsoft_Xna_Framework_Vector2_ToString:
_p_169:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #4000]
br x16
.word 5214
	.no_dead_strip plt_System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Unbox_object
plt_System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Unbox_object:
_p_170:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #4008]
br x16
.word 5219
	.no_dead_strip plt_System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_System_Nullable_1_Microsoft_Xna_Framework_Rectangle
plt_System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_System_Nullable_1_Microsoft_Xna_Framework_Rectangle:
_p_171:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #4016]
br x16
.word 5240
	.no_dead_strip plt_Microsoft_Xna_Framework_Rectangle_Equals_object
plt_Microsoft_Xna_Framework_Rectangle_Equals_object:
_p_172:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #4024]
br x16
.word 5261
	.no_dead_strip plt_Microsoft_Xna_Framework_Rectangle_GetHashCode
plt_Microsoft_Xna_Framework_Rectangle_GetHashCode:
_p_173:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #4032]
br x16
.word 5266
	.no_dead_strip plt_Microsoft_Xna_Framework_Rectangle_ToString
plt_Microsoft_Xna_Framework_Rectangle_ToString:
_p_174:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #4040]
br x16
.word 5271
	.no_dead_strip plt_System_Nullable_1_Microsoft_Xna_Framework_Color_Unbox_object
plt_System_Nullable_1_Microsoft_Xna_Framework_Color_Unbox_object:
_p_175:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #4048]
br x16
.word 5276
	.no_dead_strip plt_System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_System_Nullable_1_Microsoft_Xna_Framework_Color
plt_System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_System_Nullable_1_Microsoft_Xna_Framework_Color:
_p_176:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #4056]
br x16
.word 5297
	.no_dead_strip plt_Microsoft_Xna_Framework_Color_Equals_object
plt_Microsoft_Xna_Framework_Color_Equals_object:
_p_177:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #4064]
br x16
.word 5318
	.no_dead_strip plt_Microsoft_Xna_Framework_Color_GetHashCode
plt_Microsoft_Xna_Framework_Color_GetHashCode:
_p_178:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #4072]
br x16
.word 5323
	.no_dead_strip plt_Microsoft_Xna_Framework_Color_ToString
plt_Microsoft_Xna_Framework_Color_ToString:
_p_179:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #4080]
br x16
.word 5328
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_180:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+0
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #4088]
br x16
.word 5361
	.no_dead_strip plt_System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
plt_System_Array_InternalEnumerator_1_T_REF__ctor_System_Array:
_p_181:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+4096
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #0]
br x16
.word 5369
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_182:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+4096
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #8]
br x16
.word 5407
	.no_dead_strip plt_System_ThrowHelper_ThrowArgumentOutOfRangeException
plt_System_ThrowHelper_ThrowArgumentOutOfRangeException:
_p_183:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+4096
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #16]
br x16
.word 5431
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_EnsureCapacity_int
plt_System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_EnsureCapacity_int:
_p_184:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+4096
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #24]
br x16
.word 5436
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_set_Capacity_int
plt_System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_set_Capacity_int:
_p_185:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+4096
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #32]
br x16
.word 5457
	.no_dead_strip plt_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_System_ExceptionResource
plt_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_System_ExceptionResource:
_p_186:
adrp x16, mono_aot_TheAdventuresOf_iOS_got@PAGE+4096
add x16, x16, mono_aot_TheAdventuresOf_iOS_got@PAGEOFF
ldr x16, [x16, #40]
br x16
.word 5478
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_TheAdventuresOf_iOS_got, 4144
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 1, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.section __TEXT, __const
	.align 2
name_0:
	.asciz "_unbox_trampoline_p"
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash
	.align 3
	.quad name_0
	.align 3
	.quad _unbox_trampoline_p

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "750C0565-0822-497E-AB14-4AC62B4558F8"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "TheAdventuresOf.iOS"
.data
	.align 3
_mono_aot_file_info:

	.long 131,0
	.align 3
	.quad mono_aot_TheAdventuresOf_iOS_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 331,4144,187,202,70,923871743,0,34958
	.long 128,8,8,10,0,14,40048,5080
	.long 4552,3464,0,4088,4504,3632,0,2544
	.long 312,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.globl _mono_aot_module_TheAdventuresOf_iOS_info
	.align 3
_mono_aot_module_TheAdventuresOf_iOS_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_3:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM4=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM5=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM6=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM6
LTDIE_4:

	.byte 8
	.asciz "_Flags"

	.byte 1
LDIFF_SYM7=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM7
	.byte 9
	.asciz "Disposed"

	.byte 1,9
	.asciz "NativeRef"

	.byte 2,9
	.asciz "IsDirectBinding"

	.byte 4,9
	.asciz "RegisteredToggleRef"

	.byte 8,9
	.asciz "InFinalizerQueue"

	.byte 16,9
	.asciz "HasManagedRef"

	.byte 32,0,7
	.asciz "_Flags"

LDIFF_SYM8=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM9=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM10=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM10
LTDIE_2:

	.byte 5
	.asciz "Foundation_NSObject"

	.byte 40,16
LDIFF_SYM11=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM12=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,35,16,6
	.asciz "class_handle"

LDIFF_SYM13=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 2,35,24,6
	.asciz "flags"

LDIFF_SYM14=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM14
	.byte 2,35,32,0,7
	.asciz "Foundation_NSObject"

LDIFF_SYM15=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM16=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM16
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM17=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_1:

	.byte 5
	.asciz "UIKit_UIApplicationDelegate"

	.byte 40,16
LDIFF_SYM18=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM18
	.byte 2,35,0,0,7
	.asciz "UIKit_UIApplicationDelegate"

LDIFF_SYM19=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM20=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM21=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_0:

	.byte 5
	.asciz "TheAdventuresOf_iOS_Program"

	.byte 40,16
LDIFF_SYM22=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM22
	.byte 2,35,0,0,7
	.asciz "TheAdventuresOf_iOS_Program"

LDIFF_SYM23=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM23
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM24=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM24
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM25=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2
	.asciz "TheAdventuresOf.iOS.Program:.ctor"
	.asciz "TheAdventuresOf_iOS_Program__ctor"

	.byte 0,0
	.quad TheAdventuresOf_iOS_Program__ctor
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM26=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM27=Lfde0_end - Lfde0_start
	.long LDIFF_SYM27
Lfde0_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_iOS_Program__ctor

LDIFF_SYM28=Lme_0 - TheAdventuresOf_iOS_Program__ctor
	.long LDIFF_SYM28
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.iOS.Program:RunGame"
	.asciz "TheAdventuresOf_iOS_Program_RunGame"

	.byte 1,27
	.quad TheAdventuresOf_iOS_Program_RunGame
	.quad Lme_1

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM29=Lfde1_end - Lfde1_start
	.long LDIFF_SYM29
Lfde1_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_iOS_Program_RunGame

LDIFF_SYM30=Lme_1 - TheAdventuresOf_iOS_Program_RunGame
	.long LDIFF_SYM30
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.iOS.Program:Main"
	.asciz "TheAdventuresOf_iOS_Program_Main_string__"

	.byte 1,39
	.quad TheAdventuresOf_iOS_Program_Main_string__
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "args"

LDIFF_SYM31=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM32=Lfde2_end - Lfde2_start
	.long LDIFF_SYM32
Lfde2_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_iOS_Program_Main_string__

LDIFF_SYM33=Lme_2 - TheAdventuresOf_iOS_Program_Main_string__
	.long LDIFF_SYM33
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_6:

	.byte 5
	.asciz "UIKit_UIResponder"

	.byte 40,16
LDIFF_SYM34=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,35,0,0,7
	.asciz "UIKit_UIResponder"

LDIFF_SYM35=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM36=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM37=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_5:

	.byte 5
	.asciz "UIKit_UIApplication"

	.byte 40,16
LDIFF_SYM38=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM38
	.byte 2,35,0,0,7
	.asciz "UIKit_UIApplication"

LDIFF_SYM39=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM40=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM41=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2
	.asciz "TheAdventuresOf.iOS.Program:FinishedLaunching"
	.asciz "TheAdventuresOf_iOS_Program_FinishedLaunching_UIKit_UIApplication"

	.byte 1,56
	.quad TheAdventuresOf_iOS_Program_FinishedLaunching_UIKit_UIApplication
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM42=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM42
	.byte 2,141,16,3
	.asciz "app"

LDIFF_SYM43=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM44=Lfde3_end - Lfde3_start
	.long LDIFF_SYM44
Lfde3_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_iOS_Program_FinishedLaunching_UIKit_UIApplication

LDIFF_SYM45=Lme_3 - TheAdventuresOf_iOS_Program_FinishedLaunching_UIKit_UIApplication
	.long LDIFF_SYM45
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_11:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM46=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM46
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM47=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM47
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM48=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM48
LTDIE_10:

	.byte 5
	.asciz "System_Collections_ObjectModel_Collection`1"

	.byte 24,16
LDIFF_SYM49=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,35,0,6
	.asciz "items"

LDIFF_SYM50=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,35,16,0,7
	.asciz "System_Collections_ObjectModel_Collection`1"

LDIFF_SYM51=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM51
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM52=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM52
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM53=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM53
LTDIE_17:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM54=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM55=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM55
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM56=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM56
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM57=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM57
LTDIE_16:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM58=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM59=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM59
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM60=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM61=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_15:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM62=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM63=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM63
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM64=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM64
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM65=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM65
LTDIE_19:

	.byte 5
	.asciz "System_Type"

	.byte 24,16
LDIFF_SYM66=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM67=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,16,0,7
	.asciz "System_Type"

LDIFF_SYM68=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM68
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM69=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM69
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM70=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM70
LTDIE_21:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM71=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM72=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM72
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM73=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM74=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM74
LTDIE_20:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM75=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM76=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM77=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM77
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM78=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM78
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM79=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM79
LTDIE_18:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM80=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM81=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM82=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM83=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM84=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM84
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM85=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM85
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM86=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM86
LTDIE_14:

	.byte 5
	.asciz "System_Delegate"

	.byte 104,16
LDIFF_SYM87=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM88=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM89=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 2,35,24,6
	.asciz "m_target"

LDIFF_SYM90=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM91=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM91
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM92=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 2,35,48,6
	.asciz "extra_arg"

LDIFF_SYM93=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2,35,56,6
	.asciz "method_code"

LDIFF_SYM94=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 2,35,64,6
	.asciz "method_info"

LDIFF_SYM95=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM95
	.byte 2,35,72,6
	.asciz "original_method_info"

LDIFF_SYM96=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 2,35,80,6
	.asciz "data"

LDIFF_SYM97=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 2,35,88,6
	.asciz "method_is_virtual"

LDIFF_SYM98=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 2,35,96,0,7
	.asciz "System_Delegate"

LDIFF_SYM99=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM99
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM100=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM100
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM101=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM101
LTDIE_13:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 112,16
LDIFF_SYM102=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM102
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM103=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,35,104,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM104=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM104
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM105=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM105
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM106=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM106
LTDIE_12:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM107=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM108=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM108
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM109=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM109
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM110=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM110
LTDIE_9:

	.byte 5
	.asciz "Microsoft_Xna_Framework_GameComponentCollection"

	.byte 40,16
LDIFF_SYM111=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,35,0,6
	.asciz "ComponentAdded"

LDIFF_SYM112=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,35,24,6
	.asciz "ComponentRemoved"

LDIFF_SYM113=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM113
	.byte 2,35,32,0,7
	.asciz "Microsoft_Xna_Framework_GameComponentCollection"

LDIFF_SYM114=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM115=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM115
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM116=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM116
LTDIE_24:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM117=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM118=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM119=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM119
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM120=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM120
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM121=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM121
LTDIE_25:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM122=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM122
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM123=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM123
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM124=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM124
LTDIE_26:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM125=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM126=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM126
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM127=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM127
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM128=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM128
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM129=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM129
LTDIE_27:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM130=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM131=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM132=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM132
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM133=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM133
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM134=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM134
LTDIE_23:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 72,16
LDIFF_SYM135=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM136=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM137=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM138=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,35,56,6
	.asciz "version"

LDIFF_SYM139=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,35,60,6
	.asciz "freeList"

LDIFF_SYM140=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 2,35,64,6
	.asciz "freeCount"

LDIFF_SYM141=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,35,68,6
	.asciz "comparer"

LDIFF_SYM142=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM143=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM144=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2,35,48,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM145=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM145
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM146=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM146
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM147=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM147
LTDIE_22:

	.byte 5
	.asciz "Microsoft_Xna_Framework_GameServiceContainer"

	.byte 24,16
LDIFF_SYM148=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,35,0,6
	.asciz "services"

LDIFF_SYM149=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 2,35,16,0,7
	.asciz "Microsoft_Xna_Framework_GameServiceContainer"

LDIFF_SYM150=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM151=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM152=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM152
LTDIE_29:

	.byte 17
	.asciz "System_IServiceProvider"

	.byte 16,7
	.asciz "System_IServiceProvider"

LDIFF_SYM153=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM153
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM154=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM154
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM155=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM155
LTDIE_30:

	.byte 17
	.asciz "Microsoft_Xna_Framework_Graphics_IGraphicsDeviceService"

	.byte 16,7
	.asciz "Microsoft_Xna_Framework_Graphics_IGraphicsDeviceService"

LDIFF_SYM156=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM156
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM157=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM157
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM158=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM158
LTDIE_32:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM159=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM159
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM160=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM160
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM161=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM161
LTDIE_33:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM162=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM163=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM164=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM164
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM165=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM165
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM166=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM166
LTDIE_34:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM167=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM168=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM169=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM169
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM170=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM170
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM171=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM171
LTDIE_31:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 72,16
LDIFF_SYM172=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM173=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM174=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM175=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 2,35,56,6
	.asciz "version"

LDIFF_SYM176=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 2,35,60,6
	.asciz "freeList"

LDIFF_SYM177=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 2,35,64,6
	.asciz "freeCount"

LDIFF_SYM178=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM178
	.byte 2,35,68,6
	.asciz "comparer"

LDIFF_SYM179=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM180=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM181=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 2,35,48,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM182=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM182
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM183=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM183
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM184=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM184
LTDIE_35:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM185=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM185
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM186=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM187=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM188=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM189=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM189
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM190=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM190
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM191=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM191
LTDIE_28:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Content_ContentManager"

	.byte 72,16
LDIFF_SYM192=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM192
	.byte 2,35,0,6
	.asciz "_rootDirectory"

LDIFF_SYM193=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 2,35,16,6
	.asciz "serviceProvider"

LDIFF_SYM194=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 2,35,24,6
	.asciz "graphicsDeviceService"

LDIFF_SYM195=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 2,35,32,6
	.asciz "loadedAssets"

LDIFF_SYM196=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 2,35,40,6
	.asciz "disposableAssets"

LDIFF_SYM197=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,35,48,6
	.asciz "disposed"

LDIFF_SYM198=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,35,64,6
	.asciz "scratchBuffer"

LDIFF_SYM199=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,56,0,7
	.asciz "Microsoft_Xna_Framework_Content_ContentManager"

LDIFF_SYM200=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM200
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM201=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM201
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM202=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM202
LTDIE_39:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM203=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM204=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM204
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM205=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM205
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM206=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM206
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM207=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM207
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM208=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM208
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM209=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM209
LTDIE_41:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM210=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM210
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM211=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM211
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM212=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM212
LTDIE_42:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM213=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM213
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM214=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM214
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM215=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM215
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM216=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM216
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM217=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM217
LTDIE_43:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM218=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM219=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM220=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM220
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM221=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM221
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM222=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM222
LTDIE_40:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 72,16
LDIFF_SYM223=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM223
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM224=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM225=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM226=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM226
	.byte 2,35,56,6
	.asciz "version"

LDIFF_SYM227=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 2,35,60,6
	.asciz "freeList"

LDIFF_SYM228=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM228
	.byte 2,35,64,6
	.asciz "freeCount"

LDIFF_SYM229=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM229
	.byte 2,35,68,6
	.asciz "comparer"

LDIFF_SYM230=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM230
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM231=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM231
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM232=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM232
	.byte 2,35,48,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM233=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM233
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM234=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM234
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM235=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM235
LTDIE_44:

	.byte 5
	.asciz "System_Collections_Generic_Queue`1"

	.byte 40,16
LDIFF_SYM236=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2,35,0,6
	.asciz "_array"

LDIFF_SYM237=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM237
	.byte 2,35,16,6
	.asciz "_head"

LDIFF_SYM238=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM238
	.byte 2,35,24,6
	.asciz "_tail"

LDIFF_SYM239=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM239
	.byte 2,35,28,6
	.asciz "_size"

LDIFF_SYM240=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM240
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM241=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM241
	.byte 2,35,36,0,7
	.asciz "System_Collections_Generic_Queue`1"

LDIFF_SYM242=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM242
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM243=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM243
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM244=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM244
LTDIE_45:

	.byte 8
	.asciz "Microsoft_Xna_Framework_DisplayOrientation"

	.byte 4
LDIFF_SYM245=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM245
	.byte 9
	.asciz "Default"

	.byte 0,9
	.asciz "LandscapeLeft"

	.byte 1,9
	.asciz "LandscapeRight"

	.byte 2,9
	.asciz "Portrait"

	.byte 4,9
	.asciz "PortraitDown"

	.byte 8,9
	.asciz "Unknown"

	.byte 16,0,7
	.asciz "Microsoft_Xna_Framework_DisplayOrientation"

LDIFF_SYM246=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM246
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM247=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM247
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM248=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM248
LTDIE_46:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Input_Touch_GestureType"

	.byte 4
LDIFF_SYM249=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM249
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "Tap"

	.byte 1,9
	.asciz "DragComplete"

	.byte 2,9
	.asciz "Flick"

	.byte 4,9
	.asciz "FreeDrag"

	.byte 8,9
	.asciz "Hold"

	.byte 16,9
	.asciz "HorizontalDrag"

	.byte 32,9
	.asciz "Pinch"

	.byte 192,0,9
	.asciz "PinchComplete"

	.byte 128,1,9
	.asciz "DoubleTap"

	.byte 128,2,9
	.asciz "VerticalDrag"

	.byte 128,4,0,7
	.asciz "Microsoft_Xna_Framework_Input_Touch_GestureType"

LDIFF_SYM250=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM250
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM251=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM251
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM252=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM252
LTDIE_38:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Input_Touch_TouchPanelState"

	.byte 208,1,16
LDIFF_SYM253=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM253
	.byte 2,35,0,6
	.asciz "_touchState"

LDIFF_SYM254=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM254
	.byte 2,35,16,6
	.asciz "_gestureState"

LDIFF_SYM255=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM255
	.byte 2,35,24,6
	.asciz "_touchScale"

LDIFF_SYM256=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 2,35,64,6
	.asciz "_displaySize"

LDIFF_SYM257=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,35,72,6
	.asciz "_nextTouchId"

LDIFF_SYM258=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 2,35,80,6
	.asciz "_touchIds"

LDIFF_SYM259=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM259
	.byte 2,35,32,6
	.asciz "GestureList"

LDIFF_SYM260=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM260
	.byte 2,35,40,6
	.asciz "Capabilities"

LDIFF_SYM261=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM261
	.byte 2,35,84,6
	.asciz "Window"

LDIFF_SYM262=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM262
	.byte 2,35,48,6
	.asciz "<WindowHandle>k__BackingField"

LDIFF_SYM263=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 2,35,96,6
	.asciz "<DisplayOrientation>k__BackingField"

LDIFF_SYM264=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM264
	.byte 2,35,104,6
	.asciz "<EnabledGestures>k__BackingField"

LDIFF_SYM265=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 2,35,108,6
	.asciz "<EnableMouseTouchPoint>k__BackingField"

LDIFF_SYM266=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM266
	.byte 2,35,112,6
	.asciz "<EnableMouseGestures>k__BackingField"

LDIFF_SYM267=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM267
	.byte 2,35,113,6
	.asciz "_pinchTouch"

LDIFF_SYM268=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM268
	.byte 2,35,56,6
	.asciz "_pinchGestureStarted"

LDIFF_SYM269=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 2,35,114,6
	.asciz "_tapDisabled"

LDIFF_SYM270=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM270
	.byte 2,35,115,6
	.asciz "_holdDisabled"

LDIFF_SYM271=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM271
	.byte 2,35,116,6
	.asciz "_lastTap"

LDIFF_SYM272=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM272
	.byte 2,35,120,6
	.asciz "_dragGestureStarted"

LDIFF_SYM273=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 3,35,200,1,0,7
	.asciz "Microsoft_Xna_Framework_Input_Touch_TouchPanelState"

LDIFF_SYM274=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM274
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM275=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM275
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM276=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM276
LTDIE_47:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM277=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM277
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM278=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM278
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM279=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM279
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM280=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM280
LTDIE_37:

	.byte 5
	.asciz "Microsoft_Xna_Framework_GameWindow"

	.byte 96,16
LDIFF_SYM281=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM281
	.byte 2,35,0,6
	.asciz "_allowAltF4"

LDIFF_SYM282=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM282
	.byte 2,35,56,6
	.asciz "_title"

LDIFF_SYM283=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM283
	.byte 2,35,16,6
	.asciz "MouseState"

LDIFF_SYM284=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 2,35,60,6
	.asciz "TouchPanelState"

LDIFF_SYM285=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM285
	.byte 2,35,24,6
	.asciz "ClientSizeChanged"

LDIFF_SYM286=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM286
	.byte 2,35,32,6
	.asciz "OrientationChanged"

LDIFF_SYM287=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM287
	.byte 2,35,40,6
	.asciz "ScreenDeviceNameChanged"

LDIFF_SYM288=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM288
	.byte 2,35,48,0,7
	.asciz "Microsoft_Xna_Framework_GameWindow"

LDIFF_SYM289=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM289
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM290=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM290
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM291=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM291
LTDIE_36:

	.byte 5
	.asciz "Microsoft_Xna_Framework_GamePlatform"

	.byte 72,16
LDIFF_SYM292=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM292
	.byte 2,35,0,6
	.asciz "_inactiveSleepTime"

LDIFF_SYM293=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM293
	.byte 2,35,56,6
	.asciz "_needsToResetElapsedTime"

LDIFF_SYM294=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 2,35,64,6
	.asciz "disposed"

LDIFF_SYM295=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM295
	.byte 2,35,65,6
	.asciz "_alreadyInFullScreenMode"

LDIFF_SYM296=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM296
	.byte 2,35,66,6
	.asciz "_alreadyInWindowedMode"

LDIFF_SYM297=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM297
	.byte 2,35,67,6
	.asciz "<Game>k__BackingField"

LDIFF_SYM298=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM298
	.byte 2,35,16,6
	.asciz "_isActive"

LDIFF_SYM299=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM299
	.byte 2,35,68,6
	.asciz "_isMouseVisible"

LDIFF_SYM300=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM300
	.byte 2,35,69,6
	.asciz "_window"

LDIFF_SYM301=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM301
	.byte 2,35,24,6
	.asciz "AsyncRunLoopEnded"

LDIFF_SYM302=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM302
	.byte 2,35,32,6
	.asciz "Activated"

LDIFF_SYM303=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM303
	.byte 2,35,40,6
	.asciz "Deactivated"

LDIFF_SYM304=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM304
	.byte 2,35,48,0,7
	.asciz "Microsoft_Xna_Framework_GamePlatform"

LDIFF_SYM305=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM305
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM306=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM306
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM307=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM307
LTDIE_49:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM308=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM308
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM309=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM309
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM310=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM310
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM311=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM311
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM312=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM312
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM313=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM313
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM314=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM314
LTDIE_50:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM315=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM315
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM316=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM316
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM317=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM317
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM318=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM318
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM319=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM319
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM320=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM320
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM321=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM321
LTDIE_51:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 112,16
LDIFF_SYM322=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM322
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM323=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM323
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM324=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM324
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM325=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM325
LTDIE_52:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM326=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM326
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM327=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM327
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM328=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM328
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM329=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM329
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM330=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM330
LTDIE_52_POINTER:

	.byte 13
LDIFF_SYM331=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM331
LTDIE_52_REFERENCE:

	.byte 14
LDIFF_SYM332=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM332
LTDIE_53:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 112,16
LDIFF_SYM333=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM333
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM334=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM334
LTDIE_53_POINTER:

	.byte 13
LDIFF_SYM335=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM335
LTDIE_53_REFERENCE:

	.byte 14
LDIFF_SYM336=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM336
LTDIE_54:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 112,16
LDIFF_SYM337=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM337
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM338=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM338
LTDIE_54_POINTER:

	.byte 13
LDIFF_SYM339=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM339
LTDIE_54_REFERENCE:

	.byte 14
LDIFF_SYM340=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM340
LTDIE_55:

	.byte 5
	.asciz "System_Action`2"

	.byte 112,16
LDIFF_SYM341=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM341
	.byte 2,35,0,0,7
	.asciz "System_Action`2"

LDIFF_SYM342=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM342
LTDIE_55_POINTER:

	.byte 13
LDIFF_SYM343=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM343
LTDIE_55_REFERENCE:

	.byte 14
LDIFF_SYM344=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM344
LTDIE_48:

	.byte 5
	.asciz "_SortingFilteringCollection`1"

	.byte 112,16
LDIFF_SYM345=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM346=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 2,35,16,6
	.asciz "_addJournal"

LDIFF_SYM347=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM347
	.byte 2,35,24,6
	.asciz "_addJournalSortComparison"

LDIFF_SYM348=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM348
	.byte 2,35,32,6
	.asciz "_removeJournal"

LDIFF_SYM349=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM349
	.byte 2,35,40,6
	.asciz "_cachedFilteredItems"

LDIFF_SYM350=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM350
	.byte 2,35,48,6
	.asciz "_shouldRebuildCache"

LDIFF_SYM351=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM351
	.byte 2,35,104,6
	.asciz "_filter"

LDIFF_SYM352=LTDIE_53_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM352
	.byte 2,35,56,6
	.asciz "_sort"

LDIFF_SYM353=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 2,35,64,6
	.asciz "_filterChangedSubscriber"

LDIFF_SYM354=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM354
	.byte 2,35,72,6
	.asciz "_filterChangedUnsubscriber"

LDIFF_SYM355=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM355
	.byte 2,35,80,6
	.asciz "_sortChangedSubscriber"

LDIFF_SYM356=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM356
	.byte 2,35,88,6
	.asciz "_sortChangedUnsubscriber"

LDIFF_SYM357=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM357
	.byte 2,35,96,0,7
	.asciz "_SortingFilteringCollection`1"

LDIFF_SYM358=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM358
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM359=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM359
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM360=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM360
LTDIE_57:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM361=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM361
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM362=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM362
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM363=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM363
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM364=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM364
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM365=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM365
LTDIE_57_POINTER:

	.byte 13
LDIFF_SYM366=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM366
LTDIE_57_REFERENCE:

	.byte 14
LDIFF_SYM367=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM367
LTDIE_58:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM368=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM368
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM369=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM369
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM370=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM370
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM371=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM371
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM372=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM372
LTDIE_58_POINTER:

	.byte 13
LDIFF_SYM373=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM373
LTDIE_58_REFERENCE:

	.byte 14
LDIFF_SYM374=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM374
LTDIE_59:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 112,16
LDIFF_SYM375=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM375
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM376=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM376
LTDIE_59_POINTER:

	.byte 13
LDIFF_SYM377=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM377
LTDIE_59_REFERENCE:

	.byte 14
LDIFF_SYM378=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM378
LTDIE_60:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 112,16
LDIFF_SYM379=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM379
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM380=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM380
LTDIE_60_POINTER:

	.byte 13
LDIFF_SYM381=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM381
LTDIE_60_REFERENCE:

	.byte 14
LDIFF_SYM382=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM382
LTDIE_61:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 112,16
LDIFF_SYM383=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM383
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM384=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM384
LTDIE_61_POINTER:

	.byte 13
LDIFF_SYM385=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM385
LTDIE_61_REFERENCE:

	.byte 14
LDIFF_SYM386=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM386
LTDIE_62:

	.byte 5
	.asciz "System_Action`2"

	.byte 112,16
LDIFF_SYM387=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM387
	.byte 2,35,0,0,7
	.asciz "System_Action`2"

LDIFF_SYM388=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM388
LTDIE_62_POINTER:

	.byte 13
LDIFF_SYM389=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM389
LTDIE_62_REFERENCE:

	.byte 14
LDIFF_SYM390=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM390
LTDIE_56:

	.byte 5
	.asciz "_SortingFilteringCollection`1"

	.byte 112,16
LDIFF_SYM391=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM391
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM392=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM392
	.byte 2,35,16,6
	.asciz "_addJournal"

LDIFF_SYM393=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM393
	.byte 2,35,24,6
	.asciz "_addJournalSortComparison"

LDIFF_SYM394=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 2,35,32,6
	.asciz "_removeJournal"

LDIFF_SYM395=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM395
	.byte 2,35,40,6
	.asciz "_cachedFilteredItems"

LDIFF_SYM396=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM396
	.byte 2,35,48,6
	.asciz "_shouldRebuildCache"

LDIFF_SYM397=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM397
	.byte 2,35,104,6
	.asciz "_filter"

LDIFF_SYM398=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM398
	.byte 2,35,56,6
	.asciz "_sort"

LDIFF_SYM399=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM399
	.byte 2,35,64,6
	.asciz "_filterChangedSubscriber"

LDIFF_SYM400=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM400
	.byte 2,35,72,6
	.asciz "_filterChangedUnsubscriber"

LDIFF_SYM401=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM401
	.byte 2,35,80,6
	.asciz "_sortChangedSubscriber"

LDIFF_SYM402=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM402
	.byte 2,35,88,6
	.asciz "_sortChangedUnsubscriber"

LDIFF_SYM403=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM403
	.byte 2,35,96,0,7
	.asciz "_SortingFilteringCollection`1"

LDIFF_SYM404=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM404
LTDIE_56_POINTER:

	.byte 13
LDIFF_SYM405=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM405
LTDIE_56_REFERENCE:

	.byte 14
LDIFF_SYM406=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM406
LTDIE_63:

	.byte 17
	.asciz "Microsoft_Xna_Framework_IGraphicsDeviceManager"

	.byte 16,7
	.asciz "Microsoft_Xna_Framework_IGraphicsDeviceManager"

LDIFF_SYM407=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM407
LTDIE_63_POINTER:

	.byte 13
LDIFF_SYM408=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM408
LTDIE_63_REFERENCE:

	.byte 14
LDIFF_SYM409=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM409
LTDIE_66:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM410=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM410
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM411=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM411
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM412=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM412
LTDIE_66_POINTER:

	.byte 13
LDIFF_SYM413=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM413
LTDIE_66_REFERENCE:

	.byte 14
LDIFF_SYM414=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM414
LTDIE_67:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM415=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM415
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM416=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM416
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM417=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM417
LTDIE_67_POINTER:

	.byte 13
LDIFF_SYM418=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM418
LTDIE_67_REFERENCE:

	.byte 14
LDIFF_SYM419=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM419
LTDIE_65:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 72,16
LDIFF_SYM420=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM420
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM421=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM421
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM422=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM422
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM423=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM423
	.byte 2,35,56,6
	.asciz "version"

LDIFF_SYM424=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM424
	.byte 2,35,60,6
	.asciz "freeList"

LDIFF_SYM425=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM425
	.byte 2,35,64,6
	.asciz "freeCount"

LDIFF_SYM426=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM426
	.byte 2,35,68,6
	.asciz "comparer"

LDIFF_SYM427=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM427
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM428=LTDIE_66_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM428
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM429=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM429
	.byte 2,35,48,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM430=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM430
LTDIE_65_POINTER:

	.byte 13
LDIFF_SYM431=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM431
LTDIE_65_REFERENCE:

	.byte 14
LDIFF_SYM432=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM432
LTDIE_64:

	.byte 5
	.asciz "Microsoft_Xna_Framework_LaunchParameters"

	.byte 72,16
LDIFF_SYM433=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM433
	.byte 2,35,0,0,7
	.asciz "Microsoft_Xna_Framework_LaunchParameters"

LDIFF_SYM434=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM434
LTDIE_64_POINTER:

	.byte 13
LDIFF_SYM435=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM435
LTDIE_64_REFERENCE:

	.byte 14
LDIFF_SYM436=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM436
LTDIE_68:

	.byte 5
	.asciz "Microsoft_Xna_Framework_GameTime"

	.byte 40,16
LDIFF_SYM437=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM437
	.byte 2,35,0,6
	.asciz "<TotalGameTime>k__BackingField"

LDIFF_SYM438=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM438
	.byte 2,35,16,6
	.asciz "<ElapsedGameTime>k__BackingField"

LDIFF_SYM439=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM439
	.byte 2,35,24,6
	.asciz "<IsRunningSlowly>k__BackingField"

LDIFF_SYM440=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM440
	.byte 2,35,32,0,7
	.asciz "Microsoft_Xna_Framework_GameTime"

LDIFF_SYM441=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM441
LTDIE_68_POINTER:

	.byte 13
LDIFF_SYM442=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM442
LTDIE_68_REFERENCE:

	.byte 14
LDIFF_SYM443=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM443
LTDIE_70:

	.byte 5
	.asciz "System_Int64"

	.byte 24,16
LDIFF_SYM444=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM444
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM445=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM445
	.byte 2,35,16,0,7
	.asciz "System_Int64"

LDIFF_SYM446=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM446
LTDIE_70_POINTER:

	.byte 13
LDIFF_SYM447=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM447
LTDIE_70_REFERENCE:

	.byte 14
LDIFF_SYM448=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM448
LTDIE_69:

	.byte 5
	.asciz "System_Diagnostics_Stopwatch"

	.byte 40,16
LDIFF_SYM449=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM449
	.byte 2,35,0,6
	.asciz "elapsed"

LDIFF_SYM450=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM450
	.byte 2,35,16,6
	.asciz "started"

LDIFF_SYM451=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM451
	.byte 2,35,24,6
	.asciz "is_running"

LDIFF_SYM452=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM452
	.byte 2,35,32,0,7
	.asciz "System_Diagnostics_Stopwatch"

LDIFF_SYM453=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM453
LTDIE_69_POINTER:

	.byte 13
LDIFF_SYM454=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM454
LTDIE_69_REFERENCE:

	.byte 14
LDIFF_SYM455=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM455
LTDIE_8:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Game"

	.byte 200,1,16
LDIFF_SYM456=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM456
	.byte 2,35,0,6
	.asciz "_components"

LDIFF_SYM457=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM457
	.byte 2,35,16,6
	.asciz "_services"

LDIFF_SYM458=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM458
	.byte 2,35,24,6
	.asciz "_content"

LDIFF_SYM459=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM459
	.byte 2,35,32,6
	.asciz "Platform"

LDIFF_SYM460=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM460
	.byte 2,35,40,6
	.asciz "_drawables"

LDIFF_SYM461=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM461
	.byte 2,35,48,6
	.asciz "_updateables"

LDIFF_SYM462=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 2,35,56,6
	.asciz "_graphicsDeviceManager"

LDIFF_SYM463=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM463
	.byte 2,35,64,6
	.asciz "_graphicsDeviceService"

LDIFF_SYM464=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM464
	.byte 2,35,72,6
	.asciz "_initialized"

LDIFF_SYM465=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM465
	.byte 3,35,136,1,6
	.asciz "_isFixedTimeStep"

LDIFF_SYM466=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM466
	.byte 3,35,137,1,6
	.asciz "_targetElapsedTime"

LDIFF_SYM467=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM467
	.byte 3,35,144,1,6
	.asciz "_inactiveSleepTime"

LDIFF_SYM468=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM468
	.byte 3,35,152,1,6
	.asciz "_maxElapsedTime"

LDIFF_SYM469=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM469
	.byte 3,35,160,1,6
	.asciz "_suppressDraw"

LDIFF_SYM470=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM470
	.byte 3,35,168,1,6
	.asciz "_isDisposed"

LDIFF_SYM471=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM471
	.byte 3,35,169,1,6
	.asciz "<LaunchParameters>k__BackingField"

LDIFF_SYM472=LTDIE_64_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM472
	.byte 2,35,80,6
	.asciz "Activated"

LDIFF_SYM473=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM473
	.byte 2,35,88,6
	.asciz "Deactivated"

LDIFF_SYM474=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM474
	.byte 2,35,96,6
	.asciz "Disposed"

LDIFF_SYM475=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM475
	.byte 2,35,104,6
	.asciz "Exiting"

LDIFF_SYM476=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM476
	.byte 2,35,112,6
	.asciz "_accumulatedElapsedTime"

LDIFF_SYM477=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM477
	.byte 3,35,176,1,6
	.asciz "_gameTime"

LDIFF_SYM478=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM478
	.byte 2,35,120,6
	.asciz "_gameTimer"

LDIFF_SYM479=LTDIE_69_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 3,35,128,1,6
	.asciz "_previousTicks"

LDIFF_SYM480=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM480
	.byte 3,35,184,1,6
	.asciz "_updateFrameLag"

LDIFF_SYM481=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM481
	.byte 3,35,192,1,0,7
	.asciz "Microsoft_Xna_Framework_Game"

LDIFF_SYM482=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM482
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM483=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM483
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM484=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM484
LTDIE_73:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_GraphicsProfile"

	.byte 4
LDIFF_SYM485=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM485
	.byte 9
	.asciz "Reach"

	.byte 0,9
	.asciz "HiDef"

	.byte 1,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_GraphicsProfile"

LDIFF_SYM486=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM486
LTDIE_73_POINTER:

	.byte 13
LDIFF_SYM487=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM487
LTDIE_73_REFERENCE:

	.byte 14
LDIFF_SYM488=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM488
LTDIE_76:

	.byte 5
	.asciz "System_WeakReference"

	.byte 24,16
LDIFF_SYM489=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM489
	.byte 2,35,0,6
	.asciz "isLongReference"

LDIFF_SYM490=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM490
	.byte 2,35,16,6
	.asciz "gcHandle"

LDIFF_SYM491=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM491
	.byte 2,35,20,0,7
	.asciz "System_WeakReference"

LDIFF_SYM492=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM492
LTDIE_76_POINTER:

	.byte 13
LDIFF_SYM493=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM493
LTDIE_76_REFERENCE:

	.byte 14
LDIFF_SYM494=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM494
LTDIE_75:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_GraphicsResource"

	.byte 64,16
LDIFF_SYM495=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM495
	.byte 2,35,0,6
	.asciz "disposed"

LDIFF_SYM496=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM496
	.byte 2,35,56,6
	.asciz "graphicsDevice"

LDIFF_SYM497=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM497
	.byte 2,35,16,6
	.asciz "_selfReference"

LDIFF_SYM498=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM498
	.byte 2,35,24,6
	.asciz "Disposing"

LDIFF_SYM499=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM499
	.byte 2,35,32,6
	.asciz "<Name>k__BackingField"

LDIFF_SYM500=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM500
	.byte 2,35,40,6
	.asciz "<Tag>k__BackingField"

LDIFF_SYM501=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM501
	.byte 2,35,48,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_GraphicsResource"

LDIFF_SYM502=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM502
LTDIE_75_POINTER:

	.byte 13
LDIFF_SYM503=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM503
LTDIE_75_REFERENCE:

	.byte 14
LDIFF_SYM504=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM504
LTDIE_74:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_BlendState"

	.byte 88,16
LDIFF_SYM505=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM505
	.byte 2,35,0,6
	.asciz "_targetBlendState"

LDIFF_SYM506=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM506
	.byte 2,35,64,6
	.asciz "_defaultStateObject"

LDIFF_SYM507=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM507
	.byte 2,35,72,6
	.asciz "_blendFactor"

LDIFF_SYM508=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM508
	.byte 2,35,76,6
	.asciz "_multiSampleMask"

LDIFF_SYM509=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM509
	.byte 2,35,80,6
	.asciz "_independentBlendEnable"

LDIFF_SYM510=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM510
	.byte 2,35,84,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_BlendState"

LDIFF_SYM511=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM511
LTDIE_74_POINTER:

	.byte 13
LDIFF_SYM512=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM512
LTDIE_74_REFERENCE:

	.byte 14
LDIFF_SYM513=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM513
LTDIE_78:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_StencilOperation"

	.byte 4
LDIFF_SYM514=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM514
	.byte 9
	.asciz "Keep"

	.byte 0,9
	.asciz "Zero"

	.byte 1,9
	.asciz "Replace"

	.byte 2,9
	.asciz "Increment"

	.byte 3,9
	.asciz "Decrement"

	.byte 4,9
	.asciz "IncrementSaturation"

	.byte 5,9
	.asciz "DecrementSaturation"

	.byte 6,9
	.asciz "Invert"

	.byte 7,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_StencilOperation"

LDIFF_SYM515=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM515
LTDIE_78_POINTER:

	.byte 13
LDIFF_SYM516=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM516
LTDIE_78_REFERENCE:

	.byte 14
LDIFF_SYM517=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM517
LTDIE_79:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_CompareFunction"

	.byte 4
LDIFF_SYM518=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM518
	.byte 9
	.asciz "Always"

	.byte 0,9
	.asciz "Never"

	.byte 1,9
	.asciz "Less"

	.byte 2,9
	.asciz "LessEqual"

	.byte 3,9
	.asciz "Equal"

	.byte 4,9
	.asciz "GreaterEqual"

	.byte 5,9
	.asciz "Greater"

	.byte 6,9
	.asciz "NotEqual"

	.byte 7,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_CompareFunction"

LDIFF_SYM519=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM519
LTDIE_79_POINTER:

	.byte 13
LDIFF_SYM520=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM520
LTDIE_79_REFERENCE:

	.byte 14
LDIFF_SYM521=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM521
LTDIE_77:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_DepthStencilState"

	.byte 128,1,16
LDIFF_SYM522=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM522
	.byte 2,35,0,6
	.asciz "_defaultStateObject"

LDIFF_SYM523=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM523
	.byte 2,35,64,6
	.asciz "_depthBufferEnable"

LDIFF_SYM524=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM524
	.byte 2,35,65,6
	.asciz "_depthBufferWriteEnable"

LDIFF_SYM525=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM525
	.byte 2,35,66,6
	.asciz "_counterClockwiseStencilDepthBufferFail"

LDIFF_SYM526=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM526
	.byte 2,35,68,6
	.asciz "_counterClockwiseStencilFail"

LDIFF_SYM527=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM527
	.byte 2,35,72,6
	.asciz "_counterClockwiseStencilFunction"

LDIFF_SYM528=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM528
	.byte 2,35,76,6
	.asciz "_counterClockwiseStencilPass"

LDIFF_SYM529=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM529
	.byte 2,35,80,6
	.asciz "_depthBufferFunction"

LDIFF_SYM530=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM530
	.byte 2,35,84,6
	.asciz "_referenceStencil"

LDIFF_SYM531=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM531
	.byte 2,35,88,6
	.asciz "_stencilDepthBufferFail"

LDIFF_SYM532=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM532
	.byte 2,35,92,6
	.asciz "_stencilEnable"

LDIFF_SYM533=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM533
	.byte 2,35,96,6
	.asciz "_stencilFail"

LDIFF_SYM534=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM534
	.byte 2,35,100,6
	.asciz "_stencilFunction"

LDIFF_SYM535=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM535
	.byte 2,35,104,6
	.asciz "_stencilMask"

LDIFF_SYM536=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM536
	.byte 2,35,108,6
	.asciz "_stencilPass"

LDIFF_SYM537=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM537
	.byte 2,35,112,6
	.asciz "_stencilWriteMask"

LDIFF_SYM538=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM538
	.byte 2,35,116,6
	.asciz "_twoSidedStencilMode"

LDIFF_SYM539=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM539
	.byte 2,35,120,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_DepthStencilState"

LDIFF_SYM540=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM540
LTDIE_77_POINTER:

	.byte 13
LDIFF_SYM541=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM541
LTDIE_77_REFERENCE:

	.byte 14
LDIFF_SYM542=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM542
LTDIE_81:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_CullMode"

	.byte 4
LDIFF_SYM543=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM543
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "CullClockwiseFace"

	.byte 1,9
	.asciz "CullCounterClockwiseFace"

	.byte 2,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_CullMode"

LDIFF_SYM544=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM544
LTDIE_81_POINTER:

	.byte 13
LDIFF_SYM545=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM545
LTDIE_81_REFERENCE:

	.byte 14
LDIFF_SYM546=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM546
LTDIE_82:

	.byte 5
	.asciz "System_Single"

	.byte 20,16
LDIFF_SYM547=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM547
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM548=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM548
	.byte 2,35,16,0,7
	.asciz "System_Single"

LDIFF_SYM549=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM549
LTDIE_82_POINTER:

	.byte 13
LDIFF_SYM550=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM550
LTDIE_82_REFERENCE:

	.byte 14
LDIFF_SYM551=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM551
LTDIE_83:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_FillMode"

	.byte 4
LDIFF_SYM552=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM552
	.byte 9
	.asciz "Solid"

	.byte 0,9
	.asciz "WireFrame"

	.byte 1,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_FillMode"

LDIFF_SYM553=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM553
LTDIE_83_POINTER:

	.byte 13
LDIFF_SYM554=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM554
LTDIE_83_REFERENCE:

	.byte 14
LDIFF_SYM555=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM555
LTDIE_80:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_RasterizerState"

	.byte 96,16
LDIFF_SYM556=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM556
	.byte 2,35,0,6
	.asciz "_defaultStateObject"

LDIFF_SYM557=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM557
	.byte 2,35,64,6
	.asciz "_cullMode"

LDIFF_SYM558=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM558
	.byte 2,35,68,6
	.asciz "_depthBias"

LDIFF_SYM559=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM559
	.byte 2,35,72,6
	.asciz "_fillMode"

LDIFF_SYM560=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM560
	.byte 2,35,76,6
	.asciz "_multiSampleAntiAlias"

LDIFF_SYM561=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM561
	.byte 2,35,80,6
	.asciz "_scissorTestEnable"

LDIFF_SYM562=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM562
	.byte 2,35,81,6
	.asciz "_slopeScaleDepthBias"

LDIFF_SYM563=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM563
	.byte 2,35,84,6
	.asciz "_depthClipEnable"

LDIFF_SYM564=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM564
	.byte 2,35,88,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_RasterizerState"

LDIFF_SYM565=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM565
LTDIE_80_POINTER:

	.byte 13
LDIFF_SYM566=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM566
LTDIE_80_REFERENCE:

	.byte 14
LDIFF_SYM567=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM567
LTDIE_85:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_VertexInputLayout"

	.byte 40,16
LDIFF_SYM568=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM568
	.byte 2,35,0,6
	.asciz "<VertexDeclarations>k__BackingField"

LDIFF_SYM569=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM569
	.byte 2,35,16,6
	.asciz "<InstanceFrequencies>k__BackingField"

LDIFF_SYM570=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM570
	.byte 2,35,24,6
	.asciz "<Count>k__BackingField"

LDIFF_SYM571=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM571
	.byte 2,35,32,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_VertexInputLayout"

LDIFF_SYM572=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM572
LTDIE_85_POINTER:

	.byte 13
LDIFF_SYM573=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM573
LTDIE_85_REFERENCE:

	.byte 14
LDIFF_SYM574=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM574
LTDIE_84:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_VertexBufferBindings"

	.byte 56,16
LDIFF_SYM575=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM575
	.byte 2,35,0,6
	.asciz "_vertexBuffers"

LDIFF_SYM576=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM576
	.byte 2,35,40,6
	.asciz "_vertexOffsets"

LDIFF_SYM577=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM577
	.byte 2,35,48,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_VertexBufferBindings"

LDIFF_SYM578=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM578
LTDIE_84_POINTER:

	.byte 13
LDIFF_SYM579=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM579
LTDIE_84_REFERENCE:

	.byte 14
LDIFF_SYM580=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM580
LTDIE_87:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_BufferUsage"

	.byte 4
LDIFF_SYM581=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM581
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "WriteOnly"

	.byte 1,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_BufferUsage"

LDIFF_SYM582=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM582
LTDIE_87_POINTER:

	.byte 13
LDIFF_SYM583=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM583
LTDIE_87_REFERENCE:

	.byte 14
LDIFF_SYM584=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM584
LTDIE_88:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_IndexElementSize"

	.byte 4
LDIFF_SYM585=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM585
	.byte 9
	.asciz "SixteenBits"

	.byte 0,9
	.asciz "ThirtyTwoBits"

	.byte 1,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_IndexElementSize"

LDIFF_SYM586=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM586
LTDIE_88_POINTER:

	.byte 13
LDIFF_SYM587=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM587
LTDIE_88_REFERENCE:

	.byte 14
LDIFF_SYM588=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM588
LTDIE_89:

	.byte 5
	.asciz "System_UInt32"

	.byte 20,16
LDIFF_SYM589=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM589
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM590=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM590
	.byte 2,35,16,0,7
	.asciz "System_UInt32"

LDIFF_SYM591=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM591
LTDIE_89_POINTER:

	.byte 13
LDIFF_SYM592=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM592
LTDIE_89_REFERENCE:

	.byte 14
LDIFF_SYM593=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM593
LTDIE_86:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_IndexBuffer"

	.byte 88,16
LDIFF_SYM594=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM594
	.byte 2,35,0,6
	.asciz "_isDynamic"

LDIFF_SYM595=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM595
	.byte 2,35,64,6
	.asciz "<BufferUsage>k__BackingField"

LDIFF_SYM596=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM596
	.byte 2,35,68,6
	.asciz "<IndexCount>k__BackingField"

LDIFF_SYM597=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM597
	.byte 2,35,72,6
	.asciz "<IndexElementSize>k__BackingField"

LDIFF_SYM598=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM598
	.byte 2,35,76,6
	.asciz "ibo"

LDIFF_SYM599=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM599
	.byte 2,35,80,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_IndexBuffer"

LDIFF_SYM600=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM600
LTDIE_86_POINTER:

	.byte 13
LDIFF_SYM601=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM601
LTDIE_86_REFERENCE:

	.byte 14
LDIFF_SYM602=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM602
LTDIE_90:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_GraphicsCapabilities"

	.byte 40,16
LDIFF_SYM603=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM603
	.byte 2,35,0,6
	.asciz "<SupportsNonPowerOfTwo>k__BackingField"

LDIFF_SYM604=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM604
	.byte 2,35,16,6
	.asciz "<SupportsTextureFilterAnisotropic>k__BackingField"

LDIFF_SYM605=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM605
	.byte 2,35,17,6
	.asciz "<SupportsDepth24>k__BackingField"

LDIFF_SYM606=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM606
	.byte 2,35,18,6
	.asciz "<SupportsPackedDepthStencil>k__BackingField"

LDIFF_SYM607=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM607
	.byte 2,35,19,6
	.asciz "<SupportsDepthNonLinear>k__BackingField"

LDIFF_SYM608=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM608
	.byte 2,35,20,6
	.asciz "<SupportsDxt1>k__BackingField"

LDIFF_SYM609=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM609
	.byte 2,35,21,6
	.asciz "<SupportsS3tc>k__BackingField"

LDIFF_SYM610=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM610
	.byte 2,35,22,6
	.asciz "<SupportsPvrtc>k__BackingField"

LDIFF_SYM611=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM611
	.byte 2,35,23,6
	.asciz "<SupportsEtc1>k__BackingField"

LDIFF_SYM612=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM612
	.byte 2,35,24,6
	.asciz "<SupportsAtitc>k__BackingField"

LDIFF_SYM613=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM613
	.byte 2,35,25,6
	.asciz "<SupportsFramebufferObjectARB>k__BackingField"

LDIFF_SYM614=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM614
	.byte 2,35,26,6
	.asciz "<SupportsFramebufferObjectEXT>k__BackingField"

LDIFF_SYM615=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM615
	.byte 2,35,27,6
	.asciz "<MaxTextureAnisotropy>k__BackingField"

LDIFF_SYM616=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM616
	.byte 2,35,28,6
	.asciz "<SupportsTextureMaxLevel>k__BackingField"

LDIFF_SYM617=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM617
	.byte 2,35,32,6
	.asciz "<SupportsSRgb>k__BackingField"

LDIFF_SYM618=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM618
	.byte 2,35,33,6
	.asciz "<SupportsTextureArrays>k__BackingField"

LDIFF_SYM619=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM619
	.byte 2,35,34,6
	.asciz "<SupportsDepthClamp>k__BackingField"

LDIFF_SYM620=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM620
	.byte 2,35,35,6
	.asciz "<SupportsVertexTextures>k__BackingField"

LDIFF_SYM621=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM621
	.byte 2,35,36,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_GraphicsCapabilities"

LDIFF_SYM622=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM622
LTDIE_90_POINTER:

	.byte 13
LDIFF_SYM623=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM623
LTDIE_90_REFERENCE:

	.byte 14
LDIFF_SYM624=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM624
LTDIE_91:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_TextureCollection"

	.byte 48,16
LDIFF_SYM625=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM625
	.byte 2,35,0,6
	.asciz "_graphicsDevice"

LDIFF_SYM626=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM626
	.byte 2,35,16,6
	.asciz "_textures"

LDIFF_SYM627=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM627
	.byte 2,35,24,6
	.asciz "_applyToVertexStage"

LDIFF_SYM628=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM628
	.byte 2,35,40,6
	.asciz "_dirty"

LDIFF_SYM629=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM629
	.byte 2,35,44,6
	.asciz "_targets"

LDIFF_SYM630=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM630
	.byte 2,35,32,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_TextureCollection"

LDIFF_SYM631=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM631
LTDIE_91_POINTER:

	.byte 13
LDIFF_SYM632=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM632
LTDIE_91_REFERENCE:

	.byte 14
LDIFF_SYM633=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM633
LTDIE_94:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_TextureAddressMode"

	.byte 4
LDIFF_SYM634=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM634
	.byte 9
	.asciz "Wrap"

	.byte 0,9
	.asciz "Clamp"

	.byte 1,9
	.asciz "Mirror"

	.byte 2,9
	.asciz "Border"

	.byte 3,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_TextureAddressMode"

LDIFF_SYM635=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM635
LTDIE_94_POINTER:

	.byte 13
LDIFF_SYM636=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM636
LTDIE_94_REFERENCE:

	.byte 14
LDIFF_SYM637=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM637
LTDIE_95:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_TextureFilter"

	.byte 4
LDIFF_SYM638=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM638
	.byte 9
	.asciz "Linear"

	.byte 0,9
	.asciz "Point"

	.byte 1,9
	.asciz "Anisotropic"

	.byte 2,9
	.asciz "LinearMipPoint"

	.byte 3,9
	.asciz "PointMipLinear"

	.byte 4,9
	.asciz "MinLinearMagPointMipLinear"

	.byte 5,9
	.asciz "MinLinearMagPointMipPoint"

	.byte 6,9
	.asciz "MinPointMagLinearMipLinear"

	.byte 7,9
	.asciz "MinPointMagLinearMipPoint"

	.byte 8,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_TextureFilter"

LDIFF_SYM639=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM639
LTDIE_95_POINTER:

	.byte 13
LDIFF_SYM640=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM640
LTDIE_95_REFERENCE:

	.byte 14
LDIFF_SYM641=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM641
LTDIE_93:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_SamplerState"

	.byte 112,16
LDIFF_SYM642=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM642
	.byte 2,35,0,6
	.asciz "_defaultStateObject"

LDIFF_SYM643=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM643
	.byte 2,35,72,6
	.asciz "_addressU"

LDIFF_SYM644=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM644
	.byte 2,35,76,6
	.asciz "_addressV"

LDIFF_SYM645=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM645
	.byte 2,35,80,6
	.asciz "_addressW"

LDIFF_SYM646=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM646
	.byte 2,35,84,6
	.asciz "_borderColor"

LDIFF_SYM647=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM647
	.byte 2,35,88,6
	.asciz "_filter"

LDIFF_SYM648=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM648
	.byte 2,35,92,6
	.asciz "_maxAnisotropy"

LDIFF_SYM649=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM649
	.byte 2,35,96,6
	.asciz "_maxMipLevel"

LDIFF_SYM650=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM650
	.byte 2,35,100,6
	.asciz "_mipMapLevelOfDetailBias"

LDIFF_SYM651=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM651
	.byte 2,35,104,6
	.asciz "_comparisonFunction"

LDIFF_SYM652=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM652
	.byte 2,35,108,6
	.asciz "_openGLBorderColor"

LDIFF_SYM653=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM653
	.byte 2,35,64,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_SamplerState"

LDIFF_SYM654=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM654
LTDIE_93_POINTER:

	.byte 13
LDIFF_SYM655=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM655
LTDIE_93_REFERENCE:

	.byte 14
LDIFF_SYM656=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM656
LTDIE_92:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_SamplerStateCollection"

	.byte 96,16
LDIFF_SYM657=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM657
	.byte 2,35,0,6
	.asciz "_graphicsDevice"

LDIFF_SYM658=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM658
	.byte 2,35,16,6
	.asciz "_samplerStateAnisotropicClamp"

LDIFF_SYM659=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM659
	.byte 2,35,24,6
	.asciz "_samplerStateAnisotropicWrap"

LDIFF_SYM660=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM660
	.byte 2,35,32,6
	.asciz "_samplerStateLinearClamp"

LDIFF_SYM661=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM661
	.byte 2,35,40,6
	.asciz "_samplerStateLinearWrap"

LDIFF_SYM662=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM662
	.byte 2,35,48,6
	.asciz "_samplerStatePointClamp"

LDIFF_SYM663=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM663
	.byte 2,35,56,6
	.asciz "_samplerStatePointWrap"

LDIFF_SYM664=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM664
	.byte 2,35,64,6
	.asciz "_samplers"

LDIFF_SYM665=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM665
	.byte 2,35,72,6
	.asciz "_actualSamplers"

LDIFF_SYM666=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM666
	.byte 2,35,80,6
	.asciz "_applyToVertexStage"

LDIFF_SYM667=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM667
	.byte 2,35,88,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_SamplerStateCollection"

LDIFF_SYM668=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM668
LTDIE_92_POINTER:

	.byte 13
LDIFF_SYM669=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM669
LTDIE_92_REFERENCE:

	.byte 14
LDIFF_SYM670=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM670
LTDIE_97:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_ShaderStage"

	.byte 4
LDIFF_SYM671=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM671
	.byte 9
	.asciz "Vertex"

	.byte 0,9
	.asciz "Pixel"

	.byte 1,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_ShaderStage"

LDIFF_SYM672=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM672
LTDIE_97_POINTER:

	.byte 13
LDIFF_SYM673=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM673
LTDIE_97_REFERENCE:

	.byte 14
LDIFF_SYM674=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM674
LTDIE_96:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_Shader"

	.byte 112,16
LDIFF_SYM675=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM675
	.byte 2,35,0,6
	.asciz "<HashKey>k__BackingField"

LDIFF_SYM676=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM676
	.byte 2,35,96,6
	.asciz "<Samplers>k__BackingField"

LDIFF_SYM677=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM677
	.byte 2,35,64,6
	.asciz "<CBuffers>k__BackingField"

LDIFF_SYM678=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM678
	.byte 2,35,72,6
	.asciz "<Stage>k__BackingField"

LDIFF_SYM679=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM679
	.byte 2,35,100,6
	.asciz "_shaderHandle"

LDIFF_SYM680=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM680
	.byte 2,35,104,6
	.asciz "_glslCode"

LDIFF_SYM681=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM681
	.byte 2,35,80,6
	.asciz "_attributes"

LDIFF_SYM682=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM682
	.byte 2,35,88,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_Shader"

LDIFF_SYM683=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM683
LTDIE_96_POINTER:

	.byte 13
LDIFF_SYM684=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM684
LTDIE_96_REFERENCE:

	.byte 14
LDIFF_SYM685=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM685
LTDIE_98:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_ConstantBufferCollection"

	.byte 32,16
LDIFF_SYM686=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM686
	.byte 2,35,0,6
	.asciz "_buffers"

LDIFF_SYM687=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM687
	.byte 2,35,16,6
	.asciz "_stage"

LDIFF_SYM688=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM688
	.byte 2,35,24,6
	.asciz "_valid"

LDIFF_SYM689=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM689
	.byte 2,35,28,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_ConstantBufferCollection"

LDIFF_SYM690=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM690
LTDIE_98_POINTER:

	.byte 13
LDIFF_SYM691=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM691
LTDIE_98_REFERENCE:

	.byte 14
LDIFF_SYM692=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM692
LTDIE_100:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM693=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM693
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM694=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM694
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM695=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM695
LTDIE_100_POINTER:

	.byte 13
LDIFF_SYM696=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM696
LTDIE_100_REFERENCE:

	.byte 14
LDIFF_SYM697=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM697
LTDIE_101:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM698=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM698
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM699=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM699
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM700=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM700
LTDIE_101_POINTER:

	.byte 13
LDIFF_SYM701=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM701
LTDIE_101_REFERENCE:

	.byte 14
LDIFF_SYM702=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM702
LTDIE_99:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 72,16
LDIFF_SYM703=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM703
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM704=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM704
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM705=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM705
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM706=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM706
	.byte 2,35,56,6
	.asciz "version"

LDIFF_SYM707=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM707
	.byte 2,35,60,6
	.asciz "freeList"

LDIFF_SYM708=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM708
	.byte 2,35,64,6
	.asciz "freeCount"

LDIFF_SYM709=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM709
	.byte 2,35,68,6
	.asciz "comparer"

LDIFF_SYM710=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM710
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM711=LTDIE_100_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM711
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM712=LTDIE_101_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM712
	.byte 2,35,48,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM713=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM713
LTDIE_99_POINTER:

	.byte 13
LDIFF_SYM714=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM714
LTDIE_99_REFERENCE:

	.byte 14
LDIFF_SYM715=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM715
LTDIE_102:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM716=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM716
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM717=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM717
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM718=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM718
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM719=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM719
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM720=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM720
LTDIE_102_POINTER:

	.byte 13
LDIFF_SYM721=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM721
LTDIE_102_REFERENCE:

	.byte 14
LDIFF_SYM722=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM722
LTDIE_103:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM723=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM723
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM724=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM724
LTDIE_103_POINTER:

	.byte 13
LDIFF_SYM725=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM725
LTDIE_103_REFERENCE:

	.byte 14
LDIFF_SYM726=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM726
LTDIE_104:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM727=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM727
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM728=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM728
LTDIE_104_POINTER:

	.byte 13
LDIFF_SYM729=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM729
LTDIE_104_REFERENCE:

	.byte 14
LDIFF_SYM730=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM730
LTDIE_107:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM731=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM731
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM732=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM732
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM733=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM733
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM734=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM734
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM735=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM735
LTDIE_107_POINTER:

	.byte 13
LDIFF_SYM736=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM736
LTDIE_107_REFERENCE:

	.byte 14
LDIFF_SYM737=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM737
LTDIE_106:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_DisplayModeCollection"

	.byte 24,16
LDIFF_SYM738=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM738
	.byte 2,35,0,6
	.asciz "modes"

LDIFF_SYM739=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM739
	.byte 2,35,16,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_DisplayModeCollection"

LDIFF_SYM740=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM740
LTDIE_106_POINTER:

	.byte 13
LDIFF_SYM741=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM741
LTDIE_106_REFERENCE:

	.byte 14
LDIFF_SYM742=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM742
LTDIE_108:

	.byte 5
	.asciz "UIKit_UIScreen"

	.byte 40,16
LDIFF_SYM743=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM743
	.byte 2,35,0,0,7
	.asciz "UIKit_UIScreen"

LDIFF_SYM744=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM744
LTDIE_108_POINTER:

	.byte 13
LDIFF_SYM745=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM745
LTDIE_108_REFERENCE:

	.byte 14
LDIFF_SYM746=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM746
LTDIE_105:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_GraphicsAdapter"

	.byte 32,16
LDIFF_SYM747=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM747
	.byte 2,35,0,6
	.asciz "_supportedDisplayModes"

LDIFF_SYM748=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM748
	.byte 2,35,16,6
	.asciz "_screen"

LDIFF_SYM749=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM749
	.byte 2,35,24,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_GraphicsAdapter"

LDIFF_SYM750=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM750
LTDIE_105_POINTER:

	.byte 13
LDIFF_SYM751=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM751
LTDIE_105_REFERENCE:

	.byte 14
LDIFF_SYM752=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM752
LTDIE_110:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_DepthFormat"

	.byte 4
LDIFF_SYM753=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM753
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "Depth16"

	.byte 1,9
	.asciz "Depth24"

	.byte 2,9
	.asciz "Depth24Stencil8"

	.byte 3,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_DepthFormat"

LDIFF_SYM754=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM754
LTDIE_110_POINTER:

	.byte 13
LDIFF_SYM755=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM755
LTDIE_110_REFERENCE:

	.byte 14
LDIFF_SYM756=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM756
LTDIE_111:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_SurfaceFormat"

	.byte 4
LDIFF_SYM757=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM757
	.byte 9
	.asciz "Color"

	.byte 0,9
	.asciz "Bgr565"

	.byte 1,9
	.asciz "Bgra5551"

	.byte 2,9
	.asciz "Bgra4444"

	.byte 3,9
	.asciz "Dxt1"

	.byte 4,9
	.asciz "Dxt3"

	.byte 5,9
	.asciz "Dxt5"

	.byte 6,9
	.asciz "NormalizedByte2"

	.byte 7,9
	.asciz "NormalizedByte4"

	.byte 8,9
	.asciz "Rgba1010102"

	.byte 9,9
	.asciz "Rg32"

	.byte 10,9
	.asciz "Rgba64"

	.byte 11,9
	.asciz "Alpha8"

	.byte 12,9
	.asciz "Single"

	.byte 13,9
	.asciz "Vector2"

	.byte 14,9
	.asciz "Vector4"

	.byte 15,9
	.asciz "HalfSingle"

	.byte 16,9
	.asciz "HalfVector2"

	.byte 17,9
	.asciz "HalfVector4"

	.byte 18,9
	.asciz "HdrBlendable"

	.byte 19,9
	.asciz "Bgr32"

	.byte 20,9
	.asciz "Bgra32"

	.byte 21,9
	.asciz "ColorSRgb"

	.byte 30,9
	.asciz "Bgr32SRgb"

	.byte 31,9
	.asciz "Bgra32SRgb"

	.byte 32,9
	.asciz "Dxt1SRgb"

	.byte 33,9
	.asciz "Dxt3SRgb"

	.byte 34,9
	.asciz "Dxt5SRgb"

	.byte 35,9
	.asciz "RgbPvrtc2Bpp"

	.byte 50,9
	.asciz "RgbPvrtc4Bpp"

	.byte 51,9
	.asciz "RgbaPvrtc2Bpp"

	.byte 52,9
	.asciz "RgbaPvrtc4Bpp"

	.byte 53,9
	.asciz "RgbEtc1"

	.byte 60,9
	.asciz "Dxt1a"

	.byte 198,0,9
	.asciz "RgbaAtcExplicitAlpha"

	.byte 208,0,9
	.asciz "RgbaAtcInterpolatedAlpha"

	.byte 209,0,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_SurfaceFormat"

LDIFF_SYM758=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM758
LTDIE_111_POINTER:

	.byte 13
LDIFF_SYM759=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM759
LTDIE_111_REFERENCE:

	.byte 14
LDIFF_SYM760=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM760
LTDIE_112:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_PresentInterval"

	.byte 4
LDIFF_SYM761=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM761
	.byte 9
	.asciz "Default"

	.byte 0,9
	.asciz "One"

	.byte 1,9
	.asciz "Two"

	.byte 2,9
	.asciz "Immediate"

	.byte 3,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_PresentInterval"

LDIFF_SYM762=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM762
LTDIE_112_POINTER:

	.byte 13
LDIFF_SYM763=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM763
LTDIE_112_REFERENCE:

	.byte 14
LDIFF_SYM764=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM764
LTDIE_113:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_RenderTargetUsage"

	.byte 4
LDIFF_SYM765=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM765
	.byte 9
	.asciz "DiscardContents"

	.byte 0,9
	.asciz "PreserveContents"

	.byte 1,9
	.asciz "PlatformContents"

	.byte 2,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_RenderTargetUsage"

LDIFF_SYM766=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM766
LTDIE_113_POINTER:

	.byte 13
LDIFF_SYM767=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM767
LTDIE_113_REFERENCE:

	.byte 14
LDIFF_SYM768=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM768
LTDIE_109:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_PresentationParameters"

	.byte 64,16
LDIFF_SYM769=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM769
	.byte 2,35,0,6
	.asciz "depthStencilFormat"

LDIFF_SYM770=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM770
	.byte 2,35,16,6
	.asciz "backBufferFormat"

LDIFF_SYM771=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM771
	.byte 2,35,20,6
	.asciz "backBufferHeight"

LDIFF_SYM772=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM772
	.byte 2,35,24,6
	.asciz "backBufferWidth"

LDIFF_SYM773=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM773
	.byte 2,35,28,6
	.asciz "deviceWindowHandle"

LDIFF_SYM774=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM774
	.byte 2,35,32,6
	.asciz "multiSampleCount"

LDIFF_SYM775=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM775
	.byte 2,35,40,6
	.asciz "disposed"

LDIFF_SYM776=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM776
	.byte 2,35,44,6
	.asciz "isFullScreen"

LDIFF_SYM777=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM777
	.byte 2,35,45,6
	.asciz "<PresentationInterval>k__BackingField"

LDIFF_SYM778=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM778
	.byte 2,35,48,6
	.asciz "<DisplayOrientation>k__BackingField"

LDIFF_SYM779=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM779
	.byte 2,35,52,6
	.asciz "<RenderTargetUsage>k__BackingField"

LDIFF_SYM780=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM780
	.byte 2,35,56,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_PresentationParameters"

LDIFF_SYM781=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM781
LTDIE_109_POINTER:

	.byte 13
LDIFF_SYM782=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM782
LTDIE_109_REFERENCE:

	.byte 14
LDIFF_SYM783=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM783
LTDIE_116:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM784=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM784
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM785=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM785
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM786=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM786
LTDIE_116_POINTER:

	.byte 13
LDIFF_SYM787=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM787
LTDIE_116_REFERENCE:

	.byte 14
LDIFF_SYM788=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM788
LTDIE_117:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM789=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM789
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM790=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM790
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM791=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM791
LTDIE_117_POINTER:

	.byte 13
LDIFF_SYM792=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM792
LTDIE_117_REFERENCE:

	.byte 14
LDIFF_SYM793=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM793
LTDIE_115:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 72,16
LDIFF_SYM794=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM794
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM795=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM795
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM796=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM796
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM797=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM797
	.byte 2,35,56,6
	.asciz "version"

LDIFF_SYM798=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM798
	.byte 2,35,60,6
	.asciz "freeList"

LDIFF_SYM799=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM799
	.byte 2,35,64,6
	.asciz "freeCount"

LDIFF_SYM800=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM800
	.byte 2,35,68,6
	.asciz "comparer"

LDIFF_SYM801=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM801
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM802=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM802
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM803=LTDIE_117_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM803
	.byte 2,35,48,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM804=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM804
LTDIE_115_POINTER:

	.byte 13
LDIFF_SYM805=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM805
LTDIE_115_REFERENCE:

	.byte 14
LDIFF_SYM806=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM806
LTDIE_114:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_ShaderProgramCache"

	.byte 32,16
LDIFF_SYM807=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM807
	.byte 2,35,0,6
	.asciz "_programCache"

LDIFF_SYM808=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM808
	.byte 2,35,16,6
	.asciz "disposed"

LDIFF_SYM809=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM809
	.byte 2,35,24,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_ShaderProgramCache"

LDIFF_SYM810=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM810
LTDIE_114_POINTER:

	.byte 13
LDIFF_SYM811=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM811
LTDIE_114_REFERENCE:

	.byte 14
LDIFF_SYM812=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM812
LTDIE_120:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM813=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM813
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM814=LTDIE_119_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM814
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM815=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM815
LTDIE_120_POINTER:

	.byte 13
LDIFF_SYM816=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM816
LTDIE_120_REFERENCE:

	.byte 14
LDIFF_SYM817=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM817
LTDIE_121:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM818=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM818
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM819=LTDIE_119_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM819
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM820=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM820
LTDIE_121_POINTER:

	.byte 13
LDIFF_SYM821=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM821
LTDIE_121_REFERENCE:

	.byte 14
LDIFF_SYM822=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM822
LTDIE_119:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 72,16
LDIFF_SYM823=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM823
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM824=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM824
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM825=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM825
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM826=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM826
	.byte 2,35,56,6
	.asciz "version"

LDIFF_SYM827=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM827
	.byte 2,35,60,6
	.asciz "freeList"

LDIFF_SYM828=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM828
	.byte 2,35,64,6
	.asciz "freeCount"

LDIFF_SYM829=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM829
	.byte 2,35,68,6
	.asciz "comparer"

LDIFF_SYM830=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM830
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM831=LTDIE_120_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM831
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM832=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM832
	.byte 2,35,48,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM833=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM833
LTDIE_119_POINTER:

	.byte 13
LDIFF_SYM834=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM834
LTDIE_119_REFERENCE:

	.byte 14
LDIFF_SYM835=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM835
LTDIE_118:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_ShaderProgram"

	.byte 32,16
LDIFF_SYM836=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM836
	.byte 2,35,0,6
	.asciz "Program"

LDIFF_SYM837=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM837
	.byte 2,35,24,6
	.asciz "_uniformLocations"

LDIFF_SYM838=LTDIE_119_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM838
	.byte 2,35,16,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_ShaderProgram"

LDIFF_SYM839=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM839
LTDIE_118_POINTER:

	.byte 13
LDIFF_SYM840=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM840
LTDIE_118_REFERENCE:

	.byte 14
LDIFF_SYM841=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM841
LTDIE_123:

	.byte 5
	.asciz "_GLInvalidateFramebufferDelegate"

	.byte 112,16
LDIFF_SYM842=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM842
	.byte 2,35,0,0,7
	.asciz "_GLInvalidateFramebufferDelegate"

LDIFF_SYM843=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM843
LTDIE_123_POINTER:

	.byte 13
LDIFF_SYM844=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM844
LTDIE_123_REFERENCE:

	.byte 14
LDIFF_SYM845=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM845
LTDIE_124:

	.byte 5
	.asciz "_GLRenderbufferStorageMultisampleDelegate"

	.byte 112,16
LDIFF_SYM846=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM846
	.byte 2,35,0,0,7
	.asciz "_GLRenderbufferStorageMultisampleDelegate"

LDIFF_SYM847=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM847
LTDIE_124_POINTER:

	.byte 13
LDIFF_SYM848=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM848
LTDIE_124_REFERENCE:

	.byte 14
LDIFF_SYM849=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM849
LTDIE_125:

	.byte 5
	.asciz "_GLFramebufferTexture2DMultisampleDelegate"

	.byte 112,16
LDIFF_SYM850=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM850
	.byte 2,35,0,0,7
	.asciz "_GLFramebufferTexture2DMultisampleDelegate"

LDIFF_SYM851=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM851
LTDIE_125_POINTER:

	.byte 13
LDIFF_SYM852=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM852
LTDIE_125_REFERENCE:

	.byte 14
LDIFF_SYM853=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM853
LTDIE_126:

	.byte 5
	.asciz "_GLBlitFramebufferDelegate"

	.byte 112,16
LDIFF_SYM854=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM854
	.byte 2,35,0,0,7
	.asciz "_GLBlitFramebufferDelegate"

LDIFF_SYM855=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM855
LTDIE_126_POINTER:

	.byte 13
LDIFF_SYM856=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM856
LTDIE_126_REFERENCE:

	.byte 14
LDIFF_SYM857=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM857
LTDIE_127:

	.byte 8
	.asciz "OpenTK_Graphics_ES20_All"

	.byte 4
LDIFF_SYM858=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM858
	.byte 9
	.asciz "False"

	.byte 0,9
	.asciz "NoError"

	.byte 0,9
	.asciz "None"

	.byte 0,9
	.asciz "Zero"

	.byte 0,9
	.asciz "Points"

	.byte 0,9
	.asciz "SyncFlushCommandsBitApple"

	.byte 1,9
	.asciz "VertexShaderBitExt"

	.byte 1,9
	.asciz "FragmentShaderBitExt"

	.byte 2,9
	.asciz "DepthBufferBit"

	.byte 128,2,9
	.asciz "StencilBufferBit"

	.byte 128,8,9
	.asciz "ColorBufferBit"

	.byte 128,128,1,9
	.asciz "Lines"

	.byte 1,9
	.asciz "MapReadBitExt"

	.byte 1,9
	.asciz "ImgTextureFormatBgra8888"

	.byte 1,9
	.asciz "LineLoop"

	.byte 2,9
	.asciz "MapWriteBitExt"

	.byte 2,9
	.asciz "LineStrip"

	.byte 3,9
	.asciz "MapInvalidateRangeBitExt"

	.byte 4,9
	.asciz "Triangles"

	.byte 4,9
	.asciz "TriangleStrip"

	.byte 5,9
	.asciz "TriangleFan"

	.byte 6,9
	.asciz "MapInvalidateBufferBitExt"

	.byte 8,9
	.asciz "MapFlushExplicitBitExt"

	.byte 16,9
	.asciz "MapUnsynchronizedBitExt"

	.byte 32,9
	.asciz "Never"

	.byte 128,4,9
	.asciz "Less"

	.byte 129,4,9
	.asciz "Equal"

	.byte 130,4,9
	.asciz "Lequal"

	.byte 131,4,9
	.asciz "Greater"

	.byte 132,4,9
	.asciz "Notequal"

	.byte 133,4,9
	.asciz "Gequal"

	.byte 134,4,9
	.asciz "Always"

	.byte 135,4,9
	.asciz "SrcColor"

	.byte 128,6,9
	.asciz "OneMinusSrcColor"

	.byte 129,6,9
	.asciz "SrcAlpha"

	.byte 130,6,9
	.asciz "OneMinusSrcAlpha"

	.byte 131,6,9
	.asciz "DstAlpha"

	.byte 132,6,9
	.asciz "OneMinusDstAlpha"

	.byte 133,6,9
	.asciz "DstColor"

	.byte 134,6,9
	.asciz "OneMinusDstColor"

	.byte 135,6,9
	.asciz "SrcAlphaSaturate"

	.byte 136,6,9
	.asciz "Front"

	.byte 132,8,9
	.asciz "Back"

	.byte 133,8,9
	.asciz "FrontAndBack"

	.byte 136,8,9
	.asciz "InvalidEnum"

	.byte 128,10,9
	.asciz "InvalidValue"

	.byte 129,10,9
	.asciz "InvalidOperation"

	.byte 130,10,9
	.asciz "OutOfMemory"

	.byte 133,10,9
	.asciz "InvalidFramebufferOperation"

	.byte 134,10,9
	.asciz "Cw"

	.byte 128,18,9
	.asciz "Ccw"

	.byte 129,18,9
	.asciz "LineWidth"

	.byte 161,22,9
	.asciz "CullFace"

	.byte 196,22,9
	.asciz "CullFaceMode"

	.byte 197,22,9
	.asciz "FrontFace"

	.byte 198,22,9
	.asciz "DepthRange"

	.byte 240,22,9
	.asciz "DepthTest"

	.byte 241,22,9
	.asciz "DepthWritemask"

	.byte 242,22,9
	.asciz "DepthClearValue"

	.byte 243,22,9
	.asciz "DepthFunc"

	.byte 244,22,9
	.asciz "StencilTest"

	.byte 144,23,9
	.asciz "StencilClearValue"

	.byte 145,23,9
	.asciz "StencilFunc"

	.byte 146,23,9
	.asciz "StencilValueMask"

	.byte 147,23,9
	.asciz "StencilFail"

	.byte 148,23,9
	.asciz "StencilPassDepthFail"

	.byte 149,23,9
	.asciz "StencilPassDepthPass"

	.byte 150,23,9
	.asciz "StencilRef"

	.byte 151,23,9
	.asciz "StencilWritemask"

	.byte 152,23,9
	.asciz "Viewport"

	.byte 162,23,9
	.asciz "Dither"

	.byte 208,23,9
	.asciz "Blend"

	.byte 226,23,9
	.asciz "ScissorBox"

	.byte 144,24,9
	.asciz "ScissorTest"

	.byte 145,24,9
	.asciz "ColorClearValue"

	.byte 162,24,9
	.asciz "ColorWritemask"

	.byte 163,24,9
	.asciz "UnpackAlignment"

	.byte 245,25,9
	.asciz "PackAlignment"

	.byte 133,26,9
	.asciz "MaxTextureSize"

	.byte 179,26,9
	.asciz "MaxViewportDims"

	.byte 186,26,9
	.asciz "SubpixelBits"

	.byte 208,26,9
	.asciz "RedBits"

	.byte 210,26,9
	.asciz "GreenBits"

	.byte 211,26,9
	.asciz "BlueBits"

	.byte 212,26,9
	.asciz "AlphaBits"

	.byte 213,26,9
	.asciz "DepthBits"

	.byte 214,26,9
	.asciz "StencilBits"

	.byte 215,26,9
	.asciz "Texture2D"

	.byte 225,27,9
	.asciz "DontCare"

	.byte 128,34,9
	.asciz "Fastest"

	.byte 129,34,9
	.asciz "Nicest"

	.byte 130,34,9
	.asciz "Byte"

	.byte 128,40,9
	.asciz "UnsignedByte"

	.byte 129,40,9
	.asciz "Short"

	.byte 130,40,9
	.asciz "UnsignedShort"

	.byte 131,40,9
	.asciz "Int"

	.byte 132,40,9
	.asciz "UnsignedInt"

	.byte 133,40,9
	.asciz "Float"

	.byte 134,40,9
	.asciz "Fixed"

	.byte 140,40,9
	.asciz "Invert"

	.byte 138,42,9
	.asciz "Texture"

	.byte 130,46,9
	.asciz "ColorExt"

	.byte 128,48,9
	.asciz "DepthExt"

	.byte 129,48,9
	.asciz "StencilExt"

	.byte 130,48,9
	.asciz "StencilIndex"

	.byte 129,50,9
	.asciz "DepthComponent"

	.byte 130,50,9
	.asciz "RedExt"

	.byte 131,50,9
	.asciz "Alpha"

	.byte 134,50,9
	.asciz "Rgb"

	.byte 135,50,9
	.asciz "Rgba"

	.byte 136,50,9
	.asciz "Luminance"

	.byte 137,50,9
	.asciz "LuminanceAlpha"

	.byte 138,50,9
	.asciz "Keep"

	.byte 128,60,9
	.asciz "Replace"

	.byte 129,60,9
	.asciz "Incr"

	.byte 130,60,9
	.asciz "Decr"

	.byte 131,60,9
	.asciz "Vendor"

	.byte 128,62,9
	.asciz "Renderer"

	.byte 129,62,9
	.asciz "Version"

	.byte 130,62,9
	.asciz "Extensions"

	.byte 131,62,9
	.asciz "Nearest"

	.byte 128,204,0,9
	.asciz "Linear"

	.byte 129,204,0,9
	.asciz "NearestMipmapNearest"

	.byte 128,206,0,9
	.asciz "LinearMipmapNearest"

	.byte 129,206,0,9
	.asciz "NearestMipmapLinear"

	.byte 130,206,0,9
	.asciz "LinearMipmapLinear"

	.byte 131,206,0,9
	.asciz "TextureMagFilter"

	.byte 128,208,0,9
	.asciz "TextureMinFilter"

	.byte 129,208,0,9
	.asciz "TextureWrapS"

	.byte 130,208,0,9
	.asciz "TextureWrapT"

	.byte 131,208,0,9
	.asciz "Repeat"

	.byte 129,210,0,9
	.asciz "PolygonOffsetUnits"

	.byte 128,212,0,9
	.asciz "ConstantColor"

	.byte 129,128,2,9
	.asciz "OneMinusConstantColor"

	.byte 130,128,2,9
	.asciz "ConstantAlpha"

	.byte 131,128,2,9
	.asciz "OneMinusConstantAlpha"

	.byte 132,128,2,9
	.asciz "BlendColor"

	.byte 133,128,2,9
	.asciz "FuncAdd"

	.byte 134,128,2,9
	.asciz "MinExt"

	.byte 135,128,2,9
	.asciz "MaxExt"

	.byte 136,128,2,9
	.asciz "BlendEquation"

	.byte 137,128,2,9
	.asciz "BlendEquationRgb"

	.byte 137,128,2,9
	.asciz "FuncSubtract"

	.byte 138,128,2,9
	.asciz "FuncReverseSubtract"

	.byte 139,128,2,9
	.asciz "UnsignedShort4444"

	.byte 179,128,2,9
	.asciz "UnsignedShort5551"

	.byte 180,128,2,9
	.asciz "PolygonOffsetFill"

	.byte 183,128,2,9
	.asciz "PolygonOffsetFactor"

	.byte 184,128,2,9
	.asciz "Alpha8Ext"

	.byte 188,128,2,9
	.asciz "Luminance8Ext"

	.byte 192,128,2,9
	.asciz "Luminance8Alpha8Ext"

	.byte 197,128,2,9
	.asciz "Rgb8Oes"

	.byte 209,128,2,9
	.asciz "Rgba4"

	.byte 214,128,2,9
	.asciz "Rgb5A1"

	.byte 215,128,2,9
	.asciz "Rgba8Oes"

	.byte 216,128,2,9
	.asciz "TextureBinding2D"

	.byte 233,128,2,9
	.asciz "SampleAlphaToCoverage"

	.byte 158,129,2,9
	.asciz "SampleCoverage"

	.byte 160,129,2,9
	.asciz "SampleBuffers"

	.byte 168,129,2,9
	.asciz "Samples"

	.byte 169,129,2,9
	.asciz "SampleCoverageValue"

	.byte 170,129,2,9
	.asciz "SampleCoverageInvert"

	.byte 171,129,2,9
	.asciz "BlendDstRgb"

	.byte 200,129,2,9
	.asciz "BlendSrcRgb"

	.byte 201,129,2,9
	.asciz "BlendDstAlpha"

	.byte 202,129,2,9
	.asciz "BlendSrcAlpha"

	.byte 203,129,2,9
	.asciz "Bgra"

	.byte 225,129,2,9
	.asciz "BgraExt"

	.byte 225,129,2,9
	.asciz "BgraImg"

	.byte 225,129,2,9
	.asciz "ClampToEdge"

	.byte 175,130,2,9
	.asciz "TextureMaxLevelApple"

	.byte 189,130,2,9
	.asciz "GenerateMipmapHint"

	.byte 146,131,2,9
	.asciz "DepthComponent16"

	.byte 165,131,2,9
	.asciz "DepthComponent24Oes"

	.byte 166,131,2,9
	.asciz "DepthComponent32Oes"

	.byte 167,131,2,9
	.asciz "FramebufferAttachmentColorEncodingExt"

	.byte 144,132,2,9
	.asciz "FramebufferAttachmentComponentTypeExt"

	.byte 145,132,2,9
	.asciz "RgExt"

	.byte 167,132,2,9
	.asciz "R8Ext"

	.byte 169,132,2,9
	.asciz "Rg8Ext"

	.byte 171,132,2,9
	.asciz "R16fExt"

	.byte 173,132,2,9
	.asciz "R32fExt"

	.byte 174,132,2,9
	.asciz "Rg16fExt"

	.byte 175,132,2,9
	.asciz "Rg32fExt"

	.byte 176,132,2,9
	.asciz "ProgramSeparableExt"

	.byte 216,132,2,9
	.asciz "ActiveProgramExt"

	.byte 217,132,2,9
	.asciz "ProgramPipelineBindingExt"

	.byte 218,132,2,9
	.asciz "UnsignedShort565"

	.byte 227,134,2,9
	.asciz "UnsignedShort4444Rev"

	.byte 229,134,2,9
	.asciz "UnsignedShort4444RevExt"

	.byte 229,134,2,9
	.asciz "UnsignedShort4444RevImg"

	.byte 229,134,2,9
	.asciz "UnsignedShort1555Rev"

	.byte 230,134,2,9
	.asciz "UnsignedShort1555RevExt"

	.byte 230,134,2,9
	.asciz "MirroredRepeat"

	.byte 240,134,2,9
	.asciz "AliasedPointSizeRange"

	.byte 237,136,2,9
	.asciz "AliasedLineWidthRange"

	.byte 238,136,2,9
	.asciz "Texture0"

	.byte 192,137,2,9
	.asciz "Texture1"

	.byte 193,137,2,9
	.asciz "Texture2"

	.byte 194,137,2,9
	.asciz "Texture3"

	.byte 195,137,2,9
	.asciz "Texture4"

	.byte 196,137,2,9
	.asciz "Texture5"

	.byte 197,137,2,9
	.asciz "Texture6"

	.byte 198,137,2,9
	.asciz "Texture7"

	.byte 199,137,2,9
	.asciz "Texture8"

	.byte 200,137,2,9
	.asciz "Texture9"

	.byte 201,137,2,9
	.asciz "Texture10"

	.byte 202,137,2,9
	.asciz "Texture11"

	.byte 203,137,2,9
	.asciz "Texture12"

	.byte 204,137,2,9
	.asciz "Texture13"

	.byte 205,137,2,9
	.asciz "Texture14"

	.byte 206,137,2,9
	.asciz "Texture15"

	.byte 207,137,2,9
	.asciz "Texture16"

	.byte 208,137,2,9
	.asciz "Texture17"

	.byte 209,137,2,9
	.asciz "Texture18"

	.byte 210,137,2,9
	.asciz "Texture19"

	.byte 211,137,2,9
	.asciz "Texture20"

	.byte 212,137,2,9
	.asciz "Texture21"

	.byte 213,137,2,9
	.asciz "Texture22"

	.byte 214,137,2,9
	.asciz "Texture23"

	.byte 215,137,2,9
	.asciz "Texture24"

	.byte 216,137,2,9
	.asciz "Texture25"

	.byte 217,137,2,9
	.asciz "Texture26"

	.byte 218,137,2,9
	.asciz "Texture27"

	.byte 219,137,2,9
	.asciz "Texture28"

	.byte 220,137,2,9
	.asciz "Texture29"

	.byte 221,137,2,9
	.asciz "Texture30"

	.byte 222,137,2,9
	.asciz "Texture31"

	.byte 223,137,2,9
	.asciz "ActiveTexture"

	.byte 224,137,2,9
	.asciz "MaxRenderbufferSize"

	.byte 232,137,2,9
	.asciz "DepthStencilOes"

	.byte 249,137,2,9
	.asciz "UnsignedInt248Oes"

	.byte 250,137,2,9
	.asciz "TextureMaxAnisotropyExt"

	.byte 254,137,2,9
	.asciz "MaxTextureMaxAnisotropyExt"

	.byte 255,137,2,9
	.asciz "IncrWrap"

	.byte 135,138,2,9
	.asciz "DecrWrap"

	.byte 136,138,2,9
	.asciz "TextureCubeMap"

	.byte 147,138,2,9
	.asciz "TextureBindingCubeMap"

	.byte 148,138,2,9
	.asciz "TextureCubeMapPositiveX"

	.byte 149,138,2,9
	.asciz "TextureCubeMapNegativeX"

	.byte 150,138,2,9
	.asciz "TextureCubeMapPositiveY"

	.byte 151,138,2,9
	.asciz "TextureCubeMapNegativeY"

	.byte 152,138,2,9
	.asciz "TextureCubeMapPositiveZ"

	.byte 153,138,2,9
	.asciz "TextureCubeMapNegativeZ"

	.byte 154,138,2,9
	.asciz "MaxCubeMapTextureSize"

	.byte 156,138,2,9
	.asciz "VertexArrayBindingOes"

	.byte 181,139,2,9
	.asciz "UnsignedShort88Apple"

	.byte 186,139,2,9
	.asciz "UnsignedShort88RevApple"

	.byte 187,139,2,9
	.asciz "VertexAttribArrayEnabled"

	.byte 162,140,2,9
	.asciz "VertexAttribArraySize"

	.byte 163,140,2,9
	.asciz "VertexAttribArrayStride"

	.byte 164,140,2,9
	.asciz "VertexAttribArrayType"

	.byte 165,140,2,9
	.asciz "CurrentVertexAttrib"

	.byte 166,140,2,9
	.asciz "VertexAttribArrayPointer"

	.byte 197,140,2,9
	.asciz "NumCompressedTextureFormats"

	.byte 162,141,2,9
	.asciz "CompressedTextureFormats"

	.byte 163,141,2,9
	.asciz "BufferSize"

	.byte 228,142,2,9
	.asciz "BufferUsage"

	.byte 229,142,2,9
	.asciz "StencilBackFunc"

	.byte 128,144,2,9
	.asciz "StencilBackFail"

	.byte 129,144,2,9
	.asciz "StencilBackPassDepthFail"

	.byte 130,144,2,9
	.asciz "StencilBackPassDepthPass"

	.byte 131,144,2,9
	.asciz "Rgba32fExt"

	.byte 148,144,2,9
	.asciz "Rgb32fExt"

	.byte 149,144,2,9
	.asciz "Alpha32fExt"

	.byte 150,144,2,9
	.asciz "Luminance32fExt"

	.byte 152,144,2,9
	.asciz "LuminanceAlpha32fExt"

	.byte 153,144,2,9
	.asciz "Rgba16fExt"

	.byte 154,144,2,9
	.asciz "Rgb16fExt"

	.byte 155,144,2,9
	.asciz "Alpha16fExt"

	.byte 156,144,2,9
	.asciz "Luminance16fExt"

	.byte 158,144,2,9
	.asciz "LuminanceAlpha16fExt"

	.byte 159,144,2,9
	.asciz "BlendEquationAlpha"

	.byte 189,144,2,9
	.asciz "TextureCompareModeExt"

	.byte 204,144,2,9
	.asciz "TextureCompareFuncExt"

	.byte 205,144,2,9
	.asciz "CompareRefToTextureExt"

	.byte 206,144,2,9
	.asciz "CurrentQueryExt"

	.byte 229,144,2,9
	.asciz "QueryResultExt"

	.byte 230,144,2,9
	.asciz "QueryResultAvailableExt"

	.byte 231,144,2,9
	.asciz "MaxVertexAttribs"

	.byte 233,144,2,9
	.asciz "VertexAttribArrayNormalized"

	.byte 234,144,2,9
	.asciz "MaxTextureImageUnits"

	.byte 242,144,2,9
	.asciz "ArrayBuffer"

	.byte 146,145,2,9
	.asciz "ElementArrayBuffer"

	.byte 147,145,2,9
	.asciz "ArrayBufferBinding"

	.byte 148,145,2,9
	.asciz "ElementArrayBufferBinding"

	.byte 149,145,2,9
	.asciz "VertexAttribArrayBufferBinding"

	.byte 159,145,2,9
	.asciz "WriteOnlyOes"

	.byte 185,145,2,9
	.asciz "BufferAccessOes"

	.byte 187,145,2,9
	.asciz "BufferMappedOes"

	.byte 188,145,2,9
	.asciz "BufferMapPointerOes"

	.byte 189,145,2,9
	.asciz "StreamDraw"

	.byte 224,145,2,9
	.asciz "StaticDraw"

	.byte 228,145,2,9
	.asciz "DynamicDraw"

	.byte 232,145,2,9
	.asciz "Depth24Stencil8Oes"

	.byte 240,145,2,9
	.asciz "VertexAttribArrayDivisorExt"

	.byte 254,145,2,9
	.asciz "Rgb422Apple"

	.byte 159,148,2,9
	.asciz "ProgramPipelineObjectExt"

	.byte 207,148,2,9
	.asciz "RgbRaw422Apple"

	.byte 209,148,2,9
	.asciz "FragmentShaderDiscardsSamplesExt"

	.byte 210,148,2,9
	.asciz "SyncObjectApple"

	.byte 211,148,2,9
	.asciz "CompressedSrgbPvrtc2Bppv1Ext"

	.byte 212,148,2,9
	.asciz "CompressedSrgbPvrtc4Bppv1Ext"

	.byte 213,148,2,9
	.asciz "CompressedSrgbAlphaPvrtc2Bppv1Ext"

	.byte 214,148,2,9
	.asciz "CompressedSrgbAlphaPvrtc4Bppv1Ext"

	.byte 215,148,2,9
	.asciz "FragmentShader"

	.byte 176,150,2,9
	.asciz "VertexShader"

	.byte 177,150,2,9
	.asciz "ProgramObjectExt"

	.byte 192,150,2,9
	.asciz "ShaderObjectExt"

	.byte 200,150,2,9
	.asciz "MaxVertexTextureImageUnits"

	.byte 204,150,2,9
	.asciz "MaxCombinedTextureImageUnits"

	.byte 205,150,2,9
	.asciz "ShaderType"

	.byte 207,150,2,9
	.asciz "FloatVec2"

	.byte 208,150,2,9
	.asciz "FloatVec3"

	.byte 209,150,2,9
	.asciz "FloatVec4"

	.byte 210,150,2,9
	.asciz "IntVec2"

	.byte 211,150,2,9
	.asciz "IntVec3"

	.byte 212,150,2,9
	.asciz "IntVec4"

	.byte 213,150,2,9
	.asciz "Bool"

	.byte 214,150,2,9
	.asciz "BoolVec2"

	.byte 215,150,2,9
	.asciz "BoolVec3"

	.byte 216,150,2,9
	.asciz "BoolVec4"

	.byte 217,150,2,9
	.asciz "FloatMat2"

	.byte 218,150,2,9
	.asciz "FloatMat3"

	.byte 219,150,2,9
	.asciz "FloatMat4"

	.byte 220,150,2,9
	.asciz "Sampler2D"

	.byte 222,150,2,9
	.asciz "SamplerCube"

	.byte 224,150,2,9
	.asciz "Sampler2DShadowExt"

	.byte 226,150,2,9
	.asciz "DeleteStatus"

	.byte 128,151,2,9
	.asciz "CompileStatus"

	.byte 129,151,2,9
	.asciz "LinkStatus"

	.byte 130,151,2,9
	.asciz "ValidateStatus"

	.byte 131,151,2,9
	.asciz "InfoLogLength"

	.byte 132,151,2,9
	.asciz "AttachedShaders"

	.byte 133,151,2,9
	.asciz "ActiveUniforms"

	.byte 134,151,2,9
	.asciz "ActiveUniformMaxLength"

	.byte 135,151,2,9
	.asciz "ShaderSourceLength"

	.byte 136,151,2,9
	.asciz "ActiveAttributes"

	.byte 137,151,2,9
	.asciz "ActiveAttributeMaxLength"

	.byte 138,151,2,9
	.asciz "FragmentShaderDerivativeHintOes"

	.byte 139,151,2,9
	.asciz "ShadingLanguageVersion"

	.byte 140,151,2,9
	.asciz "CurrentProgram"

	.byte 141,151,2,9
	.asciz "ImplementationColorReadType"

	.byte 154,151,2,9
	.asciz "ImplementationColorReadFormat"

	.byte 155,151,2,9
	.asciz "CompressedRgbPvrtc4Bppv1Img"

	.byte 128,152,2,9
	.asciz "CompressedRgbPvrtc2Bppv1Img"

	.byte 129,152,2,9
	.asciz "CompressedRgbaPvrtc4Bppv1Img"

	.byte 130,152,2,9
	.asciz "CompressedRgbaPvrtc2Bppv1Img"

	.byte 131,152,2,9
	.asciz "UnsignedNormalizedExt"

	.byte 151,152,2,9
	.asciz "AnySamplesPassedExt"

	.byte 175,152,2,9
	.asciz "SrgbExt"

	.byte 192,152,2,9
	.asciz "SrgbAlphaExt"

	.byte 194,152,2,9
	.asciz "Srgb8Alpha8Ext"

	.byte 195,152,2,9
	.asciz "StencilBackRef"

	.byte 163,153,2,9
	.asciz "StencilBackValueMask"

	.byte 164,153,2,9
	.asciz "StencilBackWritemask"

	.byte 165,153,2,9
	.asciz "DrawFramebufferBindingApple"

	.byte 166,153,2,9
	.asciz "FramebufferBinding"

	.byte 166,153,2,9
	.asciz "RenderbufferBinding"

	.byte 167,153,2,9
	.asciz "ReadFramebufferApple"

	.byte 168,153,2,9
	.asciz "DrawFramebufferApple"

	.byte 169,153,2,9
	.asciz "ReadFramebufferBindingApple"

	.byte 170,153,2,9
	.asciz "RenderbufferSamplesApple"

	.byte 171,153,2,9
	.asciz "FramebufferAttachmentObjectType"

	.byte 208,153,2,9
	.asciz "FramebufferAttachmentObjectName"

	.byte 209,153,2,9
	.asciz "FramebufferAttachmentTextureLevel"

	.byte 210,153,2,9
	.asciz "FramebufferAttachmentTextureCubeMapFace"

	.byte 211,153,2,9
	.asciz "FramebufferComplete"

	.byte 213,153,2,9
	.asciz "FramebufferIncompleteAttachment"

	.byte 214,153,2,9
	.asciz "FramebufferIncompleteMissingAttachment"

	.byte 215,153,2,9
	.asciz "FramebufferIncompleteDimensions"

	.byte 217,153,2,9
	.asciz "FramebufferUnsupported"

	.byte 221,153,2,9
	.asciz "ColorAttachment0"

	.byte 224,153,2,9
	.asciz "DepthAttachment"

	.byte 128,154,2,9
	.asciz "StencilAttachment"

	.byte 160,154,2,9
	.asciz "Framebuffer"

	.byte 192,154,2,9
	.asciz "Renderbuffer"

	.byte 193,154,2,9
	.asciz "RenderbufferWidth"

	.byte 194,154,2,9
	.asciz "RenderbufferHeight"

	.byte 195,154,2,9
	.asciz "RenderbufferInternalFormat"

	.byte 196,154,2,9
	.asciz "StencilIndex8"

	.byte 200,154,2,9
	.asciz "RenderbufferRedSize"

	.byte 208,154,2,9
	.asciz "RenderbufferGreenSize"

	.byte 209,154,2,9
	.asciz "RenderbufferBlueSize"

	.byte 210,154,2,9
	.asciz "RenderbufferAlphaSize"

	.byte 211,154,2,9
	.asciz "RenderbufferDepthSize"

	.byte 212,154,2,9
	.asciz "RenderbufferStencilSize"

	.byte 213,154,2,9
	.asciz "FramebufferIncompleteMultisampleApple"

	.byte 214,154,2,9
	.asciz "MaxSamplesApple"

	.byte 215,154,2,9
	.asciz "HalfFloatOes"

	.byte 225,154,2,9
	.asciz "Rgb565"

	.byte 226,154,2,9
	.asciz "AnySamplesPassedConservativeExt"

	.byte 234,154,2,9
	.asciz "LowFloat"

	.byte 240,155,2,9
	.asciz "MediumFloat"

	.byte 241,155,2,9
	.asciz "HighFloat"

	.byte 242,155,2,9
	.asciz "LowInt"

	.byte 243,155,2,9
	.asciz "MediumInt"

	.byte 244,155,2,9
	.asciz "HighInt"

	.byte 245,155,2,9
	.asciz "ShaderBinaryFormats"

	.byte 248,155,2,9
	.asciz "NumShaderBinaryFormats"

	.byte 249,155,2,9
	.asciz "ShaderCompiler"

	.byte 250,155,2,9
	.asciz "MaxVertexUniformVectors"

	.byte 251,155,2,9
	.asciz "MaxVaryingVectors"

	.byte 252,155,2,9
	.asciz "MaxFragmentUniformVectors"

	.byte 253,155,2,9
	.asciz "MaxServerWaitTimeoutApple"

	.byte 145,162,2,9
	.asciz "ObjectTypeApple"

	.byte 146,162,2,9
	.asciz "SyncConditionApple"

	.byte 147,162,2,9
	.asciz "SyncStatusApple"

	.byte 148,162,2,9
	.asciz "SyncFlagsApple"

	.byte 149,162,2,9
	.asciz "SyncFenceApple"

	.byte 150,162,2,9
	.asciz "SyncGpuCommandsCompleteApple"

	.byte 151,162,2,9
	.asciz "UnsignaledApple"

	.byte 152,162,2,9
	.asciz "SignaledApple"

	.byte 153,162,2,9
	.asciz "AlreadySignaledApple"

	.byte 154,162,2,9
	.asciz "TimeoutExpiredApple"

	.byte 155,162,2,9
	.asciz "ConditionSatisfiedApple"

	.byte 156,162,2,9
	.asciz "WaitFailedApple"

	.byte 157,162,2,9
	.asciz "TextureImmutableFormatExt"

	.byte 175,162,2,9
	.asciz "BufferObjectExt"

	.byte 209,162,2,9
	.asciz "QueryObjectExt"

	.byte 211,162,2,9
	.asciz "VertexArrayObjectExt"

	.byte 212,162,2,9
	.asciz "Bgra8Ext"

	.byte 161,167,2,9
	.asciz "AllShaderBitsExt"

	.byte 255,255,255,255,15,9
	.asciz "TimeoutIgnoredApple"

	.byte 255,255,255,255,15,9
	.asciz "AppleCopyTextureLevels"

	.byte 1,9
	.asciz "AppleFramebufferMultisample"

	.byte 1,9
	.asciz "AppleRgb422"

	.byte 1,9
	.asciz "AppleSync"

	.byte 1,9
	.asciz "AppleTextureFormatBgra8888"

	.byte 1,9
	.asciz "AppleTextureMaxLevel"

	.byte 1,9
	.asciz "EsVersion20"

	.byte 1,9
	.asciz "ExtBlendMinmax"

	.byte 1,9
	.asciz "ExtColorBufferHalfFloat"

	.byte 1,9
	.asciz "ExtDebugLabel"

	.byte 1,9
	.asciz "ExtDebugMarker"

	.byte 1,9
	.asciz "ExtDiscardFramebuffer"

	.byte 1,9
	.asciz "ExtDrawInstanced"

	.byte 1,9
	.asciz "ExtInstancedArrays"

	.byte 1,9
	.asciz "ExtMapBufferRange"

	.byte 1,9
	.asciz "ExtOcclusionQueryBoolean"

	.byte 1,9
	.asciz "ExtPvrtcSrgb"

	.byte 1,9
	.asciz "ExtReadFormatBgra"

	.byte 1,9
	.asciz "ExtSeparateShaderObjects"

	.byte 1,9
	.asciz "ExtShaderFramebufferFetch"

	.byte 1,9
	.asciz "ExtShaderTextureLod"

	.byte 1,9
	.asciz "ExtShadowSamplers"

	.byte 1,9
	.asciz "ExtSrgb"

	.byte 1,9
	.asciz "ExtTextureFilterAnisotropic"

	.byte 1,9
	.asciz "ExtTextureRg"

	.byte 1,9
	.asciz "ExtTextureStorage"

	.byte 1,9
	.asciz "ImgReadFormat"

	.byte 1,9
	.asciz "ImgTextureCompressionPvrtc"

	.byte 1,9
	.asciz "OesDepth24"

	.byte 1,9
	.asciz "OesDepthTexture"

	.byte 1,9
	.asciz "OesElementIndexUint"

	.byte 1,9
	.asciz "OesFboRenderMipmap"

	.byte 1,9
	.asciz "OesMapbuffer"

	.byte 1,9
	.asciz "OesPackedDepthStencil"

	.byte 1,9
	.asciz "OesRgb8Rgba8"

	.byte 1,9
	.asciz "OesStandardDerivatives"

	.byte 1,9
	.asciz "OesTextureFloat"

	.byte 1,9
	.asciz "OesTextureHalfFloat"

	.byte 1,9
	.asciz "OesTextureHalfFloatLinear"

	.byte 1,9
	.asciz "OesVertexArrayObject"

	.byte 1,9
	.asciz "One"

	.byte 1,9
	.asciz "True"

	.byte 1,0,7
	.asciz "OpenTK_Graphics_ES20_All"

LDIFF_SYM859=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM859
LTDIE_127_POINTER:

	.byte 13
LDIFF_SYM860=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM860
LTDIE_127_REFERENCE:

	.byte 14
LDIFF_SYM861=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM861
LTDIE_122:

	.byte 5
	.asciz "_FramebufferHelper"

	.byte 80,16
LDIFF_SYM862=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM862
	.byte 2,35,0,6
	.asciz "<SupportsInvalidateFramebuffer>k__BackingField"

LDIFF_SYM863=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM863
	.byte 2,35,64,6
	.asciz "<SupportsBlitFramebuffer>k__BackingField"

LDIFF_SYM864=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM864
	.byte 2,35,65,6
	.asciz "GLInvalidateFramebuffer"

LDIFF_SYM865=LTDIE_123_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM865
	.byte 2,35,16,6
	.asciz "GLRenderbufferStorageMultisample"

LDIFF_SYM866=LTDIE_124_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM866
	.byte 2,35,24,6
	.asciz "GLFramebufferTexture2DMultisample"

LDIFF_SYM867=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM867
	.byte 2,35,32,6
	.asciz "GLBlitFramebuffer"

LDIFF_SYM868=LTDIE_126_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM868
	.byte 2,35,40,6
	.asciz "AllReadFramebuffer"

LDIFF_SYM869=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM869
	.byte 2,35,68,6
	.asciz "AllDrawFramebuffer"

LDIFF_SYM870=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM870
	.byte 2,35,72,6
	.asciz "GLDiscardAttachementsDefault"

LDIFF_SYM871=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM871
	.byte 2,35,48,6
	.asciz "GLDiscardAttachements"

LDIFF_SYM872=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM872
	.byte 2,35,56,0,7
	.asciz "_FramebufferHelper"

LDIFF_SYM873=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM873
LTDIE_122_POINTER:

	.byte 13
LDIFF_SYM874=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM874
LTDIE_122_REFERENCE:

	.byte 14
LDIFF_SYM875=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM875
LTDIE_128:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM876=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM876
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM877=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM877
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM878=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM878
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM879=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM879
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM880=LTDIE_128 - Ldebug_info_start
	.long LDIFF_SYM880
LTDIE_128_POINTER:

	.byte 13
LDIFF_SYM881=LTDIE_128 - Ldebug_info_start
	.long LDIFF_SYM881
LTDIE_128_REFERENCE:

	.byte 14
LDIFF_SYM882=LTDIE_128 - Ldebug_info_start
	.long LDIFF_SYM882
LTDIE_130:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM883=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM883
LTDIE_130_POINTER:

	.byte 13
LDIFF_SYM884=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM884
LTDIE_130_REFERENCE:

	.byte 14
LDIFF_SYM885=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM885
LTDIE_131:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM886=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM886
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM887=LTDIE_129_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM887
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM888=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM888
LTDIE_131_POINTER:

	.byte 13
LDIFF_SYM889=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM889
LTDIE_131_REFERENCE:

	.byte 14
LDIFF_SYM890=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM890
LTDIE_132:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM891=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM891
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM892=LTDIE_129_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM892
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM893=LTDIE_132 - Ldebug_info_start
	.long LDIFF_SYM893
LTDIE_132_POINTER:

	.byte 13
LDIFF_SYM894=LTDIE_132 - Ldebug_info_start
	.long LDIFF_SYM894
LTDIE_132_REFERENCE:

	.byte 14
LDIFF_SYM895=LTDIE_132 - Ldebug_info_start
	.long LDIFF_SYM895
LTDIE_129:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 72,16
LDIFF_SYM896=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM896
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM897=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM897
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM898=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM898
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM899=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM899
	.byte 2,35,56,6
	.asciz "version"

LDIFF_SYM900=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM900
	.byte 2,35,60,6
	.asciz "freeList"

LDIFF_SYM901=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM901
	.byte 2,35,64,6
	.asciz "freeCount"

LDIFF_SYM902=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM902
	.byte 2,35,68,6
	.asciz "comparer"

LDIFF_SYM903=LTDIE_130_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM903
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM904=LTDIE_131_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM904
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM905=LTDIE_132_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM905
	.byte 2,35,48,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM906=LTDIE_129 - Ldebug_info_start
	.long LDIFF_SYM906
LTDIE_129_POINTER:

	.byte 13
LDIFF_SYM907=LTDIE_129 - Ldebug_info_start
	.long LDIFF_SYM907
LTDIE_129_REFERENCE:

	.byte 14
LDIFF_SYM908=LTDIE_129 - Ldebug_info_start
	.long LDIFF_SYM908
LTDIE_72:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_GraphicsDevice"

	.byte 208,4,16
LDIFF_SYM909=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM909
	.byte 2,35,0,6
	.asciz "_viewport"

LDIFF_SYM910=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM910
	.byte 3,35,152,3,6
	.asciz "_graphicsProfile"

LDIFF_SYM911=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM911
	.byte 3,35,176,3,6
	.asciz "_isDisposed"

LDIFF_SYM912=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM912
	.byte 3,35,180,3,6
	.asciz "_blendState"

LDIFF_SYM913=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM913
	.byte 2,35,16,6
	.asciz "_actualBlendState"

LDIFF_SYM914=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM914
	.byte 2,35,24,6
	.asciz "_blendStateDirty"

LDIFF_SYM915=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM915
	.byte 3,35,181,3,6
	.asciz "_blendStateAdditive"

LDIFF_SYM916=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM916
	.byte 2,35,32,6
	.asciz "_blendStateAlphaBlend"

LDIFF_SYM917=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM917
	.byte 2,35,40,6
	.asciz "_blendStateNonPremultiplied"

LDIFF_SYM918=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM918
	.byte 2,35,48,6
	.asciz "_blendStateOpaque"

LDIFF_SYM919=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM919
	.byte 2,35,56,6
	.asciz "_depthStencilState"

LDIFF_SYM920=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM920
	.byte 2,35,64,6
	.asciz "_actualDepthStencilState"

LDIFF_SYM921=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM921
	.byte 2,35,72,6
	.asciz "_depthStencilStateDirty"

LDIFF_SYM922=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM922
	.byte 3,35,182,3,6
	.asciz "_depthStencilStateDefault"

LDIFF_SYM923=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM923
	.byte 2,35,80,6
	.asciz "_depthStencilStateDepthRead"

LDIFF_SYM924=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM924
	.byte 2,35,88,6
	.asciz "_depthStencilStateNone"

LDIFF_SYM925=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM925
	.byte 2,35,96,6
	.asciz "_rasterizerState"

LDIFF_SYM926=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM926
	.byte 2,35,104,6
	.asciz "_actualRasterizerState"

LDIFF_SYM927=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM927
	.byte 2,35,112,6
	.asciz "_rasterizerStateDirty"

LDIFF_SYM928=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM928
	.byte 3,35,183,3,6
	.asciz "_rasterizerStateCullClockwise"

LDIFF_SYM929=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM929
	.byte 2,35,120,6
	.asciz "_rasterizerStateCullCounterClockwise"

LDIFF_SYM930=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM930
	.byte 3,35,128,1,6
	.asciz "_rasterizerStateCullNone"

LDIFF_SYM931=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM931
	.byte 3,35,136,1,6
	.asciz "_scissorRectangle"

LDIFF_SYM932=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM932
	.byte 3,35,184,3,6
	.asciz "_scissorRectangleDirty"

LDIFF_SYM933=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM933
	.byte 3,35,200,3,6
	.asciz "_vertexBuffers"

LDIFF_SYM934=LTDIE_84_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM934
	.byte 3,35,144,1,6
	.asciz "_vertexBuffersDirty"

LDIFF_SYM935=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM935
	.byte 3,35,201,3,6
	.asciz "_indexBuffer"

LDIFF_SYM936=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM936
	.byte 3,35,152,1,6
	.asciz "_indexBufferDirty"

LDIFF_SYM937=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM937
	.byte 3,35,202,3,6
	.asciz "_currentRenderTargetBindings"

LDIFF_SYM938=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM938
	.byte 3,35,160,1,6
	.asciz "_currentRenderTargetCount"

LDIFF_SYM939=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM939
	.byte 3,35,204,3,6
	.asciz "<GraphicsCapabilities>k__BackingField"

LDIFF_SYM940=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM940
	.byte 3,35,168,1,6
	.asciz "<VertexTextures>k__BackingField"

LDIFF_SYM941=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM941
	.byte 3,35,176,1,6
	.asciz "<VertexSamplerStates>k__BackingField"

LDIFF_SYM942=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM942
	.byte 3,35,184,1,6
	.asciz "<Textures>k__BackingField"

LDIFF_SYM943=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM943
	.byte 3,35,192,1,6
	.asciz "<SamplerStates>k__BackingField"

LDIFF_SYM944=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM944
	.byte 3,35,200,1,6
	.asciz "_vertexShader"

LDIFF_SYM945=LTDIE_96_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM945
	.byte 3,35,208,1,6
	.asciz "_vertexShaderDirty"

LDIFF_SYM946=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM946
	.byte 3,35,208,3,6
	.asciz "_pixelShader"

LDIFF_SYM947=LTDIE_96_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM947
	.byte 3,35,216,1,6
	.asciz "_pixelShaderDirty"

LDIFF_SYM948=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM948
	.byte 3,35,209,3,6
	.asciz "_vertexConstantBuffers"

LDIFF_SYM949=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM949
	.byte 3,35,224,1,6
	.asciz "_pixelConstantBuffers"

LDIFF_SYM950=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM950
	.byte 3,35,232,1,6
	.asciz "EffectCache"

LDIFF_SYM951=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM951
	.byte 3,35,240,1,6
	.asciz "_resourcesLock"

LDIFF_SYM952=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM952
	.byte 3,35,248,1,6
	.asciz "_resources"

LDIFF_SYM953=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM953
	.byte 3,35,128,2,6
	.asciz "DeviceLost"

LDIFF_SYM954=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM954
	.byte 3,35,136,2,6
	.asciz "DeviceReset"

LDIFF_SYM955=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM955
	.byte 3,35,144,2,6
	.asciz "DeviceResetting"

LDIFF_SYM956=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM956
	.byte 3,35,152,2,6
	.asciz "ResourceCreated"

LDIFF_SYM957=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM957
	.byte 3,35,160,2,6
	.asciz "ResourceDestroyed"

LDIFF_SYM958=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM958
	.byte 3,35,168,2,6
	.asciz "Disposing"

LDIFF_SYM959=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM959
	.byte 3,35,176,2,6
	.asciz "_maxVertexBufferSlots"

LDIFF_SYM960=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM960
	.byte 3,35,212,3,6
	.asciz "MaxTextureSlots"

LDIFF_SYM961=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM961
	.byte 3,35,216,3,6
	.asciz "MaxVertexTextureSlots"

LDIFF_SYM962=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM962
	.byte 3,35,220,3,6
	.asciz "<Adapter>k__BackingField"

LDIFF_SYM963=LTDIE_105_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM963
	.byte 3,35,184,2,6
	.asciz "_graphicsMetrics"

LDIFF_SYM964=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM964
	.byte 3,35,224,3,6
	.asciz "<PresentationParameters>k__BackingField"

LDIFF_SYM965=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM965
	.byte 3,35,192,2,6
	.asciz "<ResourcesLost>k__BackingField"

LDIFF_SYM966=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM966
	.byte 3,35,160,4,6
	.asciz "_programCache"

LDIFF_SYM967=LTDIE_114_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM967
	.byte 3,35,200,2,6
	.asciz "_shaderProgram"

LDIFF_SYM968=LTDIE_118_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM968
	.byte 3,35,208,2,6
	.asciz "framebufferHelper"

LDIFF_SYM969=LTDIE_122_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM969
	.byte 3,35,216,2,6
	.asciz "glFramebuffer"

LDIFF_SYM970=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM970
	.byte 3,35,164,4,6
	.asciz "MaxVertexAttributes"

LDIFF_SYM971=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM971
	.byte 3,35,168,4,6
	.asciz "_extensions"

LDIFF_SYM972=LTDIE_128_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM972
	.byte 3,35,224,2,6
	.asciz "_maxTextureSize"

LDIFF_SYM973=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM973
	.byte 3,35,172,4,6
	.asciz "_lastBlendEnable"

LDIFF_SYM974=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM974
	.byte 3,35,176,4,6
	.asciz "_lastBlendState"

LDIFF_SYM975=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM975
	.byte 3,35,232,2,6
	.asciz "_lastDepthStencilState"

LDIFF_SYM976=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM976
	.byte 3,35,240,2,6
	.asciz "_lastRasterizerState"

LDIFF_SYM977=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM977
	.byte 3,35,248,2,6
	.asciz "_lastClearColor"

LDIFF_SYM978=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM978
	.byte 3,35,180,4,6
	.asciz "_lastClearDepth"

LDIFF_SYM979=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM979
	.byte 3,35,196,4,6
	.asciz "_lastClearStencil"

LDIFF_SYM980=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM980
	.byte 3,35,200,4,6
	.asciz "clearDepthStencilState"

LDIFF_SYM981=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM981
	.byte 3,35,128,3,6
	.asciz "glFramebuffers"

LDIFF_SYM982=LTDIE_129_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM982
	.byte 3,35,136,3,6
	.asciz "glResolveFramebuffers"

LDIFF_SYM983=LTDIE_129_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM983
	.byte 3,35,144,3,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_GraphicsDevice"

LDIFF_SYM984=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM984
LTDIE_72_POINTER:

	.byte 13
LDIFF_SYM985=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM985
LTDIE_72_REFERENCE:

	.byte 14
LDIFF_SYM986=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM986
LTDIE_133:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM987=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM987
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM988=LTDIE_133 - Ldebug_info_start
	.long LDIFF_SYM988
LTDIE_133_POINTER:

	.byte 13
LDIFF_SYM989=LTDIE_133 - Ldebug_info_start
	.long LDIFF_SYM989
LTDIE_133_REFERENCE:

	.byte 14
LDIFF_SYM990=LTDIE_133 - Ldebug_info_start
	.long LDIFF_SYM990
LTDIE_71:

	.byte 5
	.asciz "Microsoft_Xna_Framework_GraphicsDeviceManager"

	.byte 112,16
LDIFF_SYM991=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM991
	.byte 2,35,0,6
	.asciz "_game"

LDIFF_SYM992=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM992
	.byte 2,35,16,6
	.asciz "_graphicsDevice"

LDIFF_SYM993=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM993
	.byte 2,35,24,6
	.asciz "_preferredBackBufferHeight"

LDIFF_SYM994=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM994
	.byte 2,35,72,6
	.asciz "_preferredBackBufferWidth"

LDIFF_SYM995=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM995
	.byte 2,35,76,6
	.asciz "_preferredBackBufferFormat"

LDIFF_SYM996=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM996
	.byte 2,35,80,6
	.asciz "_preferredDepthStencilFormat"

LDIFF_SYM997=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM997
	.byte 2,35,84,6
	.asciz "_preferMultiSampling"

LDIFF_SYM998=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM998
	.byte 2,35,88,6
	.asciz "_supportedOrientations"

LDIFF_SYM999=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM999
	.byte 2,35,92,6
	.asciz "_synchronizedWithVerticalRetrace"

LDIFF_SYM1000=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1000
	.byte 2,35,96,6
	.asciz "_drawBegun"

LDIFF_SYM1001=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1001
	.byte 2,35,97,6
	.asciz "disposed"

LDIFF_SYM1002=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1002
	.byte 2,35,98,6
	.asciz "_hardwareModeSwitch"

LDIFF_SYM1003=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1003
	.byte 2,35,99,6
	.asciz "_wantFullScreen"

LDIFF_SYM1004=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1004
	.byte 2,35,100,6
	.asciz "DeviceCreated"

LDIFF_SYM1005=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1005
	.byte 2,35,32,6
	.asciz "DeviceDisposing"

LDIFF_SYM1006=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1006
	.byte 2,35,40,6
	.asciz "DeviceReset"

LDIFF_SYM1007=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1007
	.byte 2,35,48,6
	.asciz "DeviceResetting"

LDIFF_SYM1008=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1008
	.byte 2,35,56,6
	.asciz "PreparingDeviceSettings"

LDIFF_SYM1009=LTDIE_133_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1009
	.byte 2,35,64,6
	.asciz "<GraphicsProfile>k__BackingField"

LDIFF_SYM1010=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM1010
	.byte 2,35,104,0,7
	.asciz "Microsoft_Xna_Framework_GraphicsDeviceManager"

LDIFF_SYM1011=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM1011
LTDIE_71_POINTER:

	.byte 13
LDIFF_SYM1012=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM1012
LTDIE_71_REFERENCE:

	.byte 14
LDIFF_SYM1013=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM1013
LTDIE_135:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_SpriteBatcher"

	.byte 56,16
LDIFF_SYM1014=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1014
	.byte 2,35,0,6
	.asciz "_batchItemList"

LDIFF_SYM1015=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1015
	.byte 2,35,16,6
	.asciz "_batchItemCount"

LDIFF_SYM1016=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1016
	.byte 2,35,48,6
	.asciz "_device"

LDIFF_SYM1017=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1017
	.byte 2,35,24,6
	.asciz "_index"

LDIFF_SYM1018=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1018
	.byte 2,35,32,6
	.asciz "_vertexArray"

LDIFF_SYM1019=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1019
	.byte 2,35,40,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_SpriteBatcher"

LDIFF_SYM1020=LTDIE_135 - Ldebug_info_start
	.long LDIFF_SYM1020
LTDIE_135_POINTER:

	.byte 13
LDIFF_SYM1021=LTDIE_135 - Ldebug_info_start
	.long LDIFF_SYM1021
LTDIE_135_REFERENCE:

	.byte 14
LDIFF_SYM1022=LTDIE_135 - Ldebug_info_start
	.long LDIFF_SYM1022
LTDIE_136:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_SpriteSortMode"

	.byte 4
LDIFF_SYM1023=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1023
	.byte 9
	.asciz "Deferred"

	.byte 0,9
	.asciz "Immediate"

	.byte 1,9
	.asciz "Texture"

	.byte 2,9
	.asciz "BackToFront"

	.byte 3,9
	.asciz "FrontToBack"

	.byte 4,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_SpriteSortMode"

LDIFF_SYM1024=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM1024
LTDIE_136_POINTER:

	.byte 13
LDIFF_SYM1025=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM1025
LTDIE_136_REFERENCE:

	.byte 14
LDIFF_SYM1026=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM1026
LTDIE_138:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_EffectParameterCollection"

	.byte 24,16
LDIFF_SYM1027=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1027
	.byte 2,35,0,6
	.asciz "_parameters"

LDIFF_SYM1028=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1028
	.byte 2,35,16,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_EffectParameterCollection"

LDIFF_SYM1029=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM1029
LTDIE_138_POINTER:

	.byte 13
LDIFF_SYM1030=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM1030
LTDIE_138_REFERENCE:

	.byte 14
LDIFF_SYM1031=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM1031
LTDIE_139:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_EffectTechniqueCollection"

	.byte 24,16
LDIFF_SYM1032=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1032
	.byte 2,35,0,6
	.asciz "_techniques"

LDIFF_SYM1033=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1033
	.byte 2,35,16,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_EffectTechniqueCollection"

LDIFF_SYM1034=LTDIE_139 - Ldebug_info_start
	.long LDIFF_SYM1034
LTDIE_139_POINTER:

	.byte 13
LDIFF_SYM1035=LTDIE_139 - Ldebug_info_start
	.long LDIFF_SYM1035
LTDIE_139_REFERENCE:

	.byte 14
LDIFF_SYM1036=LTDIE_139 - Ldebug_info_start
	.long LDIFF_SYM1036
LTDIE_141:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_EffectPassCollection"

	.byte 24,16
LDIFF_SYM1037=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1037
	.byte 2,35,0,6
	.asciz "_passes"

LDIFF_SYM1038=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1038
	.byte 2,35,16,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_EffectPassCollection"

LDIFF_SYM1039=LTDIE_141 - Ldebug_info_start
	.long LDIFF_SYM1039
LTDIE_141_POINTER:

	.byte 13
LDIFF_SYM1040=LTDIE_141 - Ldebug_info_start
	.long LDIFF_SYM1040
LTDIE_141_REFERENCE:

	.byte 14
LDIFF_SYM1041=LTDIE_141 - Ldebug_info_start
	.long LDIFF_SYM1041
LTDIE_142:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_EffectAnnotationCollection"

	.byte 24,16
LDIFF_SYM1042=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1042
	.byte 2,35,0,6
	.asciz "_annotations"

LDIFF_SYM1043=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1043
	.byte 2,35,16,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_EffectAnnotationCollection"

LDIFF_SYM1044=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM1044
LTDIE_142_POINTER:

	.byte 13
LDIFF_SYM1045=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM1045
LTDIE_142_REFERENCE:

	.byte 14
LDIFF_SYM1046=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM1046
LTDIE_140:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_EffectTechnique"

	.byte 40,16
LDIFF_SYM1047=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1047
	.byte 2,35,0,6
	.asciz "<Passes>k__BackingField"

LDIFF_SYM1048=LTDIE_141_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1048
	.byte 2,35,16,6
	.asciz "<Annotations>k__BackingField"

LDIFF_SYM1049=LTDIE_142_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1049
	.byte 2,35,24,6
	.asciz "<Name>k__BackingField"

LDIFF_SYM1050=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1050
	.byte 2,35,32,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_EffectTechnique"

LDIFF_SYM1051=LTDIE_140 - Ldebug_info_start
	.long LDIFF_SYM1051
LTDIE_140_POINTER:

	.byte 13
LDIFF_SYM1052=LTDIE_140 - Ldebug_info_start
	.long LDIFF_SYM1052
LTDIE_140_REFERENCE:

	.byte 14
LDIFF_SYM1053=LTDIE_140 - Ldebug_info_start
	.long LDIFF_SYM1053
LTDIE_137:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_Effect"

	.byte 112,16
LDIFF_SYM1054=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM1054
	.byte 2,35,0,6
	.asciz "<Parameters>k__BackingField"

LDIFF_SYM1055=LTDIE_138_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1055
	.byte 2,35,64,6
	.asciz "<Techniques>k__BackingField"

LDIFF_SYM1056=LTDIE_139_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1056
	.byte 2,35,72,6
	.asciz "<CurrentTechnique>k__BackingField"

LDIFF_SYM1057=LTDIE_140_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1057
	.byte 2,35,80,6
	.asciz "<ConstantBuffers>k__BackingField"

LDIFF_SYM1058=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1058
	.byte 2,35,88,6
	.asciz "_shaders"

LDIFF_SYM1059=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1059
	.byte 2,35,96,6
	.asciz "_isClone"

LDIFF_SYM1060=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1060
	.byte 2,35,104,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_Effect"

LDIFF_SYM1061=LTDIE_137 - Ldebug_info_start
	.long LDIFF_SYM1061
LTDIE_137_POINTER:

	.byte 13
LDIFF_SYM1062=LTDIE_137 - Ldebug_info_start
	.long LDIFF_SYM1062
LTDIE_137_REFERENCE:

	.byte 14
LDIFF_SYM1063=LTDIE_137 - Ldebug_info_start
	.long LDIFF_SYM1063
LTDIE_144:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_EffectParameterClass"

	.byte 4
LDIFF_SYM1064=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1064
	.byte 9
	.asciz "Scalar"

	.byte 0,9
	.asciz "Vector"

	.byte 1,9
	.asciz "Matrix"

	.byte 2,9
	.asciz "Object"

	.byte 3,9
	.asciz "Struct"

	.byte 4,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_EffectParameterClass"

LDIFF_SYM1065=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM1065
LTDIE_144_POINTER:

	.byte 13
LDIFF_SYM1066=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM1066
LTDIE_144_REFERENCE:

	.byte 14
LDIFF_SYM1067=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM1067
LTDIE_145:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_EffectParameterType"

	.byte 4
LDIFF_SYM1068=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1068
	.byte 9
	.asciz "Void"

	.byte 0,9
	.asciz "Bool"

	.byte 1,9
	.asciz "Int32"

	.byte 2,9
	.asciz "Single"

	.byte 3,9
	.asciz "String"

	.byte 4,9
	.asciz "Texture"

	.byte 5,9
	.asciz "Texture1D"

	.byte 6,9
	.asciz "Texture2D"

	.byte 7,9
	.asciz "Texture3D"

	.byte 8,9
	.asciz "TextureCube"

	.byte 9,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_EffectParameterType"

LDIFF_SYM1069=LTDIE_145 - Ldebug_info_start
	.long LDIFF_SYM1069
LTDIE_145_POINTER:

	.byte 13
LDIFF_SYM1070=LTDIE_145 - Ldebug_info_start
	.long LDIFF_SYM1070
LTDIE_145_REFERENCE:

	.byte 14
LDIFF_SYM1071=LTDIE_145 - Ldebug_info_start
	.long LDIFF_SYM1071
LTDIE_146:

	.byte 5
	.asciz "System_UInt64"

	.byte 24,16
LDIFF_SYM1072=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM1072
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM1073=LDIE_U8 - Ldebug_info_start
	.long LDIFF_SYM1073
	.byte 2,35,16,0,7
	.asciz "System_UInt64"

LDIFF_SYM1074=LTDIE_146 - Ldebug_info_start
	.long LDIFF_SYM1074
LTDIE_146_POINTER:

	.byte 13
LDIFF_SYM1075=LTDIE_146 - Ldebug_info_start
	.long LDIFF_SYM1075
LTDIE_146_REFERENCE:

	.byte 14
LDIFF_SYM1076=LTDIE_146 - Ldebug_info_start
	.long LDIFF_SYM1076
LTDIE_143:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_EffectParameter"

	.byte 88,16
LDIFF_SYM1077=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1077
	.byte 2,35,0,6
	.asciz "<Name>k__BackingField"

LDIFF_SYM1078=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1078
	.byte 2,35,16,6
	.asciz "<Semantic>k__BackingField"

LDIFF_SYM1079=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1079
	.byte 2,35,24,6
	.asciz "<ParameterClass>k__BackingField"

LDIFF_SYM1080=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM1080
	.byte 2,35,64,6
	.asciz "<ParameterType>k__BackingField"

LDIFF_SYM1081=LTDIE_145 - Ldebug_info_start
	.long LDIFF_SYM1081
	.byte 2,35,68,6
	.asciz "<RowCount>k__BackingField"

LDIFF_SYM1082=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1082
	.byte 2,35,72,6
	.asciz "<ColumnCount>k__BackingField"

LDIFF_SYM1083=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1083
	.byte 2,35,76,6
	.asciz "<Elements>k__BackingField"

LDIFF_SYM1084=LTDIE_138_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1084
	.byte 2,35,32,6
	.asciz "<StructureMembers>k__BackingField"

LDIFF_SYM1085=LTDIE_138_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1085
	.byte 2,35,40,6
	.asciz "<Annotations>k__BackingField"

LDIFF_SYM1086=LTDIE_142_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1086
	.byte 2,35,48,6
	.asciz "<Data>k__BackingField"

LDIFF_SYM1087=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1087
	.byte 2,35,56,6
	.asciz "<StateKey>k__BackingField"

LDIFF_SYM1088=LDIE_U8 - Ldebug_info_start
	.long LDIFF_SYM1088
	.byte 2,35,80,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_EffectParameter"

LDIFF_SYM1089=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM1089
LTDIE_143_POINTER:

	.byte 13
LDIFF_SYM1090=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM1090
LTDIE_143_REFERENCE:

	.byte 14
LDIFF_SYM1091=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM1091
LTDIE_147:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_EffectPass"

	.byte 80,16
LDIFF_SYM1092=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1092
	.byte 2,35,0,6
	.asciz "_effect"

LDIFF_SYM1093=LTDIE_137_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1093
	.byte 2,35,16,6
	.asciz "_pixelShader"

LDIFF_SYM1094=LTDIE_96_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1094
	.byte 2,35,24,6
	.asciz "_vertexShader"

LDIFF_SYM1095=LTDIE_96_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1095
	.byte 2,35,32,6
	.asciz "_blendState"

LDIFF_SYM1096=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1096
	.byte 2,35,40,6
	.asciz "_depthStencilState"

LDIFF_SYM1097=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1097
	.byte 2,35,48,6
	.asciz "_rasterizerState"

LDIFF_SYM1098=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1098
	.byte 2,35,56,6
	.asciz "<Name>k__BackingField"

LDIFF_SYM1099=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1099
	.byte 2,35,64,6
	.asciz "<Annotations>k__BackingField"

LDIFF_SYM1100=LTDIE_142_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1100
	.byte 2,35,72,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_EffectPass"

LDIFF_SYM1101=LTDIE_147 - Ldebug_info_start
	.long LDIFF_SYM1101
LTDIE_147_POINTER:

	.byte 13
LDIFF_SYM1102=LTDIE_147 - Ldebug_info_start
	.long LDIFF_SYM1102
LTDIE_147_REFERENCE:

	.byte 14
LDIFF_SYM1103=LTDIE_147 - Ldebug_info_start
	.long LDIFF_SYM1103
LTDIE_134:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_SpriteBatch"

	.byte 240,1,16
LDIFF_SYM1104=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM1104
	.byte 2,35,0,6
	.asciz "_batcher"

LDIFF_SYM1105=LTDIE_135_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1105
	.byte 2,35,64,6
	.asciz "_sortMode"

LDIFF_SYM1106=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM1106
	.byte 3,35,136,1,6
	.asciz "_blendState"

LDIFF_SYM1107=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1107
	.byte 2,35,72,6
	.asciz "_samplerState"

LDIFF_SYM1108=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1108
	.byte 2,35,80,6
	.asciz "_depthStencilState"

LDIFF_SYM1109=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1109
	.byte 2,35,88,6
	.asciz "_rasterizerState"

LDIFF_SYM1110=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1110
	.byte 2,35,96,6
	.asciz "_effect"

LDIFF_SYM1111=LTDIE_137_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1111
	.byte 2,35,104,6
	.asciz "_beginCalled"

LDIFF_SYM1112=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1112
	.byte 3,35,140,1,6
	.asciz "_spriteEffect"

LDIFF_SYM1113=LTDIE_137_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1113
	.byte 2,35,112,6
	.asciz "_matrixTransform"

LDIFF_SYM1114=LTDIE_143_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1114
	.byte 2,35,120,6
	.asciz "_spritePass"

LDIFF_SYM1115=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1115
	.byte 3,35,128,1,6
	.asciz "_matrix"

LDIFF_SYM1116=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1116
	.byte 3,35,144,1,6
	.asciz "_tempRect"

LDIFF_SYM1117=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1117
	.byte 3,35,208,1,6
	.asciz "_texCoordTL"

LDIFF_SYM1118=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1118
	.byte 3,35,224,1,6
	.asciz "_texCoordBR"

LDIFF_SYM1119=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1119
	.byte 3,35,232,1,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_SpriteBatch"

LDIFF_SYM1120=LTDIE_134 - Ldebug_info_start
	.long LDIFF_SYM1120
LTDIE_134_POINTER:

	.byte 13
LDIFF_SYM1121=LTDIE_134 - Ldebug_info_start
	.long LDIFF_SYM1121
LTDIE_134_REFERENCE:

	.byte 14
LDIFF_SYM1122=LTDIE_134 - Ldebug_info_start
	.long LDIFF_SYM1122
LTDIE_148:

	.byte 5
	.asciz "TheAdventuresOf_Screen"

	.byte 80,16
LDIFF_SYM1123=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1123
	.byte 2,35,0,6
	.asciz "<scaleMatrix>k__BackingField"

LDIFF_SYM1124=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1124
	.byte 2,35,16,0,7
	.asciz "TheAdventuresOf_Screen"

LDIFF_SYM1125=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1125
LTDIE_148_POINTER:

	.byte 13
LDIFF_SYM1126=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1126
LTDIE_148_REFERENCE:

	.byte 14
LDIFF_SYM1127=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1127
LTDIE_152:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM1128=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1128
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM1129=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1129
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM1130=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1130
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM1131=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1131
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM1132=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1132
LTDIE_152_POINTER:

	.byte 13
LDIFF_SYM1133=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1133
LTDIE_152_REFERENCE:

	.byte 14
LDIFF_SYM1134=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1134
LTDIE_151:

	.byte 5
	.asciz "TheAdventuresOf_Animation"

	.byte 40,16
LDIFF_SYM1135=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1135
	.byte 2,35,0,6
	.asciz "frames"

LDIFF_SYM1136=LTDIE_152_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1136
	.byte 2,35,16,6
	.asciz "timeIntoAnimation"

LDIFF_SYM1137=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1137
	.byte 2,35,24,6
	.asciz "duration"

LDIFF_SYM1138=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1138
	.byte 2,35,32,0,7
	.asciz "TheAdventuresOf_Animation"

LDIFF_SYM1139=LTDIE_151 - Ldebug_info_start
	.long LDIFF_SYM1139
LTDIE_151_POINTER:

	.byte 13
LDIFF_SYM1140=LTDIE_151 - Ldebug_info_start
	.long LDIFF_SYM1140
LTDIE_151_REFERENCE:

	.byte 14
LDIFF_SYM1141=LTDIE_151 - Ldebug_info_start
	.long LDIFF_SYM1141
LTDIE_150:

	.byte 5
	.asciz "TheAdventuresOf_Character"

	.byte 104,16
LDIFF_SYM1142=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1142
	.byte 2,35,0,6
	.asciz "speed"

LDIFF_SYM1143=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1143
	.byte 2,35,40,6
	.asciz "animationSpeed"

LDIFF_SYM1144=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1144
	.byte 2,35,44,6
	.asciz "rotation"

LDIFF_SYM1145=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1145
	.byte 2,35,48,6
	.asciz "characterBounds"

LDIFF_SYM1146=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1146
	.byte 2,35,52,6
	.asciz "positionVector"

LDIFF_SYM1147=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1147
	.byte 2,35,68,6
	.asciz "originVector"

LDIFF_SYM1148=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1148
	.byte 2,35,76,6
	.asciz "frameCount"

LDIFF_SYM1149=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1149
	.byte 2,35,84,6
	.asciz "standAnimation"

LDIFF_SYM1150=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1150
	.byte 2,35,16,6
	.asciz "walkAnimation"

LDIFF_SYM1151=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1151
	.byte 2,35,24,6
	.asciz "currentAnimation"

LDIFF_SYM1152=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1152
	.byte 2,35,32,6
	.asciz "characterWidth"

LDIFF_SYM1153=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1153
	.byte 2,35,88,6
	.asciz "characterHeight"

LDIFF_SYM1154=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1154
	.byte 2,35,92,6
	.asciz "moveLeft"

LDIFF_SYM1155=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1155
	.byte 2,35,96,6
	.asciz "moveRight"

LDIFF_SYM1156=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1156
	.byte 2,35,97,6
	.asciz "isMoving"

LDIFF_SYM1157=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1157
	.byte 2,35,98,6
	.asciz "tintColor"

LDIFF_SYM1158=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1158
	.byte 2,35,100,0,7
	.asciz "TheAdventuresOf_Character"

LDIFF_SYM1159=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1159
LTDIE_150_POINTER:

	.byte 13
LDIFF_SYM1160=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1160
LTDIE_150_REFERENCE:

	.byte 14
LDIFF_SYM1161=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1161
LTDIE_149:

	.byte 5
	.asciz "TheAdventuresOf_Player"

	.byte 160,1,16
LDIFF_SYM1162=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1162
	.byte 2,35,0,6
	.asciz "jumpSpeed"

LDIFF_SYM1163=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1163
	.byte 2,35,104,6
	.asciz "jumpHeight"

LDIFF_SYM1164=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1164
	.byte 2,35,108,6
	.asciz "swordBounds"

LDIFF_SYM1165=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1165
	.byte 2,35,112,6
	.asciz "leftSwordOffset"

LDIFF_SYM1166=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1166
	.byte 3,35,128,1,6
	.asciz "rightSwordOffset"

LDIFF_SYM1167=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1167
	.byte 3,35,132,1,6
	.asciz "swordYOffset"

LDIFF_SYM1168=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1168
	.byte 3,35,136,1,6
	.asciz "swordPositionVector"

LDIFF_SYM1169=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1169
	.byte 3,35,140,1,6
	.asciz "variableJumpSpeed"

LDIFF_SYM1170=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1170
	.byte 3,35,148,1,6
	.asciz "jumpHeightLimit"

LDIFF_SYM1171=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1171
	.byte 3,35,152,1,6
	.asciz "hasJumped"

LDIFF_SYM1172=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1172
	.byte 3,35,156,1,6
	.asciz "isJumping"

LDIFF_SYM1173=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1173
	.byte 3,35,157,1,0,7
	.asciz "TheAdventuresOf_Player"

LDIFF_SYM1174=LTDIE_149 - Ldebug_info_start
	.long LDIFF_SYM1174
LTDIE_149_POINTER:

	.byte 13
LDIFF_SYM1175=LTDIE_149 - Ldebug_info_start
	.long LDIFF_SYM1175
LTDIE_149_REFERENCE:

	.byte 14
LDIFF_SYM1176=LTDIE_149 - Ldebug_info_start
	.long LDIFF_SYM1176
LTDIE_154:

	.byte 5
	.asciz "System_Random"

	.byte 32,16
LDIFF_SYM1177=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1177
	.byte 2,35,0,6
	.asciz "inext"

LDIFF_SYM1178=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1178
	.byte 2,35,24,6
	.asciz "inextp"

LDIFF_SYM1179=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1179
	.byte 2,35,28,6
	.asciz "SeedArray"

LDIFF_SYM1180=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1180
	.byte 2,35,16,0,7
	.asciz "System_Random"

LDIFF_SYM1181=LTDIE_154 - Ldebug_info_start
	.long LDIFF_SYM1181
LTDIE_154_POINTER:

	.byte 13
LDIFF_SYM1182=LTDIE_154 - Ldebug_info_start
	.long LDIFF_SYM1182
LTDIE_154_REFERENCE:

	.byte 14
LDIFF_SYM1183=LTDIE_154 - Ldebug_info_start
	.long LDIFF_SYM1183
LTDIE_153:

	.byte 5
	.asciz "TheAdventuresOf_Monster"

	.byte 152,1,16
LDIFF_SYM1184=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1184
	.byte 2,35,0,6
	.asciz "moveDistanceLimit"

LDIFF_SYM1185=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1185
	.byte 2,35,112,6
	.asciz "moveDelayTime"

LDIFF_SYM1186=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1186
	.byte 2,35,116,6
	.asciz "rotationSpeed"

LDIFF_SYM1187=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1187
	.byte 2,35,120,6
	.asciz "sinkSpeed"

LDIFF_SYM1188=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1188
	.byte 2,35,124,6
	.asciz "isDying"

LDIFF_SYM1189=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1189
	.byte 3,35,128,1,6
	.asciz "isDead"

LDIFF_SYM1190=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1190
	.byte 3,35,129,1,6
	.asciz "distanceMoved"

LDIFF_SYM1191=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1191
	.byte 3,35,132,1,6
	.asciz "timeDelayed"

LDIFF_SYM1192=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1192
	.byte 3,35,136,1,6
	.asciz "delayMove"

LDIFF_SYM1193=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1193
	.byte 3,35,144,1,6
	.asciz "rand"

LDIFF_SYM1194=LTDIE_154_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1194
	.byte 2,35,104,0,7
	.asciz "TheAdventuresOf_Monster"

LDIFF_SYM1195=LTDIE_153 - Ldebug_info_start
	.long LDIFF_SYM1195
LTDIE_153_POINTER:

	.byte 13
LDIFF_SYM1196=LTDIE_153 - Ldebug_info_start
	.long LDIFF_SYM1196
LTDIE_153_REFERENCE:

	.byte 14
LDIFF_SYM1197=LTDIE_153 - Ldebug_info_start
	.long LDIFF_SYM1197
LTDIE_155:

	.byte 5
	.asciz "TheAdventuresOf_Level"

	.byte 16,16
LDIFF_SYM1198=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1198
	.byte 2,35,0,0,7
	.asciz "TheAdventuresOf_Level"

LDIFF_SYM1199=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM1199
LTDIE_155_POINTER:

	.byte 13
LDIFF_SYM1200=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM1200
LTDIE_155_REFERENCE:

	.byte 14
LDIFF_SYM1201=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM1201
LTDIE_7:

	.byte 5
	.asciz "TheAdventuresOf_TheAdventuresOf"

	.byte 248,1,16
LDIFF_SYM1202=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM1202
	.byte 2,35,0,6
	.asciz "graphics"

LDIFF_SYM1203=LTDIE_71_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1203
	.byte 3,35,200,1,6
	.asciz "spriteBatch"

LDIFF_SYM1204=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1204
	.byte 3,35,208,1,6
	.asciz "screen"

LDIFF_SYM1205=LTDIE_148_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1205
	.byte 3,35,216,1,6
	.asciz "player"

LDIFF_SYM1206=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1206
	.byte 3,35,224,1,6
	.asciz "blockMonster"

LDIFF_SYM1207=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1207
	.byte 3,35,232,1,6
	.asciz "level"

LDIFF_SYM1208=LTDIE_155_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1208
	.byte 3,35,240,1,0,7
	.asciz "TheAdventuresOf_TheAdventuresOf"

LDIFF_SYM1209=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM1209
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM1210=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM1210
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM1211=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM1211
	.byte 2
	.asciz "TheAdventuresOf.TheAdventuresOf:.ctor"
	.asciz "TheAdventuresOf_TheAdventuresOf__ctor"

	.byte 2,22
	.quad TheAdventuresOf_TheAdventuresOf__ctor
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1212=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1212
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1213=Lfde4_end - Lfde4_start
	.long LDIFF_SYM1213
Lfde4_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_TheAdventuresOf__ctor

LDIFF_SYM1214=Lme_4 - TheAdventuresOf_TheAdventuresOf__ctor
	.long LDIFF_SYM1214
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.TheAdventuresOf:Initialize"
	.asciz "TheAdventuresOf_TheAdventuresOf_Initialize"

	.byte 2,38
	.quad TheAdventuresOf_TheAdventuresOf_Initialize
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1215=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1215
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1216=Lfde5_end - Lfde5_start
	.long LDIFF_SYM1216
Lfde5_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_TheAdventuresOf_Initialize

LDIFF_SYM1217=Lme_5 - TheAdventuresOf_TheAdventuresOf_Initialize
	.long LDIFF_SYM1217
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,154,18
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.TheAdventuresOf:LoadContent"
	.asciz "TheAdventuresOf_TheAdventuresOf_LoadContent"

	.byte 2,51
	.quad TheAdventuresOf_TheAdventuresOf_LoadContent
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1218=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1218
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1219=Lfde6_end - Lfde6_start
	.long LDIFF_SYM1219
Lfde6_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_TheAdventuresOf_LoadContent

LDIFF_SYM1220=Lme_6 - TheAdventuresOf_TheAdventuresOf_LoadContent
	.long LDIFF_SYM1220
	.long 0
	.byte 12,31,0,68,14,160,2,157,36,158,35,68,13,29,68,154,34
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.TheAdventuresOf:Update"
	.asciz "TheAdventuresOf_TheAdventuresOf_Update_Microsoft_Xna_Framework_GameTime"

	.byte 2,83
	.quad TheAdventuresOf_TheAdventuresOf_Update_Microsoft_Xna_Framework_GameTime
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1221=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1221
	.byte 1,105,3
	.asciz "gameTime"

LDIFF_SYM1222=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1222
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1223=Lfde7_end - Lfde7_start
	.long LDIFF_SYM1223
Lfde7_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_TheAdventuresOf_Update_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1224=Lme_7 - TheAdventuresOf_TheAdventuresOf_Update_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1224
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,154,9
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.TheAdventuresOf:Draw"
	.asciz "TheAdventuresOf_TheAdventuresOf_Draw_Microsoft_Xna_Framework_GameTime"

	.byte 2,125
	.quad TheAdventuresOf_TheAdventuresOf_Draw_Microsoft_Xna_Framework_GameTime
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1225=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1225
	.byte 1,105,3
	.asciz "gameTime"

LDIFF_SYM1226=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1226
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1227=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1227
	.byte 3,141,216,3,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1228=Lfde8_end - Lfde8_start
	.long LDIFF_SYM1228
Lfde8_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_TheAdventuresOf_Draw_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1229=Lme_8 - TheAdventuresOf_TheAdventuresOf_Draw_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1229
	.long 0
	.byte 12,31,0,84,14,208,4,157,74,158,73,68,13,29,68,153,72,154,71
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Screen:.ctor"
	.asciz "TheAdventuresOf_Screen__ctor_int_int"

	.byte 3,20
	.quad TheAdventuresOf_Screen__ctor_int_int
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1230=LTDIE_148_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1230
	.byte 1,104,3
	.asciz "actualWidth"

LDIFF_SYM1231=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1231
	.byte 2,141,24,3
	.asciz "actualHeight"

LDIFF_SYM1232=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1232
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1233=Lfde9_end - Lfde9_start
	.long LDIFF_SYM1233
Lfde9_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Screen__ctor_int_int

LDIFF_SYM1234=Lme_9 - TheAdventuresOf_Screen__ctor_int_int
	.long LDIFF_SYM1234
	.long 0
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,152,26
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Screen:get_scaleMatrix"
	.asciz "TheAdventuresOf_Screen_get_scaleMatrix"

	.byte 3,16
	.quad TheAdventuresOf_Screen_get_scaleMatrix
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1235=LTDIE_148_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1235
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1236=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1236
	.byte 3,141,184,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1237=Lfde10_end - Lfde10_start
	.long LDIFF_SYM1237
Lfde10_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Screen_get_scaleMatrix

LDIFF_SYM1238=Lme_a - TheAdventuresOf_Screen_get_scaleMatrix
	.long LDIFF_SYM1238
	.long 0
	.byte 12,31,0,68,14,128,2,157,32,158,31,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Screen:set_scaleMatrix"
	.asciz "TheAdventuresOf_Screen_set_scaleMatrix_Microsoft_Xna_Framework_Matrix"

	.byte 3,16
	.quad TheAdventuresOf_Screen_set_scaleMatrix_Microsoft_Xna_Framework_Matrix
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1239=LTDIE_148_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1239
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1240=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1240
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1241=Lfde11_end - Lfde11_start
	.long LDIFF_SYM1241
Lfde11_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Screen_set_scaleMatrix_Microsoft_Xna_Framework_Matrix

LDIFF_SYM1242=Lme_b - TheAdventuresOf_Screen_set_scaleMatrix_Microsoft_Xna_Framework_Matrix
	.long LDIFF_SYM1242
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Screen:CreateScaleMatrix"
	.asciz "TheAdventuresOf_Screen_CreateScaleMatrix_int_int"

	.byte 3,28
	.quad TheAdventuresOf_Screen_CreateScaleMatrix_int_int
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1243=LTDIE_148_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1243
	.byte 2,141,24,3
	.asciz "actualWidth"

LDIFF_SYM1244=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1244
	.byte 2,141,32,3
	.asciz "actualHeight"

LDIFF_SYM1245=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1245
	.byte 2,141,40,11
	.asciz "scaleX"

LDIFF_SYM1246=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1246
	.byte 3,141,136,3,11
	.asciz "scaleY"

LDIFF_SYM1247=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1247
	.byte 3,141,140,3,11
	.asciz "matrix"

LDIFF_SYM1248=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1248
	.byte 3,141,200,2,11
	.asciz "V_3"

LDIFF_SYM1249=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1249
	.byte 3,141,136,2,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1250=Lfde12_end - Lfde12_start
	.long LDIFF_SYM1250
Lfde12_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Screen_CreateScaleMatrix_int_int

LDIFF_SYM1251=Lme_c - TheAdventuresOf_Screen_CreateScaleMatrix_int_int
	.long LDIFF_SYM1251
	.long 0
	.byte 12,31,0,68,14,176,3,157,54,158,53,68,13,29
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Screen:Update"
	.asciz "TheAdventuresOf_Screen_Update_Microsoft_Xna_Framework_GameTime"

	.byte 3,39
	.quad TheAdventuresOf_Screen_Update_Microsoft_Xna_Framework_GameTime
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1252=LTDIE_148_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1252
	.byte 2,141,16,3
	.asciz "gameTime"

LDIFF_SYM1253=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1253
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1254=Lfde13_end - Lfde13_start
	.long LDIFF_SYM1254
Lfde13_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Screen_Update_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1255=Lme_d - TheAdventuresOf_Screen_Update_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1255
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_156:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM1256=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1256
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM1257=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1257
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM1258=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1258
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM1259=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1259
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM1260=LTDIE_156 - Ldebug_info_start
	.long LDIFF_SYM1260
LTDIE_156_POINTER:

	.byte 13
LDIFF_SYM1261=LTDIE_156 - Ldebug_info_start
	.long LDIFF_SYM1261
LTDIE_156_REFERENCE:

	.byte 14
LDIFF_SYM1262=LTDIE_156 - Ldebug_info_start
	.long LDIFF_SYM1262
	.byte 2
	.asciz "TheAdventuresOf.Screen:HandleInput"
	.asciz "TheAdventuresOf_Screen_HandleInput_Microsoft_Xna_Framework_GameTime"

	.byte 3,44
	.quad TheAdventuresOf_Screen_HandleInput_Microsoft_Xna_Framework_GameTime
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1263=LTDIE_148_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1263
	.byte 2,141,32,3
	.asciz "gameTime"

LDIFF_SYM1264=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1264
	.byte 2,141,40,11
	.asciz "touchPoints"

LDIFF_SYM1265=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1265
	.byte 1,105,11
	.asciz "i"

LDIFF_SYM1266=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1266
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1267=Lfde14_end - Lfde14_start
	.long LDIFF_SYM1267
Lfde14_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Screen_HandleInput_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1268=Lme_e - TheAdventuresOf_Screen_HandleInput_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1268
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,152,16,153,15
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Screen:GetTouchInput"
	.asciz "TheAdventuresOf_Screen_GetTouchInput"

	.byte 3,64
	.quad TheAdventuresOf_Screen_GetTouchInput
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1269=LTDIE_148_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1269
	.byte 1,106,11
	.asciz "touchPoints"

LDIFF_SYM1270=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1270
	.byte 1,105,11
	.asciz "touchCollection"

LDIFF_SYM1271=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1271
	.byte 3,141,216,3,11
	.asciz "i"

LDIFF_SYM1272=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1272
	.byte 1,104,11
	.asciz "originalPoint"

LDIFF_SYM1273=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1273
	.byte 3,141,208,3,11
	.asciz "V_4"

LDIFF_SYM1274=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1274
	.byte 3,141,128,3,11
	.asciz "V_5"

LDIFF_SYM1275=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1275
	.byte 3,141,248,2,11
	.asciz "V_6"

LDIFF_SYM1276=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1276
	.byte 3,141,168,2,11
	.asciz "V_7"

LDIFF_SYM1277=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1277
	.byte 3,141,160,2,11
	.asciz "scaledPoint"

LDIFF_SYM1278=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1278
	.byte 3,141,152,2,11
	.asciz "V_9"

LDIFF_SYM1279=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1279
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1280=Lfde15_end - Lfde15_start
	.long LDIFF_SYM1280
Lfde15_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Screen_GetTouchInput

LDIFF_SYM1281=Lme_f - TheAdventuresOf_Screen_GetTouchInput
	.long LDIFF_SYM1281
	.long 0
	.byte 12,31,0,84,14,176,4,157,70,158,69,68,13,29,68,151,68,152,67,68,153,66,154,65
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Screen:GetScaledTouchInput"
	.asciz "TheAdventuresOf_Screen_GetScaledTouchInput_Microsoft_Xna_Framework_Point"

	.byte 3,88
	.quad TheAdventuresOf_Screen_GetScaledTouchInput_Microsoft_Xna_Framework_Point
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1282=LTDIE_148_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1282
	.byte 2,141,32,3
	.asciz "originalPoint"

LDIFF_SYM1283=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1283
	.byte 2,141,40,11
	.asciz "matrix"

LDIFF_SYM1284=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1284
	.byte 3,141,208,3,11
	.asciz "scaledPoint"

LDIFF_SYM1285=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1285
	.byte 3,141,200,3,11
	.asciz "V_2"

LDIFF_SYM1286=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1286
	.byte 3,141,192,3,11
	.asciz "V_3"

LDIFF_SYM1287=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1287
	.byte 3,141,184,3,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1288=Lfde16_end - Lfde16_start
	.long LDIFF_SYM1288
Lfde16_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Screen_GetScaledTouchInput_Microsoft_Xna_Framework_Point

LDIFF_SYM1289=Lme_10 - TheAdventuresOf_Screen_GetScaledTouchInput_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM1289
	.long 0
	.byte 12,31,0,84,14,192,4,157,72,158,71,68,13,29
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Character:.ctor"
	.asciz "TheAdventuresOf_Character__ctor"

	.byte 4,13
	.quad TheAdventuresOf_Character__ctor
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1290=LTDIE_150_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1290
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1291=Lfde17_end - Lfde17_start
	.long LDIFF_SYM1291
Lfde17_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Character__ctor

LDIFF_SYM1292=Lme_11 - TheAdventuresOf_Character__ctor
	.long LDIFF_SYM1292
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Character:HandleMovement"
	.asciz "TheAdventuresOf_Character_HandleMovement_Microsoft_Xna_Framework_GameTime"

	.byte 4,35
	.quad TheAdventuresOf_Character_HandleMovement_Microsoft_Xna_Framework_GameTime
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1293=LTDIE_150_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1293
	.byte 2,141,16,3
	.asciz "gameTime"

LDIFF_SYM1294=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1294
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1295=Lfde18_end - Lfde18_start
	.long LDIFF_SYM1295
Lfde18_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Character_HandleMovement_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1296=Lme_12 - TheAdventuresOf_Character_HandleMovement_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1296
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Character:InitializeAnimation"
	.asciz "TheAdventuresOf_Character_InitializeAnimation"

	.byte 4,36
	.quad TheAdventuresOf_Character_InitializeAnimation
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1297=LTDIE_150_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1297
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1298=Lfde19_end - Lfde19_start
	.long LDIFF_SYM1298
Lfde19_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Character_InitializeAnimation

LDIFF_SYM1299=Lme_13 - TheAdventuresOf_Character_InitializeAnimation
	.long LDIFF_SYM1299
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Character:Move"
	.asciz "TheAdventuresOf_Character_Move_Microsoft_Xna_Framework_GameTime_int"

	.byte 4,37
	.quad TheAdventuresOf_Character_Move_Microsoft_Xna_Framework_GameTime_int
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1300=LTDIE_150_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1300
	.byte 2,141,16,3
	.asciz "gameTime"

LDIFF_SYM1301=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1301
	.byte 2,141,24,3
	.asciz "direction"

LDIFF_SYM1302=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1302
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1303=Lfde20_end - Lfde20_start
	.long LDIFF_SYM1303
Lfde20_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Character_Move_Microsoft_Xna_Framework_GameTime_int

LDIFF_SYM1304=Lme_14 - TheAdventuresOf_Character_Move_Microsoft_Xna_Framework_GameTime_int
	.long LDIFF_SYM1304
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Character:HandleAnimation"
	.asciz "TheAdventuresOf_Character_HandleAnimation_Microsoft_Xna_Framework_GameTime"

	.byte 4,38
	.quad TheAdventuresOf_Character_HandleAnimation_Microsoft_Xna_Framework_GameTime
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1305=LTDIE_150_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1305
	.byte 2,141,16,3
	.asciz "gameTime"

LDIFF_SYM1306=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1306
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1307=Lfde21_end - Lfde21_start
	.long LDIFF_SYM1307
Lfde21_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Character_HandleAnimation_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1308=Lme_15 - TheAdventuresOf_Character_HandleAnimation_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1308
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Character:InitializeCharacter"
	.asciz "TheAdventuresOf_Character_InitializeCharacter_single_single_int_int"

	.byte 4,41
	.quad TheAdventuresOf_Character_InitializeCharacter_single_single_int_int
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1309=LTDIE_150_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1309
	.byte 1,104,3
	.asciz "startX"

LDIFF_SYM1310=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1310
	.byte 2,141,40,3
	.asciz "startY"

LDIFF_SYM1311=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1311
	.byte 2,141,48,3
	.asciz "characterWidth"

LDIFF_SYM1312=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1312
	.byte 1,105,3
	.asciz "characterHeight"

LDIFF_SYM1313=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1313
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1314=Lfde22_end - Lfde22_start
	.long LDIFF_SYM1314
Lfde22_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Character_InitializeCharacter_single_single_int_int

LDIFF_SYM1315=Lme_16 - TheAdventuresOf_Character_InitializeCharacter_single_single_int_int
	.long LDIFF_SYM1315
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,152,24,153,23,68,154,22
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Character:UpdateCharacterBounds"
	.asciz "TheAdventuresOf_Character_UpdateCharacterBounds"

	.byte 4,58
	.quad TheAdventuresOf_Character_UpdateCharacterBounds
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1316=LTDIE_150_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1316
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1317=Lfde23_end - Lfde23_start
	.long LDIFF_SYM1317
Lfde23_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Character_UpdateCharacterBounds

LDIFF_SYM1318=Lme_17 - TheAdventuresOf_Character_UpdateCharacterBounds
	.long LDIFF_SYM1318
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Character:HandleLevelBoundCollision"
	.asciz "TheAdventuresOf_Character_HandleLevelBoundCollision_int_int"

	.byte 4,64
	.quad TheAdventuresOf_Character_HandleLevelBoundCollision_int_int
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1319=LTDIE_150_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1319
	.byte 1,104,3
	.asciz "direction"

LDIFF_SYM1320=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1320
	.byte 1,105,3
	.asciz "boundX"

LDIFF_SYM1321=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1321
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1322=Lfde24_end - Lfde24_start
	.long LDIFF_SYM1322
Lfde24_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Character_HandleLevelBoundCollision_int_int

LDIFF_SYM1323=Lme_18 - TheAdventuresOf_Character_HandleLevelBoundCollision_int_int
	.long LDIFF_SYM1323
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Character:Update"
	.asciz "TheAdventuresOf_Character_Update_Microsoft_Xna_Framework_GameTime_bool"

	.byte 4,78
	.quad TheAdventuresOf_Character_Update_Microsoft_Xna_Framework_GameTime_bool
	.quad Lme_19

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1324=LTDIE_150_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1324
	.byte 2,141,16,3
	.asciz "gameTime"

LDIFF_SYM1325=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1325
	.byte 2,141,24,3
	.asciz "buttonPressed"

LDIFF_SYM1326=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1326
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1327=Lfde25_end - Lfde25_start
	.long LDIFF_SYM1327
Lfde25_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Character_Update_Microsoft_Xna_Framework_GameTime_bool

LDIFF_SYM1328=Lme_19 - TheAdventuresOf_Character_Update_Microsoft_Xna_Framework_GameTime_bool
	.long LDIFF_SYM1328
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_159:

	.byte 8
	.asciz "OpenTK_Graphics_ES20_TextureTarget"

	.byte 4
LDIFF_SYM1329=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1329
	.byte 9
	.asciz "Texture2D"

	.byte 225,27,9
	.asciz "Texture"

	.byte 130,46,9
	.asciz "TextureCubeMap"

	.byte 147,138,2,9
	.asciz "TextureBindingCubeMap"

	.byte 148,138,2,9
	.asciz "TextureCubeMapPositiveX"

	.byte 149,138,2,9
	.asciz "TextureCubeMapNegativeX"

	.byte 150,138,2,9
	.asciz "TextureCubeMapPositiveY"

	.byte 151,138,2,9
	.asciz "TextureCubeMapNegativeY"

	.byte 152,138,2,9
	.asciz "TextureCubeMapPositiveZ"

	.byte 153,138,2,9
	.asciz "TextureCubeMapNegativeZ"

	.byte 154,138,2,9
	.asciz "MaxCubeMapTextureSize"

	.byte 156,138,2,0,7
	.asciz "OpenTK_Graphics_ES20_TextureTarget"

LDIFF_SYM1330=LTDIE_159 - Ldebug_info_start
	.long LDIFF_SYM1330
LTDIE_159_POINTER:

	.byte 13
LDIFF_SYM1331=LTDIE_159 - Ldebug_info_start
	.long LDIFF_SYM1331
LTDIE_159_REFERENCE:

	.byte 14
LDIFF_SYM1332=LTDIE_159 - Ldebug_info_start
	.long LDIFF_SYM1332
LTDIE_160:

	.byte 8
	.asciz "OpenTK_Graphics_ES20_TextureUnit"

	.byte 4
LDIFF_SYM1333=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1333
	.byte 9
	.asciz "Texture0"

	.byte 192,137,2,9
	.asciz "Texture1"

	.byte 193,137,2,9
	.asciz "Texture2"

	.byte 194,137,2,9
	.asciz "Texture3"

	.byte 195,137,2,9
	.asciz "Texture4"

	.byte 196,137,2,9
	.asciz "Texture5"

	.byte 197,137,2,9
	.asciz "Texture6"

	.byte 198,137,2,9
	.asciz "Texture7"

	.byte 199,137,2,9
	.asciz "Texture8"

	.byte 200,137,2,9
	.asciz "Texture9"

	.byte 201,137,2,9
	.asciz "Texture10"

	.byte 202,137,2,9
	.asciz "Texture11"

	.byte 203,137,2,9
	.asciz "Texture12"

	.byte 204,137,2,9
	.asciz "Texture13"

	.byte 205,137,2,9
	.asciz "Texture14"

	.byte 206,137,2,9
	.asciz "Texture15"

	.byte 207,137,2,9
	.asciz "Texture16"

	.byte 208,137,2,9
	.asciz "Texture17"

	.byte 209,137,2,9
	.asciz "Texture18"

	.byte 210,137,2,9
	.asciz "Texture19"

	.byte 211,137,2,9
	.asciz "Texture20"

	.byte 212,137,2,9
	.asciz "Texture21"

	.byte 213,137,2,9
	.asciz "Texture22"

	.byte 214,137,2,9
	.asciz "Texture23"

	.byte 215,137,2,9
	.asciz "Texture24"

	.byte 216,137,2,9
	.asciz "Texture25"

	.byte 217,137,2,9
	.asciz "Texture26"

	.byte 218,137,2,9
	.asciz "Texture27"

	.byte 219,137,2,9
	.asciz "Texture28"

	.byte 220,137,2,9
	.asciz "Texture29"

	.byte 221,137,2,9
	.asciz "Texture30"

	.byte 222,137,2,9
	.asciz "Texture31"

	.byte 223,137,2,9
	.asciz "ActiveTexture"

	.byte 224,137,2,0,7
	.asciz "OpenTK_Graphics_ES20_TextureUnit"

LDIFF_SYM1334=LTDIE_160 - Ldebug_info_start
	.long LDIFF_SYM1334
LTDIE_160_POINTER:

	.byte 13
LDIFF_SYM1335=LTDIE_160 - Ldebug_info_start
	.long LDIFF_SYM1335
LTDIE_160_REFERENCE:

	.byte 14
LDIFF_SYM1336=LTDIE_160 - Ldebug_info_start
	.long LDIFF_SYM1336
LTDIE_161:

	.byte 8
	.asciz "OpenTK_Graphics_ES20_PixelInternalFormat"

	.byte 4
LDIFF_SYM1337=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1337
	.byte 9
	.asciz "Alpha"

	.byte 134,50,9
	.asciz "Rgb"

	.byte 135,50,9
	.asciz "Rgba"

	.byte 136,50,9
	.asciz "Luminance"

	.byte 137,50,9
	.asciz "LuminanceAlpha"

	.byte 138,50,0,7
	.asciz "OpenTK_Graphics_ES20_PixelInternalFormat"

LDIFF_SYM1338=LTDIE_161 - Ldebug_info_start
	.long LDIFF_SYM1338
LTDIE_161_POINTER:

	.byte 13
LDIFF_SYM1339=LTDIE_161 - Ldebug_info_start
	.long LDIFF_SYM1339
LTDIE_161_REFERENCE:

	.byte 14
LDIFF_SYM1340=LTDIE_161 - Ldebug_info_start
	.long LDIFF_SYM1340
LTDIE_162:

	.byte 8
	.asciz "OpenTK_Graphics_ES20_PixelFormat"

	.byte 4
LDIFF_SYM1341=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1341
	.byte 9
	.asciz "DepthComponent"

	.byte 130,50,9
	.asciz "Alpha"

	.byte 134,50,9
	.asciz "Rgb"

	.byte 135,50,9
	.asciz "Rgba"

	.byte 136,50,9
	.asciz "Luminance"

	.byte 137,50,9
	.asciz "LuminanceAlpha"

	.byte 138,50,0,7
	.asciz "OpenTK_Graphics_ES20_PixelFormat"

LDIFF_SYM1342=LTDIE_162 - Ldebug_info_start
	.long LDIFF_SYM1342
LTDIE_162_POINTER:

	.byte 13
LDIFF_SYM1343=LTDIE_162 - Ldebug_info_start
	.long LDIFF_SYM1343
LTDIE_162_REFERENCE:

	.byte 14
LDIFF_SYM1344=LTDIE_162 - Ldebug_info_start
	.long LDIFF_SYM1344
LTDIE_163:

	.byte 8
	.asciz "OpenTK_Graphics_ES20_PixelType"

	.byte 4
LDIFF_SYM1345=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1345
	.byte 9
	.asciz "UnsignedByte"

	.byte 129,40,9
	.asciz "UnsignedShort4444"

	.byte 179,128,2,9
	.asciz "UnsignedShort5551"

	.byte 180,128,2,9
	.asciz "UnsignedShort565"

	.byte 227,134,2,0,7
	.asciz "OpenTK_Graphics_ES20_PixelType"

LDIFF_SYM1346=LTDIE_163 - Ldebug_info_start
	.long LDIFF_SYM1346
LTDIE_163_POINTER:

	.byte 13
LDIFF_SYM1347=LTDIE_163 - Ldebug_info_start
	.long LDIFF_SYM1347
LTDIE_163_REFERENCE:

	.byte 14
LDIFF_SYM1348=LTDIE_163 - Ldebug_info_start
	.long LDIFF_SYM1348
LTDIE_158:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_Texture"

	.byte 112,16
LDIFF_SYM1349=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM1349
	.byte 2,35,0,6
	.asciz "_format"

LDIFF_SYM1350=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM1350
	.byte 2,35,72,6
	.asciz "_levelCount"

LDIFF_SYM1351=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1351
	.byte 2,35,76,6
	.asciz "_sortingKey"

LDIFF_SYM1352=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1352
	.byte 2,35,80,6
	.asciz "glTexture"

LDIFF_SYM1353=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1353
	.byte 2,35,84,6
	.asciz "glTarget"

LDIFF_SYM1354=LTDIE_159 - Ldebug_info_start
	.long LDIFF_SYM1354
	.byte 2,35,88,6
	.asciz "glTextureUnit"

LDIFF_SYM1355=LTDIE_160 - Ldebug_info_start
	.long LDIFF_SYM1355
	.byte 2,35,92,6
	.asciz "glInternalFormat"

LDIFF_SYM1356=LTDIE_161 - Ldebug_info_start
	.long LDIFF_SYM1356
	.byte 2,35,96,6
	.asciz "glFormat"

LDIFF_SYM1357=LTDIE_162 - Ldebug_info_start
	.long LDIFF_SYM1357
	.byte 2,35,100,6
	.asciz "glType"

LDIFF_SYM1358=LTDIE_163 - Ldebug_info_start
	.long LDIFF_SYM1358
	.byte 2,35,104,6
	.asciz "glLastSamplerState"

LDIFF_SYM1359=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1359
	.byte 2,35,64,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_Texture"

LDIFF_SYM1360=LTDIE_158 - Ldebug_info_start
	.long LDIFF_SYM1360
LTDIE_158_POINTER:

	.byte 13
LDIFF_SYM1361=LTDIE_158 - Ldebug_info_start
	.long LDIFF_SYM1361
LTDIE_158_REFERENCE:

	.byte 14
LDIFF_SYM1362=LTDIE_158 - Ldebug_info_start
	.long LDIFF_SYM1362
LTDIE_157:

	.byte 5
	.asciz "Microsoft_Xna_Framework_Graphics_Texture2D"

	.byte 128,1,16
LDIFF_SYM1363=LTDIE_158 - Ldebug_info_start
	.long LDIFF_SYM1363
	.byte 2,35,0,6
	.asciz "width"

LDIFF_SYM1364=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1364
	.byte 2,35,112,6
	.asciz "height"

LDIFF_SYM1365=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1365
	.byte 2,35,116,6
	.asciz "ArraySize"

LDIFF_SYM1366=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1366
	.byte 2,35,120,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_Texture2D"

LDIFF_SYM1367=LTDIE_157 - Ldebug_info_start
	.long LDIFF_SYM1367
LTDIE_157_POINTER:

	.byte 13
LDIFF_SYM1368=LTDIE_157 - Ldebug_info_start
	.long LDIFF_SYM1368
LTDIE_157_REFERENCE:

	.byte 14
LDIFF_SYM1369=LTDIE_157 - Ldebug_info_start
	.long LDIFF_SYM1369
	.byte 2
	.asciz "TheAdventuresOf.Character:Draw"
	.asciz "TheAdventuresOf_Character_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D"

	.byte 4,83
	.quad TheAdventuresOf_Character_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1370=LTDIE_150_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1370
	.byte 1,104,3
	.asciz "spriteBatch"

LDIFF_SYM1371=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1371
	.byte 1,105,3
	.asciz "texture"

LDIFF_SYM1372=LTDIE_157_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1372
	.byte 1,106,11
	.asciz "sourceRectangle"

LDIFF_SYM1373=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1373
	.byte 3,141,168,6,11
	.asciz "V_1"

LDIFF_SYM1374=LTDIE_157_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1374
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM1375=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1375
	.byte 3,141,152,6,11
	.asciz "V_3"

LDIFF_SYM1376=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1376
	.byte 3,141,128,6,11
	.asciz "V_4"

LDIFF_SYM1377=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1377
	.byte 3,141,184,6,11
	.asciz "V_5"

LDIFF_SYM1378=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1378
	.byte 3,141,240,5,11
	.asciz "V_6"

LDIFF_SYM1379=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1379
	.byte 3,141,216,5,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1380=Lfde26_end - Lfde26_start
	.long LDIFF_SYM1380
Lfde26_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Character_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D

LDIFF_SYM1381=Lme_1a - TheAdventuresOf_Character_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
	.long LDIFF_SYM1381
	.long 0
	.byte 12,31,0,84,14,128,7,157,112,158,111,68,13,29,84,151,110,152,109,68,153,108,154,107
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.FrameRate:LoadContent"
	.asciz "TheAdventuresOf_FrameRate_LoadContent_Microsoft_Xna_Framework_Content_ContentManager"

	.byte 5,13
	.quad TheAdventuresOf_FrameRate_LoadContent_Microsoft_Xna_Framework_Content_ContentManager
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "contentManager"

LDIFF_SYM1382=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1382
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1383=Lfde27_end - Lfde27_start
	.long LDIFF_SYM1383
Lfde27_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_FrameRate_LoadContent_Microsoft_Xna_Framework_Content_ContentManager

LDIFF_SYM1384=Lme_1b - TheAdventuresOf_FrameRate_LoadContent_Microsoft_Xna_Framework_Content_ContentManager
	.long LDIFF_SYM1384
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.FrameRate:Draw"
	.asciz "TheAdventuresOf_FrameRate_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_GameTime"

	.byte 5,18
	.quad TheAdventuresOf_FrameRate_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_GameTime
	.quad Lme_1c

	.byte 2,118,16,3
	.asciz "spriteBatch"

LDIFF_SYM1385=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1385
	.byte 2,141,16,3
	.asciz "gameTime"

LDIFF_SYM1386=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1386
	.byte 2,141,24,11
	.asciz "frameRate"

LDIFF_SYM1387=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1387
	.byte 3,141,224,0,11
	.asciz "V_1"

LDIFF_SYM1388=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1388
	.byte 3,141,216,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1389=Lfde28_end - Lfde28_start
	.long LDIFF_SYM1389
Lfde28_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_FrameRate_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1390=Lme_1c - TheAdventuresOf_FrameRate_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1390
	.long 0
	.byte 12,31,0,68,14,192,1,157,24,158,23,68,13,29
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_164:

	.byte 5
	.asciz "TheAdventuresOf_AnimationFrame"

	.byte 40,16
LDIFF_SYM1391=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1391
	.byte 2,35,0,6
	.asciz "<sourceRectangle>k__BackingField"

LDIFF_SYM1392=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1392
	.byte 2,35,16,6
	.asciz "<duration>k__BackingField"

LDIFF_SYM1393=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1393
	.byte 2,35,32,0,7
	.asciz "TheAdventuresOf_AnimationFrame"

LDIFF_SYM1394=LTDIE_164 - Ldebug_info_start
	.long LDIFF_SYM1394
LTDIE_164_POINTER:

	.byte 13
LDIFF_SYM1395=LTDIE_164 - Ldebug_info_start
	.long LDIFF_SYM1395
LTDIE_164_REFERENCE:

	.byte 14
LDIFF_SYM1396=LTDIE_164 - Ldebug_info_start
	.long LDIFF_SYM1396
	.byte 2
	.asciz "TheAdventuresOf.AnimationFrame:.ctor"
	.asciz "TheAdventuresOf_AnimationFrame__ctor"

	.byte 0,0
	.quad TheAdventuresOf_AnimationFrame__ctor
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1397=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1397
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1398=Lfde29_end - Lfde29_start
	.long LDIFF_SYM1398
Lfde29_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_AnimationFrame__ctor

LDIFF_SYM1399=Lme_1d - TheAdventuresOf_AnimationFrame__ctor
	.long LDIFF_SYM1399
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.AnimationFrame:get_sourceRectangle"
	.asciz "TheAdventuresOf_AnimationFrame_get_sourceRectangle"

	.byte 6,7
	.quad TheAdventuresOf_AnimationFrame_get_sourceRectangle
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1400=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1400
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM1401=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1401
	.byte 3,141,224,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1402=Lfde30_end - Lfde30_start
	.long LDIFF_SYM1402
Lfde30_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_AnimationFrame_get_sourceRectangle

LDIFF_SYM1403=Lme_1e - TheAdventuresOf_AnimationFrame_get_sourceRectangle
	.long LDIFF_SYM1403
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.AnimationFrame:set_sourceRectangle"
	.asciz "TheAdventuresOf_AnimationFrame_set_sourceRectangle_Microsoft_Xna_Framework_Rectangle"

	.byte 6,7
	.quad TheAdventuresOf_AnimationFrame_set_sourceRectangle_Microsoft_Xna_Framework_Rectangle
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1404=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1404
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1405=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1405
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1406=Lfde31_end - Lfde31_start
	.long LDIFF_SYM1406
Lfde31_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_AnimationFrame_set_sourceRectangle_Microsoft_Xna_Framework_Rectangle

LDIFF_SYM1407=Lme_1f - TheAdventuresOf_AnimationFrame_set_sourceRectangle_Microsoft_Xna_Framework_Rectangle
	.long LDIFF_SYM1407
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.AnimationFrame:get_duration"
	.asciz "TheAdventuresOf_AnimationFrame_get_duration"

	.byte 6,8
	.quad TheAdventuresOf_AnimationFrame_get_duration
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1408=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1408
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM1409=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1409
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1410=Lfde32_end - Lfde32_start
	.long LDIFF_SYM1410
Lfde32_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_AnimationFrame_get_duration

LDIFF_SYM1411=Lme_20 - TheAdventuresOf_AnimationFrame_get_duration
	.long LDIFF_SYM1411
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.AnimationFrame:set_duration"
	.asciz "TheAdventuresOf_AnimationFrame_set_duration_System_TimeSpan"

	.byte 6,8
	.quad TheAdventuresOf_AnimationFrame_set_duration_System_TimeSpan
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1412=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1412
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1413=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1413
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1414=Lfde33_end - Lfde33_start
	.long LDIFF_SYM1414
Lfde33_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_AnimationFrame_set_duration_System_TimeSpan

LDIFF_SYM1415=Lme_21 - TheAdventuresOf_AnimationFrame_set_duration_System_TimeSpan
	.long LDIFF_SYM1415
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Animation:.ctor"
	.asciz "TheAdventuresOf_Animation__ctor"

	.byte 7,10
	.quad TheAdventuresOf_Animation__ctor
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1416=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1416
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1417=Lfde34_end - Lfde34_start
	.long LDIFF_SYM1417
Lfde34_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Animation__ctor

LDIFF_SYM1418=Lme_22 - TheAdventuresOf_Animation__ctor
	.long LDIFF_SYM1418
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Animation:get_CurrentRectangle"
	.asciz "TheAdventuresOf_Animation_get_CurrentRectangle"

	.byte 7,19
	.quad TheAdventuresOf_Animation_get_CurrentRectangle
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1419=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1419
	.byte 1,106,11
	.asciz "currentFrame"

LDIFF_SYM1420=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1420
	.byte 1,105,11
	.asciz "accumulatedTime"

LDIFF_SYM1421=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1421
	.byte 3,141,128,2,11
	.asciz "frame"

LDIFF_SYM1422=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1422
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1423=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1423
	.byte 3,141,232,1,11
	.asciz "V_4"

LDIFF_SYM1424=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1424
	.byte 3,141,216,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1425=Lfde35_end - Lfde35_start
	.long LDIFF_SYM1425
Lfde35_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Animation_get_CurrentRectangle

LDIFF_SYM1426=Lme_23 - TheAdventuresOf_Animation_get_CurrentRectangle
	.long LDIFF_SYM1426
	.long 0
	.byte 12,31,0,68,14,224,2,157,44,158,43,68,13,29,68,152,42,153,41,68,154,40
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_165:

	.byte 5
	.asciz "System_Double"

	.byte 24,16
LDIFF_SYM1427=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM1427
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM1428=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM1428
	.byte 2,35,16,0,7
	.asciz "System_Double"

LDIFF_SYM1429=LTDIE_165 - Ldebug_info_start
	.long LDIFF_SYM1429
LTDIE_165_POINTER:

	.byte 13
LDIFF_SYM1430=LTDIE_165 - Ldebug_info_start
	.long LDIFF_SYM1430
LTDIE_165_REFERENCE:

	.byte 14
LDIFF_SYM1431=LTDIE_165 - Ldebug_info_start
	.long LDIFF_SYM1431
	.byte 2
	.asciz "TheAdventuresOf.Animation:CalculateAnimationDuration"
	.asciz "TheAdventuresOf_Animation_CalculateAnimationDuration"

	.byte 7,58
	.quad TheAdventuresOf_Animation_CalculateAnimationDuration
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1432=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1432
	.byte 1,106,11
	.asciz "totalSeconds"

LDIFF_SYM1433=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM1433
	.byte 3,141,128,1,11
	.asciz "frame"

LDIFF_SYM1434=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1434
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1435=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1435
	.byte 3,141,232,0,11
	.asciz "V_3"

LDIFF_SYM1436=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1436
	.byte 3,141,224,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1437=Lfde36_end - Lfde36_start
	.long LDIFF_SYM1437
Lfde36_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Animation_CalculateAnimationDuration

LDIFF_SYM1438=Lme_24 - TheAdventuresOf_Animation_CalculateAnimationDuration
	.long LDIFF_SYM1438
	.long 0
	.byte 12,31,0,68,14,128,2,157,32,158,31,68,13,29,68,153,30,154,29
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Animation:AddFrame"
	.asciz "TheAdventuresOf_Animation_AddFrame_Microsoft_Xna_Framework_Rectangle_System_TimeSpan"

	.byte 7,70
	.quad TheAdventuresOf_Animation_AddFrame_Microsoft_Xna_Framework_Rectangle_System_TimeSpan
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1439=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1439
	.byte 1,106,3
	.asciz "rectangle"

LDIFF_SYM1440=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1440
	.byte 2,141,40,3
	.asciz "dur"

LDIFF_SYM1441=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1441
	.byte 2,141,56,11
	.asciz "newFrame"

LDIFF_SYM1442=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1442
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM1443=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1443
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1444=Lfde37_end - Lfde37_start
	.long LDIFF_SYM1444
Lfde37_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Animation_AddFrame_Microsoft_Xna_Framework_Rectangle_System_TimeSpan

LDIFF_SYM1445=Lme_25 - TheAdventuresOf_Animation_AddFrame_Microsoft_Xna_Framework_Rectangle_System_TimeSpan
	.long LDIFF_SYM1445
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,152,18,153,17,68,154,16
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Animation:Update"
	.asciz "TheAdventuresOf_Animation_Update_Microsoft_Xna_Framework_GameTime"

	.byte 7,84
	.quad TheAdventuresOf_Animation_Update_Microsoft_Xna_Framework_GameTime
	.quad Lme_26

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1446=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1446
	.byte 1,105,3
	.asciz "gameTime"

LDIFF_SYM1447=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1447
	.byte 2,141,24,11
	.asciz "secondsIntoAnimation"

LDIFF_SYM1448=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM1448
	.byte 3,141,208,0,11
	.asciz "V_1"

LDIFF_SYM1449=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1449
	.byte 3,141,200,0,11
	.asciz "remainder"

LDIFF_SYM1450=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM1450
	.byte 3,141,216,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1451=Lfde38_end - Lfde38_start
	.long LDIFF_SYM1451
Lfde38_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Animation_Update_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1452=Lme_26 - TheAdventuresOf_Animation_Update_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1452
	.long 0
	.byte 12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,153,22
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Controller:InitializeController"
	.asciz "TheAdventuresOf_Controller_InitializeController_Microsoft_Xna_Framework_Graphics_GraphicsDevice"

	.byte 8,21
	.quad TheAdventuresOf_Controller_InitializeController_Microsoft_Xna_Framework_Graphics_GraphicsDevice
	.quad Lme_27

	.byte 2,118,16,3
	.asciz "graphicsDevice"

LDIFF_SYM1453=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1453
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1454=Lfde39_end - Lfde39_start
	.long LDIFF_SYM1454
Lfde39_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Controller_InitializeController_Microsoft_Xna_Framework_Graphics_GraphicsDevice

LDIFF_SYM1455=Lme_27 - TheAdventuresOf_Controller_InitializeController_Microsoft_Xna_Framework_Graphics_GraphicsDevice
	.long LDIFF_SYM1455
	.long 0
	.byte 12,31,0,68,14,176,2,157,38,158,37,68,13,29
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Controller:HandleInput"
	.asciz "TheAdventuresOf_Controller_HandleInput_Microsoft_Xna_Framework_Point"

	.byte 8,31
	.quad TheAdventuresOf_Controller_HandleInput_Microsoft_Xna_Framework_Point
	.quad Lme_28

	.byte 2,118,16,3
	.asciz "point"

LDIFF_SYM1456=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1456
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1457=Lfde40_end - Lfde40_start
	.long LDIFF_SYM1457
Lfde40_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Controller_HandleInput_Microsoft_Xna_Framework_Point

LDIFF_SYM1458=Lme_28 - TheAdventuresOf_Controller_HandleInput_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM1458
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Controller:ResetButtonPressedValues"
	.asciz "TheAdventuresOf_Controller_ResetButtonPressedValues"

	.byte 8,56
	.quad TheAdventuresOf_Controller_ResetButtonPressedValues
	.quad Lme_29

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1459=Lfde41_end - Lfde41_start
	.long LDIFF_SYM1459
Lfde41_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Controller_ResetButtonPressedValues

LDIFF_SYM1460=Lme_29 - TheAdventuresOf_Controller_ResetButtonPressedValues
	.long LDIFF_SYM1460
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Controller:Draw"
	.asciz "TheAdventuresOf_Controller_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch"

	.byte 8,64
	.quad TheAdventuresOf_Controller_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch
	.quad Lme_2a

	.byte 2,118,16,3
	.asciz "spriteBatch"

LDIFF_SYM1461=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1461
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1462=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1462
	.byte 3,141,248,1,11
	.asciz "V_1"

LDIFF_SYM1463=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1463
	.byte 3,141,232,1,11
	.asciz "V_2"

LDIFF_SYM1464=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1464
	.byte 3,141,224,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1465=Lfde42_end - Lfde42_start
	.long LDIFF_SYM1465
Lfde42_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Controller_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch

LDIFF_SYM1466=Lme_2a - TheAdventuresOf_Controller_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch
	.long LDIFF_SYM1466
	.long 0
	.byte 12,31,0,68,14,240,2,157,46,158,45,68,13,29,84,154,44
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_166:

	.byte 5
	.asciz "TheAdventuresOf_Button"

	.byte 64,16
LDIFF_SYM1467=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1467
	.byte 2,35,0,6
	.asciz "buttonBounds"

LDIFF_SYM1468=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1468
	.byte 2,35,16,6
	.asciz "posX"

LDIFF_SYM1469=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1469
	.byte 2,35,32,6
	.asciz "posY"

LDIFF_SYM1470=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1470
	.byte 2,35,36,6
	.asciz "width"

LDIFF_SYM1471=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1471
	.byte 2,35,40,6
	.asciz "height"

LDIFF_SYM1472=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1472
	.byte 2,35,44,6
	.asciz "buttonPositionVector"

LDIFF_SYM1473=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1473
	.byte 2,35,48,6
	.asciz "originVector"

LDIFF_SYM1474=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1474
	.byte 2,35,56,0,7
	.asciz "TheAdventuresOf_Button"

LDIFF_SYM1475=LTDIE_166 - Ldebug_info_start
	.long LDIFF_SYM1475
LTDIE_166_POINTER:

	.byte 13
LDIFF_SYM1476=LTDIE_166 - Ldebug_info_start
	.long LDIFF_SYM1476
LTDIE_166_REFERENCE:

	.byte 14
LDIFF_SYM1477=LTDIE_166 - Ldebug_info_start
	.long LDIFF_SYM1477
	.byte 2
	.asciz "TheAdventuresOf.Button:.ctor"
	.asciz "TheAdventuresOf_Button__ctor_single_single_single_single"

	.byte 9,15
	.quad TheAdventuresOf_Button__ctor_single_single_single_single
	.quad Lme_2b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1478=LTDIE_166_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1478
	.byte 1,106,3
	.asciz "textureWidth"

LDIFF_SYM1479=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1479
	.byte 2,141,24,3
	.asciz "textureHeight"

LDIFF_SYM1480=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1480
	.byte 2,141,32,3
	.asciz "posX"

LDIFF_SYM1481=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1481
	.byte 2,141,40,3
	.asciz "posY"

LDIFF_SYM1482=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1482
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1483=Lfde43_end - Lfde43_start
	.long LDIFF_SYM1483
Lfde43_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Button__ctor_single_single_single_single

LDIFF_SYM1484=Lme_2b - TheAdventuresOf_Button__ctor_single_single_single_single
	.long LDIFF_SYM1484
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Button:InitializeButton"
	.asciz "TheAdventuresOf_Button_InitializeButton"

	.byte 9,28
	.quad TheAdventuresOf_Button_InitializeButton
	.quad Lme_2c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1485=LTDIE_166_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1485
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1486=Lfde44_end - Lfde44_start
	.long LDIFF_SYM1486
Lfde44_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Button_InitializeButton

LDIFF_SYM1487=Lme_2c - TheAdventuresOf_Button_InitializeButton
	.long LDIFF_SYM1487
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,154,12
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Button:InitializeBounds"
	.asciz "TheAdventuresOf_Button_InitializeBounds"

	.byte 9,38
	.quad TheAdventuresOf_Button_InitializeBounds
	.quad Lme_2d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1488=LTDIE_166_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1488
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1489=Lfde45_end - Lfde45_start
	.long LDIFF_SYM1489
Lfde45_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Button_InitializeBounds

LDIFF_SYM1490=Lme_2d - TheAdventuresOf_Button_InitializeBounds
	.long LDIFF_SYM1490
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,154,12
	.align 3
Lfde45_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Button:IsPressed"
	.asciz "TheAdventuresOf_Button_IsPressed_Microsoft_Xna_Framework_Point"

	.byte 9,43
	.quad TheAdventuresOf_Button_IsPressed_Microsoft_Xna_Framework_Point
	.quad Lme_2e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1491=LTDIE_166_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1491
	.byte 2,141,24,3
	.asciz "point"

LDIFF_SYM1492=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1492
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM1493=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1493
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1494=Lfde46_end - Lfde46_start
	.long LDIFF_SYM1494
Lfde46_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Button_IsPressed_Microsoft_Xna_Framework_Point

LDIFF_SYM1495=Lme_2e - TheAdventuresOf_Button_IsPressed_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM1495
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde46_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_167:

	.byte 8
	.asciz "Microsoft_Xna_Framework_Graphics_SpriteEffects"

	.byte 4
LDIFF_SYM1496=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1496
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "FlipHorizontally"

	.byte 1,9
	.asciz "FlipVertically"

	.byte 2,0,7
	.asciz "Microsoft_Xna_Framework_Graphics_SpriteEffects"

LDIFF_SYM1497=LTDIE_167 - Ldebug_info_start
	.long LDIFF_SYM1497
LTDIE_167_POINTER:

	.byte 13
LDIFF_SYM1498=LTDIE_167 - Ldebug_info_start
	.long LDIFF_SYM1498
LTDIE_167_REFERENCE:

	.byte 14
LDIFF_SYM1499=LTDIE_167 - Ldebug_info_start
	.long LDIFF_SYM1499
	.byte 2
	.asciz "TheAdventuresOf.Button:Draw"
	.asciz "TheAdventuresOf_Button_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D_single_Microsoft_Xna_Framework_Graphics_SpriteEffects"

	.byte 9,53
	.quad TheAdventuresOf_Button_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D_single_Microsoft_Xna_Framework_Graphics_SpriteEffects
	.quad Lme_2f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1500=LTDIE_166_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1500
	.byte 1,103,3
	.asciz "spriteBatch"

LDIFF_SYM1501=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1501
	.byte 2,141,24,3
	.asciz "buttonTexture"

LDIFF_SYM1502=LTDIE_157_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1502
	.byte 2,141,32,3
	.asciz "rotation"

LDIFF_SYM1503=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1503
	.byte 2,141,40,3
	.asciz "spriteEffects"

LDIFF_SYM1504=LTDIE_167 - Ldebug_info_start
	.long LDIFF_SYM1504
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM1505=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1505
	.byte 3,141,152,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1506=Lfde47_end - Lfde47_start
	.long LDIFF_SYM1506
Lfde47_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Button_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D_single_Microsoft_Xna_Framework_Graphics_SpriteEffects

LDIFF_SYM1507=Lme_2f - TheAdventuresOf_Button_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D_single_Microsoft_Xna_Framework_Graphics_SpriteEffects
	.long LDIFF_SYM1507
	.long 0
	.byte 12,31,0,68,14,240,1,157,30,158,29,68,13,29,68,151,28
	.align 3
Lfde47_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Level:.ctor"
	.asciz "TheAdventuresOf_Level__ctor"

	.byte 10,17
	.quad TheAdventuresOf_Level__ctor
	.quad Lme_30

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1508=LTDIE_155_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1508
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1509=Lfde48_end - Lfde48_start
	.long LDIFF_SYM1509
Lfde48_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Level__ctor

LDIFF_SYM1510=Lme_30 - TheAdventuresOf_Level__ctor
	.long LDIFF_SYM1510
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde48_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Level:InitializeLevel"
	.asciz "TheAdventuresOf_Level_InitializeLevel"

	.byte 10,23
	.quad TheAdventuresOf_Level_InitializeLevel
	.quad Lme_31

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1511=LTDIE_155_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1511
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1512=Lfde49_end - Lfde49_start
	.long LDIFF_SYM1512
Lfde49_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Level_InitializeLevel

LDIFF_SYM1513=Lme_31 - TheAdventuresOf_Level_InitializeLevel
	.long LDIFF_SYM1513
	.long 0
	.byte 12,31,0,68,14,192,1,157,24,158,23,68,13,29
	.align 3
Lfde49_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Level:CheckCollision"
	.asciz "TheAdventuresOf_Level_CheckCollision_TheAdventuresOf_Character"

	.byte 10,29
	.quad TheAdventuresOf_Level_CheckCollision_TheAdventuresOf_Character
	.quad Lme_32

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1514=LTDIE_155_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1514
	.byte 2,141,24,3
	.asciz "character"

LDIFF_SYM1515=LTDIE_150_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1515
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1516=Lfde50_end - Lfde50_start
	.long LDIFF_SYM1516
Lfde50_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Level_CheckCollision_TheAdventuresOf_Character

LDIFF_SYM1517=Lme_32 - TheAdventuresOf_Level_CheckCollision_TheAdventuresOf_Character
	.long LDIFF_SYM1517
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,154,14
	.align 3
Lfde50_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Level:Draw"
	.asciz "TheAdventuresOf_Level_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch"

	.byte 10,44
	.quad TheAdventuresOf_Level_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch
	.quad Lme_33

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1518=LTDIE_155_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1518
	.byte 2,141,16,3
	.asciz "spriteBatch"

LDIFF_SYM1519=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1519
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1520=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1520
	.byte 3,141,128,2,11
	.asciz "V_1"

LDIFF_SYM1521=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1521
	.byte 3,141,240,1,11
	.asciz "V_2"

LDIFF_SYM1522=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1522
	.byte 3,141,232,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1523=Lfde51_end - Lfde51_start
	.long LDIFF_SYM1523
Lfde51_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Level_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch

LDIFF_SYM1524=Lme_33 - TheAdventuresOf_Level_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch
	.long LDIFF_SYM1524
	.long 0
	.byte 12,31,0,68,14,192,2,157,40,158,39,68,13,29
	.align 3
Lfde51_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Level:.cctor"
	.asciz "TheAdventuresOf_Level__cctor"

	.byte 10,12
	.quad TheAdventuresOf_Level__cctor
	.quad Lme_34

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1525=Lfde52_end - Lfde52_start
	.long LDIFF_SYM1525
Lfde52_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Level__cctor

LDIFF_SYM1526=Lme_34 - TheAdventuresOf_Level__cctor
	.long LDIFF_SYM1526
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde52_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:.ctor"
	.asciz "TheAdventuresOf_Player__ctor"

	.byte 0,0
	.quad TheAdventuresOf_Player__ctor
	.quad Lme_35

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1527=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1527
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1528=Lfde53_end - Lfde53_start
	.long LDIFF_SYM1528
Lfde53_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player__ctor

LDIFF_SYM1529=Lme_35 - TheAdventuresOf_Player__ctor
	.long LDIFF_SYM1529
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde53_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:InitializeCharacter"
	.asciz "TheAdventuresOf_Player_InitializeCharacter_single_single_int_int"

	.byte 11,27
	.quad TheAdventuresOf_Player_InitializeCharacter_single_single_int_int
	.quad Lme_36

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1530=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1530
	.byte 1,104,3
	.asciz "startX"

LDIFF_SYM1531=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1531
	.byte 2,141,32,3
	.asciz "startY"

LDIFF_SYM1532=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1532
	.byte 2,141,40,3
	.asciz "characterWidth"

LDIFF_SYM1533=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1533
	.byte 1,105,3
	.asciz "characterHeight"

LDIFF_SYM1534=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1534
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1535=Lfde54_end - Lfde54_start
	.long LDIFF_SYM1535
Lfde54_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_InitializeCharacter_single_single_int_int

LDIFF_SYM1536=Lme_36 - TheAdventuresOf_Player_InitializeCharacter_single_single_int_int
	.long LDIFF_SYM1536
	.long 0
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,152,26,153,25
	.align 3
Lfde54_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:InitializeAnimation"
	.asciz "TheAdventuresOf_Player_InitializeAnimation"

	.byte 11,41
	.quad TheAdventuresOf_Player_InitializeAnimation
	.quad Lme_37

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1537=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1537
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1538=Lfde55_end - Lfde55_start
	.long LDIFF_SYM1538
Lfde55_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_InitializeAnimation

LDIFF_SYM1539=Lme_37 - TheAdventuresOf_Player_InitializeAnimation
	.long LDIFF_SYM1539
	.long 0
	.byte 12,31,0,68,14,192,2,157,40,158,39,68,13,29,68,154,38
	.align 3
Lfde55_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:Update"
	.asciz "TheAdventuresOf_Player_Update_Microsoft_Xna_Framework_GameTime_bool"

	.byte 11,59
	.quad TheAdventuresOf_Player_Update_Microsoft_Xna_Framework_GameTime_bool
	.quad Lme_38

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1540=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1540
	.byte 1,104,3
	.asciz "gameTime"

LDIFF_SYM1541=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1541
	.byte 1,105,3
	.asciz "buttonPressed"

LDIFF_SYM1542=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1542
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1543=Lfde56_end - Lfde56_start
	.long LDIFF_SYM1543
Lfde56_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_Update_Microsoft_Xna_Framework_GameTime_bool

LDIFF_SYM1544=Lme_38 - TheAdventuresOf_Player_Update_Microsoft_Xna_Framework_GameTime_bool
	.long LDIFF_SYM1544
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4
	.align 3
Lfde56_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:HandleMovement"
	.asciz "TheAdventuresOf_Player_HandleMovement_Microsoft_Xna_Framework_GameTime"

	.byte 11,74
	.quad TheAdventuresOf_Player_HandleMovement_Microsoft_Xna_Framework_GameTime
	.quad Lme_39

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1545=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1545
	.byte 1,105,3
	.asciz "gameTime"

LDIFF_SYM1546=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1546
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1547=Lfde57_end - Lfde57_start
	.long LDIFF_SYM1547
Lfde57_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_HandleMovement_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1548=Lme_39 - TheAdventuresOf_Player_HandleMovement_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1548
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7
	.align 3
Lfde57_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:HandleLevelBoundCollision"
	.asciz "TheAdventuresOf_Player_HandleLevelBoundCollision_int_int"

	.byte 11,90
	.quad TheAdventuresOf_Player_HandleLevelBoundCollision_int_int
	.quad Lme_3a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1549=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1549
	.byte 1,104,3
	.asciz "direction"

LDIFF_SYM1550=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1550
	.byte 1,105,3
	.asciz "boundX"

LDIFF_SYM1551=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1551
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1552=Lfde58_end - Lfde58_start
	.long LDIFF_SYM1552
Lfde58_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_HandleLevelBoundCollision_int_int

LDIFF_SYM1553=Lme_3a - TheAdventuresOf_Player_HandleLevelBoundCollision_int_int
	.long LDIFF_SYM1553
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7
	.align 3
Lfde58_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:CheckCollision"
	.asciz "TheAdventuresOf_Player_CheckCollision_TheAdventuresOf_Monster"

	.byte 11,96
	.quad TheAdventuresOf_Player_CheckCollision_TheAdventuresOf_Monster
	.quad Lme_3b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1554=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1554
	.byte 1,105,3
	.asciz "monster"

LDIFF_SYM1555=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1555
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1556=Lfde59_end - Lfde59_start
	.long LDIFF_SYM1556
Lfde59_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_CheckCollision_TheAdventuresOf_Monster

LDIFF_SYM1557=Lme_3b - TheAdventuresOf_Player_CheckCollision_TheAdventuresOf_Monster
	.long LDIFF_SYM1557
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,153,12,154,11
	.align 3
Lfde59_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:HandleAnimation"
	.asciz "TheAdventuresOf_Player_HandleAnimation_Microsoft_Xna_Framework_GameTime"

	.byte 11,109
	.quad TheAdventuresOf_Player_HandleAnimation_Microsoft_Xna_Framework_GameTime
	.quad Lme_3c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1558=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1558
	.byte 1,105,3
	.asciz "gameTime"

LDIFF_SYM1559=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1559
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1560=Lfde60_end - Lfde60_start
	.long LDIFF_SYM1560
Lfde60_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_HandleAnimation_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1561=Lme_3c - TheAdventuresOf_Player_HandleAnimation_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1561
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7
	.align 3
Lfde60_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:HandleJump"
	.asciz "TheAdventuresOf_Player_HandleJump_Microsoft_Xna_Framework_GameTime"

	.byte 11,126
	.quad TheAdventuresOf_Player_HandleJump_Microsoft_Xna_Framework_GameTime
	.quad Lme_3d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1562=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1562
	.byte 1,105,3
	.asciz "gameTime"

LDIFF_SYM1563=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1563
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1564=Lfde61_end - Lfde61_start
	.long LDIFF_SYM1564
Lfde61_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_HandleJump_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1565=Lme_3d - TheAdventuresOf_Player_HandleJump_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1565
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde61_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:Move"
	.asciz "TheAdventuresOf_Player_Move_Microsoft_Xna_Framework_GameTime_int"

	.byte 11,155,1
	.quad TheAdventuresOf_Player_Move_Microsoft_Xna_Framework_GameTime_int
	.quad Lme_3e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1566=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1566
	.byte 1,104,3
	.asciz "gameTime"

LDIFF_SYM1567=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1567
	.byte 1,105,3
	.asciz "direction"

LDIFF_SYM1568=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1568
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1569=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1569
	.byte 3,141,232,0,11
	.asciz "V_1"

LDIFF_SYM1570=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1570
	.byte 3,141,224,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1571=Lfde62_end - Lfde62_start
	.long LDIFF_SYM1571
Lfde62_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_Move_Microsoft_Xna_Framework_GameTime_int

LDIFF_SYM1572=Lme_3e - TheAdventuresOf_Player_Move_Microsoft_Xna_Framework_GameTime_int
	.long LDIFF_SYM1572
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,150,18,151,17,68,152,16,153,15,68,154,14
	.align 3
Lfde62_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:UpdateCharacterBounds"
	.asciz "TheAdventuresOf_Player_UpdateCharacterBounds"

	.byte 11,178,1
	.quad TheAdventuresOf_Player_UpdateCharacterBounds
	.quad Lme_3f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1573=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1573
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1574=Lfde63_end - Lfde63_start
	.long LDIFF_SYM1574
Lfde63_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_UpdateCharacterBounds

LDIFF_SYM1575=Lme_3f - TheAdventuresOf_Player_UpdateCharacterBounds
	.long LDIFF_SYM1575
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde63_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:UpdateSwordBounds"
	.asciz "TheAdventuresOf_Player_UpdateSwordBounds"

	.byte 11,184,1
	.quad TheAdventuresOf_Player_UpdateSwordBounds
	.quad Lme_40

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1576=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1576
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1577=Lfde64_end - Lfde64_start
	.long LDIFF_SYM1577
Lfde64_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_UpdateSwordBounds

LDIFF_SYM1578=Lme_40 - TheAdventuresOf_Player_UpdateSwordBounds
	.long LDIFF_SYM1578
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde64_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:MoveSword"
	.asciz "TheAdventuresOf_Player_MoveSword_int"

	.byte 11,190,1
	.quad TheAdventuresOf_Player_MoveSword_int
	.quad Lme_41

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1579=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1579
	.byte 1,105,3
	.asciz "direction"

LDIFF_SYM1580=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1580
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1581=Lfde65_end - Lfde65_start
	.long LDIFF_SYM1581
Lfde65_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_MoveSword_int

LDIFF_SYM1582=Lme_41 - TheAdventuresOf_Player_MoveSword_int
	.long LDIFF_SYM1582
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde65_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:Jump"
	.asciz "TheAdventuresOf_Player_Jump_Microsoft_Xna_Framework_GameTime"

	.byte 11,203,1
	.quad TheAdventuresOf_Player_Jump_Microsoft_Xna_Framework_GameTime
	.quad Lme_42

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1583=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1583
	.byte 1,105,3
	.asciz "gameTime"

LDIFF_SYM1584=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1584
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM1585=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1585
	.byte 3,141,216,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1586=Lfde66_end - Lfde66_start
	.long LDIFF_SYM1586
Lfde66_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_Jump_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1587=Lme_42 - TheAdventuresOf_Player_Jump_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1587
	.long 0
	.byte 12,31,0,68,14,128,2,157,32,158,31,68,13,29,68,150,30,151,29,68,152,28,153,27
	.align 3
Lfde66_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Player:Draw"
	.asciz "TheAdventuresOf_Player_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D"

	.byte 11,234,1
	.quad TheAdventuresOf_Player_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
	.quad Lme_43

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1588=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1588
	.byte 1,104,3
	.asciz "spriteBatch"

LDIFF_SYM1589=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1589
	.byte 1,105,3
	.asciz "texture"

LDIFF_SYM1590=LTDIE_157_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1590
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM1591=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1591
	.byte 3,141,184,3,11
	.asciz "V_1"

LDIFF_SYM1592=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1592
	.byte 3,141,168,3,11
	.asciz "V_2"

LDIFF_SYM1593=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1593
	.byte 3,141,160,3,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1594=Lfde67_end - Lfde67_start
	.long LDIFF_SYM1594
Lfde67_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Player_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D

LDIFF_SYM1595=Lme_43 - TheAdventuresOf_Player_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
	.long LDIFF_SYM1595
	.long 0
	.byte 12,31,0,68,14,240,3,157,62,158,61,68,13,29,84,152,60,153,59
	.align 3
Lfde67_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_172:

	.byte 5
	.asciz "System_Threading_Tasks_TaskScheduler"

	.byte 20,16
LDIFF_SYM1596=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1596
	.byte 2,35,0,6
	.asciz "m_taskSchedulerId"

LDIFF_SYM1597=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1597
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_TaskScheduler"

LDIFF_SYM1598=LTDIE_172 - Ldebug_info_start
	.long LDIFF_SYM1598
LTDIE_172_POINTER:

	.byte 13
LDIFF_SYM1599=LTDIE_172 - Ldebug_info_start
	.long LDIFF_SYM1599
LTDIE_172_REFERENCE:

	.byte 14
LDIFF_SYM1600=LTDIE_172 - Ldebug_info_start
	.long LDIFF_SYM1600
LTDIE_175:

	.byte 5
	.asciz "System_Threading_SynchronizationContext"

	.byte 16,16
LDIFF_SYM1601=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1601
	.byte 2,35,0,0,7
	.asciz "System_Threading_SynchronizationContext"

LDIFF_SYM1602=LTDIE_175 - Ldebug_info_start
	.long LDIFF_SYM1602
LTDIE_175_POINTER:

	.byte 13
LDIFF_SYM1603=LTDIE_175 - Ldebug_info_start
	.long LDIFF_SYM1603
LTDIE_175_REFERENCE:

	.byte 14
LDIFF_SYM1604=LTDIE_175 - Ldebug_info_start
	.long LDIFF_SYM1604
LTDIE_178:

	.byte 17
	.asciz "System_Collections_ICollection"

	.byte 16,7
	.asciz "System_Collections_ICollection"

LDIFF_SYM1605=LTDIE_178 - Ldebug_info_start
	.long LDIFF_SYM1605
LTDIE_178_POINTER:

	.byte 13
LDIFF_SYM1606=LTDIE_178 - Ldebug_info_start
	.long LDIFF_SYM1606
LTDIE_178_REFERENCE:

	.byte 14
LDIFF_SYM1607=LTDIE_178 - Ldebug_info_start
	.long LDIFF_SYM1607
LTDIE_179:

	.byte 17
	.asciz "System_Collections_IEqualityComparer"

	.byte 16,7
	.asciz "System_Collections_IEqualityComparer"

LDIFF_SYM1608=LTDIE_179 - Ldebug_info_start
	.long LDIFF_SYM1608
LTDIE_179_POINTER:

	.byte 13
LDIFF_SYM1609=LTDIE_179 - Ldebug_info_start
	.long LDIFF_SYM1609
LTDIE_179_REFERENCE:

	.byte 14
LDIFF_SYM1610=LTDIE_179 - Ldebug_info_start
	.long LDIFF_SYM1610
LTDIE_177:

	.byte 5
	.asciz "System_Collections_Hashtable"

	.byte 80,16
LDIFF_SYM1611=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1611
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1612=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1612
	.byte 2,35,16,6
	.asciz "count"

LDIFF_SYM1613=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1613
	.byte 2,35,56,6
	.asciz "occupancy"

LDIFF_SYM1614=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1614
	.byte 2,35,60,6
	.asciz "loadsize"

LDIFF_SYM1615=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1615
	.byte 2,35,64,6
	.asciz "loadFactor"

LDIFF_SYM1616=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1616
	.byte 2,35,68,6
	.asciz "version"

LDIFF_SYM1617=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1617
	.byte 2,35,72,6
	.asciz "isWriterInProgress"

LDIFF_SYM1618=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1618
	.byte 2,35,76,6
	.asciz "keys"

LDIFF_SYM1619=LTDIE_178_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1619
	.byte 2,35,24,6
	.asciz "values"

LDIFF_SYM1620=LTDIE_178_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1620
	.byte 2,35,32,6
	.asciz "_keycomparer"

LDIFF_SYM1621=LTDIE_179_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1621
	.byte 2,35,40,6
	.asciz "_syncRoot"

LDIFF_SYM1622=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1622
	.byte 2,35,48,0,7
	.asciz "System_Collections_Hashtable"

LDIFF_SYM1623=LTDIE_177 - Ldebug_info_start
	.long LDIFF_SYM1623
LTDIE_177_POINTER:

	.byte 13
LDIFF_SYM1624=LTDIE_177 - Ldebug_info_start
	.long LDIFF_SYM1624
LTDIE_177_REFERENCE:

	.byte 14
LDIFF_SYM1625=LTDIE_177 - Ldebug_info_start
	.long LDIFF_SYM1625
LTDIE_180:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

	.byte 16,16
LDIFF_SYM1626=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1626
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

LDIFF_SYM1627=LTDIE_180 - Ldebug_info_start
	.long LDIFF_SYM1627
LTDIE_180_POINTER:

	.byte 13
LDIFF_SYM1628=LTDIE_180 - Ldebug_info_start
	.long LDIFF_SYM1628
LTDIE_180_REFERENCE:

	.byte 14
LDIFF_SYM1629=LTDIE_180 - Ldebug_info_start
	.long LDIFF_SYM1629
LTDIE_181:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

	.byte 16,16
LDIFF_SYM1630=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1630
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

LDIFF_SYM1631=LTDIE_181 - Ldebug_info_start
	.long LDIFF_SYM1631
LTDIE_181_POINTER:

	.byte 13
LDIFF_SYM1632=LTDIE_181 - Ldebug_info_start
	.long LDIFF_SYM1632
LTDIE_181_REFERENCE:

	.byte 14
LDIFF_SYM1633=LTDIE_181 - Ldebug_info_start
	.long LDIFF_SYM1633
LTDIE_176:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

	.byte 56,16
LDIFF_SYM1634=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1634
	.byte 2,35,0,6
	.asciz "m_Datastore"

LDIFF_SYM1635=LTDIE_177_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1635
	.byte 2,35,16,6
	.asciz "m_RemotingData"

LDIFF_SYM1636=LTDIE_180_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1636
	.byte 2,35,24,6
	.asciz "m_SecurityData"

LDIFF_SYM1637=LTDIE_181_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1637
	.byte 2,35,32,6
	.asciz "m_HostContext"

LDIFF_SYM1638=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1638
	.byte 2,35,40,6
	.asciz "m_IsCorrelationMgr"

LDIFF_SYM1639=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1639
	.byte 2,35,48,0,7
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

LDIFF_SYM1640=LTDIE_176 - Ldebug_info_start
	.long LDIFF_SYM1640
LTDIE_176_POINTER:

	.byte 13
LDIFF_SYM1641=LTDIE_176 - Ldebug_info_start
	.long LDIFF_SYM1641
LTDIE_176_REFERENCE:

	.byte 14
LDIFF_SYM1642=LTDIE_176 - Ldebug_info_start
	.long LDIFF_SYM1642
LTDIE_182:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

	.byte 16,16
LDIFF_SYM1643=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1643
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

LDIFF_SYM1644=LTDIE_182 - Ldebug_info_start
	.long LDIFF_SYM1644
LTDIE_182_POINTER:

	.byte 13
LDIFF_SYM1645=LTDIE_182 - Ldebug_info_start
	.long LDIFF_SYM1645
LTDIE_182_REFERENCE:

	.byte 14
LDIFF_SYM1646=LTDIE_182 - Ldebug_info_start
	.long LDIFF_SYM1646
LTDIE_183:

	.byte 8
	.asciz "_Flags"

	.byte 4
LDIFF_SYM1647=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1647
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "IsNewCapture"

	.byte 1,9
	.asciz "IsFlowSuppressed"

	.byte 2,9
	.asciz "IsPreAllocatedDefault"

	.byte 4,0,7
	.asciz "_Flags"

LDIFF_SYM1648=LTDIE_183 - Ldebug_info_start
	.long LDIFF_SYM1648
LTDIE_183_POINTER:

	.byte 13
LDIFF_SYM1649=LTDIE_183 - Ldebug_info_start
	.long LDIFF_SYM1649
LTDIE_183_REFERENCE:

	.byte 14
LDIFF_SYM1650=LTDIE_183 - Ldebug_info_start
	.long LDIFF_SYM1650
LTDIE_185:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM1651=LTDIE_185 - Ldebug_info_start
	.long LDIFF_SYM1651
LTDIE_185_POINTER:

	.byte 13
LDIFF_SYM1652=LTDIE_185 - Ldebug_info_start
	.long LDIFF_SYM1652
LTDIE_185_REFERENCE:

	.byte 14
LDIFF_SYM1653=LTDIE_185 - Ldebug_info_start
	.long LDIFF_SYM1653
LTDIE_186:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1654=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1654
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1655=LTDIE_184_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1655
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1656=LTDIE_186 - Ldebug_info_start
	.long LDIFF_SYM1656
LTDIE_186_POINTER:

	.byte 13
LDIFF_SYM1657=LTDIE_186 - Ldebug_info_start
	.long LDIFF_SYM1657
LTDIE_186_REFERENCE:

	.byte 14
LDIFF_SYM1658=LTDIE_186 - Ldebug_info_start
	.long LDIFF_SYM1658
LTDIE_187:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1659=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1659
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1660=LTDIE_184_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1660
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1661=LTDIE_187 - Ldebug_info_start
	.long LDIFF_SYM1661
LTDIE_187_POINTER:

	.byte 13
LDIFF_SYM1662=LTDIE_187 - Ldebug_info_start
	.long LDIFF_SYM1662
LTDIE_187_REFERENCE:

	.byte 14
LDIFF_SYM1663=LTDIE_187 - Ldebug_info_start
	.long LDIFF_SYM1663
LTDIE_184:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 72,16
LDIFF_SYM1664=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1664
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1665=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1665
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1666=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1666
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1667=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1667
	.byte 2,35,56,6
	.asciz "version"

LDIFF_SYM1668=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1668
	.byte 2,35,60,6
	.asciz "freeList"

LDIFF_SYM1669=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1669
	.byte 2,35,64,6
	.asciz "freeCount"

LDIFF_SYM1670=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1670
	.byte 2,35,68,6
	.asciz "comparer"

LDIFF_SYM1671=LTDIE_185_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1671
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1672=LTDIE_186_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1672
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1673=LTDIE_187_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1673
	.byte 2,35,48,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1674=LTDIE_184 - Ldebug_info_start
	.long LDIFF_SYM1674
LTDIE_184_POINTER:

	.byte 13
LDIFF_SYM1675=LTDIE_184 - Ldebug_info_start
	.long LDIFF_SYM1675
LTDIE_184_REFERENCE:

	.byte 14
LDIFF_SYM1676=LTDIE_184 - Ldebug_info_start
	.long LDIFF_SYM1676
LTDIE_188:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM1677=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1677
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM1678=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1678
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM1679=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1679
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM1680=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1680
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM1681=LTDIE_188 - Ldebug_info_start
	.long LDIFF_SYM1681
LTDIE_188_POINTER:

	.byte 13
LDIFF_SYM1682=LTDIE_188 - Ldebug_info_start
	.long LDIFF_SYM1682
LTDIE_188_REFERENCE:

	.byte 14
LDIFF_SYM1683=LTDIE_188 - Ldebug_info_start
	.long LDIFF_SYM1683
LTDIE_174:

	.byte 5
	.asciz "System_Threading_ExecutionContext"

	.byte 72,16
LDIFF_SYM1684=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1684
	.byte 2,35,0,6
	.asciz "_syncContext"

LDIFF_SYM1685=LTDIE_175_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1685
	.byte 2,35,16,6
	.asciz "_syncContextNoFlow"

LDIFF_SYM1686=LTDIE_175_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1686
	.byte 2,35,24,6
	.asciz "_logicalCallContext"

LDIFF_SYM1687=LTDIE_176_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1687
	.byte 2,35,32,6
	.asciz "_illogicalCallContext"

LDIFF_SYM1688=LTDIE_182_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1688
	.byte 2,35,40,6
	.asciz "_flags"

LDIFF_SYM1689=LTDIE_183 - Ldebug_info_start
	.long LDIFF_SYM1689
	.byte 2,35,64,6
	.asciz "_localValues"

LDIFF_SYM1690=LTDIE_184_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1690
	.byte 2,35,48,6
	.asciz "_localChangeNotifications"

LDIFF_SYM1691=LTDIE_188_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1691
	.byte 2,35,56,0,7
	.asciz "System_Threading_ExecutionContext"

LDIFF_SYM1692=LTDIE_174 - Ldebug_info_start
	.long LDIFF_SYM1692
LTDIE_174_POINTER:

	.byte 13
LDIFF_SYM1693=LTDIE_174 - Ldebug_info_start
	.long LDIFF_SYM1693
LTDIE_174_REFERENCE:

	.byte 14
LDIFF_SYM1694=LTDIE_174 - Ldebug_info_start
	.long LDIFF_SYM1694
LTDIE_193:

	.byte 5
	.asciz "System_MarshalByRefObject"

	.byte 24,16
LDIFF_SYM1695=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1695
	.byte 2,35,0,6
	.asciz "_identity"

LDIFF_SYM1696=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1696
	.byte 2,35,16,0,7
	.asciz "System_MarshalByRefObject"

LDIFF_SYM1697=LTDIE_193 - Ldebug_info_start
	.long LDIFF_SYM1697
LTDIE_193_POINTER:

	.byte 13
LDIFF_SYM1698=LTDIE_193 - Ldebug_info_start
	.long LDIFF_SYM1698
LTDIE_193_REFERENCE:

	.byte 14
LDIFF_SYM1699=LTDIE_193 - Ldebug_info_start
	.long LDIFF_SYM1699
LTDIE_197:

	.byte 5
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

	.byte 16,16
LDIFF_SYM1700=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1700
	.byte 2,35,0,0,7
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

LDIFF_SYM1701=LTDIE_197 - Ldebug_info_start
	.long LDIFF_SYM1701
LTDIE_197_POINTER:

	.byte 13
LDIFF_SYM1702=LTDIE_197 - Ldebug_info_start
	.long LDIFF_SYM1702
LTDIE_197_REFERENCE:

	.byte 14
LDIFF_SYM1703=LTDIE_197 - Ldebug_info_start
	.long LDIFF_SYM1703
LTDIE_196:

	.byte 5
	.asciz "System_Runtime_InteropServices_SafeHandle"

	.byte 32,16
LDIFF_SYM1704=LTDIE_197 - Ldebug_info_start
	.long LDIFF_SYM1704
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM1705=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1705
	.byte 2,35,16,6
	.asciz "_state"

LDIFF_SYM1706=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1706
	.byte 2,35,24,6
	.asciz "_ownsHandle"

LDIFF_SYM1707=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1707
	.byte 2,35,28,6
	.asciz "_fullyInitialized"

LDIFF_SYM1708=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1708
	.byte 2,35,29,0,7
	.asciz "System_Runtime_InteropServices_SafeHandle"

LDIFF_SYM1709=LTDIE_196 - Ldebug_info_start
	.long LDIFF_SYM1709
LTDIE_196_POINTER:

	.byte 13
LDIFF_SYM1710=LTDIE_196 - Ldebug_info_start
	.long LDIFF_SYM1710
LTDIE_196_REFERENCE:

	.byte 14
LDIFF_SYM1711=LTDIE_196 - Ldebug_info_start
	.long LDIFF_SYM1711
LTDIE_195:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

	.byte 32,16
LDIFF_SYM1712=LTDIE_196 - Ldebug_info_start
	.long LDIFF_SYM1712
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

LDIFF_SYM1713=LTDIE_195 - Ldebug_info_start
	.long LDIFF_SYM1713
LTDIE_195_POINTER:

	.byte 13
LDIFF_SYM1714=LTDIE_195 - Ldebug_info_start
	.long LDIFF_SYM1714
LTDIE_195_REFERENCE:

	.byte 14
LDIFF_SYM1715=LTDIE_195 - Ldebug_info_start
	.long LDIFF_SYM1715
LTDIE_194:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

	.byte 32,16
LDIFF_SYM1716=LTDIE_195 - Ldebug_info_start
	.long LDIFF_SYM1716
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

LDIFF_SYM1717=LTDIE_194 - Ldebug_info_start
	.long LDIFF_SYM1717
LTDIE_194_POINTER:

	.byte 13
LDIFF_SYM1718=LTDIE_194 - Ldebug_info_start
	.long LDIFF_SYM1718
LTDIE_194_REFERENCE:

	.byte 14
LDIFF_SYM1719=LTDIE_194 - Ldebug_info_start
	.long LDIFF_SYM1719
LTDIE_192:

	.byte 5
	.asciz "System_Threading_WaitHandle"

	.byte 40,16
LDIFF_SYM1720=LTDIE_193 - Ldebug_info_start
	.long LDIFF_SYM1720
	.byte 2,35,0,6
	.asciz "safe_wait_handle"

LDIFF_SYM1721=LTDIE_194_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1721
	.byte 2,35,24,6
	.asciz "disposed"

LDIFF_SYM1722=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1722
	.byte 2,35,32,0,7
	.asciz "System_Threading_WaitHandle"

LDIFF_SYM1723=LTDIE_192 - Ldebug_info_start
	.long LDIFF_SYM1723
LTDIE_192_POINTER:

	.byte 13
LDIFF_SYM1724=LTDIE_192 - Ldebug_info_start
	.long LDIFF_SYM1724
LTDIE_192_REFERENCE:

	.byte 14
LDIFF_SYM1725=LTDIE_192 - Ldebug_info_start
	.long LDIFF_SYM1725
LTDIE_191:

	.byte 5
	.asciz "System_Threading_EventWaitHandle"

	.byte 40,16
LDIFF_SYM1726=LTDIE_192 - Ldebug_info_start
	.long LDIFF_SYM1726
	.byte 2,35,0,0,7
	.asciz "System_Threading_EventWaitHandle"

LDIFF_SYM1727=LTDIE_191 - Ldebug_info_start
	.long LDIFF_SYM1727
LTDIE_191_POINTER:

	.byte 13
LDIFF_SYM1728=LTDIE_191 - Ldebug_info_start
	.long LDIFF_SYM1728
LTDIE_191_REFERENCE:

	.byte 14
LDIFF_SYM1729=LTDIE_191 - Ldebug_info_start
	.long LDIFF_SYM1729
LTDIE_190:

	.byte 5
	.asciz "System_Threading_ManualResetEvent"

	.byte 40,16
LDIFF_SYM1730=LTDIE_191 - Ldebug_info_start
	.long LDIFF_SYM1730
	.byte 2,35,0,0,7
	.asciz "System_Threading_ManualResetEvent"

LDIFF_SYM1731=LTDIE_190 - Ldebug_info_start
	.long LDIFF_SYM1731
LTDIE_190_POINTER:

	.byte 13
LDIFF_SYM1732=LTDIE_190 - Ldebug_info_start
	.long LDIFF_SYM1732
LTDIE_190_REFERENCE:

	.byte 14
LDIFF_SYM1733=LTDIE_190 - Ldebug_info_start
	.long LDIFF_SYM1733
LTDIE_189:

	.byte 5
	.asciz "System_Threading_ManualResetEventSlim"

	.byte 40,16
LDIFF_SYM1734=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1734
	.byte 2,35,0,6
	.asciz "m_lock"

LDIFF_SYM1735=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1735
	.byte 2,35,16,6
	.asciz "m_eventObj"

LDIFF_SYM1736=LTDIE_190_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1736
	.byte 2,35,24,6
	.asciz "m_combinedState"

LDIFF_SYM1737=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1737
	.byte 2,35,32,0,7
	.asciz "System_Threading_ManualResetEventSlim"

LDIFF_SYM1738=LTDIE_189 - Ldebug_info_start
	.long LDIFF_SYM1738
LTDIE_189_POINTER:

	.byte 13
LDIFF_SYM1739=LTDIE_189 - Ldebug_info_start
	.long LDIFF_SYM1739
LTDIE_189_REFERENCE:

	.byte 14
LDIFF_SYM1740=LTDIE_189 - Ldebug_info_start
	.long LDIFF_SYM1740
LTDIE_199:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM1741=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1741
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM1742=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1742
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM1743=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1743
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM1744=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1744
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM1745=LTDIE_199 - Ldebug_info_start
	.long LDIFF_SYM1745
LTDIE_199_POINTER:

	.byte 13
LDIFF_SYM1746=LTDIE_199 - Ldebug_info_start
	.long LDIFF_SYM1746
LTDIE_199_REFERENCE:

	.byte 14
LDIFF_SYM1747=LTDIE_199 - Ldebug_info_start
	.long LDIFF_SYM1747
LTDIE_202:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 16,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM1748=LTDIE_202 - Ldebug_info_start
	.long LDIFF_SYM1748
LTDIE_202_POINTER:

	.byte 13
LDIFF_SYM1749=LTDIE_202 - Ldebug_info_start
	.long LDIFF_SYM1749
LTDIE_202_REFERENCE:

	.byte 14
LDIFF_SYM1750=LTDIE_202 - Ldebug_info_start
	.long LDIFF_SYM1750
LTDIE_201:

	.byte 5
	.asciz "System_Exception"

	.byte 120,16
LDIFF_SYM1751=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1751
	.byte 2,35,0,6
	.asciz "trace_ips"

LDIFF_SYM1752=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1752
	.byte 2,35,16,6
	.asciz "inner_exception"

LDIFF_SYM1753=LTDIE_201_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1753
	.byte 2,35,24,6
	.asciz "_message"

LDIFF_SYM1754=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1754
	.byte 2,35,32,6
	.asciz "help_link"

LDIFF_SYM1755=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1755
	.byte 2,35,40,6
	.asciz "class_name"

LDIFF_SYM1756=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1756
	.byte 2,35,48,6
	.asciz "stack_trace"

LDIFF_SYM1757=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1757
	.byte 2,35,56,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM1758=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1758
	.byte 2,35,64,6
	.asciz "remote_stack_index"

LDIFF_SYM1759=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1759
	.byte 2,35,72,6
	.asciz "hresult"

LDIFF_SYM1760=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1760
	.byte 2,35,76,6
	.asciz "source"

LDIFF_SYM1761=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1761
	.byte 2,35,80,6
	.asciz "_data"

LDIFF_SYM1762=LTDIE_202_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1762
	.byte 2,35,88,6
	.asciz "captured_traces"

LDIFF_SYM1763=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1763
	.byte 2,35,96,6
	.asciz "native_trace_ips"

LDIFF_SYM1764=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1764
	.byte 2,35,104,6
	.asciz "dynamic_methods"

LDIFF_SYM1765=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1765
	.byte 2,35,112,0,7
	.asciz "System_Exception"

LDIFF_SYM1766=LTDIE_201 - Ldebug_info_start
	.long LDIFF_SYM1766
LTDIE_201_POINTER:

	.byte 13
LDIFF_SYM1767=LTDIE_201 - Ldebug_info_start
	.long LDIFF_SYM1767
LTDIE_201_REFERENCE:

	.byte 14
LDIFF_SYM1768=LTDIE_201 - Ldebug_info_start
	.long LDIFF_SYM1768
LTDIE_200:

	.byte 5
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

	.byte 32,16
LDIFF_SYM1769=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1769
	.byte 2,35,0,6
	.asciz "m_Exception"

LDIFF_SYM1770=LTDIE_201_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1770
	.byte 2,35,16,6
	.asciz "m_stackTrace"

LDIFF_SYM1771=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1771
	.byte 2,35,24,0,7
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

LDIFF_SYM1772=LTDIE_200 - Ldebug_info_start
	.long LDIFF_SYM1772
LTDIE_200_POINTER:

	.byte 13
LDIFF_SYM1773=LTDIE_200 - Ldebug_info_start
	.long LDIFF_SYM1773
LTDIE_200_REFERENCE:

	.byte 14
LDIFF_SYM1774=LTDIE_200 - Ldebug_info_start
	.long LDIFF_SYM1774
LTDIE_198:

	.byte 5
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

	.byte 48,16
LDIFF_SYM1775=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1775
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM1776=LTDIE_171_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1776
	.byte 2,35,16,6
	.asciz "m_faultExceptions"

LDIFF_SYM1777=LTDIE_199_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1777
	.byte 2,35,24,6
	.asciz "m_cancellationException"

LDIFF_SYM1778=LTDIE_200_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1778
	.byte 2,35,32,6
	.asciz "m_isHandled"

LDIFF_SYM1779=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1779
	.byte 2,35,40,0,7
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

LDIFF_SYM1780=LTDIE_198 - Ldebug_info_start
	.long LDIFF_SYM1780
LTDIE_198_POINTER:

	.byte 13
LDIFF_SYM1781=LTDIE_198 - Ldebug_info_start
	.long LDIFF_SYM1781
LTDIE_198_REFERENCE:

	.byte 14
LDIFF_SYM1782=LTDIE_198 - Ldebug_info_start
	.long LDIFF_SYM1782
LTDIE_203:

	.byte 5
	.asciz "System_Threading_Tasks_Shared`1"

	.byte 40,16
LDIFF_SYM1783=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1783
	.byte 2,35,0,6
	.asciz "Value"

LDIFF_SYM1784=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1784
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_Shared`1"

LDIFF_SYM1785=LTDIE_203 - Ldebug_info_start
	.long LDIFF_SYM1785
LTDIE_203_POINTER:

	.byte 13
LDIFF_SYM1786=LTDIE_203 - Ldebug_info_start
	.long LDIFF_SYM1786
LTDIE_203_REFERENCE:

	.byte 14
LDIFF_SYM1787=LTDIE_203 - Ldebug_info_start
	.long LDIFF_SYM1787
LTDIE_204:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM1788=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1788
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM1789=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1789
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM1790=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1790
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM1791=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1791
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM1792=LTDIE_204 - Ldebug_info_start
	.long LDIFF_SYM1792
LTDIE_204_POINTER:

	.byte 13
LDIFF_SYM1793=LTDIE_204 - Ldebug_info_start
	.long LDIFF_SYM1793
LTDIE_204_REFERENCE:

	.byte 14
LDIFF_SYM1794=LTDIE_204 - Ldebug_info_start
	.long LDIFF_SYM1794
LTDIE_173:

	.byte 5
	.asciz "_ContingentProperties"

	.byte 72,16
LDIFF_SYM1795=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1795
	.byte 2,35,0,6
	.asciz "m_capturedContext"

LDIFF_SYM1796=LTDIE_174_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1796
	.byte 2,35,16,6
	.asciz "m_completionEvent"

LDIFF_SYM1797=LTDIE_189_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1797
	.byte 2,35,24,6
	.asciz "m_exceptionsHolder"

LDIFF_SYM1798=LTDIE_198_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1798
	.byte 2,35,32,6
	.asciz "m_cancellationToken"

LDIFF_SYM1799=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1799
	.byte 2,35,40,6
	.asciz "m_cancellationRegistration"

LDIFF_SYM1800=LTDIE_203_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1800
	.byte 2,35,48,6
	.asciz "m_internalCancellationRequested"

LDIFF_SYM1801=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1801
	.byte 2,35,64,6
	.asciz "m_completionCountdown"

LDIFF_SYM1802=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1802
	.byte 2,35,68,6
	.asciz "m_exceptionalChildren"

LDIFF_SYM1803=LTDIE_204_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1803
	.byte 2,35,56,0,7
	.asciz "_ContingentProperties"

LDIFF_SYM1804=LTDIE_173 - Ldebug_info_start
	.long LDIFF_SYM1804
LTDIE_173_POINTER:

	.byte 13
LDIFF_SYM1805=LTDIE_173 - Ldebug_info_start
	.long LDIFF_SYM1805
LTDIE_173_REFERENCE:

	.byte 14
LDIFF_SYM1806=LTDIE_173 - Ldebug_info_start
	.long LDIFF_SYM1806
LTDIE_171:

	.byte 5
	.asciz "System_Threading_Tasks_Task"

	.byte 72,16
LDIFF_SYM1807=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1807
	.byte 2,35,0,6
	.asciz "m_taskId"

LDIFF_SYM1808=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1808
	.byte 2,35,64,6
	.asciz "m_action"

LDIFF_SYM1809=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1809
	.byte 2,35,16,6
	.asciz "m_stateObject"

LDIFF_SYM1810=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1810
	.byte 2,35,24,6
	.asciz "m_taskScheduler"

LDIFF_SYM1811=LTDIE_172_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1811
	.byte 2,35,32,6
	.asciz "m_parent"

LDIFF_SYM1812=LTDIE_171_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1812
	.byte 2,35,40,6
	.asciz "m_stateFlags"

LDIFF_SYM1813=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1813
	.byte 2,35,68,6
	.asciz "m_continuationObject"

LDIFF_SYM1814=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1814
	.byte 2,35,48,6
	.asciz "m_contingentProperties"

LDIFF_SYM1815=LTDIE_173_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1815
	.byte 2,35,56,0,7
	.asciz "System_Threading_Tasks_Task"

LDIFF_SYM1816=LTDIE_171 - Ldebug_info_start
	.long LDIFF_SYM1816
LTDIE_171_POINTER:

	.byte 13
LDIFF_SYM1817=LTDIE_171 - Ldebug_info_start
	.long LDIFF_SYM1817
LTDIE_171_REFERENCE:

	.byte 14
LDIFF_SYM1818=LTDIE_171 - Ldebug_info_start
	.long LDIFF_SYM1818
LTDIE_170:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 80,16
LDIFF_SYM1819=LTDIE_171 - Ldebug_info_start
	.long LDIFF_SYM1819
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM1820=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1820
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM1821=LTDIE_170 - Ldebug_info_start
	.long LDIFF_SYM1821
LTDIE_170_POINTER:

	.byte 13
LDIFF_SYM1822=LTDIE_170 - Ldebug_info_start
	.long LDIFF_SYM1822
LTDIE_170_REFERENCE:

	.byte 14
LDIFF_SYM1823=LTDIE_170 - Ldebug_info_start
	.long LDIFF_SYM1823
LTDIE_205:

	.byte 5
	.asciz "System_AsyncCallback"

	.byte 112,16
LDIFF_SYM1824=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM1824
	.byte 2,35,0,0,7
	.asciz "System_AsyncCallback"

LDIFF_SYM1825=LTDIE_205 - Ldebug_info_start
	.long LDIFF_SYM1825
LTDIE_205_POINTER:

	.byte 13
LDIFF_SYM1826=LTDIE_205 - Ldebug_info_start
	.long LDIFF_SYM1826
LTDIE_205_REFERENCE:

	.byte 14
LDIFF_SYM1827=LTDIE_205 - Ldebug_info_start
	.long LDIFF_SYM1827
LTDIE_169:

	.byte 5
	.asciz "_ReadWriteTask"

	.byte 128,1,16
LDIFF_SYM1828=LTDIE_170 - Ldebug_info_start
	.long LDIFF_SYM1828
	.byte 2,35,0,6
	.asciz "_isRead"

LDIFF_SYM1829=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1829
	.byte 2,35,112,6
	.asciz "_stream"

LDIFF_SYM1830=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1830
	.byte 2,35,80,6
	.asciz "_buffer"

LDIFF_SYM1831=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1831
	.byte 2,35,88,6
	.asciz "_offset"

LDIFF_SYM1832=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1832
	.byte 2,35,116,6
	.asciz "_count"

LDIFF_SYM1833=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1833
	.byte 2,35,120,6
	.asciz "_callback"

LDIFF_SYM1834=LTDIE_205_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1834
	.byte 2,35,96,6
	.asciz "_context"

LDIFF_SYM1835=LTDIE_174_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1835
	.byte 2,35,104,0,7
	.asciz "_ReadWriteTask"

LDIFF_SYM1836=LTDIE_169 - Ldebug_info_start
	.long LDIFF_SYM1836
LTDIE_169_POINTER:

	.byte 13
LDIFF_SYM1837=LTDIE_169 - Ldebug_info_start
	.long LDIFF_SYM1837
LTDIE_169_REFERENCE:

	.byte 14
LDIFF_SYM1838=LTDIE_169 - Ldebug_info_start
	.long LDIFF_SYM1838
LTDIE_208:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 80,16
LDIFF_SYM1839=LTDIE_171 - Ldebug_info_start
	.long LDIFF_SYM1839
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM1840=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1840
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM1841=LTDIE_208 - Ldebug_info_start
	.long LDIFF_SYM1841
LTDIE_208_POINTER:

	.byte 13
LDIFF_SYM1842=LTDIE_208 - Ldebug_info_start
	.long LDIFF_SYM1842
LTDIE_208_REFERENCE:

	.byte 14
LDIFF_SYM1843=LTDIE_208 - Ldebug_info_start
	.long LDIFF_SYM1843
LTDIE_207:

	.byte 5
	.asciz "_TaskNode"

	.byte 96,16
LDIFF_SYM1844=LTDIE_208 - Ldebug_info_start
	.long LDIFF_SYM1844
	.byte 2,35,0,6
	.asciz "Prev"

LDIFF_SYM1845=LTDIE_207_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1845
	.byte 2,35,80,6
	.asciz "Next"

LDIFF_SYM1846=LTDIE_207_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1846
	.byte 2,35,88,0,7
	.asciz "_TaskNode"

LDIFF_SYM1847=LTDIE_207 - Ldebug_info_start
	.long LDIFF_SYM1847
LTDIE_207_POINTER:

	.byte 13
LDIFF_SYM1848=LTDIE_207 - Ldebug_info_start
	.long LDIFF_SYM1848
LTDIE_207_REFERENCE:

	.byte 14
LDIFF_SYM1849=LTDIE_207 - Ldebug_info_start
	.long LDIFF_SYM1849
LTDIE_206:

	.byte 5
	.asciz "System_Threading_SemaphoreSlim"

	.byte 64,16
LDIFF_SYM1850=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1850
	.byte 2,35,0,6
	.asciz "m_currentCount"

LDIFF_SYM1851=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1851
	.byte 2,35,48,6
	.asciz "m_maxCount"

LDIFF_SYM1852=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1852
	.byte 2,35,52,6
	.asciz "m_waitCount"

LDIFF_SYM1853=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1853
	.byte 2,35,56,6
	.asciz "m_lockObj"

LDIFF_SYM1854=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1854
	.byte 2,35,16,6
	.asciz "m_waitHandle"

LDIFF_SYM1855=LTDIE_190_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1855
	.byte 2,35,24,6
	.asciz "m_asyncHead"

LDIFF_SYM1856=LTDIE_207_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1856
	.byte 2,35,32,6
	.asciz "m_asyncTail"

LDIFF_SYM1857=LTDIE_207_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1857
	.byte 2,35,40,0,7
	.asciz "System_Threading_SemaphoreSlim"

LDIFF_SYM1858=LTDIE_206 - Ldebug_info_start
	.long LDIFF_SYM1858
LTDIE_206_POINTER:

	.byte 13
LDIFF_SYM1859=LTDIE_206 - Ldebug_info_start
	.long LDIFF_SYM1859
LTDIE_206_REFERENCE:

	.byte 14
LDIFF_SYM1860=LTDIE_206 - Ldebug_info_start
	.long LDIFF_SYM1860
LTDIE_168:

	.byte 5
	.asciz "System_IO_Stream"

	.byte 32,16
LDIFF_SYM1861=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1861
	.byte 2,35,0,6
	.asciz "_activeReadWriteTask"

LDIFF_SYM1862=LTDIE_169_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1862
	.byte 2,35,16,6
	.asciz "_asyncActiveSemaphore"

LDIFF_SYM1863=LTDIE_206_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1863
	.byte 2,35,24,0,7
	.asciz "System_IO_Stream"

LDIFF_SYM1864=LTDIE_168 - Ldebug_info_start
	.long LDIFF_SYM1864
LTDIE_168_POINTER:

	.byte 13
LDIFF_SYM1865=LTDIE_168 - Ldebug_info_start
	.long LDIFF_SYM1865
LTDIE_168_REFERENCE:

	.byte 14
LDIFF_SYM1866=LTDIE_168 - Ldebug_info_start
	.long LDIFF_SYM1866
	.byte 2
	.asciz "TheAdventuresOf.XmlImporter:GetXMLInformation"
	.asciz "TheAdventuresOf_XmlImporter_GetXMLInformation"

	.byte 12,16
	.quad TheAdventuresOf_XmlImporter_GetXMLInformation
	.quad Lme_44

	.byte 2,118,16,11
	.asciz "characterDocumentStream"

LDIFF_SYM1867=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1867
	.byte 1,106,11
	.asciz "levelDocumentStream"

LDIFF_SYM1868=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1868
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1869=Lfde68_end - Lfde68_start
	.long LDIFF_SYM1869
Lfde68_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_XmlImporter_GetXMLInformation

LDIFF_SYM1870=Lme_44 - TheAdventuresOf_XmlImporter_GetXMLInformation
	.long LDIFF_SYM1870
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,153,14,154,13
	.align 3
Lfde68_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_212:

	.byte 5
	.asciz "System_Xml_Linq_XObject"

	.byte 32,16
LDIFF_SYM1871=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1871
	.byte 2,35,0,6
	.asciz "parent"

LDIFF_SYM1872=LTDIE_210_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1872
	.byte 2,35,16,6
	.asciz "annotations"

LDIFF_SYM1873=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1873
	.byte 2,35,24,0,7
	.asciz "System_Xml_Linq_XObject"

LDIFF_SYM1874=LTDIE_212 - Ldebug_info_start
	.long LDIFF_SYM1874
LTDIE_212_POINTER:

	.byte 13
LDIFF_SYM1875=LTDIE_212 - Ldebug_info_start
	.long LDIFF_SYM1875
LTDIE_212_REFERENCE:

	.byte 14
LDIFF_SYM1876=LTDIE_212 - Ldebug_info_start
	.long LDIFF_SYM1876
LTDIE_211:

	.byte 5
	.asciz "System_Xml_Linq_XNode"

	.byte 40,16
LDIFF_SYM1877=LTDIE_212 - Ldebug_info_start
	.long LDIFF_SYM1877
	.byte 2,35,0,6
	.asciz "next"

LDIFF_SYM1878=LTDIE_211_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1878
	.byte 2,35,32,0,7
	.asciz "System_Xml_Linq_XNode"

LDIFF_SYM1879=LTDIE_211 - Ldebug_info_start
	.long LDIFF_SYM1879
LTDIE_211_POINTER:

	.byte 13
LDIFF_SYM1880=LTDIE_211 - Ldebug_info_start
	.long LDIFF_SYM1880
LTDIE_211_REFERENCE:

	.byte 14
LDIFF_SYM1881=LTDIE_211 - Ldebug_info_start
	.long LDIFF_SYM1881
LTDIE_210:

	.byte 5
	.asciz "System_Xml_Linq_XContainer"

	.byte 48,16
LDIFF_SYM1882=LTDIE_211 - Ldebug_info_start
	.long LDIFF_SYM1882
	.byte 2,35,0,6
	.asciz "content"

LDIFF_SYM1883=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1883
	.byte 2,35,40,0,7
	.asciz "System_Xml_Linq_XContainer"

LDIFF_SYM1884=LTDIE_210 - Ldebug_info_start
	.long LDIFF_SYM1884
LTDIE_210_POINTER:

	.byte 13
LDIFF_SYM1885=LTDIE_210 - Ldebug_info_start
	.long LDIFF_SYM1885
LTDIE_210_REFERENCE:

	.byte 14
LDIFF_SYM1886=LTDIE_210 - Ldebug_info_start
	.long LDIFF_SYM1886
LTDIE_217:

	.byte 5
	.asciz "_ExtractKeyDelegate"

	.byte 112,16
LDIFF_SYM1887=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM1887
	.byte 2,35,0,0,7
	.asciz "_ExtractKeyDelegate"

LDIFF_SYM1888=LTDIE_217 - Ldebug_info_start
	.long LDIFF_SYM1888
LTDIE_217_POINTER:

	.byte 13
LDIFF_SYM1889=LTDIE_217 - Ldebug_info_start
	.long LDIFF_SYM1889
LTDIE_217_REFERENCE:

	.byte 14
LDIFF_SYM1890=LTDIE_217 - Ldebug_info_start
	.long LDIFF_SYM1890
LTDIE_216:

	.byte 5
	.asciz "_XHashtableState"

	.byte 48,16
LDIFF_SYM1891=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1891
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1892=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1892
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1893=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1893
	.byte 2,35,24,6
	.asciz "numEntries"

LDIFF_SYM1894=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1894
	.byte 2,35,40,6
	.asciz "extractKey"

LDIFF_SYM1895=LTDIE_217_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1895
	.byte 2,35,32,0,7
	.asciz "_XHashtableState"

LDIFF_SYM1896=LTDIE_216 - Ldebug_info_start
	.long LDIFF_SYM1896
LTDIE_216_POINTER:

	.byte 13
LDIFF_SYM1897=LTDIE_216 - Ldebug_info_start
	.long LDIFF_SYM1897
LTDIE_216_REFERENCE:

	.byte 14
LDIFF_SYM1898=LTDIE_216 - Ldebug_info_start
	.long LDIFF_SYM1898
LTDIE_215:

	.byte 5
	.asciz "System_Xml_Linq_XHashtable`1"

	.byte 24,16
LDIFF_SYM1899=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1899
	.byte 2,35,0,6
	.asciz "state"

LDIFF_SYM1900=LTDIE_216_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1900
	.byte 2,35,16,0,7
	.asciz "System_Xml_Linq_XHashtable`1"

LDIFF_SYM1901=LTDIE_215 - Ldebug_info_start
	.long LDIFF_SYM1901
LTDIE_215_POINTER:

	.byte 13
LDIFF_SYM1902=LTDIE_215 - Ldebug_info_start
	.long LDIFF_SYM1902
LTDIE_215_REFERENCE:

	.byte 14
LDIFF_SYM1903=LTDIE_215 - Ldebug_info_start
	.long LDIFF_SYM1903
LTDIE_214:

	.byte 5
	.asciz "System_Xml_Linq_XNamespace"

	.byte 40,16
LDIFF_SYM1904=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1904
	.byte 2,35,0,6
	.asciz "namespaceName"

LDIFF_SYM1905=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1905
	.byte 2,35,16,6
	.asciz "hashCode"

LDIFF_SYM1906=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1906
	.byte 2,35,32,6
	.asciz "names"

LDIFF_SYM1907=LTDIE_215_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1907
	.byte 2,35,24,0,7
	.asciz "System_Xml_Linq_XNamespace"

LDIFF_SYM1908=LTDIE_214 - Ldebug_info_start
	.long LDIFF_SYM1908
LTDIE_214_POINTER:

	.byte 13
LDIFF_SYM1909=LTDIE_214 - Ldebug_info_start
	.long LDIFF_SYM1909
LTDIE_214_REFERENCE:

	.byte 14
LDIFF_SYM1910=LTDIE_214 - Ldebug_info_start
	.long LDIFF_SYM1910
LTDIE_213:

	.byte 5
	.asciz "System_Xml_Linq_XName"

	.byte 40,16
LDIFF_SYM1911=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1911
	.byte 2,35,0,6
	.asciz "ns"

LDIFF_SYM1912=LTDIE_214_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1912
	.byte 2,35,16,6
	.asciz "localName"

LDIFF_SYM1913=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1913
	.byte 2,35,24,6
	.asciz "hashCode"

LDIFF_SYM1914=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1914
	.byte 2,35,32,0,7
	.asciz "System_Xml_Linq_XName"

LDIFF_SYM1915=LTDIE_213 - Ldebug_info_start
	.long LDIFF_SYM1915
LTDIE_213_POINTER:

	.byte 13
LDIFF_SYM1916=LTDIE_213 - Ldebug_info_start
	.long LDIFF_SYM1916
LTDIE_213_REFERENCE:

	.byte 14
LDIFF_SYM1917=LTDIE_213 - Ldebug_info_start
	.long LDIFF_SYM1917
LTDIE_218:

	.byte 5
	.asciz "System_Xml_Linq_XAttribute"

	.byte 56,16
LDIFF_SYM1918=LTDIE_212 - Ldebug_info_start
	.long LDIFF_SYM1918
	.byte 2,35,0,6
	.asciz "next"

LDIFF_SYM1919=LTDIE_218_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1919
	.byte 2,35,32,6
	.asciz "name"

LDIFF_SYM1920=LTDIE_213_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1920
	.byte 2,35,40,6
	.asciz "value"

LDIFF_SYM1921=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1921
	.byte 2,35,48,0,7
	.asciz "System_Xml_Linq_XAttribute"

LDIFF_SYM1922=LTDIE_218 - Ldebug_info_start
	.long LDIFF_SYM1922
LTDIE_218_POINTER:

	.byte 13
LDIFF_SYM1923=LTDIE_218 - Ldebug_info_start
	.long LDIFF_SYM1923
LTDIE_218_REFERENCE:

	.byte 14
LDIFF_SYM1924=LTDIE_218 - Ldebug_info_start
	.long LDIFF_SYM1924
LTDIE_209:

	.byte 5
	.asciz "System_Xml_Linq_XElement"

	.byte 64,16
LDIFF_SYM1925=LTDIE_210 - Ldebug_info_start
	.long LDIFF_SYM1925
	.byte 2,35,0,6
	.asciz "name"

LDIFF_SYM1926=LTDIE_213_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1926
	.byte 2,35,48,6
	.asciz "lastAttr"

LDIFF_SYM1927=LTDIE_218_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1927
	.byte 2,35,56,0,7
	.asciz "System_Xml_Linq_XElement"

LDIFF_SYM1928=LTDIE_209 - Ldebug_info_start
	.long LDIFF_SYM1928
LTDIE_209_POINTER:

	.byte 13
LDIFF_SYM1929=LTDIE_209 - Ldebug_info_start
	.long LDIFF_SYM1929
LTDIE_209_REFERENCE:

	.byte 14
LDIFF_SYM1930=LTDIE_209 - Ldebug_info_start
	.long LDIFF_SYM1930
	.byte 2
	.asciz "TheAdventuresOf.XmlImporter:LoadPlayerInformation"
	.asciz "TheAdventuresOf_XmlImporter_LoadPlayerInformation_TheAdventuresOf_Player"

	.byte 12,25
	.quad TheAdventuresOf_XmlImporter_LoadPlayerInformation_TheAdventuresOf_Player
	.quad Lme_45

	.byte 2,118,16,3
	.asciz "player"

LDIFF_SYM1931=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1931
	.byte 1,106,11
	.asciz "charactersElement"

LDIFF_SYM1932=LTDIE_209_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1932
	.byte 1,105,11
	.asciz "playerElement"

LDIFF_SYM1933=LTDIE_209_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1933
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM1934=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1934
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1935=Lfde69_end - Lfde69_start
	.long LDIFF_SYM1935
Lfde69_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_XmlImporter_LoadPlayerInformation_TheAdventuresOf_Player

LDIFF_SYM1936=Lme_45 - TheAdventuresOf_XmlImporter_LoadPlayerInformation_TheAdventuresOf_Player
	.long LDIFF_SYM1936
	.long 0
	.byte 12,31,0,68,14,224,3,157,60,158,59,68,13,29,68,151,58,152,57,68,153,56,154,55
	.align 3
Lfde69_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.XmlImporter:LoadBlockMonsterInformation"
	.asciz "TheAdventuresOf_XmlImporter_LoadBlockMonsterInformation_TheAdventuresOf_Monster"

	.byte 12,42
	.quad TheAdventuresOf_XmlImporter_LoadBlockMonsterInformation_TheAdventuresOf_Monster
	.quad Lme_46

	.byte 2,118,16,3
	.asciz "blockMonster"

LDIFF_SYM1937=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1937
	.byte 1,106,11
	.asciz "charactersElement"

LDIFF_SYM1938=LTDIE_209_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1938
	.byte 1,105,11
	.asciz "monstersElement"

LDIFF_SYM1939=LTDIE_209_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1939
	.byte 1,104,11
	.asciz "blockMonsterElement"

LDIFF_SYM1940=LTDIE_209_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1940
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM1941=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1941
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1942=Lfde70_end - Lfde70_start
	.long LDIFF_SYM1942
Lfde70_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_XmlImporter_LoadBlockMonsterInformation_TheAdventuresOf_Monster

LDIFF_SYM1943=Lme_46 - TheAdventuresOf_XmlImporter_LoadBlockMonsterInformation_TheAdventuresOf_Monster
	.long LDIFF_SYM1943
	.long 0
	.byte 12,31,0,68,14,224,3,157,60,158,59,68,13,29,68,150,58,151,57,68,152,56,153,55,68,154,54
	.align 3
Lfde70_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.AssetManager:LoadGameAssets"
	.asciz "TheAdventuresOf_AssetManager_LoadGameAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice"

	.byte 13,21
	.quad TheAdventuresOf_AssetManager_LoadGameAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice
	.quad Lme_47

	.byte 2,118,16,3
	.asciz "graphicsDevice"

LDIFF_SYM1944=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1944
	.byte 1,106,11
	.asciz "stream"

LDIFF_SYM1945=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1945
	.byte 2,141,48,11
	.asciz "stream"

LDIFF_SYM1946=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1946
	.byte 2,141,56,11
	.asciz "stream"

LDIFF_SYM1947=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1947
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1948=Lfde71_end - Lfde71_start
	.long LDIFF_SYM1948
Lfde71_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_AssetManager_LoadGameAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice

LDIFF_SYM1949=Lme_47 - TheAdventuresOf_AssetManager_LoadGameAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice
	.long LDIFF_SYM1949
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,154,16
	.align 3
Lfde71_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.AssetManager:LoadLevelAssets"
	.asciz "TheAdventuresOf_AssetManager_LoadLevelAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice"

	.byte 13,38
	.quad TheAdventuresOf_AssetManager_LoadLevelAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice
	.quad Lme_48

	.byte 2,118,16,3
	.asciz "graphicsDevice"

LDIFF_SYM1950=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1950
	.byte 1,106,11
	.asciz "stream"

LDIFF_SYM1951=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1951
	.byte 2,141,48,11
	.asciz "stream"

LDIFF_SYM1952=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1952
	.byte 2,141,56,11
	.asciz "stream"

LDIFF_SYM1953=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1953
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1954=Lfde72_end - Lfde72_start
	.long LDIFF_SYM1954
Lfde72_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_AssetManager_LoadLevelAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice

LDIFF_SYM1955=Lme_48 - TheAdventuresOf_AssetManager_LoadLevelAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice
	.long LDIFF_SYM1955
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,154,16
	.align 3
Lfde72_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.AssetManager:DisposeLevelAssets"
	.asciz "TheAdventuresOf_AssetManager_DisposeLevelAssets"

	.byte 13,54
	.quad TheAdventuresOf_AssetManager_DisposeLevelAssets
	.quad Lme_49

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1956=Lfde73_end - Lfde73_start
	.long LDIFF_SYM1956
Lfde73_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_AssetManager_DisposeLevelAssets

LDIFF_SYM1957=Lme_49 - TheAdventuresOf_AssetManager_DisposeLevelAssets
	.long LDIFF_SYM1957
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde73_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:.ctor"
	.asciz "TheAdventuresOf_Monster__ctor"

	.byte 14,19
	.quad TheAdventuresOf_Monster__ctor
	.quad Lme_4a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1958=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1958
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1959=Lfde74_end - Lfde74_start
	.long LDIFF_SYM1959
Lfde74_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster__ctor

LDIFF_SYM1960=Lme_4a - TheAdventuresOf_Monster__ctor
	.long LDIFF_SYM1960
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde74_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:InitializeAnimation"
	.asciz "TheAdventuresOf_Monster_InitializeAnimation"

	.byte 14,27
	.quad TheAdventuresOf_Monster_InitializeAnimation
	.quad Lme_4b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1961=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1961
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1962=Lfde75_end - Lfde75_start
	.long LDIFF_SYM1962
Lfde75_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster_InitializeAnimation

LDIFF_SYM1963=Lme_4b - TheAdventuresOf_Monster_InitializeAnimation
	.long LDIFF_SYM1963
	.long 0
	.byte 12,31,0,68,14,128,2,157,32,158,31,68,13,29,68,154,30
	.align 3
Lfde75_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:HandleLevelBoundCollision"
	.asciz "TheAdventuresOf_Monster_HandleLevelBoundCollision_int_int"

	.byte 14,40
	.quad TheAdventuresOf_Monster_HandleLevelBoundCollision_int_int
	.quad Lme_4c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1964=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1964
	.byte 2,141,16,3
	.asciz "direction"

LDIFF_SYM1965=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1965
	.byte 2,141,24,3
	.asciz "boundX"

LDIFF_SYM1966=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1966
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1967=Lfde76_end - Lfde76_start
	.long LDIFF_SYM1967
Lfde76_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster_HandleLevelBoundCollision_int_int

LDIFF_SYM1968=Lme_4c - TheAdventuresOf_Monster_HandleLevelBoundCollision_int_int
	.long LDIFF_SYM1968
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde76_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:Update"
	.asciz "TheAdventuresOf_Monster_Update_Microsoft_Xna_Framework_GameTime_bool"

	.byte 14,45
	.quad TheAdventuresOf_Monster_Update_Microsoft_Xna_Framework_GameTime_bool
	.quad Lme_4d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1969=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1969
	.byte 1,105,3
	.asciz "gameTime"

LDIFF_SYM1970=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1970
	.byte 1,106,3
	.asciz "buttonPressed"

LDIFF_SYM1971=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1971
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1972=Lfde77_end - Lfde77_start
	.long LDIFF_SYM1972
Lfde77_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster_Update_Microsoft_Xna_Framework_GameTime_bool

LDIFF_SYM1973=Lme_4d - TheAdventuresOf_Monster_Update_Microsoft_Xna_Framework_GameTime_bool
	.long LDIFF_SYM1973
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7
	.align 3
Lfde77_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:HandleDelay"
	.asciz "TheAdventuresOf_Monster_HandleDelay_Microsoft_Xna_Framework_GameTime"

	.byte 14,87
	.quad TheAdventuresOf_Monster_HandleDelay_Microsoft_Xna_Framework_GameTime
	.quad Lme_4e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1974=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1974
	.byte 1,105,3
	.asciz "gameTime"

LDIFF_SYM1975=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1975
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1976=Lfde78_end - Lfde78_start
	.long LDIFF_SYM1976
Lfde78_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster_HandleDelay_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1977=Lme_4e - TheAdventuresOf_Monster_HandleDelay_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1977
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,153,14
	.align 3
Lfde78_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:HandleDeath"
	.asciz "TheAdventuresOf_Monster_HandleDeath_Microsoft_Xna_Framework_GameTime"

	.byte 14,97
	.quad TheAdventuresOf_Monster_HandleDeath_Microsoft_Xna_Framework_GameTime
	.quad Lme_4f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1978=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1978
	.byte 1,105,3
	.asciz "gameTime"

LDIFF_SYM1979=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1979
	.byte 1,106,11
	.asciz "degreesToRotate"

LDIFF_SYM1980=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1980
	.byte 3,141,240,0,11
	.asciz "V_1"

LDIFF_SYM1981=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1981
	.byte 3,141,232,0,11
	.asciz "radiansToRotate"

LDIFF_SYM1982=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1982
	.byte 3,141,244,0,11
	.asciz "V_3"

LDIFF_SYM1983=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1983
	.byte 3,141,224,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1984=Lfde79_end - Lfde79_start
	.long LDIFF_SYM1984
Lfde79_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster_HandleDeath_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1985=Lme_4f - TheAdventuresOf_Monster_HandleDeath_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1985
	.long 0
	.byte 12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,150,22,151,21,68,152,20,153,19,68,154,18
	.align 3
Lfde79_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:RandomizeMovement"
	.asciz "TheAdventuresOf_Monster_RandomizeMovement"

	.byte 14,127
	.quad TheAdventuresOf_Monster_RandomizeMovement
	.quad Lme_50

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1986=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1986
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1987=Lfde80_end - Lfde80_start
	.long LDIFF_SYM1987
Lfde80_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster_RandomizeMovement

LDIFF_SYM1988=Lme_50 - TheAdventuresOf_Monster_RandomizeMovement
	.long LDIFF_SYM1988
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde80_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:ChooseRandomDirection"
	.asciz "TheAdventuresOf_Monster_ChooseRandomDirection"

	.byte 14,141,1
	.quad TheAdventuresOf_Monster_ChooseRandomDirection
	.quad Lme_51

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1989=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1989
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1990=Lfde81_end - Lfde81_start
	.long LDIFF_SYM1990
Lfde81_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster_ChooseRandomDirection

LDIFF_SYM1991=Lme_51 - TheAdventuresOf_Monster_ChooseRandomDirection
	.long LDIFF_SYM1991
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde81_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:HandleAnimation"
	.asciz "TheAdventuresOf_Monster_HandleAnimation_Microsoft_Xna_Framework_GameTime"

	.byte 14,155,1
	.quad TheAdventuresOf_Monster_HandleAnimation_Microsoft_Xna_Framework_GameTime
	.quad Lme_52

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1992=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1992
	.byte 1,106,3
	.asciz "gameTime"

LDIFF_SYM1993=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1993
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1994=Lfde82_end - Lfde82_start
	.long LDIFF_SYM1994
Lfde82_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster_HandleAnimation_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1995=Lme_52 - TheAdventuresOf_Monster_HandleAnimation_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1995
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde82_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:HandleMovement"
	.asciz "TheAdventuresOf_Monster_HandleMovement_Microsoft_Xna_Framework_GameTime"

	.byte 14,166,1
	.quad TheAdventuresOf_Monster_HandleMovement_Microsoft_Xna_Framework_GameTime
	.quad Lme_53

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1996=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1996
	.byte 1,105,3
	.asciz "gameTime"

LDIFF_SYM1997=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1997
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1998=Lfde83_end - Lfde83_start
	.long LDIFF_SYM1998
Lfde83_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster_HandleMovement_Microsoft_Xna_Framework_GameTime

LDIFF_SYM1999=Lme_53 - TheAdventuresOf_Monster_HandleMovement_Microsoft_Xna_Framework_GameTime
	.long LDIFF_SYM1999
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde83_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:Move"
	.asciz "TheAdventuresOf_Monster_Move_Microsoft_Xna_Framework_GameTime_int"

	.byte 14,179,1
	.quad TheAdventuresOf_Monster_Move_Microsoft_Xna_Framework_GameTime_int
	.quad Lme_54

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2000=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2000
	.byte 1,104,3
	.asciz "gameTime"

LDIFF_SYM2001=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2001
	.byte 3,141,192,0,3
	.asciz "direction"

LDIFF_SYM2002=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2002
	.byte 1,106,11
	.asciz "distanceToMove"

LDIFF_SYM2003=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM2003
	.byte 3,141,240,0,11
	.asciz "V_1"

LDIFF_SYM2004=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2004
	.byte 3,141,232,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2005=Lfde84_end - Lfde84_start
	.long LDIFF_SYM2005
Lfde84_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster_Move_Microsoft_Xna_Framework_GameTime_int

LDIFF_SYM2006=Lme_54 - TheAdventuresOf_Monster_Move_Microsoft_Xna_Framework_GameTime_int
	.long LDIFF_SYM2006
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,148,18,149,17,68,150,16,151,15,68,152,14,68,154,13
	.align 3
Lfde84_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:Draw"
	.asciz "TheAdventuresOf_Monster_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D"

	.byte 14,195,1
	.quad TheAdventuresOf_Monster_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
	.quad Lme_55

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2007=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2007
	.byte 2,141,16,3
	.asciz "spriteBatch"

LDIFF_SYM2008=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2008
	.byte 2,141,24,3
	.asciz "texture"

LDIFF_SYM2009=LTDIE_157_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2009
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2010=Lfde85_end - Lfde85_start
	.long LDIFF_SYM2010
Lfde85_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D

LDIFF_SYM2011=Lme_55 - TheAdventuresOf_Monster_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D
	.long LDIFF_SYM2011
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde85_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "TheAdventuresOf.Monster:.cctor"
	.asciz "TheAdventuresOf_Monster__cctor"

	.byte 14,10
	.quad TheAdventuresOf_Monster__cctor
	.quad Lme_56

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2012=Lfde86_end - Lfde86_start
	.long LDIFF_SYM2012
Lfde86_start:

	.long 0
	.align 3
	.quad TheAdventuresOf_Monster__cctor

LDIFF_SYM2013=Lme_56 - TheAdventuresOf_Monster__cctor
	.long LDIFF_SYM2013
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde86_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_219:

	.byte 5
	.asciz "System_Nullable`1"

	.byte 84,16
LDIFF_SYM2014=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM2014
	.byte 2,35,0,6
	.asciz "value"

LDIFF_SYM2015=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2015
	.byte 2,35,16,6
	.asciz "has_value"

LDIFF_SYM2016=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2016
	.byte 2,35,80,0,7
	.asciz "System_Nullable`1"

LDIFF_SYM2017=LTDIE_219 - Ldebug_info_start
	.long LDIFF_SYM2017
LTDIE_219_POINTER:

	.byte 13
LDIFF_SYM2018=LTDIE_219 - Ldebug_info_start
	.long LDIFF_SYM2018
LTDIE_219_REFERENCE:

	.byte 14
LDIFF_SYM2019=LTDIE_219 - Ldebug_info_start
	.long LDIFF_SYM2019
	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Matrix>:.ctor"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Matrix__ctor_Microsoft_Xna_Framework_Matrix"

	.byte 15,94
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix__ctor_Microsoft_Xna_Framework_Matrix
	.quad Lme_58

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2020=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2020
	.byte 1,106,3
	.asciz "value"

LDIFF_SYM2021=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2021
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2022=Lfde87_end - Lfde87_start
	.long LDIFF_SYM2022
Lfde87_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix__ctor_Microsoft_Xna_Framework_Matrix

LDIFF_SYM2023=Lme_58 - System_Nullable_1_Microsoft_Xna_Framework_Matrix__ctor_Microsoft_Xna_Framework_Matrix
	.long LDIFF_SYM2023
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,154,14
	.align 3
Lfde87_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Matrix>:get_HasValue"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_HasValue"

	.byte 15,99
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_HasValue
	.quad Lme_59

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2024=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2024
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2025=Lfde88_end - Lfde88_start
	.long LDIFF_SYM2025
Lfde88_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_HasValue

LDIFF_SYM2026=Lme_59 - System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_HasValue
	.long LDIFF_SYM2026
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde88_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Matrix>:get_Value"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_Value"

	.byte 15,104
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_Value
	.quad Lme_5a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2027=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2027
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2028=Lfde89_end - Lfde89_start
	.long LDIFF_SYM2028
Lfde89_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_Value

LDIFF_SYM2029=Lme_5a - System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_Value
	.long LDIFF_SYM2029
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,154,14
	.align 3
Lfde89_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Matrix>:Equals"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_object"

	.byte 15,113
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_object
	.quad Lme_5b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2030=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2030
	.byte 1,105,3
	.asciz "other"

LDIFF_SYM2031=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2031
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2032=Lfde90_end - Lfde90_start
	.long LDIFF_SYM2032
Lfde90_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_object

LDIFF_SYM2033=Lme_5b - System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_object
	.long LDIFF_SYM2033
	.long 0
	.byte 12,31,0,68,14,240,1,157,30,158,29,68,13,29,68,151,28,152,27,68,153,26,154,25
	.align 3
Lfde90_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Matrix>:Equals"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_System_Nullable_1_Microsoft_Xna_Framework_Matrix"

	.byte 15,123
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_System_Nullable_1_Microsoft_Xna_Framework_Matrix
	.quad Lme_5c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2034=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2034
	.byte 1,106,3
	.asciz "other"

LDIFF_SYM2035=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2035
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2036=Lfde91_end - Lfde91_start
	.long LDIFF_SYM2036
Lfde91_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_System_Nullable_1_Microsoft_Xna_Framework_Matrix

LDIFF_SYM2037=Lme_5c - System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_System_Nullable_1_Microsoft_Xna_Framework_Matrix
	.long LDIFF_SYM2037
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,154,16
	.align 3
Lfde91_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Matrix>:GetHashCode"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetHashCode"

	.byte 15,134,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetHashCode
	.quad Lme_5d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2038=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2038
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2039=Lfde92_end - Lfde92_start
	.long LDIFF_SYM2039
Lfde92_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetHashCode

LDIFF_SYM2040=Lme_5d - System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetHashCode
	.long LDIFF_SYM2040
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde92_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Matrix>:GetValueOrDefault"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault"

	.byte 15,142,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault
	.quad Lme_5e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2041=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2041
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2042=Lfde93_end - Lfde93_start
	.long LDIFF_SYM2042
Lfde93_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault

LDIFF_SYM2043=Lme_5e - System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault
	.long LDIFF_SYM2043
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29
	.align 3
Lfde93_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Matrix>:GetValueOrDefault"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault_Microsoft_Xna_Framework_Matrix"

	.byte 15,147,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault_Microsoft_Xna_Framework_Matrix
	.quad Lme_5f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2044=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2044
	.byte 1,106,3
	.asciz "defaultValue"

LDIFF_SYM2045=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2045
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2046=Lfde94_end - Lfde94_start
	.long LDIFF_SYM2046
Lfde94_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault_Microsoft_Xna_Framework_Matrix

LDIFF_SYM2047=Lme_5f - System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault_Microsoft_Xna_Framework_Matrix
	.long LDIFF_SYM2047
	.long 0
	.byte 12,31,0,68,14,192,2,157,40,158,39,68,13,29,68,154,38
	.align 3
Lfde94_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Matrix>:ToString"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Matrix_ToString"

	.byte 15,152,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_ToString
	.quad Lme_60

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2048=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2048
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2049=Lfde95_end - Lfde95_start
	.long LDIFF_SYM2049
Lfde95_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_ToString

LDIFF_SYM2050=Lme_60 - System_Nullable_1_Microsoft_Xna_Framework_Matrix_ToString
	.long LDIFF_SYM2050
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde95_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Matrix>:Box"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Matrix_Box_System_Nullable_1_Microsoft_Xna_Framework_Matrix"

	.byte 15,177,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_Box_System_Nullable_1_Microsoft_Xna_Framework_Matrix
	.quad Lme_61

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM2051=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2051
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2052=Lfde96_end - Lfde96_start
	.long LDIFF_SYM2052
Lfde96_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_Box_System_Nullable_1_Microsoft_Xna_Framework_Matrix

LDIFF_SYM2053=Lme_61 - System_Nullable_1_Microsoft_Xna_Framework_Matrix_Box_System_Nullable_1_Microsoft_Xna_Framework_Matrix
	.long LDIFF_SYM2053
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29
	.align 3
Lfde96_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Matrix>:Unbox"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Matrix_Unbox_object"

	.byte 15,185,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_Unbox_object
	.quad Lme_62

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM2054=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2054
	.byte 1,106,11
	.asciz ""

LDIFF_SYM2055=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2055
	.byte 3,141,144,3,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2056=Lfde97_end - Lfde97_start
	.long LDIFF_SYM2056
Lfde97_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_Unbox_object

LDIFF_SYM2057=Lme_62 - System_Nullable_1_Microsoft_Xna_Framework_Matrix_Unbox_object
	.long LDIFF_SYM2057
	.long 0
	.byte 12,31,0,68,14,224,3,157,60,158,59,68,13,29,68,154,58
	.align 3
Lfde97_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_221:

	.byte 5
	.asciz "System_Array"

	.byte 16,16
LDIFF_SYM2058=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM2058
	.byte 2,35,0,0,7
	.asciz "System_Array"

LDIFF_SYM2059=LTDIE_221 - Ldebug_info_start
	.long LDIFF_SYM2059
LTDIE_221_POINTER:

	.byte 13
LDIFF_SYM2060=LTDIE_221 - Ldebug_info_start
	.long LDIFF_SYM2060
LTDIE_221_REFERENCE:

	.byte 14
LDIFF_SYM2061=LTDIE_221 - Ldebug_info_start
	.long LDIFF_SYM2061
LTDIE_220:

	.byte 5
	.asciz "_InternalEnumerator`1"

	.byte 32,16
LDIFF_SYM2062=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM2062
	.byte 2,35,0,6
	.asciz "array"

LDIFF_SYM2063=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2063
	.byte 2,35,16,6
	.asciz "idx"

LDIFF_SYM2064=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2064
	.byte 2,35,24,0,7
	.asciz "_InternalEnumerator`1"

LDIFF_SYM2065=LTDIE_220 - Ldebug_info_start
	.long LDIFF_SYM2065
LTDIE_220_POINTER:

	.byte 13
LDIFF_SYM2066=LTDIE_220 - Ldebug_info_start
	.long LDIFF_SYM2066
LTDIE_220_REFERENCE:

	.byte 14
LDIFF_SYM2067=LTDIE_220 - Ldebug_info_start
	.long LDIFF_SYM2067
	.byte 2
	.asciz "System.Array/InternalEnumerator`1<Microsoft.Xna.Framework.Point>:.ctor"
	.asciz "System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point__ctor_System_Array"

	.byte 16,239,1
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point__ctor_System_Array
	.quad Lme_64

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2068=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2068
	.byte 1,105,3
	.asciz "array"

LDIFF_SYM2069=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2069
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2070=Lfde98_end - Lfde98_start
	.long LDIFF_SYM2070
Lfde98_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point__ctor_System_Array

LDIFF_SYM2071=Lme_64 - System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point__ctor_System_Array
	.long LDIFF_SYM2071
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde98_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<Microsoft.Xna.Framework.Point>:Dispose"
	.asciz "System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_Dispose"

	.byte 16,245,1
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_Dispose
	.quad Lme_65

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2072=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2072
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2073=Lfde99_end - Lfde99_start
	.long LDIFF_SYM2073
Lfde99_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_Dispose

LDIFF_SYM2074=Lme_65 - System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_Dispose
	.long LDIFF_SYM2074
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde99_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<Microsoft.Xna.Framework.Point>:MoveNext"
	.asciz "System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_MoveNext"

	.byte 16,250,1
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_MoveNext
	.quad Lme_66

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2075=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2075
	.byte 1,106,11
	.asciz ""

LDIFF_SYM2076=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2076
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2077=Lfde100_end - Lfde100_start
	.long LDIFF_SYM2077
Lfde100_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_MoveNext

LDIFF_SYM2078=Lme_66 - System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_MoveNext
	.long LDIFF_SYM2078
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,150,10,151,9,68,152,8,153,7,68,154,6
	.align 3
Lfde100_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<Microsoft.Xna.Framework.Point>:get_Current"
	.asciz "System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_get_Current"

	.byte 16,130,2
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_get_Current
	.quad Lme_67

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2079=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2079
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2080=Lfde101_end - Lfde101_start
	.long LDIFF_SYM2080
Lfde101_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_get_Current

LDIFF_SYM2081=Lme_67 - System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_get_Current
	.long LDIFF_SYM2081
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde101_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<Microsoft.Xna.Framework.Point>:System.Collections.IEnumerator.Reset"
	.asciz "System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_Reset"

	.byte 16,141,2
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_Reset
	.quad Lme_68

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2082=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2082
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2083=Lfde102_end - Lfde102_start
	.long LDIFF_SYM2083
Lfde102_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_Reset

LDIFF_SYM2084=Lme_68 - System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_Reset
	.long LDIFF_SYM2084
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde102_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<Microsoft.Xna.Framework.Point>:System.Collections.IEnumerator.get_Current"
	.asciz "System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_get_Current"

	.byte 16,146,2
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_get_Current
	.quad Lme_69

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2085=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2085
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2086=Lfde103_end - Lfde103_start
	.long LDIFF_SYM2086
Lfde103_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_get_Current

LDIFF_SYM2087=Lme_69 - System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM2087
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde103_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<Microsoft.Xna.Framework.Point>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_Microsoft_Xna_Framework_Point"

	.byte 16,78
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_Microsoft_Xna_Framework_Point
	.quad Lme_6a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2088=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2088
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2089=Lfde104_end - Lfde104_start
	.long LDIFF_SYM2089
Lfde104_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_Microsoft_Xna_Framework_Point

LDIFF_SYM2090=Lme_6a - System_Array_InternalArray__IEnumerable_GetEnumerator_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM2090
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29
	.align 3
Lfde104_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_get_Count"
	.asciz "System_Array_InternalArray__ICollection_get_Count"

	.byte 16,68
	.quad System_Array_InternalArray__ICollection_get_Count
	.quad Lme_72

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2091=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2091
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2092=Lfde105_end - Lfde105_start
	.long LDIFF_SYM2092
Lfde105_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_get_Count

LDIFF_SYM2093=Lme_72 - System_Array_InternalArray__ICollection_get_Count
	.long LDIFF_SYM2093
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde105_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_get_IsReadOnly"
	.asciz "System_Array_InternalArray__ICollection_get_IsReadOnly"

	.byte 16,73
	.quad System_Array_InternalArray__ICollection_get_IsReadOnly
	.quad Lme_73

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2094=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2094
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2095=Lfde106_end - Lfde106_start
	.long LDIFF_SYM2095
Lfde106_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_get_IsReadOnly

LDIFF_SYM2096=Lme_73 - System_Array_InternalArray__ICollection_get_IsReadOnly
	.long LDIFF_SYM2096
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde106_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Clear"
	.asciz "System_Array_InternalArray__ICollection_Clear"

	.byte 16,83
	.quad System_Array_InternalArray__ICollection_Clear
	.quad Lme_74

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2097=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2097
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2098=Lfde107_end - Lfde107_start
	.long LDIFF_SYM2098
Lfde107_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Clear

LDIFF_SYM2099=Lme_74 - System_Array_InternalArray__ICollection_Clear
	.long LDIFF_SYM2099
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde107_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Add<Microsoft.Xna.Framework.Point>"
	.asciz "System_Array_InternalArray__ICollection_Add_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point"

	.byte 16,88
	.quad System_Array_InternalArray__ICollection_Add_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
	.quad Lme_75

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2100=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2100
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM2101=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2101
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2102=Lfde108_end - Lfde108_start
	.long LDIFF_SYM2102
Lfde108_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Add_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point

LDIFF_SYM2103=Lme_75 - System_Array_InternalArray__ICollection_Add_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM2103
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde108_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Remove<Microsoft.Xna.Framework.Point>"
	.asciz "System_Array_InternalArray__ICollection_Remove_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point"

	.byte 16,93
	.quad System_Array_InternalArray__ICollection_Remove_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
	.quad Lme_76

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2104=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2104
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM2105=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2105
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2106=Lfde109_end - Lfde109_start
	.long LDIFF_SYM2106
Lfde109_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Remove_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point

LDIFF_SYM2107=Lme_76 - System_Array_InternalArray__ICollection_Remove_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM2107
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde109_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Contains<Microsoft.Xna.Framework.Point>"
	.asciz "System_Array_InternalArray__ICollection_Contains_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point"

	.byte 16,98
	.quad System_Array_InternalArray__ICollection_Contains_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
	.quad Lme_77

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2108=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2108
	.byte 1,106,3
	.asciz "item"

LDIFF_SYM2109=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2109
	.byte 2,141,40,11
	.asciz "length"

LDIFF_SYM2110=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2110
	.byte 1,105,11
	.asciz "i"

LDIFF_SYM2111=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2111
	.byte 1,104,11
	.asciz "value"

LDIFF_SYM2112=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2112
	.byte 3,141,240,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2113=Lfde110_end - Lfde110_start
	.long LDIFF_SYM2113
Lfde110_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Contains_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point

LDIFF_SYM2114=Lme_77 - System_Array_InternalArray__ICollection_Contains_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM2114
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,152,16,153,15,68,154,14
	.align 3
Lfde110_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_CopyTo<Microsoft.Xna.Framework.Point>"
	.asciz "System_Array_InternalArray__ICollection_CopyTo_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point___int"

	.byte 16,123
	.quad System_Array_InternalArray__ICollection_CopyTo_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point___int
	.quad Lme_78

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2115=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2115
	.byte 1,104,3
	.asciz "array"

LDIFF_SYM2116=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2116
	.byte 1,105,3
	.asciz "index"

LDIFF_SYM2117=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2117
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2118=Lfde111_end - Lfde111_start
	.long LDIFF_SYM2118
Lfde111_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_CopyTo_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point___int

LDIFF_SYM2119=Lme_78 - System_Array_InternalArray__ICollection_CopyTo_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point___int
	.long LDIFF_SYM2119
	.long 0
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,148,26,149,25,68,150,24,68,152,23,153,22,68,154,21
	.align 3
Lfde111_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_222:

	.byte 5
	.asciz "System_Collections_Generic_EqualityComparer`1"

	.byte 16,16
LDIFF_SYM2120=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM2120
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_EqualityComparer`1"

LDIFF_SYM2121=LTDIE_222 - Ldebug_info_start
	.long LDIFF_SYM2121
LTDIE_222_POINTER:

	.byte 13
LDIFF_SYM2122=LTDIE_222 - Ldebug_info_start
	.long LDIFF_SYM2122
LTDIE_222_REFERENCE:

	.byte 14
LDIFF_SYM2123=LTDIE_222 - Ldebug_info_start
	.long LDIFF_SYM2123
	.byte 2
	.asciz "System.Collections.Generic.EqualityComparer`1<Microsoft.Xna.Framework.Point>:.ctor"
	.asciz "System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point__ctor"

	.byte 0,0
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
	.quad Lme_7a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2124=LTDIE_222_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2124
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2125=Lfde112_end - Lfde112_start
	.long LDIFF_SYM2125
Lfde112_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point__ctor

LDIFF_SYM2126=Lme_7a - System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
	.long LDIFF_SYM2126
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde112_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.EqualityComparer`1<Microsoft.Xna.Framework.Point>:get_Default"
	.asciz "System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_get_Default"

	.byte 17,32
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_get_Default
	.quad Lme_7b

	.byte 2,118,16,11
	.asciz "comparer"

LDIFF_SYM2127=LTDIE_222_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2127
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2128=Lfde113_end - Lfde113_start
	.long LDIFF_SYM2128
Lfde113_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_get_Default

LDIFF_SYM2129=Lme_7b - System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_get_Default
	.long LDIFF_SYM2129
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde113_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_224:

	.byte 5
	.asciz "System_Reflection_TypeInfo"

	.byte 24,16
LDIFF_SYM2130=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM2130
	.byte 2,35,0,0,7
	.asciz "System_Reflection_TypeInfo"

LDIFF_SYM2131=LTDIE_224 - Ldebug_info_start
	.long LDIFF_SYM2131
LTDIE_224_POINTER:

	.byte 13
LDIFF_SYM2132=LTDIE_224 - Ldebug_info_start
	.long LDIFF_SYM2132
LTDIE_224_REFERENCE:

	.byte 14
LDIFF_SYM2133=LTDIE_224 - Ldebug_info_start
	.long LDIFF_SYM2133
LTDIE_226:

	.byte 5
	.asciz "System_Reflection_ConstructorInfo"

	.byte 16,16
LDIFF_SYM2134=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM2134
	.byte 2,35,0,0,7
	.asciz "System_Reflection_ConstructorInfo"

LDIFF_SYM2135=LTDIE_226 - Ldebug_info_start
	.long LDIFF_SYM2135
LTDIE_226_POINTER:

	.byte 13
LDIFF_SYM2136=LTDIE_226 - Ldebug_info_start
	.long LDIFF_SYM2136
LTDIE_226_REFERENCE:

	.byte 14
LDIFF_SYM2137=LTDIE_226 - Ldebug_info_start
	.long LDIFF_SYM2137
LTDIE_225:

	.byte 5
	.asciz "System_Reflection_RuntimeConstructorInfo"

	.byte 16,16
LDIFF_SYM2138=LTDIE_226 - Ldebug_info_start
	.long LDIFF_SYM2138
	.byte 2,35,0,0,7
	.asciz "System_Reflection_RuntimeConstructorInfo"

LDIFF_SYM2139=LTDIE_225 - Ldebug_info_start
	.long LDIFF_SYM2139
LTDIE_225_POINTER:

	.byte 13
LDIFF_SYM2140=LTDIE_225 - Ldebug_info_start
	.long LDIFF_SYM2140
LTDIE_225_REFERENCE:

	.byte 14
LDIFF_SYM2141=LTDIE_225 - Ldebug_info_start
	.long LDIFF_SYM2141
LTDIE_223:

	.byte 5
	.asciz "System_RuntimeType"

	.byte 40,16
LDIFF_SYM2142=LTDIE_224 - Ldebug_info_start
	.long LDIFF_SYM2142
	.byte 2,35,0,6
	.asciz "GenericCache"

LDIFF_SYM2143=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2143
	.byte 2,35,24,6
	.asciz "m_serializationCtor"

LDIFF_SYM2144=LTDIE_225_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2144
	.byte 2,35,32,0,7
	.asciz "System_RuntimeType"

LDIFF_SYM2145=LTDIE_223 - Ldebug_info_start
	.long LDIFF_SYM2145
LTDIE_223_POINTER:

	.byte 13
LDIFF_SYM2146=LTDIE_223 - Ldebug_info_start
	.long LDIFF_SYM2146
LTDIE_223_REFERENCE:

	.byte 14
LDIFF_SYM2147=LTDIE_223 - Ldebug_info_start
	.long LDIFF_SYM2147
LTDIE_227:

	.byte 8
	.asciz "System_TypeCode"

	.byte 4
LDIFF_SYM2148=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2148
	.byte 9
	.asciz "Empty"

	.byte 0,9
	.asciz "Object"

	.byte 1,9
	.asciz "DBNull"

	.byte 2,9
	.asciz "Boolean"

	.byte 3,9
	.asciz "Char"

	.byte 4,9
	.asciz "SByte"

	.byte 5,9
	.asciz "Byte"

	.byte 6,9
	.asciz "Int16"

	.byte 7,9
	.asciz "UInt16"

	.byte 8,9
	.asciz "Int32"

	.byte 9,9
	.asciz "UInt32"

	.byte 10,9
	.asciz "Int64"

	.byte 11,9
	.asciz "UInt64"

	.byte 12,9
	.asciz "Single"

	.byte 13,9
	.asciz "Double"

	.byte 14,9
	.asciz "Decimal"

	.byte 15,9
	.asciz "DateTime"

	.byte 16,9
	.asciz "String"

	.byte 18,0,7
	.asciz "System_TypeCode"

LDIFF_SYM2149=LTDIE_227 - Ldebug_info_start
	.long LDIFF_SYM2149
LTDIE_227_POINTER:

	.byte 13
LDIFF_SYM2150=LTDIE_227 - Ldebug_info_start
	.long LDIFF_SYM2150
LTDIE_227_REFERENCE:

	.byte 14
LDIFF_SYM2151=LTDIE_227 - Ldebug_info_start
	.long LDIFF_SYM2151
	.byte 2
	.asciz "System.Collections.Generic.EqualityComparer`1<Microsoft.Xna.Framework.Point>:CreateComparer"
	.asciz "System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_CreateComparer"

	.byte 17,49
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_CreateComparer
	.quad Lme_7c

	.byte 2,118,16,11
	.asciz "t"

LDIFF_SYM2152=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2152
	.byte 1,106,11
	.asciz "u"

LDIFF_SYM2153=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2153
	.byte 1,105,11
	.asciz "underlyingTypeCode"

LDIFF_SYM2154=LTDIE_227 - Ldebug_info_start
	.long LDIFF_SYM2154
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2155=Lfde114_end - Lfde114_start
	.long LDIFF_SYM2155
Lfde114_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_CreateComparer

LDIFF_SYM2156=Lme_7c - System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_CreateComparer
	.long LDIFF_SYM2156
	.long 0
	.byte 12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,147,22,148,21,68,149,20,150,19,68,151,18,152,17,68,153,16
	.byte 154,15
	.align 3
Lfde114_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.EqualityComparer`1<Microsoft.Xna.Framework.Point>:IndexOf"
	.asciz "System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int"

	.byte 17,129,1
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int
	.quad Lme_7f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2157=LTDIE_222_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2157
	.byte 1,103,3
	.asciz "array"

LDIFF_SYM2158=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2158
	.byte 1,104,3
	.asciz "value"

LDIFF_SYM2159=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2159
	.byte 2,141,56,3
	.asciz "startIndex"

LDIFF_SYM2160=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2160
	.byte 1,105,3
	.asciz "count"

LDIFF_SYM2161=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2161
	.byte 3,141,200,0,11
	.asciz "endIndex"

LDIFF_SYM2162=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2162
	.byte 1,102,11
	.asciz "i"

LDIFF_SYM2163=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2163
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2164=Lfde115_end - Lfde115_start
	.long LDIFF_SYM2164
Lfde115_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int

LDIFF_SYM2165=Lme_7f - System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int
	.long LDIFF_SYM2165
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,149,16,150,15,68,151,14,152,13,68,153,12
	.align 3
Lfde115_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.EqualityComparer`1<Microsoft.Xna.Framework.Point>:System.Collections.IEqualityComparer.GetHashCode"
	.asciz "System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_GetHashCode_object"

	.byte 17,145,1
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_GetHashCode_object
	.quad Lme_80

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2166=LTDIE_222_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2166
	.byte 2,141,40,3
	.asciz "obj"

LDIFF_SYM2167=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2167
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2168=Lfde116_end - Lfde116_start
	.long LDIFF_SYM2168
Lfde116_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_GetHashCode_object

LDIFF_SYM2169=Lme_80 - System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_GetHashCode_object
	.long LDIFF_SYM2169
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,151,10,152,9,68,154,8
	.align 3
Lfde116_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.EqualityComparer`1<Microsoft.Xna.Framework.Point>:System.Collections.IEqualityComparer.Equals"
	.asciz "System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_Equals_object_object"

	.byte 17,152,1
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_Equals_object_object
	.quad Lme_81

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2170=LTDIE_222_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2170
	.byte 3,141,192,0,3
	.asciz "x"

LDIFF_SYM2171=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2171
	.byte 1,105,3
	.asciz "y"

LDIFF_SYM2172=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2172
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2173=Lfde117_end - Lfde117_start
	.long LDIFF_SYM2173
Lfde117_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_Equals_object_object

LDIFF_SYM2174=Lme_81 - System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_Equals_object_object
	.long LDIFF_SYM2174
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,148,14,149,13,68,150,12,151,11,68,153,10,154,9
	.align 3
Lfde117_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_228:

	.byte 5
	.asciz "System_Collections_Generic_GenericEqualityComparer`1"

	.byte 16,16
LDIFF_SYM2175=LTDIE_222 - Ldebug_info_start
	.long LDIFF_SYM2175
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_GenericEqualityComparer`1"

LDIFF_SYM2176=LTDIE_228 - Ldebug_info_start
	.long LDIFF_SYM2176
LTDIE_228_POINTER:

	.byte 13
LDIFF_SYM2177=LTDIE_228 - Ldebug_info_start
	.long LDIFF_SYM2177
LTDIE_228_REFERENCE:

	.byte 14
LDIFF_SYM2178=LTDIE_228 - Ldebug_info_start
	.long LDIFF_SYM2178
	.byte 2
	.asciz "System.Collections.Generic.GenericEqualityComparer`1<Microsoft.Xna.Framework.Point>:.ctor"
	.asciz "System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor"

	.byte 0,0
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
	.quad Lme_82

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2179=LTDIE_228_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2179
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2180=Lfde118_end - Lfde118_start
	.long LDIFF_SYM2180
Lfde118_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor

LDIFF_SYM2181=Lme_82 - System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
	.long LDIFF_SYM2181
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde118_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.GenericEqualityComparer`1<Microsoft.Xna.Framework.Point>:Equals"
	.asciz "System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point"

	.byte 17,167,1
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
	.quad Lme_83

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2182=LTDIE_228_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2182
	.byte 2,141,16,3
	.asciz "x"

LDIFF_SYM2183=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2183
	.byte 2,141,24,3
	.asciz "y"

LDIFF_SYM2184=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2184
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2185=Lfde119_end - Lfde119_start
	.long LDIFF_SYM2185
Lfde119_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point

LDIFF_SYM2186=Lme_83 - System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM2186
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29
	.align 3
Lfde119_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.GenericEqualityComparer`1<Microsoft.Xna.Framework.Point>:GetHashCode"
	.asciz "System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point"

	.byte 17,177,1
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point
	.quad Lme_84

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2187=LTDIE_228_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2187
	.byte 2,141,16,3
	.asciz "obj"

LDIFF_SYM2188=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2188
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2189=Lfde120_end - Lfde120_start
	.long LDIFF_SYM2189
Lfde120_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point

LDIFF_SYM2190=Lme_84 - System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM2190
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde120_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.GenericEqualityComparer`1<Microsoft.Xna.Framework.Point>:IndexOf"
	.asciz "System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int"

	.byte 17,182,1
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int
	.quad Lme_85

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2191=LTDIE_228_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2191
	.byte 2,141,56,3
	.asciz "array"

LDIFF_SYM2192=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2192
	.byte 1,104,3
	.asciz "value"

LDIFF_SYM2193=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2193
	.byte 3,141,192,0,3
	.asciz "startIndex"

LDIFF_SYM2194=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2194
	.byte 1,105,3
	.asciz "count"

LDIFF_SYM2195=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2195
	.byte 3,141,208,0,11
	.asciz "endIndex"

LDIFF_SYM2196=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2196
	.byte 1,103,11
	.asciz "i"

LDIFF_SYM2197=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2197
	.byte 1,102,11
	.asciz "i"

LDIFF_SYM2198=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2198
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2199=Lfde121_end - Lfde121_start
	.long LDIFF_SYM2199
Lfde121_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int

LDIFF_SYM2200=Lme_85 - System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int
	.long LDIFF_SYM2200
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,149,18,150,17,68,151,16,152,15,68,153,14
	.align 3
Lfde121_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.GenericEqualityComparer`1<Microsoft.Xna.Framework.Point>:Equals"
	.asciz "System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object"

	.byte 17,213,1
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object
	.quad Lme_86

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2201=LTDIE_228_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2201
	.byte 2,141,40,3
	.asciz "obj"

LDIFF_SYM2202=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2202
	.byte 2,141,48,11
	.asciz "comparer"

LDIFF_SYM2203=LTDIE_228_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2203
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2204=Lfde122_end - Lfde122_start
	.long LDIFF_SYM2204
Lfde122_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object

LDIFF_SYM2205=Lme_86 - System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object
	.long LDIFF_SYM2205
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8,152,7,68,153,6
	.align 3
Lfde122_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.GenericEqualityComparer`1<Microsoft.Xna.Framework.Point>:GetHashCode"
	.asciz "System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode"

	.byte 17,218,1
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode
	.quad Lme_87

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2206=LTDIE_228_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2206
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2207=Lfde123_end - Lfde123_start
	.long LDIFF_SYM2207
Lfde123_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode

LDIFF_SYM2208=Lme_87 - System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode
	.long LDIFF_SYM2208
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde123_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_229:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 112,16
LDIFF_SYM2209=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM2209
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM2210=LTDIE_229 - Ldebug_info_start
	.long LDIFF_SYM2210
LTDIE_229_POINTER:

	.byte 13
LDIFF_SYM2211=LTDIE_229 - Ldebug_info_start
	.long LDIFF_SYM2211
LTDIE_229_REFERENCE:

	.byte 14
LDIFF_SYM2212=LTDIE_229 - Ldebug_info_start
	.long LDIFF_SYM2212
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Predicate`1<Microsoft.Xna.Framework.Point>:invoke_bool_T"
	.asciz "wrapper_delegate_invoke_System_Predicate_1_Microsoft_Xna_Framework_Point_invoke_bool_T_Microsoft_Xna_Framework_Point"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Predicate_1_Microsoft_Xna_Framework_Point_invoke_bool_T_Microsoft_Xna_Framework_Point
	.quad Lme_8c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2213=LTDIE_229_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2213
	.byte 1,106,3
	.asciz "param0"

LDIFF_SYM2214=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2214
	.byte 3,141,208,0,11
	.asciz "V_0"

LDIFF_SYM2215=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2215
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM2216=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2216
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM2217=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2217
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM2218=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2218
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM2219=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2219
	.byte 1,101,11
	.asciz "V_5"

LDIFF_SYM2220=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2220
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2221=Lfde124_end - Lfde124_start
	.long LDIFF_SYM2221
Lfde124_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Predicate_1_Microsoft_Xna_Framework_Point_invoke_bool_T_Microsoft_Xna_Framework_Point

LDIFF_SYM2222=Lme_8c - wrapper_delegate_invoke_System_Predicate_1_Microsoft_Xna_Framework_Point_invoke_bool_T_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM2222
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,147,20,148,19,68,149,18,150,17,68,151,16,152,15,68,153,14
	.byte 154,13
	.align 3
Lfde124_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_230:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 112,16
LDIFF_SYM2223=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM2223
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM2224=LTDIE_230 - Ldebug_info_start
	.long LDIFF_SYM2224
LTDIE_230_POINTER:

	.byte 13
LDIFF_SYM2225=LTDIE_230 - Ldebug_info_start
	.long LDIFF_SYM2225
LTDIE_230_REFERENCE:

	.byte 14
LDIFF_SYM2226=LTDIE_230 - Ldebug_info_start
	.long LDIFF_SYM2226
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<Microsoft.Xna.Framework.Point>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_Microsoft_Xna_Framework_Point_invoke_int_T_T_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_Microsoft_Xna_Framework_Point_invoke_int_T_T_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
	.quad Lme_92

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2227=LTDIE_230_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2227
	.byte 1,106,3
	.asciz "param0"

LDIFF_SYM2228=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2228
	.byte 3,141,208,0,3
	.asciz "param1"

LDIFF_SYM2229=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2229
	.byte 3,141,224,0,11
	.asciz "V_0"

LDIFF_SYM2230=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2230
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM2231=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2231
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM2232=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2232
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM2233=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2233
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM2234=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2234
	.byte 1,101,11
	.asciz "V_5"

LDIFF_SYM2235=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2235
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2236=Lfde125_end - Lfde125_start
	.long LDIFF_SYM2236
Lfde125_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_Microsoft_Xna_Framework_Point_invoke_int_T_T_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point

LDIFF_SYM2237=Lme_92 - wrapper_delegate_invoke_System_Comparison_1_Microsoft_Xna_Framework_Point_invoke_int_T_T_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM2237
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,147,24,148,23,68,149,22,150,21,68,151,20,152,19,68,153,18
	.byte 154,17
	.align 3
Lfde125_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_231:

	.byte 5
	.asciz "System_Nullable`1"

	.byte 28,16
LDIFF_SYM2238=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM2238
	.byte 2,35,0,6
	.asciz "value"

LDIFF_SYM2239=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2239
	.byte 2,35,16,6
	.asciz "has_value"

LDIFF_SYM2240=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2240
	.byte 2,35,24,0,7
	.asciz "System_Nullable`1"

LDIFF_SYM2241=LTDIE_231 - Ldebug_info_start
	.long LDIFF_SYM2241
LTDIE_231_POINTER:

	.byte 13
LDIFF_SYM2242=LTDIE_231 - Ldebug_info_start
	.long LDIFF_SYM2242
LTDIE_231_REFERENCE:

	.byte 14
LDIFF_SYM2243=LTDIE_231 - Ldebug_info_start
	.long LDIFF_SYM2243
	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Vector2>:.ctor"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Vector2__ctor_Microsoft_Xna_Framework_Vector2"

	.byte 15,94
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2__ctor_Microsoft_Xna_Framework_Vector2
	.quad Lme_93

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2244=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2244
	.byte 1,106,3
	.asciz "value"

LDIFF_SYM2245=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2245
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2246=Lfde126_end - Lfde126_start
	.long LDIFF_SYM2246
Lfde126_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2__ctor_Microsoft_Xna_Framework_Vector2

LDIFF_SYM2247=Lme_93 - System_Nullable_1_Microsoft_Xna_Framework_Vector2__ctor_Microsoft_Xna_Framework_Vector2
	.long LDIFF_SYM2247
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,154,14
	.align 3
Lfde126_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Vector2>:get_HasValue"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_HasValue"

	.byte 15,99
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_HasValue
	.quad Lme_94

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2248=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2248
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2249=Lfde127_end - Lfde127_start
	.long LDIFF_SYM2249
Lfde127_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_HasValue

LDIFF_SYM2250=Lme_94 - System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_HasValue
	.long LDIFF_SYM2250
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde127_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Vector2>:get_Value"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_Value"

	.byte 15,104
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_Value
	.quad Lme_95

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2251=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2251
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2252=Lfde128_end - Lfde128_start
	.long LDIFF_SYM2252
Lfde128_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_Value

LDIFF_SYM2253=Lme_95 - System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_Value
	.long LDIFF_SYM2253
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,154,14
	.align 3
Lfde128_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Vector2>:Equals"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_object"

	.byte 15,113
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_object
	.quad Lme_96

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2254=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2254
	.byte 1,105,3
	.asciz "other"

LDIFF_SYM2255=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2255
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2256=Lfde129_end - Lfde129_start
	.long LDIFF_SYM2256
Lfde129_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_object

LDIFF_SYM2257=Lme_96 - System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_object
	.long LDIFF_SYM2257
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,153,10,154,9
	.align 3
Lfde129_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Vector2>:Equals"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_System_Nullable_1_Microsoft_Xna_Framework_Vector2"

	.byte 15,123
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_System_Nullable_1_Microsoft_Xna_Framework_Vector2
	.quad Lme_97

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2258=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2258
	.byte 1,106,3
	.asciz "other"

LDIFF_SYM2259=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2259
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2260=Lfde130_end - Lfde130_start
	.long LDIFF_SYM2260
Lfde130_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_System_Nullable_1_Microsoft_Xna_Framework_Vector2

LDIFF_SYM2261=Lme_97 - System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_System_Nullable_1_Microsoft_Xna_Framework_Vector2
	.long LDIFF_SYM2261
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde130_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Vector2>:GetHashCode"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetHashCode"

	.byte 15,134,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetHashCode
	.quad Lme_98

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2262=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2262
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2263=Lfde131_end - Lfde131_start
	.long LDIFF_SYM2263
Lfde131_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetHashCode

LDIFF_SYM2264=Lme_98 - System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetHashCode
	.long LDIFF_SYM2264
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde131_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Vector2>:GetValueOrDefault"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault"

	.byte 15,142,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault
	.quad Lme_99

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2265=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2265
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2266=Lfde132_end - Lfde132_start
	.long LDIFF_SYM2266
Lfde132_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault

LDIFF_SYM2267=Lme_99 - System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault
	.long LDIFF_SYM2267
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29
	.align 3
Lfde132_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Vector2>:GetValueOrDefault"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault_Microsoft_Xna_Framework_Vector2"

	.byte 15,147,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault_Microsoft_Xna_Framework_Vector2
	.quad Lme_9a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2268=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2268
	.byte 1,106,3
	.asciz "defaultValue"

LDIFF_SYM2269=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2269
	.byte 3,141,216,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2270=Lfde133_end - Lfde133_start
	.long LDIFF_SYM2270
Lfde133_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault_Microsoft_Xna_Framework_Vector2

LDIFF_SYM2271=Lme_9a - System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault_Microsoft_Xna_Framework_Vector2
	.long LDIFF_SYM2271
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,154,24
	.align 3
Lfde133_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Vector2>:ToString"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Vector2_ToString"

	.byte 15,152,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_ToString
	.quad Lme_9b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2272=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2272
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2273=Lfde134_end - Lfde134_start
	.long LDIFF_SYM2273
Lfde134_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_ToString

LDIFF_SYM2274=Lme_9b - System_Nullable_1_Microsoft_Xna_Framework_Vector2_ToString
	.long LDIFF_SYM2274
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde134_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Vector2>:Box"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Vector2_Box_System_Nullable_1_Microsoft_Xna_Framework_Vector2"

	.byte 15,177,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_Box_System_Nullable_1_Microsoft_Xna_Framework_Vector2
	.quad Lme_9c

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM2275=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2275
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2276=Lfde135_end - Lfde135_start
	.long LDIFF_SYM2276
Lfde135_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_Box_System_Nullable_1_Microsoft_Xna_Framework_Vector2

LDIFF_SYM2277=Lme_9c - System_Nullable_1_Microsoft_Xna_Framework_Vector2_Box_System_Nullable_1_Microsoft_Xna_Framework_Vector2
	.long LDIFF_SYM2277
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde135_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Vector2>:Unbox"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Vector2_Unbox_object"

	.byte 15,185,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_Unbox_object
	.quad Lme_9d

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM2278=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2278
	.byte 1,106,11
	.asciz ""

LDIFF_SYM2279=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2279
	.byte 3,141,248,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2280=Lfde136_end - Lfde136_start
	.long LDIFF_SYM2280
Lfde136_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_Unbox_object

LDIFF_SYM2281=Lme_9d - System_Nullable_1_Microsoft_Xna_Framework_Vector2_Unbox_object
	.long LDIFF_SYM2281
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,154,16
	.align 3
Lfde136_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_232:

	.byte 5
	.asciz "System_Nullable`1"

	.byte 36,16
LDIFF_SYM2282=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM2282
	.byte 2,35,0,6
	.asciz "value"

LDIFF_SYM2283=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2283
	.byte 2,35,16,6
	.asciz "has_value"

LDIFF_SYM2284=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2284
	.byte 2,35,32,0,7
	.asciz "System_Nullable`1"

LDIFF_SYM2285=LTDIE_232 - Ldebug_info_start
	.long LDIFF_SYM2285
LTDIE_232_POINTER:

	.byte 13
LDIFF_SYM2286=LTDIE_232 - Ldebug_info_start
	.long LDIFF_SYM2286
LTDIE_232_REFERENCE:

	.byte 14
LDIFF_SYM2287=LTDIE_232 - Ldebug_info_start
	.long LDIFF_SYM2287
	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Rectangle>:.ctor"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Rectangle__ctor_Microsoft_Xna_Framework_Rectangle"

	.byte 15,94
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle__ctor_Microsoft_Xna_Framework_Rectangle
	.quad Lme_9e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2288=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2288
	.byte 1,106,3
	.asciz "value"

LDIFF_SYM2289=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2289
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2290=Lfde137_end - Lfde137_start
	.long LDIFF_SYM2290
Lfde137_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle__ctor_Microsoft_Xna_Framework_Rectangle

LDIFF_SYM2291=Lme_9e - System_Nullable_1_Microsoft_Xna_Framework_Rectangle__ctor_Microsoft_Xna_Framework_Rectangle
	.long LDIFF_SYM2291
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde137_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Rectangle>:get_HasValue"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_HasValue"

	.byte 15,99
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_HasValue
	.quad Lme_9f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2292=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2292
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2293=Lfde138_end - Lfde138_start
	.long LDIFF_SYM2293
Lfde138_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_HasValue

LDIFF_SYM2294=Lme_9f - System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_HasValue
	.long LDIFF_SYM2294
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde138_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Rectangle>:get_Value"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_Value"

	.byte 15,104
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_Value
	.quad Lme_a0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2295=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2295
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2296=Lfde139_end - Lfde139_start
	.long LDIFF_SYM2296
Lfde139_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_Value

LDIFF_SYM2297=Lme_a0 - System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_Value
	.long LDIFF_SYM2297
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde139_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Rectangle>:Equals"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_object"

	.byte 15,113
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_object
	.quad Lme_a1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2298=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2298
	.byte 1,105,3
	.asciz "other"

LDIFF_SYM2299=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2299
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2300=Lfde140_end - Lfde140_start
	.long LDIFF_SYM2300
Lfde140_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_object

LDIFF_SYM2301=Lme_a1 - System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_object
	.long LDIFF_SYM2301
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,151,16,152,15,68,153,14,154,13
	.align 3
Lfde140_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Rectangle>:Equals"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_System_Nullable_1_Microsoft_Xna_Framework_Rectangle"

	.byte 15,123
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_System_Nullable_1_Microsoft_Xna_Framework_Rectangle
	.quad Lme_a2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2302=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2302
	.byte 1,106,3
	.asciz "other"

LDIFF_SYM2303=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2303
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2304=Lfde141_end - Lfde141_start
	.long LDIFF_SYM2304
Lfde141_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_System_Nullable_1_Microsoft_Xna_Framework_Rectangle

LDIFF_SYM2305=Lme_a2 - System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_System_Nullable_1_Microsoft_Xna_Framework_Rectangle
	.long LDIFF_SYM2305
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde141_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Rectangle>:GetHashCode"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetHashCode"

	.byte 15,134,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetHashCode
	.quad Lme_a3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2306=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2306
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2307=Lfde142_end - Lfde142_start
	.long LDIFF_SYM2307
Lfde142_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetHashCode

LDIFF_SYM2308=Lme_a3 - System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetHashCode
	.long LDIFF_SYM2308
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde142_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Rectangle>:GetValueOrDefault"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault"

	.byte 15,142,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault
	.quad Lme_a4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2309=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2309
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2310=Lfde143_end - Lfde143_start
	.long LDIFF_SYM2310
Lfde143_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault

LDIFF_SYM2311=Lme_a4 - System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault
	.long LDIFF_SYM2311
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde143_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Rectangle>:GetValueOrDefault"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault_Microsoft_Xna_Framework_Rectangle"

	.byte 15,147,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault_Microsoft_Xna_Framework_Rectangle
	.quad Lme_a5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2312=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2312
	.byte 1,106,3
	.asciz "defaultValue"

LDIFF_SYM2313=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2313
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2314=Lfde144_end - Lfde144_start
	.long LDIFF_SYM2314
Lfde144_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault_Microsoft_Xna_Framework_Rectangle

LDIFF_SYM2315=Lme_a5 - System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault_Microsoft_Xna_Framework_Rectangle
	.long LDIFF_SYM2315
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,154,16
	.align 3
Lfde144_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Rectangle>:ToString"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Rectangle_ToString"

	.byte 15,152,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_ToString
	.quad Lme_a6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2316=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2316
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2317=Lfde145_end - Lfde145_start
	.long LDIFF_SYM2317
Lfde145_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_ToString

LDIFF_SYM2318=Lme_a6 - System_Nullable_1_Microsoft_Xna_Framework_Rectangle_ToString
	.long LDIFF_SYM2318
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde145_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Rectangle>:Box"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Box_System_Nullable_1_Microsoft_Xna_Framework_Rectangle"

	.byte 15,177,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Box_System_Nullable_1_Microsoft_Xna_Framework_Rectangle
	.quad Lme_a7

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM2319=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2319
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2320=Lfde146_end - Lfde146_start
	.long LDIFF_SYM2320
Lfde146_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Box_System_Nullable_1_Microsoft_Xna_Framework_Rectangle

LDIFF_SYM2321=Lme_a7 - System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Box_System_Nullable_1_Microsoft_Xna_Framework_Rectangle
	.long LDIFF_SYM2321
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde146_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Rectangle>:Unbox"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Unbox_object"

	.byte 15,185,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Unbox_object
	.quad Lme_a8

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM2322=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2322
	.byte 1,106,11
	.asciz ""

LDIFF_SYM2323=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2323
	.byte 3,141,144,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2324=Lfde147_end - Lfde147_start
	.long LDIFF_SYM2324
Lfde147_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Unbox_object

LDIFF_SYM2325=Lme_a8 - System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Unbox_object
	.long LDIFF_SYM2325
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,154,20
	.align 3
Lfde147_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_233:

	.byte 5
	.asciz "System_Nullable`1"

	.byte 24,16
LDIFF_SYM2326=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM2326
	.byte 2,35,0,6
	.asciz "value"

LDIFF_SYM2327=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2327
	.byte 2,35,16,6
	.asciz "has_value"

LDIFF_SYM2328=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2328
	.byte 2,35,20,0,7
	.asciz "System_Nullable`1"

LDIFF_SYM2329=LTDIE_233 - Ldebug_info_start
	.long LDIFF_SYM2329
LTDIE_233_POINTER:

	.byte 13
LDIFF_SYM2330=LTDIE_233 - Ldebug_info_start
	.long LDIFF_SYM2330
LTDIE_233_REFERENCE:

	.byte 14
LDIFF_SYM2331=LTDIE_233 - Ldebug_info_start
	.long LDIFF_SYM2331
	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Color>:.ctor"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Color__ctor_Microsoft_Xna_Framework_Color"

	.byte 15,94
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color__ctor_Microsoft_Xna_Framework_Color
	.quad Lme_a9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2332=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2332
	.byte 1,106,3
	.asciz "value"

LDIFF_SYM2333=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2333
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2334=Lfde148_end - Lfde148_start
	.long LDIFF_SYM2334
Lfde148_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color__ctor_Microsoft_Xna_Framework_Color

LDIFF_SYM2335=Lme_a9 - System_Nullable_1_Microsoft_Xna_Framework_Color__ctor_Microsoft_Xna_Framework_Color
	.long LDIFF_SYM2335
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde148_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Color>:get_HasValue"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Color_get_HasValue"

	.byte 15,99
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_get_HasValue
	.quad Lme_aa

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2336=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2336
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2337=Lfde149_end - Lfde149_start
	.long LDIFF_SYM2337
Lfde149_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_get_HasValue

LDIFF_SYM2338=Lme_aa - System_Nullable_1_Microsoft_Xna_Framework_Color_get_HasValue
	.long LDIFF_SYM2338
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde149_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Color>:get_Value"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Color_get_Value"

	.byte 15,104
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_get_Value
	.quad Lme_ab

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2339=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2339
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2340=Lfde150_end - Lfde150_start
	.long LDIFF_SYM2340
Lfde150_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_get_Value

LDIFF_SYM2341=Lme_ab - System_Nullable_1_Microsoft_Xna_Framework_Color_get_Value
	.long LDIFF_SYM2341
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde150_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Color>:Equals"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_object"

	.byte 15,113
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_object
	.quad Lme_ac

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2342=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2342
	.byte 1,105,3
	.asciz "other"

LDIFF_SYM2343=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2343
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2344=Lfde151_end - Lfde151_start
	.long LDIFF_SYM2344
Lfde151_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_object

LDIFF_SYM2345=Lme_ac - System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_object
	.long LDIFF_SYM2345
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,153,10,154,9
	.align 3
Lfde151_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Color>:Equals"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_System_Nullable_1_Microsoft_Xna_Framework_Color"

	.byte 15,123
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_System_Nullable_1_Microsoft_Xna_Framework_Color
	.quad Lme_ad

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2346=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2346
	.byte 1,106,3
	.asciz "other"

LDIFF_SYM2347=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2347
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2348=Lfde152_end - Lfde152_start
	.long LDIFF_SYM2348
Lfde152_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_System_Nullable_1_Microsoft_Xna_Framework_Color

LDIFF_SYM2349=Lme_ad - System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_System_Nullable_1_Microsoft_Xna_Framework_Color
	.long LDIFF_SYM2349
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde152_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Color>:GetHashCode"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Color_GetHashCode"

	.byte 15,134,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_GetHashCode
	.quad Lme_ae

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2350=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2350
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2351=Lfde153_end - Lfde153_start
	.long LDIFF_SYM2351
Lfde153_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_GetHashCode

LDIFF_SYM2352=Lme_ae - System_Nullable_1_Microsoft_Xna_Framework_Color_GetHashCode
	.long LDIFF_SYM2352
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde153_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Color>:GetValueOrDefault"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault"

	.byte 15,142,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault
	.quad Lme_af

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2353=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2353
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2354=Lfde154_end - Lfde154_start
	.long LDIFF_SYM2354
Lfde154_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault

LDIFF_SYM2355=Lme_af - System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault
	.long LDIFF_SYM2355
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde154_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Color>:GetValueOrDefault"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault_Microsoft_Xna_Framework_Color"

	.byte 15,147,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault_Microsoft_Xna_Framework_Color
	.quad Lme_b0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2356=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2356
	.byte 1,106,3
	.asciz "defaultValue"

LDIFF_SYM2357=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2357
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2358=Lfde155_end - Lfde155_start
	.long LDIFF_SYM2358
Lfde155_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault_Microsoft_Xna_Framework_Color

LDIFF_SYM2359=Lme_b0 - System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault_Microsoft_Xna_Framework_Color
	.long LDIFF_SYM2359
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,154,12
	.align 3
Lfde155_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Color>:ToString"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Color_ToString"

	.byte 15,152,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_ToString
	.quad Lme_b1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2360=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2360
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2361=Lfde156_end - Lfde156_start
	.long LDIFF_SYM2361
Lfde156_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_ToString

LDIFF_SYM2362=Lme_b1 - System_Nullable_1_Microsoft_Xna_Framework_Color_ToString
	.long LDIFF_SYM2362
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde156_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Color>:Box"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Color_Box_System_Nullable_1_Microsoft_Xna_Framework_Color"

	.byte 15,177,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_Box_System_Nullable_1_Microsoft_Xna_Framework_Color
	.quad Lme_b2

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM2363=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2363
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2364=Lfde157_end - Lfde157_start
	.long LDIFF_SYM2364
Lfde157_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_Box_System_Nullable_1_Microsoft_Xna_Framework_Color

LDIFF_SYM2365=Lme_b2 - System_Nullable_1_Microsoft_Xna_Framework_Color_Box_System_Nullable_1_Microsoft_Xna_Framework_Color
	.long LDIFF_SYM2365
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde157_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<Microsoft.Xna.Framework.Color>:Unbox"
	.asciz "System_Nullable_1_Microsoft_Xna_Framework_Color_Unbox_object"

	.byte 15,185,1
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_Unbox_object
	.quad Lme_b3

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM2366=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2366
	.byte 1,106,11
	.asciz ""

LDIFF_SYM2367=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2367
	.byte 3,141,224,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2368=Lfde158_end - Lfde158_start
	.long LDIFF_SYM2368
Lfde158_start:

	.long 0
	.align 3
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_Unbox_object

LDIFF_SYM2369=Lme_b3 - System_Nullable_1_Microsoft_Xna_Framework_Color_Unbox_object
	.long LDIFF_SYM2369
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,154,12
	.align 3
Lfde158_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<T_REF>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF"

	.byte 16,78
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
	.quad Lme_b4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2370=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2370
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2371=Lfde159_end - Lfde159_start
	.long LDIFF_SYM2371
Lfde159_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF

LDIFF_SYM2372=Lme_b4 - System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
	.long LDIFF_SYM2372
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29
	.align 3
Lfde159_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Add<T_REF>"
	.asciz "System_Array_InternalArray__ICollection_Add_T_REF_T_REF"

	.byte 16,88
	.quad System_Array_InternalArray__ICollection_Add_T_REF_T_REF
	.quad Lme_b5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2373=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2373
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM2374=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2374
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2375=Lfde160_end - Lfde160_start
	.long LDIFF_SYM2375
Lfde160_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Add_T_REF_T_REF

LDIFF_SYM2376=Lme_b5 - System_Array_InternalArray__ICollection_Add_T_REF_T_REF
	.long LDIFF_SYM2376
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde160_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Remove<T_REF>"
	.asciz "System_Array_InternalArray__ICollection_Remove_T_REF_T_REF"

	.byte 16,93
	.quad System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
	.quad Lme_b6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2377=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2377
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM2378=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2378
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2379=Lfde161_end - Lfde161_start
	.long LDIFF_SYM2379
Lfde161_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Remove_T_REF_T_REF

LDIFF_SYM2380=Lme_b6 - System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
	.long LDIFF_SYM2380
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde161_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Contains<T_REF>"
	.asciz "System_Array_InternalArray__ICollection_Contains_T_REF_T_REF"

	.byte 16,98
	.quad System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
	.quad Lme_b7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2381=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2381
	.byte 1,106,3
	.asciz "item"

LDIFF_SYM2382=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2382
	.byte 2,141,40,11
	.asciz "length"

LDIFF_SYM2383=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2383
	.byte 1,105,11
	.asciz "i"

LDIFF_SYM2384=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2384
	.byte 1,104,11
	.asciz "value"

LDIFF_SYM2385=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2385
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2386=Lfde162_end - Lfde162_start
	.long LDIFF_SYM2386
Lfde162_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Contains_T_REF_T_REF

LDIFF_SYM2387=Lme_b7 - System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
	.long LDIFF_SYM2387
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10
	.align 3
Lfde162_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_CopyTo<T_REF>"
	.asciz "System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int"

	.byte 16,123
	.quad System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
	.quad Lme_b8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2388=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2388
	.byte 1,104,3
	.asciz "array"

LDIFF_SYM2389=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2389
	.byte 1,105,3
	.asciz "index"

LDIFF_SYM2390=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2390
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2391=Lfde163_end - Lfde163_start
	.long LDIFF_SYM2391
Lfde163_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int

LDIFF_SYM2392=Lme_b8 - System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
	.long LDIFF_SYM2392
	.long 0
	.byte 12,31,0,68,14,240,1,157,30,158,29,68,13,29,68,148,28,149,27,68,150,26,68,152,25,153,24,68,154,23
	.align 3
Lfde163_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_234:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 112,16
LDIFF_SYM2393=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM2393
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM2394=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM2394
LTDIE_234_POINTER:

	.byte 13
LDIFF_SYM2395=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM2395
LTDIE_234_REFERENCE:

	.byte 14
LDIFF_SYM2396=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM2396
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Predicate`1<TheAdventuresOf.AnimationFrame>:invoke_bool_T"
	.asciz "wrapper_delegate_invoke_System_Predicate_1_TheAdventuresOf_AnimationFrame_invoke_bool_T_TheAdventuresOf_AnimationFrame"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Predicate_1_TheAdventuresOf_AnimationFrame_invoke_bool_T_TheAdventuresOf_AnimationFrame
	.quad Lme_b9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2397=LTDIE_234_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2397
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM2398=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2398
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM2399=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2399
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM2400=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2400
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM2401=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2401
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM2402=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2402
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM2403=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2403
	.byte 1,100,11
	.asciz "V_5"

LDIFF_SYM2404=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2404
	.byte 1,99,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2405=Lfde164_end - Lfde164_start
	.long LDIFF_SYM2405
Lfde164_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Predicate_1_TheAdventuresOf_AnimationFrame_invoke_bool_T_TheAdventuresOf_AnimationFrame

LDIFF_SYM2406=Lme_b9 - wrapper_delegate_invoke_System_Predicate_1_TheAdventuresOf_AnimationFrame_invoke_bool_T_TheAdventuresOf_AnimationFrame
	.long LDIFF_SYM2406
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde164_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_235:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 112,16
LDIFF_SYM2407=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM2407
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM2408=LTDIE_235 - Ldebug_info_start
	.long LDIFF_SYM2408
LTDIE_235_POINTER:

	.byte 13
LDIFF_SYM2409=LTDIE_235 - Ldebug_info_start
	.long LDIFF_SYM2409
LTDIE_235_REFERENCE:

	.byte 14
LDIFF_SYM2410=LTDIE_235 - Ldebug_info_start
	.long LDIFF_SYM2410
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<TheAdventuresOf.AnimationFrame>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_TheAdventuresOf_AnimationFrame_invoke_int_T_T_TheAdventuresOf_AnimationFrame_TheAdventuresOf_AnimationFrame"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_TheAdventuresOf_AnimationFrame_invoke_int_T_T_TheAdventuresOf_AnimationFrame_TheAdventuresOf_AnimationFrame
	.quad Lme_ba

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2411=LTDIE_235_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2411
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM2412=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2412
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM2413=LTDIE_164_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2413
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM2414=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2414
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM2415=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2415
	.byte 1,102,11
	.asciz "V_2"

LDIFF_SYM2416=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2416
	.byte 1,101,11
	.asciz "V_3"

LDIFF_SYM2417=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2417
	.byte 1,100,11
	.asciz "V_4"

LDIFF_SYM2418=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2418
	.byte 1,99,11
	.asciz "V_5"

LDIFF_SYM2419=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2419
	.byte 3,141,232,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2420=Lfde165_end - Lfde165_start
	.long LDIFF_SYM2420
Lfde165_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_TheAdventuresOf_AnimationFrame_invoke_int_T_T_TheAdventuresOf_AnimationFrame_TheAdventuresOf_AnimationFrame

LDIFF_SYM2421=Lme_ba - wrapper_delegate_invoke_System_Comparison_1_TheAdventuresOf_AnimationFrame_invoke_int_T_T_TheAdventuresOf_AnimationFrame_TheAdventuresOf_AnimationFrame
	.long LDIFF_SYM2421
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde165_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.List`1<Microsoft.Xna.Framework.Point>:get_Count"
	.asciz "System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Count"

	.byte 18,140,1
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Count
	.quad Lme_bb

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2422=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2422
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2423=Lfde166_end - Lfde166_start
	.long LDIFF_SYM2423
Lfde166_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Count

LDIFF_SYM2424=Lme_bb - System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Count
	.long LDIFF_SYM2424
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde166_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.List`1<Microsoft.Xna.Framework.Point>:get_Item"
	.asciz "System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Item_int"

	.byte 18,180,1
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Item_int
	.quad Lme_bc

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2425=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2425
	.byte 1,105,3
	.asciz "index"

LDIFF_SYM2426=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2426
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2427=Lfde167_end - Lfde167_start
	.long LDIFF_SYM2427
Lfde167_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Item_int

LDIFF_SYM2428=Lme_bc - System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Item_int
	.long LDIFF_SYM2428
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7
	.align 3
Lfde167_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.List`1<Microsoft.Xna.Framework.Point>:Add"
	.asciz "System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_Add_Microsoft_Xna_Framework_Point"

	.byte 18,228,1
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_Add_Microsoft_Xna_Framework_Point
	.quad Lme_bd

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2429=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2429
	.byte 1,106,3
	.asciz "item"

LDIFF_SYM2430=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2430
	.byte 2,141,56,11
	.asciz ""

LDIFF_SYM2431=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2431
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2432=Lfde168_end - Lfde168_start
	.long LDIFF_SYM2432
Lfde168_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_Add_Microsoft_Xna_Framework_Point

LDIFF_SYM2433=Lme_bd - System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_Add_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM2433
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,150,12,151,11,68,152,10,153,9,68,154,8
	.align 3
Lfde168_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.List`1<Microsoft.Xna.Framework.Point>:.ctor"
	.asciz "System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__ctor"

	.byte 18,52
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__ctor
	.quad Lme_be

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2434=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2434
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2435=Lfde169_end - Lfde169_start
	.long LDIFF_SYM2435
Lfde169_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__ctor

LDIFF_SYM2436=Lme_be - System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__ctor
	.long LDIFF_SYM2436
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde169_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__get_Item<Microsoft.Xna.Framework.Point>"
	.asciz "System_Array_InternalArray__get_Item_Microsoft_Xna_Framework_Point_int"

	.byte 16,197,1
	.quad System_Array_InternalArray__get_Item_Microsoft_Xna_Framework_Point_int
	.quad Lme_bf

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2437=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2437
	.byte 1,105,3
	.asciz "index"

LDIFF_SYM2438=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2438
	.byte 1,106,11
	.asciz "value"

LDIFF_SYM2439=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2439
	.byte 3,141,216,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2440=Lfde170_end - Lfde170_start
	.long LDIFF_SYM2440
Lfde170_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__get_Item_Microsoft_Xna_Framework_Point_int

LDIFF_SYM2441=Lme_bf - System_Array_InternalArray__get_Item_Microsoft_Xna_Framework_Point_int
	.long LDIFF_SYM2441
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,153,12,154,11
	.align 3
Lfde170_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_236:

	.byte 5
	.asciz "System_Collections_Generic_ObjectEqualityComparer`1"

	.byte 16,16
LDIFF_SYM2442=LTDIE_222 - Ldebug_info_start
	.long LDIFF_SYM2442
	.byte 2,35,0,0,7
	.asciz "System_Collections_Generic_ObjectEqualityComparer`1"

LDIFF_SYM2443=LTDIE_236 - Ldebug_info_start
	.long LDIFF_SYM2443
LTDIE_236_POINTER:

	.byte 13
LDIFF_SYM2444=LTDIE_236 - Ldebug_info_start
	.long LDIFF_SYM2444
LTDIE_236_REFERENCE:

	.byte 14
LDIFF_SYM2445=LTDIE_236 - Ldebug_info_start
	.long LDIFF_SYM2445
	.byte 2
	.asciz "System.Collections.Generic.ObjectEqualityComparer`1<Microsoft.Xna.Framework.Point>:.ctor"
	.asciz "System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor"

	.byte 0,0
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
	.quad Lme_c0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2446=LTDIE_236_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2446
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2447=Lfde171_end - Lfde171_start
	.long LDIFF_SYM2447
Lfde171_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor

LDIFF_SYM2448=Lme_c0 - System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point__ctor
	.long LDIFF_SYM2448
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde171_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ObjectEqualityComparer`1<Microsoft.Xna.Framework.Point>:Equals"
	.asciz "System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point"

	.byte 17,158,2
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
	.quad Lme_c1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2449=LTDIE_236_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2449
	.byte 2,141,16,3
	.asciz "x"

LDIFF_SYM2450=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2450
	.byte 2,141,24,3
	.asciz "y"

LDIFF_SYM2451=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2451
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2452=Lfde172_end - Lfde172_start
	.long LDIFF_SYM2452
Lfde172_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point

LDIFF_SYM2453=Lme_c1 - System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM2453
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29
	.align 3
Lfde172_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ObjectEqualityComparer`1<Microsoft.Xna.Framework.Point>:GetHashCode"
	.asciz "System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point"

	.byte 17,168,2
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point
	.quad Lme_c2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2454=LTDIE_236_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2454
	.byte 2,141,16,3
	.asciz "obj"

LDIFF_SYM2455=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2455
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2456=Lfde173_end - Lfde173_start
	.long LDIFF_SYM2456
Lfde173_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point

LDIFF_SYM2457=Lme_c2 - System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point
	.long LDIFF_SYM2457
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde173_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ObjectEqualityComparer`1<Microsoft.Xna.Framework.Point>:IndexOf"
	.asciz "System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int"

	.byte 17,173,2
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int
	.quad Lme_c3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2458=LTDIE_236_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2458
	.byte 2,141,56,3
	.asciz "array"

LDIFF_SYM2459=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2459
	.byte 1,104,3
	.asciz "value"

LDIFF_SYM2460=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2460
	.byte 3,141,192,0,3
	.asciz "startIndex"

LDIFF_SYM2461=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2461
	.byte 1,105,3
	.asciz "count"

LDIFF_SYM2462=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2462
	.byte 3,141,208,0,11
	.asciz "endIndex"

LDIFF_SYM2463=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2463
	.byte 1,103,11
	.asciz "i"

LDIFF_SYM2464=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2464
	.byte 1,102,11
	.asciz "i"

LDIFF_SYM2465=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2465
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2466=Lfde174_end - Lfde174_start
	.long LDIFF_SYM2466
Lfde174_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int

LDIFF_SYM2467=Lme_c3 - System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int
	.long LDIFF_SYM2467
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,149,18,150,17,68,151,16,152,15,68,153,14
	.align 3
Lfde174_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ObjectEqualityComparer`1<Microsoft.Xna.Framework.Point>:Equals"
	.asciz "System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object"

	.byte 17,204,2
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object
	.quad Lme_c4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2468=LTDIE_236_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2468
	.byte 2,141,40,3
	.asciz "obj"

LDIFF_SYM2469=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2469
	.byte 2,141,48,11
	.asciz "comparer"

LDIFF_SYM2470=LTDIE_236_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2470
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2471=Lfde175_end - Lfde175_start
	.long LDIFF_SYM2471
Lfde175_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object

LDIFF_SYM2472=Lme_c4 - System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object
	.long LDIFF_SYM2472
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8,152,7,68,153,6
	.align 3
Lfde175_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ObjectEqualityComparer`1<Microsoft.Xna.Framework.Point>:GetHashCode"
	.asciz "System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode"

	.byte 17,209,2
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode
	.quad Lme_c5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2473=LTDIE_236_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2473
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2474=Lfde176_end - Lfde176_start
	.long LDIFF_SYM2474
Lfde176_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode

LDIFF_SYM2475=Lme_c5 - System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode
	.long LDIFF_SYM2475
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde176_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_237:

	.byte 5
	.asciz "_InternalEnumerator`1"

	.byte 32,16
LDIFF_SYM2476=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM2476
	.byte 2,35,0,6
	.asciz "array"

LDIFF_SYM2477=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2477
	.byte 2,35,16,6
	.asciz "idx"

LDIFF_SYM2478=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2478
	.byte 2,35,24,0,7
	.asciz "_InternalEnumerator`1"

LDIFF_SYM2479=LTDIE_237 - Ldebug_info_start
	.long LDIFF_SYM2479
LTDIE_237_POINTER:

	.byte 13
LDIFF_SYM2480=LTDIE_237 - Ldebug_info_start
	.long LDIFF_SYM2480
LTDIE_237_REFERENCE:

	.byte 14
LDIFF_SYM2481=LTDIE_237 - Ldebug_info_start
	.long LDIFF_SYM2481
	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_REF>:.ctor"
	.asciz "System_Array_InternalEnumerator_1_T_REF__ctor_System_Array"

	.byte 16,239,1
	.quad System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
	.quad Lme_c6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2482=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2482
	.byte 1,105,3
	.asciz "array"

LDIFF_SYM2483=LTDIE_221_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2483
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2484=Lfde177_end - Lfde177_start
	.long LDIFF_SYM2484
Lfde177_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_REF__ctor_System_Array

LDIFF_SYM2485=Lme_c6 - System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
	.long LDIFF_SYM2485
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde177_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.List`1<Microsoft.Xna.Framework.Point>:EnsureCapacity"
	.asciz "System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_EnsureCapacity_int"

	.byte 18,157,3
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_EnsureCapacity_int
	.quad Lme_c7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2486=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2486
	.byte 1,105,3
	.asciz "min"

LDIFF_SYM2487=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2487
	.byte 1,106,11
	.asciz "newCapacity"

LDIFF_SYM2488=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2488
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2489=Lfde178_end - Lfde178_start
	.long LDIFF_SYM2489
Lfde178_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_EnsureCapacity_int

LDIFF_SYM2490=Lme_c7 - System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_EnsureCapacity_int
	.long LDIFF_SYM2490
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8,152,7,68,153,6,154,5
	.align 3
Lfde178_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.List`1<Microsoft.Xna.Framework.Point>:.cctor"
	.asciz "System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__cctor"

	.byte 18,47
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__cctor
	.quad Lme_c8

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2491=Lfde179_end - Lfde179_start
	.long LDIFF_SYM2491
Lfde179_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__cctor

LDIFF_SYM2492=Lme_c8 - System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__cctor
	.long LDIFF_SYM2492
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde179_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.List`1<Microsoft.Xna.Framework.Point>:set_Capacity"
	.asciz "System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_set_Capacity_int"

	.byte 18,116
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_set_Capacity_int
	.quad Lme_c9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2493=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2493
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM2494=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2494
	.byte 1,106,11
	.asciz "newItems"

LDIFF_SYM2495=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2495
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2496=Lfde180_end - Lfde180_start
	.long LDIFF_SYM2496
Lfde180_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_set_Capacity_int

LDIFF_SYM2497=Lme_c9 - System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_set_Capacity_int
	.long LDIFF_SYM2497
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.align 3
Lfde180_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:

	.long Ldebug_line_end - . -4
	.short 2
	.long Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section __DWARF, __debug_line,regular,debug
	.asciz "/Users/wcc17/Development/TheAdventuresOf/iOS"
	.asciz "/Users/wcc17/Development/TheAdventuresOf/TheAdventuresOf"
	.asciz "/Users/wcc17/Development/TheAdventuresOf/TheAdventuresOf/Util"
	.asciz "/Users/builder/data/lanes/3412/3cf8aaed/source/maccore/_build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/corlib/System"
	.asciz "/Users/builder/data/lanes/3412/3cf8aaed/source/maccore/_build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/external/referencesource/mscorlib/system/collections/generic"

	.byte 0
	.asciz "Main.cs"

	.byte 1,0,0
	.asciz "TheAdventuresOf.cs"

	.byte 2,0,0
	.asciz "Screen.cs"

	.byte 2,0,0
	.asciz "Character.cs"

	.byte 2,0,0
	.asciz "FrameRate.cs"

	.byte 3,0,0
	.asciz "AnimationFrame.cs"

	.byte 2,0,0
	.asciz "Animation.cs"

	.byte 2,0,0
	.asciz "Controller.cs"

	.byte 2,0,0
	.asciz "Button.cs"

	.byte 2,0,0
	.asciz "Level.cs"

	.byte 2,0,0
	.asciz "Player.cs"

	.byte 2,0,0
	.asciz "XmlImporter.cs"

	.byte 3,0,0
	.asciz "AssetManager.cs"

	.byte 3,0,0
	.asciz "Monster.cs"

	.byte 2,0,0
	.asciz "Nullable.cs"

	.byte 4,0,0
	.asciz "Array.cs"

	.byte 4,0,0
	.asciz "equalitycomparer.cs"

	.byte 5,0,0
	.asciz "list.cs"

	.byte 5,0,0
	.asciz "<unknown>"

	.byte 0,0,0,0
Ldebug_line_header_end:
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_iOS_Program_RunGame

	.byte 4,1,1,10,3,26,2,48,1,8,229,3,1,2,204,0,1,3,1,2,196,0,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_iOS_Program_Main_string__

	.byte 4,1,1,10,3,38,2,52,1,3,9,2,32,1,3,4,2,204,0,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_iOS_Program_FinishedLaunching_UIKit_UIApplication

	.byte 4,1,1,10,3,55,2,56,1,8,229,8,61,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_TheAdventuresOf__ctor

	.byte 4,2,1,10,3,21,2,56,1,3,1,2,44,1,243,3,2,2,236,0,1,3,2,2,244,0,1,8,61,2,48,1
	.byte 0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_TheAdventuresOf_Initialize

	.byte 4,2,1,10,3,37,2,56,1,8,229,3,1,2,180,2,1,3,1,2,228,0,1,3,1,2,228,0,1,3,1,2
	.byte 228,0,1,3,1,2,44,1,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_TheAdventuresOf_LoadContent

	.byte 4,2,1,10,3,50,2,56,1,8,230,3,2,2,136,1,1,3,1,2,200,0,1,3,3,2,200,0,1,3,2,2
	.byte 60,1,3,1,2,228,0,1,3,2,2,212,0,1,3,1,2,224,1,1,3,125,2,40,1,3,5,2,52,1,3,1
	.byte 2,228,0,1,3,2,2,212,0,1,3,1,2,224,1,1,3,125,2,40,1,3,5,2,52,1,3,1,2,200,0,1
	.byte 3,1,2,200,0,1,2,200,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_TheAdventuresOf_Update_Microsoft_Xna_Framework_GameTime

	.byte 4,2,1,10,3,210,0,2,60,1,8,236,3,1,2,196,0,1,3,4,2,224,0,1,8,229,243,3,1,2,208,0
	.byte 1,244,3,4,2,220,0,1,8,229,243,3,1,2,204,0,1,246,3,1,2,48,1,243,3,1,2,204,0,1,244,3
	.byte 1,2,196,0,1,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_TheAdventuresOf_Draw_Microsoft_Xna_Framework_GameTime

	.byte 4,2,1,10,3,252,0,2,228,0,1,8,231,3,3,2,200,3,1,3,4,2,204,0,1,8,229,244,3,1,2,232
	.byte 0,1,245,3,3,2,248,0,1,3,3,2,52,1,3,2,2,60,1,3,2,2,60,1,3,1,2,52,1,2,192,0
	.byte 1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Screen__ctor_int_int

	.byte 4,3,1,10,3,19,2,192,0,1,3,1,2,36,1,243,3,2,2,56,1,3,1,2,180,1,1,2,48,1,0,1
	.byte 1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Screen_get_scaleMatrix

	.byte 4,3,1,10,3,15,2,224,0,1,2,228,2,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Screen_set_scaleMatrix_Microsoft_Xna_Framework_Matrix

	.byte 4,3,1,10,3,15,2,56,1,2,208,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Screen_CreateScaleMatrix_int_int

	.byte 4,3,1,10,3,27,2,168,1,1,8,229,3,2,2,56,1,3,1,2,44,1,3,1,2,44,1,3,2,2,176,1
	.byte 1,3,1,2,160,1,1,2,192,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Screen_Update_Microsoft_Xna_Framework_GameTime

	.byte 4,3,1,10,3,38,2,56,1,8,229,3,1,2,60,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Screen_HandleInput_Microsoft_Xna_Framework_GameTime

	.byte 4,3,1,10,3,43,2,196,0,1,8,230,8,62,3,2,2,208,0,1,3,1,2,224,0,1,243,8,117,244,3,1
	.byte 2,36,1,243,3,1,2,228,0,1,243,3,121,2,32,1,3,8,2,132,1,1,243,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Screen_GetTouchInput

	.byte 4,3,1,10,3,63,2,192,1,1,8,229,3,1,2,192,0,1,3,2,2,196,0,1,3,1,2,216,0,1,243,8
	.byte 117,244,3,1,2,36,1,244,3,1,2,176,3,1,3,2,2,244,0,1,3,1,2,200,0,1,243,3,117,2,32,1
	.byte 3,12,2,132,1,1,244,3,1,2,40,1,2,204,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Screen_GetScaledTouchInput_Microsoft_Xna_Framework_Point

	.byte 4,3,1,10,3,215,0,2,148,1,1,8,229,3,1,2,248,1,1,3,1,2,140,3,1,3,1,2,48,1,2,224
	.byte 0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Character__ctor

	.byte 4,4,1,10,3,12,2,56,1,3,16,2,48,1,8,231,2,252,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Character_HandleMovement_Microsoft_Xna_Framework_GameTime

	.byte 4,4,1,10,3,34,2,56,1,2,204,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Character_InitializeAnimation

	.byte 4,4,1,10,3,35,2,52,1,2,204,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Character_Move_Microsoft_Xna_Framework_GameTime_int

	.byte 4,4,1,10,3,36,2,60,1,2,204,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Character_HandleAnimation_Microsoft_Xna_Framework_GameTime

	.byte 4,4,1,10,3,37,2,56,1,2,204,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Character_InitializeCharacter_single_single_int_int

	.byte 4,4,1,10,3,40,2,204,0,1,8,229,3,1,2,56,1,8,173,8,174,3,1,2,128,1,1,3,3,2,160,1
	.byte 1,3,4,2,220,1,1,3,1,2,52,1,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Character_UpdateCharacterBounds

	.byte 4,4,1,10,3,57,2,56,1,8,229,3,1,2,200,0,1,3,1,2,200,0,1,2,60,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Character_HandleLevelBoundCollision_int_int

	.byte 4,4,1,10,3,63,2,196,0,1,8,230,3,2,2,48,1,3,1,2,48,1,8,62,3,1,2,60,1,244,2,208
	.byte 0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Character_Update_Microsoft_Xna_Framework_GameTime_bool

	.byte 4,4,1,10,3,205,0,2,60,1,8,229,3,1,2,200,0,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Character_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D

	.byte 4,4,1,10,3,210,0,2,204,1,1,8,230,3,2,2,248,0,1,8,173,243,3,1,2,140,1,1,3,127,2,140
	.byte 6,1,3,7,2,172,1,1,8,61,8,173,243,3,1,2,140,1,1,3,127,2,140,6,1,3,7,2,176,1,1,243
	.byte 2,224,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_FrameRate_LoadContent_Microsoft_Xna_Framework_Content_ContentManager

	.byte 4,5,1,10,3,12,2,52,1,8,229,3,1,2,144,1,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_FrameRate_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_GameTime

	.byte 4,5,1,10,3,17,2,204,0,1,8,229,3,1,2,192,1,1,3,1,2,148,2,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_AnimationFrame_get_sourceRectangle

	.byte 4,6,1,10,3,6,2,196,0,1,2,168,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_AnimationFrame_set_sourceRectangle_Microsoft_Xna_Framework_Rectangle

	.byte 4,6,1,10,3,6,2,60,1,2,240,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_AnimationFrame_get_duration

	.byte 4,6,1,10,3,7,2,60,1,2,132,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_AnimationFrame_set_duration_System_TimeSpan

	.byte 4,6,1,10,3,7,2,56,1,2,224,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Animation__ctor

	.byte 4,7,1,10,3,9,2,56,1,2,152,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Animation_get_CurrentRectangle

	.byte 4,7,1,10,3,18,2,240,0,1,8,229,8,63,3,1,2,220,0,1,3,1,2,244,1,1,243,3,1,2,244,1
	.byte 1,8,229,8,117,8,63,8,229,3,1,2,164,1,1,243,3,117,2,24,1,3,15,2,148,1,1,3,1,2,40,1
	.byte 8,229,3,1,2,220,0,1,246,3,1,2,40,1,8,229,3,3,2,240,0,1,8,229,3,2,2,208,0,1,2,252
	.byte 0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Animation_CalculateAnimationDuration

	.byte 4,7,1,10,3,57,2,224,0,1,8,229,8,118,3,1,2,244,1,1,243,3,1,2,180,1,1,8,113,3,5,2
	.byte 148,1,1,3,1,2,244,0,1,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Animation_AddFrame_Microsoft_Xna_Framework_Rectangle_System_TimeSpan

	.byte 4,7,1,10,3,197,0,2,208,0,1,8,229,3,2,2,192,0,1,3,1,2,212,0,1,3,3,2,232,0,1,3
	.byte 3,2,196,0,1,3,1,2,44,1,2,52,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Animation_Update_Microsoft_Xna_Framework_GameTime

	.byte 4,7,1,10,3,211,0,2,212,0,1,8,229,3,2,2,240,1,1,3,2,2,236,0,1,3,1,2,228,0,1,2
	.byte 60,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Controller_InitializeController_Microsoft_Xna_Framework_Graphics_GraphicsDevice

	.byte 4,8,1,10,3,20,2,52,1,8,230,3,1,2,188,2,1,3,1,2,188,2,1,3,2,2,188,2,1,3,1,2
	.byte 148,1,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Controller_HandleInput_Microsoft_Xna_Framework_Point

	.byte 4,8,1,10,3,30,2,52,1,8,229,3,1,2,252,0,1,243,3,1,2,56,1,3,1,2,40,1,3,1,2,40
	.byte 1,244,3,1,2,140,1,1,243,3,1,2,56,1,3,1,2,40,1,3,1,2,40,1,244,3,1,2,140,1,1,243
	.byte 3,1,2,56,1,3,1,2,40,1,3,1,2,40,1,244,2,60,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Controller_ResetButtonPressedValues

	.byte 4,8,1,10,3,55,2,48,1,8,229,3,1,2,36,1,3,1,2,36,1,3,1,2,36,1,3,1,2,36,1,2
	.byte 44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Controller_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch

	.byte 4,8,1,10,3,63,2,248,0,1,8,230,3,3,2,180,4,1,3,3,2,252,0,1,3,3,2,128,1,1,3,1
	.byte 2,128,1,1,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Button__ctor_single_single_single_single

	.byte 4,9,1,10,3,14,2,200,0,1,3,1,2,36,1,244,8,173,8,174,8,173,8,174,3,1,2,44,1,2,48,1
	.byte 0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Button_InitializeButton

	.byte 4,9,1,10,3,27,2,56,1,8,231,3,1,2,192,1,1,3,2,2,168,1,1,3,1,2,44,1,2,48,1,0
	.byte 1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Button_InitializeBounds

	.byte 4,9,1,10,3,37,2,56,1,8,229,3,1,2,220,1,1,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Button_IsPressed_Microsoft_Xna_Framework_Point

	.byte 4,9,1,10,3,42,2,192,0,1,8,229,3,1,2,248,0,1,243,8,119,8,61,2,212,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Button_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D_single_Microsoft_Xna_Framework_Graphics_SpriteEffects

	.byte 4,9,1,10,3,52,2,220,0,1,8,229,3,1,2,212,2,1,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Level__ctor

	.byte 4,10,1,10,3,16,2,52,1,3,1,2,36,1,243,3,1,2,144,1,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Level_InitializeLevel

	.byte 4,10,1,10,3,22,2,52,1,8,229,3,1,2,236,1,1,3,1,2,208,2,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Level_CheckCollision_TheAdventuresOf_Character

	.byte 4,10,1,10,3,28,2,60,1,8,229,3,1,2,128,1,1,243,3,1,2,56,1,3,1,2,212,0,1,244,3,1
	.byte 2,144,1,1,243,3,1,2,56,1,3,1,2,168,1,1,243,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Level_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch

	.byte 4,10,1,10,3,43,2,248,0,1,8,229,3,1,2,188,4,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Level__cctor

	.byte 4,10,1,10,3,11,2,48,1,3,1,2,56,1,3,2,2,40,1,2,200,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_InitializeCharacter_single_single_int_int

	.byte 4,11,1,10,3,26,2,200,0,1,8,229,3,2,2,216,0,1,3,1,2,164,1,1,3,1,2,40,1,8,230,3
	.byte 2,2,240,0,1,3,1,2,204,0,1,3,125,2,40,1,3,4,2,248,0,1,2,60,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_InitializeAnimation

	.byte 4,11,1,10,3,40,2,56,1,8,233,3,1,2,228,0,1,3,1,2,140,2,1,3,2,2,148,2,1,3,1,2
	.byte 228,0,1,3,2,2,140,2,1,3,2,2,48,1,3,1,2,44,1,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_Update_Microsoft_Xna_Framework_GameTime_bool

	.byte 4,11,1,10,3,58,2,196,0,1,8,229,3,3,2,52,1,8,174,8,117,243,3,1,2,60,1,244,3,1,2,204
	.byte 0,1,2,52,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_HandleMovement_Microsoft_Xna_Framework_GameTime

	.byte 4,11,1,10,3,201,0,2,60,1,8,229,3,1,2,36,1,243,3,1,2,56,1,3,1,2,196,0,1,3,1,2
	.byte 52,1,243,3,1,2,52,1,243,3,1,2,56,1,3,1,2,196,0,1,3,1,2,52,1,243,2,192,0,1,0,1
	.byte 1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_HandleLevelBoundCollision_int_int

	.byte 4,11,1,10,3,217,0,2,192,0,1,8,229,3,1,2,192,0,1,3,1,2,52,1,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_CheckCollision_TheAdventuresOf_Monster

	.byte 4,11,1,10,3,223,0,2,60,1,8,229,3,1,2,136,1,1,243,8,229,3,1,2,56,1,8,61,3,1,2,136
	.byte 1,1,243,3,1,2,56,1,243,2,204,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_HandleAnimation_Microsoft_Xna_Framework_GameTime

	.byte 4,11,1,10,3,236,0,2,60,1,8,230,8,173,243,8,173,243,3,1,2,48,1,3,1,2,196,0,1,8,61,243
	.byte 3,1,2,48,1,3,1,2,196,0,1,243,8,229,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_HandleJump_Microsoft_Xna_Framework_GameTime

	.byte 4,11,1,10,3,253,0,2,60,1,8,229,3,1,2,36,1,243,3,1,2,56,1,8,229,245,3,1,2,56,1,243
	.byte 8,173,8,229,8,62,8,230,8,173,246,3,1,2,44,1,243,3,1,2,48,1,3,1,2,56,1,243,2,192,0,1
	.byte 0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_Move_Microsoft_Xna_Framework_GameTime_int

	.byte 4,11,1,10,3,154,1,2,216,0,1,8,230,3,2,2,48,1,8,229,8,173,8,230,3,1,2,228,1,1,8,62
	.byte 8,229,8,229,8,174,3,1,2,228,1,1,245,3,1,2,196,0,1,2,196,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_UpdateCharacterBounds

	.byte 4,11,1,10,3,177,1,2,56,1,8,229,3,1,2,44,1,3,1,2,44,1,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_UpdateSwordBounds

	.byte 4,11,1,10,3,183,1,2,56,1,8,229,3,1,2,200,0,1,3,1,2,200,0,1,2,60,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_MoveSword_int

	.byte 4,11,1,10,3,189,1,2,60,1,8,230,3,2,2,48,1,3,1,2,220,0,1,8,62,3,1,2,220,0,1,244
	.byte 2,204,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_Jump_Microsoft_Xna_Framework_GameTime

	.byte 4,11,1,10,3,202,1,2,200,0,1,8,229,3,1,2,236,1,1,3,2,2,204,0,1,3,2,2,56,1,3,1
	.byte 2,252,0,1,3,1,2,236,0,1,3,1,2,236,0,1,3,3,2,244,0,1,3,1,2,56,1,243,3,1,2,56
	.byte 1,3,1,2,56,1,245,3,1,2,248,0,1,243,3,1,2,56,1,8,174,3,2,2,56,1,8,229,243,2,208,0
	.byte 1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Player_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D

	.byte 4,11,1,10,3,233,1,2,128,1,1,8,229,3,2,2,192,0,1,8,173,243,3,1,2,176,4,1,8,61,8,173
	.byte 243,3,1,2,180,4,1,243,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_XmlImporter_GetXMLInformation

	.byte 4,12,1,10,3,15,2,60,1,8,229,3,1,2,212,0,1,3,2,2,212,0,1,3,1,2,216,0,1,3,1,2
	.byte 216,0,1,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_XmlImporter_LoadPlayerInformation_TheAdventuresOf_Player

	.byte 4,12,1,10,3,24,2,200,0,1,8,229,3,1,2,148,1,1,3,2,2,136,1,1,3,1,2,168,1,1,3,1
	.byte 2,168,1,1,3,1,2,168,1,1,3,1,2,168,1,1,3,1,2,168,1,1,3,1,2,168,1,1,3,1,2,168
	.byte 1,1,3,2,2,168,1,1,8,117,2,60,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_XmlImporter_LoadBlockMonsterInformation_TheAdventuresOf_Monster

	.byte 4,12,1,10,3,41,2,208,0,1,8,229,3,1,2,148,1,1,3,1,2,136,1,1,3,2,2,136,1,1,3,1
	.byte 2,168,1,1,3,1,2,168,1,1,3,1,2,168,1,1,3,1,2,168,1,1,3,1,2,168,1,1,3,1,2,168
	.byte 1,1,3,1,2,168,1,1,8,117,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_AssetManager_LoadGameAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice

	.byte 4,13,1,10,3,20,2,196,0,1,8,229,3,1,2,212,0,1,8,229,3,1,2,224,0,1,3,125,2,44,1,3
	.byte 4,2,208,0,1,3,1,2,228,0,1,8,229,3,1,2,224,0,1,3,125,2,44,1,3,4,2,208,0,1,3,1
	.byte 2,228,0,1,8,229,3,1,2,224,0,1,3,125,2,44,1,3,4,2,208,0,1,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_AssetManager_LoadLevelAssets_Microsoft_Xna_Framework_Graphics_GraphicsDevice

	.byte 4,13,1,10,3,37,2,196,0,1,8,229,3,1,2,212,0,1,8,229,3,1,2,224,0,1,3,125,2,44,1,3
	.byte 4,2,208,0,1,3,1,2,228,0,1,8,229,3,1,2,224,0,1,3,125,2,44,1,3,4,2,208,0,1,3,1
	.byte 2,228,0,1,8,229,3,1,2,224,0,1,3,125,2,44,1,3,4,2,208,0,1,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_AssetManager_DisposeLevelAssets

	.byte 4,13,1,10,3,53,2,48,1,8,229,3,1,2,196,0,1,3,1,2,196,0,1,3,1,2,196,0,1,2,44,1
	.byte 0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster__ctor

	.byte 4,14,1,10,3,18,2,56,1,3,1,2,48,1,3,4,2,208,0,1,2,144,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster_InitializeAnimation

	.byte 4,14,1,10,3,26,2,56,1,8,229,3,1,2,228,0,1,3,2,2,144,2,1,3,1,2,228,0,1,3,2,2
	.byte 136,2,1,3,2,2,48,1,3,1,2,44,1,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster_HandleLevelBoundCollision_int_int

	.byte 4,14,1,10,3,39,2,60,1,8,229,3,1,2,200,0,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster_Update_Microsoft_Xna_Framework_GameTime_bool

	.byte 4,14,1,10,3,44,2,192,0,1,8,231,8,173,243,8,173,243,8,173,243,3,1,2,44,1,8,62,244,3,1,2
	.byte 48,1,243,8,229,8,174,8,229,245,3,2,2,204,0,1,3,1,2,60,1,243,3,2,2,36,1,243,3,1,2,52
	.byte 1,243,3,2,2,36,1,244,3,1,2,48,1,3,1,2,52,1,243,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster_HandleDelay_Microsoft_Xna_Framework_GameTime

	.byte 4,14,1,10,3,214,0,2,60,1,8,229,3,1,2,180,1,1,3,1,2,240,0,1,243,8,173,3,1,2,224,0
	.byte 1,243,2,204,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster_HandleDeath_Microsoft_Xna_Framework_GameTime

	.byte 4,14,1,10,3,224,0,2,236,0,1,8,231,3,1,2,240,0,1,8,229,3,1,2,180,1,1,3,1,2,56,1
	.byte 8,173,243,3,1,2,48,1,3,1,2,236,0,1,8,61,8,173,243,3,1,2,48,1,3,1,2,236,0,1,243,3
	.byte 1,2,36,1,3,1,2,204,0,1,243,3,1,2,228,1,1,8,62,243,8,229,3,1,2,56,1,243,2,212,0,1
	.byte 0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster_RandomizeMovement

	.byte 4,14,1,10,3,254,0,2,56,1,8,229,3,1,2,240,0,1,244,8,230,3,1,2,44,1,8,61,243,8,229,243
	.byte 2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster_ChooseRandomDirection

	.byte 4,14,1,10,3,140,1,2,56,1,8,230,3,1,2,240,0,1,243,8,173,8,229,8,61,243,8,173,8,229,243,2
	.byte 192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster_HandleAnimation_Microsoft_Xna_Framework_GameTime

	.byte 4,14,1,10,3,154,1,2,60,1,8,229,8,173,243,3,1,2,48,1,8,61,243,3,1,2,48,1,243,2,192,0
	.byte 1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster_HandleMovement_Microsoft_Xna_Framework_GameTime

	.byte 4,14,1,10,3,165,1,2,60,1,8,229,8,173,243,3,1,2,196,0,1,3,1,2,52,1,8,61,3,1,2,44
	.byte 1,3,1,2,196,0,1,3,1,2,52,1,243,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster_Move_Microsoft_Xna_Framework_GameTime_int

	.byte 4,14,1,10,3,178,1,2,224,0,1,8,229,3,2,2,188,1,1,3,2,2,48,1,3,1,2,192,0,1,3,1
	.byte 2,48,1,8,62,3,1,2,192,0,1,3,1,2,48,1,244,2,216,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster_Draw_Microsoft_Xna_Framework_Graphics_SpriteBatch_Microsoft_Xna_Framework_Graphics_Texture2D

	.byte 4,14,1,10,3,194,1,2,60,1,8,229,3,1,2,200,0,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad TheAdventuresOf_Monster__cctor

	.byte 4,14,1,10,3,9,2,48,1,2,216,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix__ctor_Microsoft_Xna_Framework_Matrix

	.byte 4,15,1,10,3,221,0,2,60,1,3,1,2,48,1,2,196,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_HasValue

	.byte 4,15,1,10,3,226,0,2,52,1,2,196,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_get_Value

	.byte 4,15,1,10,3,231,0,2,60,1,3,1,2,44,1,3,2,2,192,0,1,2,200,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_object

	.byte 4,15,1,10,3,240,0,2,192,0,1,3,1,2,40,1,3,1,2,40,1,3,1,2,204,0,1,8,174,2,220,1
	.byte 1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_Equals_System_Nullable_1_Microsoft_Xna_Framework_Matrix

	.byte 4,15,1,10,3,250,0,2,60,1,3,1,2,56,1,8,174,8,173,8,174,2,132,2,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetHashCode

	.byte 4,15,1,10,3,133,1,2,56,1,3,1,2,44,1,8,174,2,220,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault

	.byte 4,15,1,10,3,141,1,2,56,1,2,208,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_GetValueOrDefault_Microsoft_Xna_Framework_Matrix

	.byte 4,15,1,10,3,146,1,2,192,0,1,2,136,4,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_ToString

	.byte 4,15,1,10,3,151,1,2,56,1,3,1,2,44,1,3,2,2,60,1,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_Box_System_Nullable_1_Microsoft_Xna_Framework_Matrix

	.byte 4,15,1,10,3,176,1,2,52,1,3,1,2,44,1,8,174,2,204,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Matrix_Unbox_object

	.byte 4,15,1,10,3,184,1,2,212,0,1,3,1,2,40,1,3,1,2,216,0,1,2,240,2,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point__ctor_System_Array

	.byte 4,16,1,10,3,238,1,2,60,1,3,1,2,192,0,1,2,200,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_Dispose

	.byte 4,16,1,10,3,244,1,2,52,1,2,212,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_MoveNext

	.byte 4,16,1,10,3,249,1,2,196,0,1,3,1,2,192,0,1,3,2,2,60,1,2,212,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_get_Current

	.byte 4,16,1,10,3,129,2,2,56,1,3,1,2,192,0,1,3,1,2,192,0,1,3,1,2,48,1,3,2,2,192,0
	.byte 1,2,188,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_Reset

	.byte 4,16,1,10,3,140,2,2,52,1,2,212,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalEnumerator_1_Microsoft_Xna_Framework_Point_System_Collections_IEnumerator_get_Current

	.byte 4,16,1,10,3,145,2,2,52,1,2,144,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_Microsoft_Xna_Framework_Point

	.byte 4,16,1,10,3,205,0,2,52,1,2,216,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__ICollection_get_Count

	.byte 4,16,1,10,3,195,0,2,52,1,2,220,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__ICollection_get_IsReadOnly

	.byte 4,16,1,10,3,200,0,2,52,1,2,196,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__ICollection_Clear

	.byte 4,16,1,10,3,210,0,2,52,1,2,236,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__ICollection_Add_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point

	.byte 4,16,1,10,3,215,0,2,56,1,2,236,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__ICollection_Remove_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point

	.byte 4,16,1,10,3,220,0,2,56,1,2,236,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__ICollection_Contains_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point

	.byte 4,16,1,10,3,225,0,2,212,0,1,3,1,2,212,0,1,3,2,2,216,0,1,3,1,2,52,1,8,118,3,1
	.byte 2,212,0,1,3,1,2,36,1,3,1,2,36,1,8,175,8,63,3,1,2,244,0,1,3,116,2,28,1,3,16,2
	.byte 220,0,1,2,60,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__ICollection_CopyTo_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point___int

	.byte 4,16,1,10,3,250,0,2,204,0,1,3,1,2,40,1,3,4,2,56,1,3,1,2,196,0,1,3,1,2,216,0
	.byte 1,3,1,2,240,1,1,3,3,2,192,0,1,3,1,2,196,0,1,3,1,2,216,0,1,8,229,3,3,2,236,0
	.byte 1,2,136,2,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_get_Default

	.byte 4,17,1,10,3,31,2,56,1,3,1,2,52,1,8,117,3,1,2,192,0,1,3,2,2,52,1,2,200,0,1,0
	.byte 1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_CreateComparer

	.byte 4,17,1,10,3,48,2,204,0,1,3,2,2,228,0,1,3,1,2,200,0,1,3,5,2,248,0,1,3,1,2,200
	.byte 0,1,3,4,2,240,0,1,3,2,2,212,0,1,3,6,2,248,0,1,3,1,2,160,1,1,3,1,2,140,1,1
	.byte 3,2,2,200,1,1,3,8,2,248,0,1,3,1,2,212,0,1,3,5,2,220,0,1,3,3,2,200,0,1,3,6
	.byte 2,240,0,1,3,9,2,240,0,1,3,7,2,240,0,1,3,7,2,248,0,1,2,144,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int

	.byte 4,17,1,10,3,128,1,2,216,0,1,3,1,2,48,1,8,173,3,127,2,180,1,1,3,3,2,204,0,1,2,212
	.byte 0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_GetHashCode_object

	.byte 4,17,1,10,3,144,1,2,192,0,1,3,1,2,196,0,1,3,1,2,224,1,1,8,173,2,200,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_EqualityComparer_1_Microsoft_Xna_Framework_Point_System_Collections_IEqualityComparer_Equals_object_object

	.byte 4,17,1,10,3,151,1,2,200,0,1,3,1,2,204,0,1,3,1,2,204,0,1,3,1,2,236,2,1,3,1,2
	.byte 44,1,2,204,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point

	.byte 4,17,1,10,3,166,1,2,60,1,3,1,2,52,1,3,1,2,244,0,1,8,174,3,1,2,192,0,1,2,52,1
	.byte 0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point

	.byte 4,17,1,10,3,176,1,2,56,1,3,1,2,208,0,1,2,208,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int

	.byte 4,17,1,10,3,181,1,2,220,0,1,3,1,2,48,1,3,1,2,36,1,8,173,3,127,2,228,0,1,3,5,2
	.byte 208,0,1,8,173,3,127,2,200,1,1,3,4,2,220,0,1,2,228,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object

	.byte 4,17,1,10,3,212,1,2,196,0,1,3,1,2,220,0,1,2,208,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_GenericEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode

	.byte 4,17,1,10,3,217,1,2,52,1,2,180,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2__ctor_Microsoft_Xna_Framework_Vector2

	.byte 4,15,1,10,3,221,0,2,192,0,1,3,1,2,48,1,2,212,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_HasValue

	.byte 4,15,1,10,3,226,0,2,52,1,2,196,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_get_Value

	.byte 4,15,1,10,3,231,0,2,56,1,3,1,2,44,1,3,2,2,192,0,1,2,220,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_object

	.byte 4,15,1,10,3,240,0,2,192,0,1,3,1,2,40,1,3,1,2,40,1,3,1,2,204,0,1,8,174,2,160,1
	.byte 1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_Equals_System_Nullable_1_Microsoft_Xna_Framework_Vector2

	.byte 4,15,1,10,3,250,0,2,192,0,1,3,1,2,56,1,8,174,8,173,8,174,2,148,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetHashCode

	.byte 4,15,1,10,3,133,1,2,56,1,3,1,2,44,1,8,174,2,220,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault

	.byte 4,15,1,10,3,141,1,2,52,1,2,228,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_GetValueOrDefault_Microsoft_Xna_Framework_Vector2

	.byte 4,15,1,10,3,146,1,2,192,0,1,2,188,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_ToString

	.byte 4,15,1,10,3,151,1,2,56,1,3,1,2,44,1,3,2,2,60,1,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_Box_System_Nullable_1_Microsoft_Xna_Framework_Vector2

	.byte 4,15,1,10,3,176,1,2,56,1,3,1,2,44,1,8,174,2,220,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Vector2_Unbox_object

	.byte 4,15,1,10,3,184,1,2,200,0,1,3,1,2,40,1,3,1,2,212,0,1,2,252,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle__ctor_Microsoft_Xna_Framework_Rectangle

	.byte 4,15,1,10,3,221,0,2,192,0,1,3,1,2,48,1,2,228,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_HasValue

	.byte 4,15,1,10,3,226,0,2,52,1,2,196,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_get_Value

	.byte 4,15,1,10,3,231,0,2,56,1,3,1,2,44,1,3,2,2,192,0,1,2,236,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_object

	.byte 4,15,1,10,3,240,0,2,192,0,1,3,1,2,40,1,3,1,2,40,1,3,1,2,204,0,1,8,174,2,172,1
	.byte 1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Equals_System_Nullable_1_Microsoft_Xna_Framework_Rectangle

	.byte 4,15,1,10,3,250,0,2,60,1,3,1,2,56,1,8,174,8,173,8,174,2,164,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetHashCode

	.byte 4,15,1,10,3,133,1,2,56,1,3,1,2,44,1,8,174,2,220,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault

	.byte 4,15,1,10,3,141,1,2,52,1,2,244,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_GetValueOrDefault_Microsoft_Xna_Framework_Rectangle

	.byte 4,15,1,10,3,146,1,2,192,0,1,2,236,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_ToString

	.byte 4,15,1,10,3,151,1,2,56,1,3,1,2,44,1,3,2,2,60,1,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Box_System_Nullable_1_Microsoft_Xna_Framework_Rectangle

	.byte 4,15,1,10,3,176,1,2,52,1,3,1,2,44,1,8,174,2,236,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Rectangle_Unbox_object

	.byte 4,15,1,10,3,184,1,2,208,0,1,3,1,2,40,1,3,1,2,236,0,1,2,148,2,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color__ctor_Microsoft_Xna_Framework_Color

	.byte 4,15,1,10,3,221,0,2,60,1,3,1,2,48,1,2,212,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_get_HasValue

	.byte 4,15,1,10,3,226,0,2,52,1,2,196,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_get_Value

	.byte 4,15,1,10,3,231,0,2,56,1,3,1,2,44,1,3,2,2,192,0,1,2,216,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_object

	.byte 4,15,1,10,3,240,0,2,192,0,1,3,1,2,40,1,3,1,2,40,1,3,1,2,204,0,1,8,174,2,152,1
	.byte 1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_Equals_System_Nullable_1_Microsoft_Xna_Framework_Color

	.byte 4,15,1,10,3,250,0,2,60,1,3,1,2,56,1,8,174,8,173,8,174,2,148,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_GetHashCode

	.byte 4,15,1,10,3,133,1,2,56,1,3,1,2,44,1,8,174,2,220,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault

	.byte 4,15,1,10,3,141,1,2,52,1,2,224,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_GetValueOrDefault_Microsoft_Xna_Framework_Color

	.byte 4,15,1,10,3,146,1,2,60,1,2,184,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_ToString

	.byte 4,15,1,10,3,151,1,2,56,1,3,1,2,44,1,3,2,2,60,1,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_Box_System_Nullable_1_Microsoft_Xna_Framework_Color

	.byte 4,15,1,10,3,176,1,2,52,1,3,1,2,44,1,8,174,2,220,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Nullable_1_Microsoft_Xna_Framework_Color_Unbox_object

	.byte 4,15,1,10,3,184,1,2,196,0,1,3,1,2,40,1,3,1,2,192,0,1,2,224,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF

	.byte 4,16,1,10,3,205,0,2,56,1,2,228,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__ICollection_Add_T_REF_T_REF

	.byte 4,16,1,10,3,215,0,2,60,1,2,236,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__ICollection_Remove_T_REF_T_REF

	.byte 4,16,1,10,3,220,0,2,60,1,2,236,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__ICollection_Contains_T_REF_T_REF

	.byte 4,16,1,10,3,225,0,2,208,0,1,3,1,2,212,0,1,3,2,2,216,0,1,3,1,2,52,1,8,118,3,1
	.byte 2,60,1,8,117,8,117,8,175,8,63,3,1,2,204,0,1,3,116,2,28,1,3,16,2,220,0,1,2,60,1,0
	.byte 1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int

	.byte 4,16,1,10,3,250,0,2,208,0,1,3,1,2,40,1,3,4,2,56,1,3,1,2,196,0,1,3,1,2,216,0
	.byte 1,3,1,2,240,1,1,3,3,2,192,0,1,3,1,2,196,0,1,3,1,2,216,0,1,8,229,3,3,2,236,0
	.byte 1,2,136,2,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Count

	.byte 4,18,1,10,3,139,1,2,52,1,2,196,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_get_Item_int

	.byte 4,18,1,10,3,179,1,2,60,1,3,1,2,52,1,8,64,2,140,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_Add_Microsoft_Xna_Framework_Point

	.byte 4,18,1,10,3,227,1,2,200,0,1,3,1,2,228,0,1,3,1,2,152,1,1,2,224,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__ctor

	.byte 4,18,1,10,3,51,2,56,1,3,1,2,36,1,2,216,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalArray__get_Item_Microsoft_Xna_Framework_Point_int

	.byte 4,16,1,10,3,196,1,2,200,0,1,3,1,2,204,0,1,3,3,2,56,1,3,1,2,212,0,1,2,212,0,1
	.byte 0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_Microsoft_Xna_Framework_Point_Microsoft_Xna_Framework_Point

	.byte 4,17,1,10,3,157,2,2,60,1,3,1,2,52,1,3,1,2,152,1,1,8,174,3,1,2,192,0,1,2,52,1
	.byte 0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode_Microsoft_Xna_Framework_Point

	.byte 4,17,1,10,3,167,2,2,56,1,3,1,2,208,0,1,2,208,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_IndexOf_Microsoft_Xna_Framework_Point___Microsoft_Xna_Framework_Point_int_int

	.byte 4,17,1,10,3,172,2,2,220,0,1,3,1,2,48,1,3,1,2,36,1,8,173,3,127,2,228,0,1,3,5,2
	.byte 208,0,1,8,173,3,127,2,236,1,1,3,4,2,220,0,1,2,228,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_Equals_object

	.byte 4,17,1,10,3,203,2,2,196,0,1,3,1,2,220,0,1,2,208,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_ObjectEqualityComparer_1_Microsoft_Xna_Framework_Point_GetHashCode

	.byte 4,17,1,10,3,208,2,2,52,1,2,180,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Array_InternalEnumerator_1_T_REF__ctor_System_Array

	.byte 4,16,1,10,3,238,1,2,192,0,1,3,1,2,192,0,1,2,200,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_EnsureCapacity_int

	.byte 4,18,1,10,3,156,3,2,196,0,1,3,1,2,56,1,3,3,2,200,0,1,3,1,2,196,0,1,3,1,2,200
	.byte 0,1,2,232,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point__cctor

	.byte 4,18,1,10,3,46,2,48,1,2,232,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad System_Collections_Generic_List_1_Microsoft_Xna_Framework_Point_set_Capacity_int

	.byte 4,18,1,10,3,243,0,2,196,0,1,3,1,2,52,1,3,4,2,36,1,3,1,2,56,1,8,229,3,1,2,44
	.byte 1,3,1,2,36,1,3,2,2,60,1,3,3,2,56,1,2,220,0,1,0,1,1,0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
