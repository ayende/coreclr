// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

// endfinally after finally
// expect throw System.InvalidProgramException

.assembly extern mscorlib {}
.assembly test {}
.module test_04a.exe

.class private auto ansi beforefieldinit test extends [mscorlib]System.Object
{
  .method public static int32 Main() cil managed
  {
   .entrypoint
   .try
   {
	call void test::f()
	leave FAIL
   }
   catch [mscorlib]System.NullReferenceException
   {
        leave PASS
   }
   PASS:
	ldc.i4 100
	ret
   FAIL:
	ldc.i4 1
	ret
  }

  .method public static void f()
  {

   .locals (int32* V_0, int32 V_1)

	ldc.i4 0
	conv.u
	ldind.i4
	pop
	ret
  }
}