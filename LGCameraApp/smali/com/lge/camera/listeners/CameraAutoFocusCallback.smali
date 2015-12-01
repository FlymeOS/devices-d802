.class public Lcom/lge/camera/listeners/CameraAutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraAutoFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;

    .line 21
    iput-object p1, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;

    .line 22
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;->callbackOnAutoFocus(ZLandroid/hardware/Camera;)V

    .line 36
    :cond_0
    return-void
.end method
