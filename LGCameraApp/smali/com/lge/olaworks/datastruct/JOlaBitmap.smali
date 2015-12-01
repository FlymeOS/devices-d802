.class public Lcom/lge/olaworks/datastruct/JOlaBitmap;
.super Ljava/lang/Object;
.source "JOlaBitmap.java"


# static fields
.field private static final NULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "JOlaBitmap"


# instance fields
.field public height:I

.field public imageData:[B

.field public imageFormat:I

.field public nativeImageData:I

.field public orientation:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    .line 31
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    .line 37
    const/16 v0, 0x402

    iput v0, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageFormat:I

    .line 42
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 49
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->nativeImageData:I

    .line 55
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "fmt"    # I
    .param p4, "ori"    # I

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v2, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    .line 31
    iput v2, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    .line 37
    const/16 v1, 0x402

    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageFormat:I

    .line 42
    iput v2, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 49
    iput v2, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->nativeImageData:I

    .line 99
    iput p1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    .line 100
    iput p2, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    .line 101
    iput p3, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageFormat:I

    .line 102
    iput p4, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "size":I
    sparse-switch p3, :sswitch_data_0

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_0
    if-eqz v0, :cond_0

    .line 113
    invoke-static {v0}, Lcom/lge/olaworks/jni/NativeJNI;->malloc(I)I

    move-result v1

    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->nativeImageData:I

    .line 115
    :cond_0
    return-void

    .line 107
    :sswitch_0
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 108
    :sswitch_1
    mul-int v1, p1, p2

    mul-int/lit8 v0, v1, 0x3

    goto :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_1
        0x402 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(IIII[B)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "fmt"    # I
    .param p4, "ori"    # I
    .param p5, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    .line 31
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    .line 37
    const/16 v0, 0x402

    iput v0, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageFormat:I

    .line 42
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 49
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->nativeImageData:I

    .line 66
    iput p1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    .line 67
    iput p2, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    .line 68
    iput p3, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageFormat:I

    .line 69
    iput p4, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    .line 70
    iput-object p5, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 71
    return-void
.end method

.method public constructor <init>(IIII[BI)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "fmt"    # I
    .param p4, "ori"    # I
    .param p5, "data"    # [B
    .param p6, "dataLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    .line 31
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    .line 37
    const/16 v0, 0x402

    iput v0, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageFormat:I

    .line 42
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 49
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->nativeImageData:I

    .line 82
    iput p1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    .line 83
    iput p2, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    .line 84
    iput p3, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageFormat:I

    .line 85
    iput p4, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    .line 87
    new-array v0, p6, [B

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 88
    iget-object v0, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    invoke-static {p5, v1, v0, v1, p6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 89
    return-void
.end method

.method public static getNative(IIII)Lcom/lge/olaworks/datastruct/JOlaBitmap;
    .locals 2
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "fmt"    # I
    .param p3, "ori"    # I

    .prologue
    .line 160
    new-instance v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lge/olaworks/datastruct/JOlaBitmap;-><init>(IIII)V

    .line 161
    .local v0, "olaBitmap":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    iget v1, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->nativeImageData:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 163
    .end local v0    # "olaBitmap":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    :cond_0
    return-object v0
.end method

.method public static getNative(Landroid/graphics/Bitmap;II)Lcom/lge/olaworks/datastruct/JOlaBitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "fmt"    # I
    .param p2, "ori"    # I

    .prologue
    const/4 v2, 0x0

    .line 174
    new-instance v1, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4, p1, p2}, Lcom/lge/olaworks/datastruct/JOlaBitmap;-><init>(IIII)V

    .line 175
    .local v1, "olaBitmap":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    iget v3, v1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->nativeImageData:I

    if-nez v3, :cond_1

    move-object v1, v2

    .line 185
    .end local v1    # "olaBitmap":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    :cond_0
    :goto_0
    return-object v1

    .line 177
    .restart local v1    # "olaBitmap":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    :cond_1
    invoke-static {v1, p0}, Lcom/lge/olaworks/library/OlaBitmapUtil;->convert(Lcom/lge/olaworks/datastruct/JOlaBitmap;Landroid/graphics/Bitmap;)I

    move-result v0

    .line 178
    .local v0, "dRet":I
    invoke-static {v0}, Lcom/lge/olaworks/define/Ola_ReturnType;->error(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-virtual {v1}, Lcom/lge/olaworks/datastruct/JOlaBitmap;->recycle()V

    .line 181
    const-string v3, "JOlaBitmap"

    const-string v4, "CBitmap.convert ret(%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 183
    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "dst"    # Landroid/graphics/Bitmap;

    .prologue
    .line 139
    invoke-static {p1, p0}, Lcom/lge/olaworks/library/OlaBitmapUtil;->convert(Landroid/graphics/Bitmap;Lcom/lge/olaworks/datastruct/JOlaBitmap;)I

    .line 140
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    .line 119
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    .line 120
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageFormat:I

    .line 121
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 124
    iget v0, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->nativeImageData:I

    if-eqz v0, :cond_0

    .line 125
    iget v0, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->nativeImageData:I

    invoke-static {v0}, Lcom/lge/olaworks/jni/NativeJNI;->free(I)V

    .line 126
    iput v1, p0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->nativeImageData:I

    .line 128
    :cond_0
    return-void
.end method
