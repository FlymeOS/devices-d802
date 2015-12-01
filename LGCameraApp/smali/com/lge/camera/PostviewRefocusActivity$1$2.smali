.class Lcom/lge/camera/PostviewRefocusActivity$1$2;
.super Ljava/lang/Object;
.source "PostviewRefocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewRefocusActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/PostviewRefocusActivity$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewRefocusActivity$1;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity$1$2;->this$1:Lcom/lge/camera/PostviewRefocusActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 445
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$1$2;->this$1:Lcom/lge/camera/PostviewRefocusActivity$1;

    iget-object v1, v1, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    const v2, 0x7f0d0164

    invoke-virtual {v1, v2}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/PostViewBar;

    .line 447
    .local v0, "postviewBar":Lcom/lge/camera/postview/PostViewBar;
    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/AnimationUtil;->startShowingAnimation(Landroid/view/View;ZJLandroid/view/animation/Animation$AnimationListener;Z)V

    .line 450
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$1$2;->this$1:Lcom/lge/camera/PostviewRefocusActivity$1;

    iget-object v1, v1, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->updateGuideTextView()V
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$1300(Lcom/lge/camera/PostviewRefocusActivity;)V

    .line 451
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$1$2;->this$1:Lcom/lge/camera/PostviewRefocusActivity$1;

    iget-object v1, v1, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewRefocusActivity;->dismissProgressDialog()V

    .line 452
    return-void
.end method
