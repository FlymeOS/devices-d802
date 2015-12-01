.class public final Lcom/lge/almalence/app/clearshot/SwapHeap;
.super Ljava/lang/Object;
.source "SwapHeap.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "swapheap"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CopyFromHeap(II)[B
.end method

.method public static native FreeFromHeap(I)Z
.end method

.method public static native SwapFromHeap(II)[B
.end method

.method public static native SwapToHeap([B)I
.end method
