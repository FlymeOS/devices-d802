.class Lcom/lge/camera/controller/BubblePopupController$1;
.super Ljava/lang/Object;
.source "BubblePopupController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/BubblePopupController;->removeBubblePopup(Lcom/lge/camera/Mediator;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/BubblePopupController;

.field final synthetic val$mediator:Lcom/lge/camera/Mediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/BubblePopupController;Lcom/lge/camera/Mediator;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/lge/camera/controller/BubblePopupController$1;->this$0:Lcom/lge/camera/controller/BubblePopupController;

    iput-object p2, p0, Lcom/lge/camera/controller/BubblePopupController$1;->val$mediator:Lcom/lge/camera/Mediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 287
    iget-object v1, p0, Lcom/lge/camera/controller/BubblePopupController$1;->val$mediator:Lcom/lge/camera/Mediator;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/lge/camera/controller/BubblePopupController$1;->val$mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 289
    iget-object v1, p0, Lcom/lge/camera/controller/BubblePopupController$1;->this$0:Lcom/lge/camera/controller/BubblePopupController;

    # getter for: Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/camera/controller/BubblePopupController;->access$000(Lcom/lge/camera/controller/BubblePopupController;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/lge/camera/controller/BubblePopupController$1;->this$0:Lcom/lge/camera/controller/BubblePopupController;

    iget-object v2, p0, Lcom/lge/camera/controller/BubblePopupController$1;->val$mediator:Lcom/lge/camera/Mediator;

    iget-object v3, p0, Lcom/lge/camera/controller/BubblePopupController$1;->val$mediator:Lcom/lge/camera/Mediator;

    const v4, 0x7f0d0031

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lcom/lge/camera/controller/BubblePopupController;->setBubblePopupAnimation(Lcom/lge/camera/Mediator;Landroid/view/View;Z)V
    invoke-static {v1, v2, v3, v4}, Lcom/lge/camera/controller/BubblePopupController;->access$100(Lcom/lge/camera/controller/BubblePopupController;Lcom/lge/camera/Mediator;Landroid/view/View;Z)V

    .line 292
    iget-object v1, p0, Lcom/lge/camera/controller/BubblePopupController$1;->val$mediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f0d00c5

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 293
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/lge/camera/controller/BubblePopupController$1;->this$0:Lcom/lge/camera/controller/BubblePopupController;

    # getter for: Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/camera/controller/BubblePopupController;->access$000(Lcom/lge/camera/controller/BubblePopupController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 295
    iget-object v1, p0, Lcom/lge/camera/controller/BubblePopupController$1;->this$0:Lcom/lge/camera/controller/BubblePopupController;

    const/4 v2, 0x0

    # setter for: Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/lge/camera/controller/BubblePopupController;->access$002(Lcom/lge/camera/controller/BubblePopupController;Landroid/view/View;)Landroid/view/View;

    .line 299
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method
