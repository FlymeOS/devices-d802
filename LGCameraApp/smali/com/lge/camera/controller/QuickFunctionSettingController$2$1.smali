.class Lcom/lge/camera/controller/QuickFunctionSettingController$2$1;
.super Ljava/lang/Object;
.source "QuickFunctionSettingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionSettingController$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$2;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionSettingController$2;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$2$1;->this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$2$1;->this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$2;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionSettingController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$2$1;->this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$2;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionSettingController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$2$1;->this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$2;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionSettingController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$2$1;->this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$2;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionSettingController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuAdapter;->update()V

    .line 347
    :cond_0
    return-void
.end method
