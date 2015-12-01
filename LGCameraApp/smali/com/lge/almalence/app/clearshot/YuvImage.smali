.class public Lcom/lge/almalence/app/clearshot/YuvImage;
.super Ljava/lang/Object;
.source "YuvImage.java"


# static fields
.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000


# instance fields
.field private mData:I

.field private mFormat:I

.field private mHeight:I

.field private mStrides:[I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    const-string v0, "yuvimage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public constructor <init>(IIII[I)V
    .locals 2
    .param p1, "yuv"    # I
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "strides"    # [I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/16 v0, 0x11

    if-eq p2, v0, :cond_0

    const/16 v0, 0x14

    if-eq p2, v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only support ImageFormat.NV21 and ImageFormat.YUY2 for now"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    if-lez p3, :cond_1

    if-gtz p4, :cond_2

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width and height must large than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    if-nez p5, :cond_3

    .line 100
    invoke-direct {p0, p3, p2}, Lcom/lge/almalence/app/clearshot/YuvImage;->calculateStrides(II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mStrides:[I

    .line 105
    :goto_0
    iput p1, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mData:I

    .line 106
    iput p2, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mFormat:I

    .line 107
    iput p3, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mWidth:I

    .line 108
    iput p4, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mHeight:I

    .line 109
    return-void

    .line 102
    :cond_3
    iput-object p5, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mStrides:[I

    goto :goto_0
.end method

.method public static native SaveJpegFreeOut(IIII[I[IILjava/io/OutputStream;[B)Z
.end method

.method private adjustRectangle(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 211
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 212
    .local v0, "height":I
    iget v2, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mFormat:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 214
    and-int/lit8 v1, v1, -0x2

    .line 215
    and-int/lit8 v0, v0, -0x2

    .line 216
    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 217
    iget v2, p1, Landroid/graphics/Rect;->top:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 218
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 219
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 222
    :cond_0
    iget v2, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mFormat:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 224
    and-int/lit8 v1, v1, -0x2

    .line 225
    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 226
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 228
    :cond_1
    return-void
.end method

.method private calculateOffsets(II)[I
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    new-array v0, v5, [I

    .line 179
    .local v0, "offsets":[I
    iget v2, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mFormat:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 180
    const/4 v2, 0x2

    new-array v0, v2, [I

    .end local v0    # "offsets":[I
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mStrides:[I

    aget v2, v2, v4

    mul-int/2addr v2, p2

    add-int/2addr v2, p1

    aput v2, v0, v4

    iget v2, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mHeight:I

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mStrides:[I

    aget v3, v3, v4

    mul-int/2addr v2, v3

    div-int/lit8 v3, p2, 0x2

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mStrides:[I

    aget v4, v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v5

    .restart local v0    # "offsets":[I
    move-object v1, v0

    .line 191
    .end local v0    # "offsets":[I
    .local v1, "offsets":[I
    :goto_0
    return-object v1

    .line 186
    .end local v1    # "offsets":[I
    .restart local v0    # "offsets":[I
    :cond_0
    iget v2, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mFormat:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 187
    new-array v0, v5, [I

    .end local v0    # "offsets":[I
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mStrides:[I

    aget v2, v2, v4

    mul-int/2addr v2, p2

    div-int/lit8 v3, p1, 0x2

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v4

    .restart local v0    # "offsets":[I
    move-object v1, v0

    .line 188
    .end local v0    # "offsets":[I
    .restart local v1    # "offsets":[I
    goto :goto_0

    .end local v1    # "offsets":[I
    .restart local v0    # "offsets":[I
    :cond_1
    move-object v1, v0

    .line 191
    .end local v0    # "offsets":[I
    .restart local v1    # "offsets":[I
    goto :goto_0
.end method

.method private calculateStrides(II)[I
    .locals 6
    .param p1, "width"    # I
    .param p2, "format"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 196
    .local v0, "strides":[I
    const/16 v2, 0x11

    if-ne p2, v2, :cond_0

    .line 197
    new-array v0, v5, [I

    .end local v0    # "strides":[I
    aput p1, v0, v3

    aput p1, v0, v4

    .restart local v0    # "strides":[I
    move-object v1, v0

    .line 206
    .end local v0    # "strides":[I
    .local v1, "strides":[I
    :goto_0
    return-object v1

    .line 201
    .end local v1    # "strides":[I
    .restart local v0    # "strides":[I
    :cond_0
    const/16 v2, 0x14

    if-ne p2, v2, :cond_1

    .line 202
    new-array v0, v4, [I

    .end local v0    # "strides":[I
    mul-int/lit8 v2, p1, 0x2

    aput v2, v0, v3

    .restart local v0    # "strides":[I
    move-object v1, v0

    .line 203
    .end local v0    # "strides":[I
    .restart local v1    # "strides":[I
    goto :goto_0

    .end local v1    # "strides":[I
    .restart local v0    # "strides":[I
    :cond_1
    move-object v1, v0

    .line 206
    .end local v0    # "strides":[I
    .restart local v1    # "strides":[I
    goto :goto_0

    .line 195
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    .locals 10
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x0

    .line 127
    new-instance v9, Landroid/graphics/Rect;

    iget v0, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mWidth:I

    iget v1, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mHeight:I

    invoke-direct {v9, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .local v9, "wholeImage":Landroid/graphics/Rect;
    invoke-virtual {v9, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rectangle is not inside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    if-nez p3, :cond_3

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_3
    invoke-direct {p0, p1}, Lcom/lge/almalence/app/clearshot/YuvImage;->adjustRectangle(Landroid/graphics/Rect;)V

    .line 142
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1}, Lcom/lge/almalence/app/clearshot/YuvImage;->calculateOffsets(II)[I

    move-result-object v4

    .line 144
    .local v4, "offsets":[I
    iget v0, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mData:I

    iget v1, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mFormat:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v5, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mStrides:[I

    const/16 v6, 0x1000

    new-array v8, v6, [B

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcom/lge/almalence/app/clearshot/YuvImage;->SaveJpegFreeOut(IIII[I[IILjava/io/OutputStream;[B)Z

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mHeight:I

    return v0
.end method

.method public getStrides()[I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mStrides:[I

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mWidth:I

    return v0
.end method

.method public getYuvFormat()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/lge/almalence/app/clearshot/YuvImage;->mFormat:I

    return v0
.end method
