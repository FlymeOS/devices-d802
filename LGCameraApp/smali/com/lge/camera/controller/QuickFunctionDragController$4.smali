.class Lcom/lge/camera/controller/QuickFunctionDragController$4;
.super Ljava/lang/Object;
.source "QuickFunctionDragController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickFunctionDragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionDragController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionDragController;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v8, 0x7f0d01ab

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 690
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-boolean v5, v5, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v5, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v3

    .line 693
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$600(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/DragLayout;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$600(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/DragLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/components/DragLayout;->getDrag()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 696
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-gt v5, v4, :cond_0

    .line 699
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 700
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v1, v5

    .line 701
    .local v1, "screenX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    .line 703
    .local v2, "screenY":I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v3, v4

    .line 726
    goto :goto_0

    .line 705
    :pswitch_0
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$600(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/DragLayout;

    move-result-object v3

    int-to-float v5, v1

    invoke-virtual {v3, v5}, Lcom/lge/camera/components/DragLayout;->setMotionDownX(F)V

    .line 706
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$600(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/DragLayout;

    move-result-object v3

    int-to-float v5, v2

    invoke-virtual {v3, v5}, Lcom/lge/camera/components/DragLayout;->setMotionDownY(F)V

    goto :goto_1

    .line 709
    :pswitch_1
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$700(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/RotateDragView;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/components/RotateDragView;->move(II)V

    .line 710
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # invokes: Lcom/lge/camera/controller/QuickFunctionDragController;->isOverlapTrashIcon(II)Z
    invoke-static {v5, v1, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$800(Lcom/lge/camera/controller/QuickFunctionDragController;II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 711
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 713
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-object v5, v5, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 717
    :pswitch_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$600(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/DragLayout;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$600(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/DragLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/components/DragLayout;->getDrag()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 718
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    int-to-float v5, v1

    int-to-float v6, v2

    # invokes: Lcom/lge/camera/controller/QuickFunctionDragController;->drop(FF)V
    invoke-static {v3, v5, v6}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$900(Lcom/lge/camera/controller/QuickFunctionDragController;FF)V

    .line 720
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # invokes: Lcom/lge/camera/controller/QuickFunctionDragController;->endDrag()V
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$1000(Lcom/lge/camera/controller/QuickFunctionDragController;)V

    goto :goto_1

    .line 723
    :pswitch_3
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/QuickFunctionDragController;->cancelDrag()V

    goto :goto_1

    .line 703
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
