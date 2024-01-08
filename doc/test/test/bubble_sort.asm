
bubble_sort.elf:     file format elf32-littleriscv


Disassembly of section .text:

00010054 <main>:
int main() {
   10054:	fc410113          	addi	sp,sp,-60
   10058:	02812c23          	sw	s0,56(sp)
   1005c:	02912a23          	sw	s1,52(sp)
   10060:	03c10413          	addi	s0,sp,60
	int arr[] ={9, 8, 7, 4, 5, 6, 1, 2, 3, 0};
   10064:	000107b7          	lui	a5,0x10
   10068:	1cc7a483          	lw	s1,460(a5) # 101cc <main+0x178>
   1006c:	1cc78713          	addi	a4,a5,460
   10070:	00472383          	lw	t2,4(a4)
   10074:	1cc78713          	addi	a4,a5,460
   10078:	00872283          	lw	t0,8(a4)
   1007c:	1cc78713          	addi	a4,a5,460
   10080:	00c72303          	lw	t1,12(a4)
   10084:	1cc78713          	addi	a4,a5,460
   10088:	01072503          	lw	a0,16(a4)
   1008c:	1cc78713          	addi	a4,a5,460
   10090:	01472583          	lw	a1,20(a4)
   10094:	1cc78713          	addi	a4,a5,460
   10098:	01872603          	lw	a2,24(a4)
   1009c:	1cc78713          	addi	a4,a5,460
   100a0:	01c72683          	lw	a3,28(a4)
   100a4:	1cc78713          	addi	a4,a5,460
   100a8:	02072703          	lw	a4,32(a4)
   100ac:	1cc78793          	addi	a5,a5,460
   100b0:	0247a783          	lw	a5,36(a5)
   100b4:	fc942223          	sw	s1,-60(s0)
   100b8:	fc742423          	sw	t2,-56(s0)
   100bc:	fc542623          	sw	t0,-52(s0)
   100c0:	fc642823          	sw	t1,-48(s0)
   100c4:	fca42a23          	sw	a0,-44(s0)
   100c8:	fcb42c23          	sw	a1,-40(s0)
   100cc:	fcc42e23          	sw	a2,-36(s0)
   100d0:	fed42023          	sw	a3,-32(s0)
   100d4:	fee42223          	sw	a4,-28(s0)
   100d8:	fef42423          	sw	a5,-24(s0)
	int i, j;
	for(i=0; i<9; i++) {
   100dc:	fe042a23          	sw	zero,-12(s0)
   100e0:	0c80006f          	j	101a8 <main+0x154>
		for(j=0; j<9-i; j++) {
   100e4:	fe042823          	sw	zero,-16(s0)
   100e8:	0a00006f          	j	10188 <main+0x134>
			if(arr[j] > arr[j+1]) {
   100ec:	ff042783          	lw	a5,-16(s0)
   100f0:	00279793          	slli	a5,a5,0x2
   100f4:	ff840713          	addi	a4,s0,-8
   100f8:	00f707b3          	add	a5,a4,a5
   100fc:	fcc7a703          	lw	a4,-52(a5)
   10100:	ff042783          	lw	a5,-16(s0)
   10104:	00178793          	addi	a5,a5,1
   10108:	00279793          	slli	a5,a5,0x2
   1010c:	ff840693          	addi	a3,s0,-8
   10110:	00f687b3          	add	a5,a3,a5
   10114:	fcc7a783          	lw	a5,-52(a5)
   10118:	06e7d263          	bge	a5,a4,1017c <main+0x128>
				int tmp = arr[j];
   1011c:	ff042783          	lw	a5,-16(s0)
   10120:	00279793          	slli	a5,a5,0x2
   10124:	ff840713          	addi	a4,s0,-8
   10128:	00f707b3          	add	a5,a4,a5
   1012c:	fcc7a783          	lw	a5,-52(a5)
   10130:	fef42623          	sw	a5,-20(s0)
				arr[j] = arr[j+1];
   10134:	ff042783          	lw	a5,-16(s0)
   10138:	00178793          	addi	a5,a5,1
   1013c:	00279793          	slli	a5,a5,0x2
   10140:	ff840713          	addi	a4,s0,-8
   10144:	00f707b3          	add	a5,a4,a5
   10148:	fcc7a703          	lw	a4,-52(a5)
   1014c:	ff042783          	lw	a5,-16(s0)
   10150:	00279793          	slli	a5,a5,0x2
   10154:	ff840693          	addi	a3,s0,-8
   10158:	00f687b3          	add	a5,a3,a5
   1015c:	fce7a623          	sw	a4,-52(a5)
				arr[j+1] = tmp;
   10160:	ff042783          	lw	a5,-16(s0)
   10164:	00178793          	addi	a5,a5,1
   10168:	00279793          	slli	a5,a5,0x2
   1016c:	ff840713          	addi	a4,s0,-8
   10170:	00f707b3          	add	a5,a4,a5
   10174:	fec42703          	lw	a4,-20(s0)
   10178:	fce7a623          	sw	a4,-52(a5)
		for(j=0; j<9-i; j++) {
   1017c:	ff042783          	lw	a5,-16(s0)
   10180:	00178793          	addi	a5,a5,1
   10184:	fef42823          	sw	a5,-16(s0)
   10188:	00900713          	li	a4,9
   1018c:	ff442783          	lw	a5,-12(s0)
   10190:	40f707b3          	sub	a5,a4,a5
   10194:	ff042703          	lw	a4,-16(s0)
   10198:	f4f74ae3          	blt	a4,a5,100ec <main+0x98>
	for(i=0; i<9; i++) {
   1019c:	ff442783          	lw	a5,-12(s0)
   101a0:	00178793          	addi	a5,a5,1
   101a4:	fef42a23          	sw	a5,-12(s0)
   101a8:	ff442703          	lw	a4,-12(s0)
   101ac:	00800793          	li	a5,8
   101b0:	f2e7dae3          	bge	a5,a4,100e4 <main+0x90>
			}
		}
	}

	return 0;
   101b4:	00000793          	li	a5,0
   101b8:	00078513          	mv	a0,a5
   101bc:	03812403          	lw	s0,56(sp)
   101c0:	03412483          	lw	s1,52(sp)
   101c4:	03c10113          	addi	sp,sp,60
   101c8:	00008067          	ret
