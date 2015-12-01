.class Lcom/lge/camera/controller/SettingRotatableController$1;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableController;->removeSettingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableController;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x4

    .line 246
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingRotatableController;->checkMediator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d01ff

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 248
    .local v1, "rlP":Lcom/lge/camera/components/RotateLayout;
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0203

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 250
    .local v0, "rlC":Lcom/lge/camera/components/RotateLayout;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 252
    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$1$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$1$1;-><init>(Lcom/lge/camera/controller/SettingRotatableController$1;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 263
    .end local v0    # "rlC":Lcom/lge/camera/components/RotateLayout;
    .end local v1    # "rlP":Lcom/lge/camera/components/RotateLayout;
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 243
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 240
    return-void
.end method
