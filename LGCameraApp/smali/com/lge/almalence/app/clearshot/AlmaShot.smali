.class public final Lcom/lge/almalence/app/clearshot/AlmaShot;
.super Ljava/lang/Object;
.source "AlmaShot.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "almashot-clr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ConvertFromJpeg([I[IIII)Ljava/lang/String;
.end method

.method public static native ConvertToARGB(III)[I
.end method

.method public static native ConvertToJpeg(III)[B
.end method

.method public static native Initialize()Ljava/lang/String;
.end method

.method public static native MovObjEnumerate(III[B[BI)I
.end method

.method public static native MovObjProcess(III[I[B)I
.end method

.method public static native NV21toARGB(IIIII)[I
.end method

.method public static native Release(I)I
.end method
