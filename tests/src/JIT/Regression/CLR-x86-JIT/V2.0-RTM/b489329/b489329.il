// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly Test1 {}
.assembly extern mscorlib{auto}
.class FullProof {

.method static int32 Test() {
.maxstack 80
.zeroinit
.locals(int32 test2, int64 test14, float64 test23, object test37)

IL_1:    ldloc test2			//i
IL_30:     ldloc test23			//ri
IL_31:      ldc.r8 55.5			//rri
IL_34:      conv.ovf.i8			//Iri
IL_35:       ldloc test14			//IIri
IL_36:        ldc.i4 -1			//iIIri

IL_37:         ldloc test37			//oiIIri
IL_38:        brfalse IL_41			//iIIri
IL_39:        nop			//iIIri
IL_40:        nop			//iIIri

IL_41:       shl			//IIri
IL_42:       conv.r.un			//rIri
IL_45:       ckfinite			//rIri
IL_47:       conv.i8			//IIri
IL_50:     bgt IL_77			//ri
IL_51:     conv.u8			//Ii
IL_55:      ldc.i8 1			//IIi
IL_68:     clt			//ii
IL_69:    shr.un			//i
IL_71:     ldc.r4 0.0			//ri
IL_77:     conv.i8			//Ii
IL_79:    pop			//i
IL_80:   ret			//
}

.method public static int32  Main()
{
.entrypoint
.maxstack 3
 call int32 FullProof::Test()
 pop
 ldstr "Test SUCCESS"
 call void [mscorlib]System.Console::WriteLine(string)
 ldc.i4 100
 ret
}
}


