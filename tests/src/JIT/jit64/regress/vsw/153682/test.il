// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

// The first use of a field in a catch was causing an exception in the CLR because
// one of the argument registers for JitHelper::WriteBarrier was not being
// mov'ed to.

.assembly extern legacy library mscorlib {}
.assembly legacy library test {}

.class auto ansi sealed nested public save extends [mscorlib]System.Object
{
  .field public static class [mscorlib]System.Exception bb
  .method private specialname rtspecialname static 
          void  .cctor() cil managed
  {
	ret
  }
}

.class public auto ansi sealed a extends [mscorlib]System.Object
{

  .method public static int32 a() cil managed
  {
    .entrypoint
    .try
    {
	ldstr "VeryBadException"
	newobj instance void [mscorlib]System.Exception::.ctor(string)
	throw
	leave      IL_0027
    }

    catch [mscorlib]System.Exception 
    {

      IL_000e:  stsfld     class [mscorlib]System.Exception save::bb
      IL_0013:  ldsfld     class [mscorlib]System.Exception save::bb


      IL_0018:  callvirt       instance string [mscorlib]System.Exception::get_Message()
      IL_001d:  call       void [mscorlib]System.Console::WriteLine(string)

      IL_0022:  leave      IL_0027

    }

    IL_0027: ldc.i4 100
    ret
  }
}
