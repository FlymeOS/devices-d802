.class Lcom/lge/camera/command/SetUplusBoxMode$1;
.super Ljava/lang/Object;
.source "SetUplusBoxMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/SetUplusBoxMode;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/SetUplusBoxMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/SetUplusBoxMode;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/camera/command/SetUplusBoxMode$1;->this$0:Lcom/lge/camera/command/SetUplusBoxMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    iget-object v0, p0, Lcom/lge/camera/command/SetUplusBoxMode$1;->this$0:Lcom/lge/camera/command/SetUplusBoxMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/SetUplusBoxMode;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lge/camera/command/SetUplusBoxMode$1;->this$0:Lcom/lge/camera/command/SetUplusBoxMode;

    iget-object v0, v0, Lcom/lge/camera/command/SetUplusBoxMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/lge/camera/command/SetUplusBoxMode$1;->this$0:Lcom/lge/camera/command/SetUplusBoxMode;

    iget-object v0, v0, Lcom/lge/camera/command/SetUplusBoxMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lge/camera/command/SetUplusBoxMode$1;->this$0:Lcom/lge/camera/command/SetUplusBoxMode;

    iget-object v0, v0, Lcom/lge/camera/command/SetUplusBoxMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_uplus_box"

    invoke-interface {v0, v1, v2, v2}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 79
    :cond_0
    return-void
.end method
