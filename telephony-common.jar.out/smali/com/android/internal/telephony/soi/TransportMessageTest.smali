.class public Lcom/android/internal/telephony/soi/TransportMessageTest;
.super Ljava/lang/Object;
.source "TransportMessageTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaOtaPdu()[B
    .locals 2

    .prologue
    .line 6
    const/16 v1, 0x3b

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 14
    .local v0, "cdmaPdu":[B
    return-object v0

    .line 6
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x2t
        0x10t
        0x2t
        0x2t
        0x7t
        0x2t
        -0x18t
        0x68t
        -0x78t
        -0x34t
        -0x17t
        0x20t
        0x8t
        0x2bt
        0x0t
        0x3t
        0x11t
        0x5bt
        0x40t
        0x1t
        0x10t
        -0x80t
        0x75t
        0x25t
        -0x53t
        0x25t
        -0x73t
        0x25t
        -0x53t
        0x25t
        -0x73t
        0x25t
        -0x53t
        0x25t
        -0x73t
        0x25t
        -0x78t
        0x3t
        0x6t
        0x13t
        0x6t
        0x3t
        0x9t
        0x2t
        0x30t
        0x8t
        0x1t
        0x0t
        0xet
        0x7t
        0x5t
        -0x30t
        -0x2ft
        0x11t
        -0x67t
        -0x2et
        0x40t
    .end array-data
.end method

.method public static getPpDownloadCdmaOtaPdu()[B
    .locals 2

    .prologue
    .line 17
    const/16 v1, 0x4f

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 23
    .local v0, "cdmaPdu":[B
    return-object v0

    .line 17
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x2t
        0x10t
        0x7t
        0x2t
        0x7t
        0x2t
        -0x58t
        0x66t
        -0x56t
        -0x57t
        0xct
        0x40t
        0x8t
        0x3ft
        0x0t
        0x3t
        0x11t
        0x7t
        0x20t
        0x1t
        0x2dt
        -0x7ft
        0x5at
        0x20t
        0x5ct
        -0x34t
        -0x37t
        0x14t
        -0x34t
        -0x34t
        -0x31t
        -0x35t
        -0x1t
        -0x4ft
        -0x75t
        0x2t
        0xct
        0xct
        -0x77t
        0xbt
        0x18t
        -0x40t
        0x13t
        -0x80t
        0x0t
        0x0t
        -0x68t
        -0x78t
        0x8t
        0x9t
        0x29t
        0x2dt
        -0x80t
        0x0t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x12t
        0x4at
        -0x21t
        -0x20t
        0x18t
        0x3t
        0x6t
        0x13t
        0x6t
        0x14t
        0x18t
        0x19t
        0x12t
        0x8t
        0x1t
        0x0t
    .end array-data
.end method
