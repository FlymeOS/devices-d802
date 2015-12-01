.class Lcom/lge/camera/PostviewRefocusActivity$6$1;
.super Ljava/util/TimerTask;
.source "PostviewRefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewRefocusActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/PostviewRefocusActivity$6;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewRefocusActivity$6;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity$6$1;->this$1:Lcom/lge/camera/PostviewRefocusActivity$6;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$6$1;->this$1:Lcom/lge/camera/PostviewRefocusActivity$6;

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity$6;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$6$1;->this$1:Lcom/lge/camera/PostviewRefocusActivity$6;

    iget-object v1, v1, Lcom/lge/camera/PostviewRefocusActivity$6;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mRefocusAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$2200(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1253
    return-void
.end method
