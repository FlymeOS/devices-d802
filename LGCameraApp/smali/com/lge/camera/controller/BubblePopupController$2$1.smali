.class Lcom/lge/camera/controller/BubblePopupController$2$1;
.super Ljava/lang/Object;
.source "BubblePopupController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/BubblePopupController$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/BubblePopupController$2;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/BubblePopupController$2;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/lge/camera/controller/BubblePopupController$2$1;->this$1:Lcom/lge/camera/controller/BubblePopupController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lge/camera/controller/BubblePopupController$2$1;->this$1:Lcom/lge/camera/controller/BubblePopupController$2;

    iget-object v0, v0, Lcom/lge/camera/controller/BubblePopupController$2;->val$mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/lge/camera/controller/BubblePopupController$2$1;->this$1:Lcom/lge/camera/controller/BubblePopupController$2;

    iget-object v0, v0, Lcom/lge/camera/controller/BubblePopupController$2;->val$aniView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    return-void
.end method
