// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly volatilstind {}
.assembly extern mscorlib {}
.method public static void f()
{
.locals init (int32* V_0)
ldloc.0
ldc.i4 1
volatile. stind.i4
ret
}
.method public static int32 Main()
{
.entrypoint
.try
{
call void f()
leave FAIL
}
catch [mscorlib]System.NullReferenceException
{
leave PASS
}
FAIL:
ldc.i4 1
ret
PASS:
ldc.i4 100
ret
}
