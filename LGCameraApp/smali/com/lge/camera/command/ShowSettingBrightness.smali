.class public Lcom/lge/camera/command/ShowSettingBrightness;
.super Lcom/lge/camera/command/Command;
.source "ShowSettingBrightness.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 17
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/camera/command/ShowSettingBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->showSettingBrightnessControl(Z)V

    .line 22
    return-void
.end method
