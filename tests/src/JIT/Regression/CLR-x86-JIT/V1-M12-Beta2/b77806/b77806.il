// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x14772b62 {}
.class ILGEN_0x14772b62 {
.method static float32  Method_0xc234ea4d(native int Arg_0x0) {
.maxstack	15
Start_Orphan_0:
Start_Orphan_1:
     ldarg Arg_0x0
     ldarg Arg_0x0
    sub.ovf.un
     ldarg Arg_0x0
     ldarg Arg_0x0
    sub.ovf
     ldarg Arg_0x0
     ldarg Arg_0x0
    sub.ovf
 ble.un Branch_0x6
   ldc.i4 55
  br Branch_0x7
 Branch_0x6:
     ldc.i4.3
    conv.ovf.u
 Branch_0x7:
 pop
 pop
End_Orphan_1:
End_Orphan_0:
 ldc.r4 55.5
ret
}
.method static int32 Main() {
.entrypoint
.maxstack	9
 ldc.i4 0xae2b4a1c conv.i
 call float32  ILGEN_0x14772b62::Method_0xc234ea4d(native int Arg_0x0)
 conv.i4
 ldc.i4.s 45
 add
 ret
}
}