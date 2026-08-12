
solution:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c9 2f 00 00 	mov    0x2fc9(%rip),%rax        # 3fd8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <_ZNSo3putEc@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <_ZNSo3putEc@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <_ZNSo3putEc@GLIBCXX_3.4>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <__assert_fail@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <__assert_fail@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <_ZNSo9_M_insertImEERSoT_@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4018 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <mmap@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <mmap@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001080 <__cxa_finalize@plt>:
    1080:	ff 25 3a 2f 00 00    	jmp    *0x2f3a(%rip)        # 3fc0 <__cxa_finalize@GLIBC_2.2.5>
    1086:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001090 <main.cold>:
    1090:	48 8d 0d 6d 0f 00 00 	lea    0xf6d(%rip),%rcx        # 2004 <_IO_stdin_used+0x4>
    1097:	ba 10 00 00 00       	mov    $0x10,%edx
    109c:	48 8d 35 6c 0f 00 00 	lea    0xf6c(%rip),%rsi        # 200f <_IO_stdin_used+0xf>
    10a3:	48 8d 3d 72 0f 00 00 	lea    0xf72(%rip),%rdi        # 201c <_IO_stdin_used+0x1c>
    10aa:	e8 91 ff ff ff       	call   1040 <__assert_fail@plt>
    10af:	48 8d 0d 4e 0f 00 00 	lea    0xf4e(%rip),%rcx        # 2004 <_IO_stdin_used+0x4>
    10b6:	ba 11 00 00 00       	mov    $0x11,%edx
    10bb:	48 8d 35 4d 0f 00 00 	lea    0xf4d(%rip),%rsi        # 200f <_IO_stdin_used+0xf>
    10c2:	48 8d 3d 64 0f 00 00 	lea    0xf64(%rip),%rdi        # 202d <_IO_stdin_used+0x2d>
    10c9:	e8 72 ff ff ff       	call   1040 <__assert_fail@plt>
    10ce:	66 90                	xchg   %ax,%ax

