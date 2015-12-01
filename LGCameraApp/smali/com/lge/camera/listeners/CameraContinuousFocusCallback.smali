.class public Lcom/lge/camera/listeners/CameraContinuousFocusCallback;
.super Ljava/lang/Object;
.source "CameraContinuousFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;

    .line 21
    iput-object p1, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;

    .line 22
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "focusedState"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;->callbackOnCAFocus(ZLandroid/hardware/Camera;)V

    .line 28
    :cond_0
    return-void
.end method
