.class public Lcom/lge/olaworks/jni/OlaAndroidBitmapJNI;
.super Ljava/lang/Object;
.source "OlaAndroidBitmapJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OlaAndroidBitmapJNI"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 13
    :try_start_0
    const-string v2, "OlaLGECameraJNI_4"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const-string v2, "OlaAndroidBitmapJNI"

    const-string v3, "OlaAndroidBitmapJNI-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :goto_0
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .local v0, "se":Ljava/lang/SecurityException;
    :try_start_1
    const-string v2, "OlaAndroidBitmapJNI"

    const-string v3, "SecurityException"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    const-string v2, "OlaAndroidBitmapJNI"

    const-string v3, "OlaAndroidBitmapJNI-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    .end local v0    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 17
    .local v1, "ule":Ljava/lang/UnsatisfiedLinkError;
    :try_start_2
    const-string v2, "OlaAndroidBitmapJNI"

    const-string v3, "UnsatisfiedLinkError"

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    const-string v2, "OlaAndroidBitmapJNI"

    const-string v3, "OlaAndroidBitmapJNI-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "ule":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "se":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v2

    .end local v0    # "se":Ljava/lang/SecurityException;
    const-string v3, "OlaAndroidBitmapJNI"

    const-string v4, "OlaAndroidBitmapJNI-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native convert(Landroid/graphics/Bitmap;Lcom/lge/olaworks/datastruct/JOlaBitmap;)I
.end method

.method public static native convert(Lcom/lge/olaworks/datastruct/JOlaBitmap;Landroid/graphics/Bitmap;)I
.end method

.method public static native mirrorXBitmap(Landroid/graphics/Bitmap;)I
.end method

.method public static native mirrorYBitmap(Landroid/graphics/Bitmap;)I
.end method

.method public static native rotateYuv([BIII)[B
.end method

.method public static native zoomInJOlaBitmap(Lcom/lge/olaworks/datastruct/JOlaBitmap;Lcom/lge/olaworks/datastruct/JOlaBitmap;F)I
.end method