00000000000010d0 <main>:
    10d0:	55                   	push   %rbp
    10d1:	45 31 c9             	xor    %r9d,%r9d
    10d4:	45 31 c0             	xor    %r8d,%r8d
    10d7:	31 ff                	xor    %edi,%edi
    10d9:	b9 02 c0 00 00       	mov    $0xc002,%ecx
    10de:	ba 01 00 00 00       	mov    $0x1,%edx
    10e3:	be 80 b2 e6 0e       	mov    $0xee6b280,%esi #250k
    10e8:	48 89 e5             	mov    %rsp,%rbp
    10eb:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp #mmap flags
    10ef:	48 83 ec 20          	sub    $0x20,%rsp
    10f3:	e8 78 ff ff ff       	call   1070 <mmap@plt>
    10f8:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax #MAP_FAILED check
    10fc:	0f 84 8e ff ff ff    	je     1090 <main.cold>
    1102:	48 85 c0             	test   %rax,%rax
    1105:	0f 84 a4 ff ff ff    	je     10af <main.cold+0x1f>
    110b:	c5 e5 76 db          	vpcmpeqd %ymm3,%ymm3,%ymm3
    110f:	48 8d 90 80 b2 e6 0e 	lea    0xee6b280(%rax),%rdx
    1116:	c5 e9 ef d2          	vpxor  %xmm2,%xmm2,%xmm2
    111a:	b9 7f 7f 7f 7f       	mov    $0x7f7f7f7f,%ecx
    111f:	c5 f9 6e e1          	vmovd  %ecx,%xmm4
    1123:	c4 e2 7d 1c db       	vpabsb %ymm3,%ymm3
    1128:	c4 e2 7d 58 e4       	vpbroadcastd %xmm4,%ymm4
    112d:	0f 1f 00             	nopl   (%rax)

    # loop body
    1130:	c5 dd 74 00          	vpcmpeqb (%rax),%ymm4,%ymm0
    1134:	48 83 c0 20          	add    $0x20,%rax
    1138:	c5 fd db c3          	vpand  %ymm3,%ymm0,%ymm0
    113c:	c4 e2 7d 30 c8       	vpmovzxbw %xmm0,%ymm1
    1141:	c4 e3 7d 39 c0 01    	vextracti128 $0x1,%ymm0,%xmm0
    1147:	c4 e2 7d 33 f1       	vpmovzxwd %xmm1,%ymm6
    114c:	c4 e3 7d 39 c9 01    	vextracti128 $0x1,%ymm1,%xmm1
    1152:	c4 e2 7d 30 c0       	vpmovzxbw %xmm0,%ymm0
    1157:	c4 e2 7d 33 c9       	vpmovzxwd %xmm1,%ymm1
    115c:	c4 e2 7d 33 f8       	vpmovzxwd %xmm0,%ymm7
    1161:	c4 e3 7d 39 c0 01    	vextracti128 $0x1,%ymm0,%xmm0
    1167:	c4 e2 7d 35 e9       	vpmovzxdq %xmm1,%ymm5
    116c:	c4 e3 7d 39 c9 01    	vextracti128 $0x1,%ymm1,%xmm1
    1172:	c4 e2 7d 33 c0       	vpmovzxwd %xmm0,%ymm0
    1177:	c4 e2 7d 35 c9       	vpmovzxdq %xmm1,%ymm1
    117c:	c5 d5 d4 c9          	vpaddq %ymm1,%ymm5,%ymm1
    1180:	c4 e3 7d 39 fd 01    	vextracti128 $0x1,%ymm7,%xmm5
    1186:	c4 e2 7d 35 ff       	vpmovzxdq %xmm7,%ymm7
    118b:	c4 e2 7d 35 ed       	vpmovzxdq %xmm5,%ymm5
    1190:	c5 f5 d4 cd          	vpaddq %ymm5,%ymm1,%ymm1
    1194:	c4 e3 7d 39 c5 01    	vextracti128 $0x1,%ymm0,%xmm5
    119a:	c4 e2 7d 35 c0       	vpmovzxdq %xmm0,%ymm0
    119f:	c4 e2 7d 35 ed       	vpmovzxdq %xmm5,%ymm5
    11a4:	c5 f5 d4 cd          	vpaddq %ymm5,%ymm1,%ymm1
    11a8:	c4 e2 7d 35 ee       	vpmovzxdq %xmm6,%ymm5
    11ad:	c4 e3 7d 39 f6 01    	vextracti128 $0x1,%ymm6,%xmm6
    11b3:	c4 e2 7d 35 f6       	vpmovzxdq %xmm6,%ymm6
    11b8:	c5 d5 d4 ee          	vpaddq %ymm6,%ymm5,%ymm5
    11bc:	c5 d5 d4 ef          	vpaddq %ymm7,%ymm5,%ymm5
    11c0:	c5 d5 d4 c0          	vpaddq %ymm0,%ymm5,%ymm0
    11c4:	c5 f5 d4 c8          	vpaddq %ymm0,%ymm1,%ymm1
    11c8:	c5 ed d4 d1          	vpaddq %ymm1,%ymm2,%ymm2
    11cc:	48 39 c2             	cmp    %rax,%rdx
    11cf:	0f 85 5b ff ff ff    	jne    1130 <main+0x60>

    11d5:	c4 e3 7d 39 d0 01    	vextracti128 $0x1,%ymm2,%xmm0
    11db:	48 8d 3d 5e 2e 00 00 	lea    0x2e5e(%rip),%rdi        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    11e2:	c5 f9 d4 c2          	vpaddq %xmm2,%xmm0,%xmm0
    11e6:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
    11eb:	c5 f9 d4 c1          	vpaddq %xmm1,%xmm0,%xmm0
    11ef:	c4 e1 f9 7e c6       	vmovq  %xmm0,%rsi
    11f4:	c5 f8 77             	vzeroupper
    11f7:	e8 54 fe ff ff       	call   1050 <_ZNSo9_M_insertImEERSoT_@plt>
    11fc:	c6 44 24 1f 0a       	movb   $0xa,0x1f(%rsp)
    1201:	48 8b 10             	mov    (%rax),%rdx
    1204:	48 8b 52 e8          	mov    -0x18(%rdx),%rdx
    1208:	48 83 7c 10 10 00    	cmpq   $0x0,0x10(%rax,%rdx,1)
    120e:	74 16                	je     1226 <main+0x156>
    1210:	48 8d 74 24 1f       	lea    0x1f(%rsp),%rsi
    1215:	ba 01 00 00 00       	mov    $0x1,%edx
    121a:	48 89 c7             	mov    %rax,%rdi
    121d:	e8 3e fe ff ff       	call   1060 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1222:	c9                   	leave
    1223:	31 c0                	xor    %eax,%eax
    1225:	c3                   	ret
    1226:	be 0a 00 00 00       	mov    $0xa,%esi
    122b:	48 89 c7             	mov    %rax,%rdi
    122e:	e8 fd fd ff ff       	call   1030 <_ZNSo3putEc@plt>
    1233:	eb ed                	jmp    1222 <main+0x152>
    1235:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    123c:	00 00 00 
    123f:	90                   	nop

