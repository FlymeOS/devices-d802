.class public Lcom/lge/camera/command/ShowHelpActivity;
.super Lcom/lge/camera/command/Command;
.source "ShowHelpActivity.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 19
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/command/ShowHelpActivity;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/ShowHelpActivity$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/ShowHelpActivity$1;-><init>(Lcom/lge/camera/command/ShowHelpActivity;)V

    const-wide/16 v2, 0x12c

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 32
    return-void
.end method
