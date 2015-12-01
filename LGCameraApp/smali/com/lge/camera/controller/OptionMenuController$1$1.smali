.class Lcom/lge/camera/controller/OptionMenuController$1$1;
.super Ljava/lang/Object;
.source "OptionMenuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/OptionMenuController$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/OptionMenuController$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/OptionMenuController$1;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lge/camera/controller/OptionMenuController$1$1;->this$1:Lcom/lge/camera/controller/OptionMenuController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController$1$1;->this$1:Lcom/lge/camera/controller/OptionMenuController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/OptionMenuController$1;->this$0:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/OptionMenuController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController$1$1;->this$1:Lcom/lge/camera/controller/OptionMenuController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/OptionMenuController$1;->this$0:Lcom/lge/camera/controller/OptionMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController$1$1;->this$1:Lcom/lge/camera/controller/OptionMenuController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/OptionMenuController$1;->this$0:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/OptionMenuController;->releaseOptionMenu()V

    .line 115
    :cond_0
    return-void
.end method
