.class Lcom/lge/camera/controller/ShotModeMenuController$2$1;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/ShotModeMenuController$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/ShotModeMenuController$2;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ShotModeMenuController$2;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$2$1;->this$1:Lcom/lge/camera/controller/ShotModeMenuController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$2$1;->this$1:Lcom/lge/camera/controller/ShotModeMenuController$2;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController$2;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$2$1;->this$1:Lcom/lge/camera/controller/ShotModeMenuController$2;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController$2;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController;->removeShotModeMenuView()V

    .line 731
    return-void
.end method
