.class public Lcom/lge/voiceshutter/library/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private array:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 2
    .param p1, "ar"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ByteArray;->array:[B

    .line 18
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ByteArray;->array:[B

    .line 19
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ByteArray;->array:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 20
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ByteArray;->array:[B

    return-object v0
.end method
