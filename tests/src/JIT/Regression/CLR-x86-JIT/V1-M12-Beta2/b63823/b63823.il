// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x12b94a25 {}
.class ILGEN_0x12b94a25 {
.method static int32 Main() {
.entrypoint
.maxstack	2
.try {
 ldc.i4 0xe5829c93
 ldc.i8 0xc00748c6c8aa31a8
 conv.ovf.u2
 ble Branch_0x0
 ldc.i4 100
 br Branch_0x1
 Branch_0x0:
 ldc.i4.s 0
 conv.u1
 Branch_0x1:
 pop
leave END
} catch [mscorlib]System.OverflowException {
pop
leave END
}
END:
ldc.i4 100
ret

}
}