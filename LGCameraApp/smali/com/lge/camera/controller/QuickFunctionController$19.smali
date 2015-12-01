.class Lcom/lge/camera/controller/QuickFunctionController$19;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->slideQFLOut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;)V
    .locals 0

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$19;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$19;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v1, 0x0

    # setter for: Lcom/lge/camera/controller/QuickFunctionController;->mSliding:Z
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->access$1402(Lcom/lge/camera/controller/QuickFunctionController;Z)Z

    .line 1570
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$19;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->qflHide()V

    .line 1571
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1566
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x0

    .line 1558
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$19;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v3, 0x1

    # setter for: Lcom/lge/camera/controller/QuickFunctionController;->mSliding:Z
    invoke-static {v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$1402(Lcom/lge/camera/controller/QuickFunctionController;Z)Z

    .line 1559
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$19;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    .line 1560
    .local v1, "menu":Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setClickable(Z)V

    .line 1561
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1563
    .end local v1    # "menu":Lcom/lge/camera/components/RotateImageButton;
    :cond_0
    return-void
.end method
