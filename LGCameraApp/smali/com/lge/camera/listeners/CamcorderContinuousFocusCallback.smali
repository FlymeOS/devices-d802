.class public Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;
.super Ljava/lang/Object;
.source "CamcorderContinuousFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;->mGet:Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;

    .line 22
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "focusedState"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;->mGet:Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;->doCamcorderContinuousFocusCallback(Z)V

    .line 27
    return-void
.end method
