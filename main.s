"".main STEXT size=81 args=0x0 locals=0x18
	0x0000 00000 (hello_world.go:3)	TEXT	"".main(SB), ABIInternal, $24-0
	0x0000 00000 (hello_world.go:3)	MOVQ	(TLS), CX
	0x0009 00009 (hello_world.go:3)	CMPQ	SP, 16(CX)
	0x000d 00013 (hello_world.go:3)	JLS	74
	0x000f 00015 (hello_world.go:3)	SUBQ	$24, SP
	0x0013 00019 (hello_world.go:3)	MOVQ	BP, 16(SP)
	0x0018 00024 (hello_world.go:3)	LEAQ	16(SP), BP
	0x001d 00029 (hello_world.go:3)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (hello_world.go:3)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (hello_world.go:3)	FUNCDATA	$3, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x001d 00029 (hello_world.go:4)	PCDATA	$2, $0
	0x001d 00029 (hello_world.go:4)	PCDATA	$0, $0
	0x001d 00029 (hello_world.go:4)	CALL	runtime.printlock(SB)
	0x0022 00034 (hello_world.go:4)	PCDATA	$2, $1
	0x0022 00034 (hello_world.go:4)	LEAQ	go.string."Hello world\n"(SB), AX
	0x0029 00041 (hello_world.go:4)	PCDATA	$2, $0
	0x0029 00041 (hello_world.go:4)	MOVQ	AX, (SP)
	0x002d 00045 (hello_world.go:4)	MOVQ	$12, 8(SP)
	0x0036 00054 (hello_world.go:4)	CALL	runtime.printstring(SB)
	0x003b 00059 (hello_world.go:4)	CALL	runtime.printunlock(SB)
	0x0040 00064 (hello_world.go:5)	MOVQ	16(SP), BP
	0x0045 00069 (hello_world.go:5)	ADDQ	$24, SP
	0x0049 00073 (hello_world.go:5)	RET
	0x004a 00074 (hello_world.go:5)	NOP
	0x004a 00074 (hello_world.go:3)	PCDATA	$0, $-1
	0x004a 00074 (hello_world.go:3)	PCDATA	$2, $-1
	0x004a 00074 (hello_world.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x004f 00079 (hello_world.go:3)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 3b 48  eH..%....H;a.v;H
	0x0010 83 ec 18 48 89 6c 24 10 48 8d 6c 24 10 e8 00 00  ...H.l$.H.l$....
	0x0020 00 00 48 8d 05 00 00 00 00 48 89 04 24 48 c7 44  ..H......H..$H.D
	0x0030 24 08 0c 00 00 00 e8 00 00 00 00 e8 00 00 00 00  $...............
	0x0040 48 8b 6c 24 10 48 83 c4 18 c3 e8 00 00 00 00 eb  H.l$.H..........
	0x0050 af                                               .
	rel 5+4 t=16 TLS+0
	rel 30+4 t=8 runtime.printlock+0
	rel 37+4 t=15 go.string."Hello world\n"+0
	rel 55+4 t=8 runtime.printstring+0
	rel 60+4 t=8 runtime.printunlock+0
	rel 75+4 t=8 runtime.morestack_noctxt+0
"".init STEXT size=80 args=0x0 locals=0x8
	0x0000 00000 (<autogenerated>:1)	TEXT	"".init(SB), ABIInternal, $8-0
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	73
	0x000f 00015 (<autogenerated>:1)	SUBQ	$8, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, (SP)
	0x0017 00023 (<autogenerated>:1)	LEAQ	(SP), BP
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$3, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	PCDATA	$2, $0
	0x001b 00027 (<autogenerated>:1)	PCDATA	$0, $0
	0x001b 00027 (<autogenerated>:1)	MOVBLZX	"".initdone·(SB), AX
	0x0022 00034 (<autogenerated>:1)	CMPB	AL, $1
	0x0025 00037 (<autogenerated>:1)	JLS	48
	0x0027 00039 (<autogenerated>:1)	PCDATA	$2, $-2
	0x0027 00039 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0027 00039 (<autogenerated>:1)	MOVQ	(SP), BP
	0x002b 00043 (<autogenerated>:1)	ADDQ	$8, SP
	0x002f 00047 (<autogenerated>:1)	RET
	0x0030 00048 (<autogenerated>:1)	JNE	57
	0x0032 00050 (<autogenerated>:1)	PCDATA	$2, $0
	0x0032 00050 (<autogenerated>:1)	PCDATA	$0, $0
	0x0032 00050 (<autogenerated>:1)	CALL	runtime.throwinit(SB)
	0x0037 00055 (<autogenerated>:1)	UNDEF
	0x0039 00057 (<autogenerated>:1)	MOVB	$2, "".initdone·(SB)
	0x0040 00064 (<autogenerated>:1)	MOVQ	(SP), BP
	0x0044 00068 (<autogenerated>:1)	ADDQ	$8, SP
	0x0048 00072 (<autogenerated>:1)	RET
	0x0049 00073 (<autogenerated>:1)	NOP
	0x0049 00073 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0049 00073 (<autogenerated>:1)	PCDATA	$2, $-1
	0x0049 00073 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x004e 00078 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 3a 48  eH..%....H;a.v:H
	0x0010 83 ec 08 48 89 2c 24 48 8d 2c 24 0f b6 05 00 00  ...H.,$H.,$.....
	0x0020 00 00 80 f8 01 76 09 48 8b 2c 24 48 83 c4 08 c3  .....v.H.,$H....
	0x0030 75 07 e8 00 00 00 00 0f 0b c6 05 00 00 00 00 02  u...............
	0x0040 48 8b 2c 24 48 83 c4 08 c3 e8 00 00 00 00 eb b0  H.,$H...........
	rel 5+4 t=16 TLS+0
	rel 30+4 t=15 "".initdone·+0
	rel 51+4 t=8 runtime.throwinit+0
	rel 59+4 t=15 "".initdone·+-1
	rel 74+4 t=8 runtime.morestack_noctxt+0
go.string."Hello world" SRODATA dupok size=11
	0x0000 48 65 6c 6c 6f 20 77 6f 72 6c 64                 Hello world
go.string."Hello world\n" SRODATA dupok size=12
	0x0000 48 65 6c 6c 6f 20 77 6f 72 6c 64 0a              Hello world.
go.loc."".main SDWARFLOC size=0
go.info."".main SDWARFINFO size=33
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+81
	rel 27+4 t=29 gofile../Users/kjj/go/src/GoStudy/hello_world.go+0
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 05 01 14 02 1b 00                 ...........
go.loc."".init SDWARFLOC size=0
go.info."".init SDWARFINFO size=33
	0x0000 03 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".init+0
	rel 17+8 t=1 "".init+80
	rel 27+4 t=29 gofile..<autogenerated>+0
go.range."".init SDWARFRANGE size=0
go.isstmt."".init SDWARFMISC size=0
	0x0000 04 0f 04 0c 03 07 01 05 02 09 01 02 02 0e 01 09  ................
	0x0010 02 07 00                                         ...
"".initdone· SNOPTRBSS size=1
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
