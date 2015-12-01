.class public Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;
.super Ljava/lang/Object;
.source "CameraAutoFocusOnCafCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;

    .line 23
    iput-object p1, p0, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;

    .line 24
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;->callbackAutoFocusOnCaf(ZLandroid/hardware/Camera;)V

    .line 31
    :cond_0
    return-void
.end method
