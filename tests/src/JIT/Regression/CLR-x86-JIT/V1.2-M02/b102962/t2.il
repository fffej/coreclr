// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern mscorlib {}
.assembly b102962b {}
.method public static char &  
        PtrToStringChars(string  s) cil managed
{
  // Code size       19 (0x13)
  .maxstack  2
  .locals init (unsigned int8 & V_0,
           unsigned int32 V_1)
  IL_0000:  ldarg.0
  IL_0001:  stloc.0
  IL_0002:  ldloc.0
  IL_0003:  brfalse.s  IL_000f

  IL_0005:  call       int32 [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::get_OffsetToStringData()
  IL_000a:  stloc.1
  IL_000b:  ldloc.0
  IL_000c:  ldloc.1
  IL_000d:  add
  IL_000e:  stloc.0
  IL_000f:  ldloc.0
  IL_0010:  br.s       IL_0012

  IL_0012:  ret
} // end of global method PtrToStringChars

.method public static int32  
        main() cil managed
{
  .entrypoint
  // Code size       21 (0x15)
  .maxstack  1
  .locals init (string V_0,
           char & V_1)
  IL_0000:  ldnull
  IL_0001:  stloc.0
  IL_0002:  ldstr      "hello"
  IL_0007:  stloc.0
  IL_0008:  ldstr      "Hello"
  IL_000d:  call       char &  PtrToStringChars(string )
  IL_0012:  stloc.1
  IL_0013:  ldc.i4 100
  IL_0014:  ret
}
