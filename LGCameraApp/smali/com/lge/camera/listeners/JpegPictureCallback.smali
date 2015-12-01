.class public Lcom/lge/camera/listeners/JpegPictureCallback;
.super Ljava/lang/Object;
.source "JpegPictureCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mGet:Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;

    .line 24
    iput-object p1, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mGet:Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;

    .line 25
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mGet:Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mGet:Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;->jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V

    .line 31
    :cond_0
    return-void
.end method
