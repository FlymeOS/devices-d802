.class public Lcom/lge/camera/command/SelectVideoLength;
.super Lcom/lge/camera/command/Command;
.source "SelectVideoLength.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 20
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "CameraApp"

    const-string v1, "SelectVideoLength"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/lge/camera/command/SelectVideoLength;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    .line 26
    return-void
.end method
