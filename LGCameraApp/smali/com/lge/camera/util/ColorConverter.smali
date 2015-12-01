.class public Lcom/lge/camera/util/ColorConverter;
.super Ljava/lang/Object;
.source "ColorConverter.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "ColorConverter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkColorBoundary(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    const v0, 0x3ffff

    .line 77
    if-gez p1, :cond_1

    .line 78
    const/4 p1, 0x0

    .line 82
    .end local p1    # "value":I
    :cond_0
    :goto_0
    return p1

    .line 79
    .restart local p1    # "value":I
    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    .line 80
    goto :goto_0
.end method

.method public static decodeYUV420SP([I[BII)V
    .locals 17
    .param p0, "rgb"    # [I
    .param p1, "yuv420sp"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 30
    mul-int v2, p2, p3

    .line 32
    .local v2, "frameSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    const/4 v13, 0x0

    .local v13, "yp":I
    :goto_0
    move/from16 v0, p3

    if-ge v5, v0, :cond_8

    .line 33
    shr-int/lit8 v14, v5, 0x1

    mul-int v14, v14, p2

    add-int v8, v2, v14

    .line 34
    .local v8, "uvp":I
    const/4 v7, 0x0

    .line 35
    .local v7, "u":I
    const/4 v10, 0x0

    .line 36
    .local v10, "v":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v9, v8

    .end local v8    # "uvp":I
    .local v9, "uvp":I
    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_7

    .line 37
    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v11, v14, -0x10

    .line 38
    .local v11, "y":I
    if-gez v11, :cond_0

    .line 39
    const/4 v11, 0x0

    .line 41
    :cond_0
    and-int/lit8 v14, v4, 0x1

    if-nez v14, :cond_9

    .line 42
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "uvp":I
    .restart local v8    # "uvp":I
    aget-byte v14, p1, v9

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v10, v14, -0x80

    .line 43
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "uvp":I
    .restart local v9    # "uvp":I
    aget-byte v14, p1, v8

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v7, v14, -0x80

    move v8, v9

    .line 46
    .end local v9    # "uvp":I
    .restart local v8    # "uvp":I
    :goto_2
    mul-int/lit16 v12, v11, 0x4a8

    .line 48
    .local v12, "y1192":I
    mul-int/lit16 v14, v10, 0x662

    add-int v6, v12, v14

    .line 49
    .local v6, "r":I
    mul-int/lit16 v14, v10, 0x341

    sub-int v14, v12, v14

    mul-int/lit16 v15, v7, 0x190

    sub-int v3, v14, v15

    .line 50
    .local v3, "g":I
    mul-int/lit16 v14, v7, 0x812

    add-int v1, v12, v14

    .line 52
    .local v1, "b":I
    if-gez v6, :cond_4

    .line 53
    const/4 v6, 0x0

    .line 58
    :cond_1
    :goto_3
    if-gez v3, :cond_5

    .line 59
    const/4 v3, 0x0

    .line 64
    :cond_2
    :goto_4
    if-gez v1, :cond_6

    .line 65
    const/4 v1, 0x0

    .line 70
    :cond_3
    :goto_5
    const/high16 v14, -0x1000000

    shl-int/lit8 v15, v6, 0x6

    const/high16 v16, 0xff0000

    and-int v15, v15, v16

    or-int/2addr v14, v15

    shr-int/lit8 v15, v3, 0x2

    const v16, 0xff00

    and-int v15, v15, v16

    or-int/2addr v14, v15

    shr-int/lit8 v15, v1, 0xa

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    aput v14, p0, v13

    .line 36
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v13, v13, 0x1

    move v9, v8

    .end local v8    # "uvp":I
    .restart local v9    # "uvp":I
    goto :goto_1

    .line 54
    .end local v9    # "uvp":I
    .restart local v8    # "uvp":I
    :cond_4
    const v14, 0x3ffff

    if-le v6, v14, :cond_1

    .line 55
    const v6, 0x3ffff

    goto :goto_3

    .line 60
    :cond_5
    const v14, 0x3ffff

    if-le v3, v14, :cond_2

    .line 61
    const v3, 0x3ffff

    goto :goto_4

    .line 66
    :cond_6
    const v14, 0x3ffff

    if-le v1, v14, :cond_3

    .line 67
    const v1, 0x3ffff

    goto :goto_5

    .line 32
    .end local v1    # "b":I
    .end local v3    # "g":I
    .end local v6    # "r":I
    .end local v8    # "uvp":I
    .end local v11    # "y":I
    .end local v12    # "y1192":I
    .restart local v9    # "uvp":I
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 74
    .end local v4    # "i":I
    .end local v7    # "u":I
    .end local v9    # "uvp":I
    .end local v10    # "v":I
    :cond_8
    return-void

    .restart local v4    # "i":I
    .restart local v7    # "u":I
    .restart local v9    # "uvp":I
    .restart local v10    # "v":I
    .restart local v11    # "y":I
    :cond_9
    move v8, v9

    .end local v9    # "uvp":I
    .restart local v8    # "uvp":I
    goto :goto_2
.end method

.method public static final native yuv420spToArgb8888(Landroid/graphics/Bitmap;[B)V
.end method

.method public static final native yuv420spToBitmap(Landroid/graphics/Bitmap;[BII)V
.end method

.method public static final native yuv420spToRGB([I[BII)V
.end method
