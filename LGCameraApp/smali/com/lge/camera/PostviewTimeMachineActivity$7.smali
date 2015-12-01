.class Lcom/lge/camera/PostviewTimeMachineActivity$7;
.super Ljava/util/TimerTask;
.source "PostviewTimeMachineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewTimeMachineActivity;->startTimeMachineShotAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewTimeMachineActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V
    .locals 0

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$7;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$7;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$7;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1300(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1264
    return-void
.end method
