.class public Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;
.super Ljava/lang/Object;
.source "ImageConverterJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    :try_start_0
    const-string v1, "morphoimageconverter_4"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 11
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 12
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ImageConverterJNI"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    const-string v1, "ImageConverterJNI"

    const-string v2, "can\'t loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native argb88882rgb888(II[I[B)I
.end method

.method public final native argb88882yuv420p(II[I[B)I
.end method

.method public final native rgb8882argb8888(II[B[I)I
.end method

.method public final native rgb8882yuv420p(II[B[B)I
.end method

.method public final native yuv420p2argb8888(II[B[I)I
.end method

.method public final native yuv420p2rgb888(II[B[B)I
.end method

.method public final native yuv420sp2argb8888(II[B[I)I
.end method

.method public final native yuv420sp2rgb565(II[B[S)I
.end method

.method public final native yuv4442argb8888(II[B[I)I
.end method

.method public final native yvu420sp2argb8888(II[B[I)I
.end method

.method public final native yvu420sp2bmp(II[BLandroid/graphics/Bitmap;)I
.end method

.method public final native yvu420sp2rgb565(II[B[S)I
.end method

.method public final native yvu420sp2yuv444(II[B[B)I
.end method
