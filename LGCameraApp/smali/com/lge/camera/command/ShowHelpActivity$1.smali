.class Lcom/lge/camera/command/ShowHelpActivity$1;
.super Ljava/lang/Object;
.source "ShowHelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/ShowHelpActivity;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/ShowHelpActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ShowHelpActivity;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lge/camera/command/ShowHelpActivity$1;->this$0:Lcom/lge/camera/command/ShowHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/camera/command/ShowHelpActivity$1;->this$0:Lcom/lge/camera/command/ShowHelpActivity;

    invoke-virtual {v0}, Lcom/lge/camera/command/ShowHelpActivity;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/lge/camera/command/ShowHelpActivity$1;->this$0:Lcom/lge/camera/command/ShowHelpActivity;

    iget-object v0, v0, Lcom/lge/camera/command/ShowHelpActivity;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/ShowHelpActivity$1;->this$0:Lcom/lge/camera/command/ShowHelpActivity;

    iget-object v1, v0, Lcom/lge/camera/command/ShowHelpActivity;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v0, p0, Lcom/lge/camera/command/ShowHelpActivity$1;->this$0:Lcom/lge/camera/command/ShowHelpActivity;

    iget-object v0, v0, Lcom/lge/camera/command/ShowHelpActivity;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "camera help"

    :goto_0
    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->gotoHelpActivity(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void

    .line 27
    :cond_1
    const-string v0, "camcorder help"

    goto :goto_0
.end method
