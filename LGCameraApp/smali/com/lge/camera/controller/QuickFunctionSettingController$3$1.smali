.class Lcom/lge/camera/controller/QuickFunctionSettingController$3$1;
.super Ljava/lang/Object;
.source "QuickFunctionSettingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionSettingController$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$3;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionSettingController$3;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$3$1;->this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$3$1;->this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$3;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionSettingController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$3$1;->this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$3;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionSettingController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->removeSettingView()V

    .line 388
    return-void
.end method
