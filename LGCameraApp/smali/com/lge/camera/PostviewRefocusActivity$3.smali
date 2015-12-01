.class Lcom/lge/camera/PostviewRefocusActivity$3;
.super Ljava/lang/Object;
.source "PostviewRefocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewRefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewRefocusActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewRefocusActivity;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity$3;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$3;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/PostviewRefocusActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 894
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$3;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lge/camera/PostviewRefocusActivity;->access$1400(Lcom/lge/camera/PostviewRefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$3;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lge/camera/PostviewRefocusActivity;->access$1400(Lcom/lge/camera/PostviewRefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 896
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$3;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lge/camera/PostviewRefocusActivity;->access$1400(Lcom/lge/camera/PostviewRefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020383

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 897
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$3;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lge/camera/PostviewRefocusActivity;->access$1400(Lcom/lge/camera/PostviewRefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 899
    :cond_0
    return-void
.end method
