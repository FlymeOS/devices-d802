.class public interface abstract Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;
.super Ljava/lang/Object;
.source "ImageSavers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/util/ImageSavers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageSaverCallback"
.end annotation


# virtual methods
.method public abstract doAfterSaveImageSavers()V
.end method

.method public abstract isStorageFull()Z
.end method

.method public abstract saveAndAddImageForImageSavers(Lcom/lge/camera/util/SaveRequest;)V
.end method

.method public abstract setSaveRequest(Lcom/lge/camera/util/SaveRequest;[BLandroid/graphics/Bitmap;IZZ)V
.end method
