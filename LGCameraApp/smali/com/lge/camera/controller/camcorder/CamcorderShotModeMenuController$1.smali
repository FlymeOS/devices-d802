.class Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController$1;
.super Ljava/lang/Object;
.source "CamcorderShotModeMenuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->setDefaultMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;

.field final synthetic val$defaultString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;

    iput-object p2, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController$1;->val$defaultString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;

    # getter for: Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->access$000(Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;

    # getter for: Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->access$100(Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController$1;->val$defaultString:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->updateModeMenuIndicator(Ljava/lang/String;)V

    .line 166
    return-void
.end method