0000000000001240 <_start>:
    1240:	f3 0f 1e fa          	endbr64
    1244:	31 ed                	xor    %ebp,%ebp
    1246:	49 89 d1             	mov    %rdx,%r9
    1249:	5e                   	pop    %rsi
    124a:	48 89 e2             	mov    %rsp,%rdx
    124d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1251:	50                   	push   %rax
    1252:	54                   	push   %rsp
    1253:	45 31 c0             	xor    %r8d,%r8d
    1256:	31 c9                	xor    %ecx,%ecx
    1258:	48 8d 3d 71 fe ff ff 	lea    -0x18f(%rip),%rdi        # 10d0 <main>
    125f:	ff 15 63 2d 00 00    	call   *0x2d63(%rip)        # 3fc8 <__libc_start_main@GLIBC_2.34>
    1265:	f4                   	hlt
    1266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    126d:	00 00 00 

0000000000001270 <deregister_tm_clones>:
    1270:	48 8d 3d c1 2d 00 00 	lea    0x2dc1(%rip),%rdi        # 4038 <__TMC_END__>
    1277:	48 8d 05 ba 2d 00 00 	lea    0x2dba(%rip),%rax        # 4038 <__TMC_END__>
    127e:	48 39 f8             	cmp    %rdi,%rax
    1281:	74 15                	je     1298 <deregister_tm_clones+0x28>
    1283:	48 8b 05 46 2d 00 00 	mov    0x2d46(%rip),%rax        # 3fd0 <_ITM_deregisterTMCloneTable@Base>
    128a:	48 85 c0             	test   %rax,%rax
    128d:	74 09                	je     1298 <deregister_tm_clones+0x28>
    128f:	ff e0                	jmp    *%rax
    1291:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1298:	c3                   	ret
    1299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012a0 <register_tm_clones>:
    12a0:	48 8d 3d 91 2d 00 00 	lea    0x2d91(%rip),%rdi        # 4038 <__TMC_END__>
    12a7:	48 8d 35 8a 2d 00 00 	lea    0x2d8a(%rip),%rsi        # 4038 <__TMC_END__>
    12ae:	48 29 fe             	sub    %rdi,%rsi
    12b1:	48 89 f0             	mov    %rsi,%rax
    12b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    12b8:	48 c1 f8 03          	sar    $0x3,%rax
    12bc:	48 01 c6             	add    %rax,%rsi
    12bf:	48 d1 fe             	sar    $1,%rsi
    12c2:	74 14                	je     12d8 <register_tm_clones+0x38>
    12c4:	48 8b 05 15 2d 00 00 	mov    0x2d15(%rip),%rax        # 3fe0 <_ITM_registerTMCloneTable@Base>
    12cb:	48 85 c0             	test   %rax,%rax
    12ce:	74 08                	je     12d8 <register_tm_clones+0x38>
    12d0:	ff e0                	jmp    *%rax
    12d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12d8:	c3                   	ret
    12d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012e0 <__do_global_dtors_aux>:
    12e0:	f3 0f 1e fa          	endbr64
    12e4:	80 3d 65 2e 00 00 00 	cmpb   $0x0,0x2e65(%rip)        # 4150 <completed.0>
    12eb:	75 2b                	jne    1318 <__do_global_dtors_aux+0x38>
    12ed:	55                   	push   %rbp
    12ee:	48 83 3d ca 2c 00 00 	cmpq   $0x0,0x2cca(%rip)        # 3fc0 <__cxa_finalize@GLIBC_2.2.5>
    12f5:	00 
    12f6:	48 89 e5             	mov    %rsp,%rbp
    12f9:	74 0c                	je     1307 <__do_global_dtors_aux+0x27>
    12fb:	48 8b 3d 2e 2d 00 00 	mov    0x2d2e(%rip),%rdi        # 4030 <__dso_handle>
    1302:	e8 79 fd ff ff       	call   1080 <__cxa_finalize@plt>
    1307:	e8 64 ff ff ff       	call   1270 <deregister_tm_clones>
    130c:	c6 05 3d 2e 00 00 01 	movb   $0x1,0x2e3d(%rip)        # 4150 <completed.0>
    1313:	5d                   	pop    %rbp
    1314:	c3                   	ret
    1315:	0f 1f 00             	nopl   (%rax)
    1318:	c3                   	ret
    1319:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001320 <frame_dummy>:
    1320:	f3 0f 1e fa          	endbr64
    1324:	e9 77 ff ff ff       	jmp    12a0 <register_tm_clones>

Disassembly of section .fini:

000000000000132c <_fini>:
    132c:	f3 0f 1e fa          	endbr64
    1330:	48 83 ec 08          	sub    $0x8,%rsp
    1334:	48 83 c4 08          	add    $0x8,%rsp
    1338:	c3                   	ret
