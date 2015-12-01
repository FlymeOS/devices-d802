.class public Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "CameraAutoFocusMoveCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;

    .line 21
    iput-object p1, p0, Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;

    .line 22
    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "start"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback;->mGet:Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;->callbackOnAutoFocusMove(ZLandroid/hardware/Camera;)V

    .line 29
    :cond_0
    return-void
.end method
