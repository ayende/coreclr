// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

//
//
.assembly extern mscorlib
{ }
.assembly 'qsort'// as "qsort"
{ }
.module 'qsort.exe'
.namespace Test
{
  .class private auto ansi BB extends [mscorlib]System.Object
  {
    .method private hidebysig static int32 Main() il managed
    {
		.entrypoint
		.maxstack  8
		.locals (class Test.AA)
		
		newobj instance void Test.AA::.ctor()
		stloc.0
		ldloc.0
		ldc.i4.0
		call instance void Test.AA::set_I(native unsigned int)
		ldloc.0
		call instance native unsigned int Test.AA::get_I()
		ldstr "passed"
		call void [mscorlib]System.Console::WriteLine(class [mscorlib]System.String)
		ldc.i4 0x64
		add
		ret
    } // end of method 'AA::Main'

    .method public hidebysig specialname rtspecialname instance void .ctor() il managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      ldarg.0
      call       instance void [mscorlib]System.Object::.ctor()
      ret
    } // end of method 'AA::.ctor'
  }
  .class private auto ansi AA extends [mscorlib]System.Object
  {
	.field private native unsigned int m_i
	
	.method public native unsigned int get_I() il managed
	{
		.maxstack  8
		ldarg.0
		ldfld native unsigned int Test.AA::m_i
		ret
	}
	
	.method public void set_I(native unsigned int) il managed
	{
		.maxstack  8
		ldarg.0
		ldarg.1
		stfld native unsigned int Test.AA::m_i
		ret
	}
	
    .method public hidebysig specialname rtspecialname instance void .ctor() il managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      ldarg.0
      call       instance void [mscorlib]System.Object::.ctor()
      ldarg.0
      ldc.i4.0
      stfld		native unsigned int Test.AA::m_i
      ret
    } // end of method 'AA::.ctor'

  } // end of class 'AA'

} // end of namespace 'Test'

//*********** DISASSEMBLY COMPLETE ***********************
