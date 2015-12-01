.class Lcom/lge/camera/PostviewRefocusActivity$6;
.super Ljava/lang/Object;
.source "PostviewRefocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewRefocusActivity;->startRefocusAnimation()V
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
    .line 1234
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity$6;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x64

    .line 1236
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$6;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/PostviewRefocusActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 1237
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$6;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$6;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$6;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->initializeFrameAnimation()V
    invoke-static {v0}, Lcom/lge/camera/PostviewRefocusActivity;->access$1900(Lcom/lge/camera/PostviewRefocusActivity;)V

    .line 1242
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$6;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    const/4 v4, 0x1

    # setter for: Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I
    invoke-static {v0, v4}, Lcom/lge/camera/PostviewRefocusActivity;->access$602(Lcom/lge/camera/PostviewRefocusActivity;I)I

    .line 1243
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$6;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    const/4 v4, 0x0

    # setter for: Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I
    invoke-static {v0, v4}, Lcom/lge/camera/PostviewRefocusActivity;->access$2002(Lcom/lge/camera/PostviewRefocusActivity;I)I

    .line 1244
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$6;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    const v4, 0x7f0d014d

    invoke-virtual {v0, v4}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1245
    .local v6, "imageView":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 1246
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1248
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$6;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    new-instance v4, Ljava/util/Timer;

    const-string v5, "RefocusAnimation"

    invoke-direct {v4, v5}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/lge/camera/PostviewRefocusActivity;->mAnimationTimer:Ljava/util/Timer;
    invoke-static {v0, v4}, Lcom/lge/camera/PostviewRefocusActivity;->access$2102(Lcom/lge/camera/PostviewRefocusActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1249
    new-instance v1, Lcom/lge/camera/PostviewRefocusActivity$6$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/PostviewRefocusActivity$6$1;-><init>(Lcom/lge/camera/PostviewRefocusActivity$6;)V

    .line 1255
    .local v1, "taskTimeMachine":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$6;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mAnimationTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/lge/camera/PostviewRefocusActivity;->access$2100(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/util/Timer;

    move-result-object v0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method
