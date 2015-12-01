.class Lcom/lge/camera/controller/QuickButtonController$4;
.super Ljava/lang/Object;
.source "QuickButtonController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickButtonController;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$4;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 859
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 876
    :cond_0
    return v4

    .line 861
    :pswitch_0
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController$4;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController$4;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isSwitcherLeverEnable()Z

    move-result v3

    # setter for: Lcom/lge/camera/controller/QuickButtonController;->isNeedEnableSwitcherLever:Z
    invoke-static {v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->access$702(Lcom/lge/camera/controller/QuickButtonController;Z)Z

    .line 862
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController$4;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->isNeedEnableSwitcherLever:Z
    invoke-static {v2}, Lcom/lge/camera/controller/QuickButtonController;->access$700(Lcom/lge/camera/controller/QuickButtonController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 864
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController$4;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v2, v2, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->resetSwitcherLever()V

    .line 866
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController$4;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/controller/QuickButtonController;->access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 867
    .local v0, "button":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 868
    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    goto :goto_0

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
