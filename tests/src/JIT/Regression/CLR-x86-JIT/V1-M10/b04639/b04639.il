// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly b04639
{
}
.class _simple {

.method static int32 main(class System.String[]) {
.entrypoint
.maxstack	100

.locals (int32, int32, int32, int32)
ldc.i4 1
ldc.i4 1
ldc.i4 1
ldc.i4 1
stloc.0
stloc.1
stloc.2
stloc.3

 ldc.i4 45
 ldc.i4 34001
 ldloc.3
 conv.u8
 ldloc.2
 conv.i8
 add
 ldloc.0
 ldc.i4.s 9
 stloc.0
 conv.u1
 ldloc.3
 stloc.2
 conv.u8
 add
 ldc.i8 0xb8231398c4fc06c
 ldc.i8 0x46dda8c4674e147f
 ldc.i8 14002
 conv.i8
 add
 conv.i8
 add
 ldc.r8 3.400000e+001
 conv.r4
 ldc.r4 1.650000e+002
 add
 conv.i8
 add
 add
 conv.u1
 add
 conv.u2
 stloc.0
 ldc.i4 45
sub

ldc.i4 100
add
 ret
}
}