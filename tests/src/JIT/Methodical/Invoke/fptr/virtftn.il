// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.





.assembly extern mscorlib
{
                           
  
           
  
}
.assembly 'bug'
{

  //  .custom instance void ['mscorlib']System.Diagnostics.DebuggableAttribute::.ctor(bool,
  //                                                                                  bool) = ( 01 00 00 01 00 00 ) 
  
  .permission reqmin ['mscorlib']System.Security.Permissions.SecurityPermissionAttribute ( "SkipVerification" = true )
  
}
.module 'bug.exe'
// MVID: {90803FD0-8E18-44C9-A242-98463ADD450D}
.namespace JitTest
{
  .class private auto ansi Test extends ['mscorlib']System.Object
  {
    .method private hidebysig virtual instance int32 DoStuff(method instance int32 *()) il managed
    {
			// Code size       1 (0x1)
			.maxstack  8
			ldarg.0
			ldarg.1
			calli		instance int32()
			ret
    } // end of method 'Test::DoStuff'
    .method private hidebysig virtual instance method instance int32 *() RetStuff() il managed
    {
			// Code size       1 (0x1)
			.maxstack  8
			ldarg.0
			ldvirtftn 		instance int32 JitTest.Test::DummyMethod()
			ret
    } // end of method 'Test::DoStuff'
    .method private hidebysig virtual instance int32 DummyMethod() il managed
    {
			// Code size       1 (0x1)
			.maxstack  8
			ldarg.0
			callvirt instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
			callvirt instance class [mscorlib]System.String [mscorlib]System.Type::ToString()
			call  void [mscorlib]System.Console::WriteLine(class [mscorlib]System.String)
			ldc.i4     101
			ret
    } // end of method 'Test::DoStuff'

    .method private hidebysig static int32
            Main() il managed
    {
			.entrypoint
			.maxstack  8
			.locals (class JitTest.Test, int32)
			newobj		instance void JitTest.Test::.ctor()
			stloc.0
			ldloc.0
			dup
			dup
			dup
			ldvirtftn 	instance int32 JitTest.Test::DummyMethod()
			ldloc.0
			ldvirtftn	instance int32 JitTest.Test::DoStuff(method instance int32 *())
			calli		instance int32 (method instance int32 *())
			stloc.1
			
			ldloc.0
			ldvirtftn	instance method instance int32 *() JitTest.Test::RetStuff()
			calli		instance method instance int32 *()()
			calli		instance int32 ()
			
			ldloc.1
			sub

			ldc.i4 0x64
			add
			ret
    } // end of method 'Test::Main'

    .method public hidebysig specialname rtspecialname 
            instance void .ctor() il managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void ['mscorlib']System.Object::.ctor()
      IL_0006:  ret
    } // end of method 'Test::.ctor'

  } // end of class 'Test'

} // end of namespace 'JitTest'
//*********** DISASSEMBLY COMPLETE ***********************
