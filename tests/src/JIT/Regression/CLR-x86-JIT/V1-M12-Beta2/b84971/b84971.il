// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly EHTest {}
.class public EHTest
{
.method public static void f1() cil managed
{
.maxstack 20
br start_try1
start_fault1: 
br fault1_br
start_catch1: 
catch1_out:
rethrow
end_catch1: //


fault1_br: 
start_try2: 
try2_out:
newobj instance void [mscorlib]System.InvalidOperationException::.ctor()
throw
end_try2: //

exception_filter1: 
pop
ldc.i4.0
endfilter
start_filter1: 
pop
filter1_out: leave fault1_out
end_filter1: //

fault1_out: endfault
end_fault1: //


start_try1: 
try1_out:
newobj instance void [mscorlib]System.ArgumentOutOfRangeException::.ctor()
throw
end_try1: //

OUT: ret
OUT0:
leave OUT
.try start_try2 to end_try2 catch [mscorlib]System.Exception handler start_catch1 to end_catch1
.try start_try2 to end_try2 filter exception_filter1 handler start_filter1 to end_filter1
.try start_try1 to end_try1 fault handler start_fault1 to end_fault1
}

.method public static int32 Main() cil managed
{
.entrypoint
.try
{
call void EHTest::f1()
leave RET
}
catch [mscorlib]System.Exception
{
leave RET
}
RET: ldc.i4 100
ldstr "PASSED"
call void [mscorlib]System.Console::WriteLine(string)
ret
}

}
