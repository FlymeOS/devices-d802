.class Lcom/lge/camera/controller/SettingRotatableExpandableController$5$1;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController$5;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$5;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController$5;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$5$1;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$5$1;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$5;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$5$1;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$5;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$5$1;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$5;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->removeSettingViewAll()V

    .line 443
    :cond_0
    return-void
.end method
