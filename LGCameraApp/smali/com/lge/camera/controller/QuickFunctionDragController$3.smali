.class Lcom/lge/camera/controller/QuickFunctionDragController$3;
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
    .line 485
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 487
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-boolean v1, v1, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v2

    .line 490
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 491
    .local v0, "mActionEvent":I
    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$500(Lcom/lge/camera/controller/QuickFunctionDragController;)Landroid/widget/GridView;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/controller/QuickFunctionDragController;->isInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 494
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;
    invoke-static {v1}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$200(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/setting/SelectMenuGridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
