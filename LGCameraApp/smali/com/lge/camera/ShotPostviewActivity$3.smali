.class Lcom/lge/camera/ShotPostviewActivity$3;
.super Ljava/lang/Object;
.source "ShotPostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/ShotPostviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/ShotPostviewActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/ShotPostviewActivity;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity$3;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$3;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/ShotPostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$3;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    invoke-virtual {v0}, Lcom/lge/camera/ShotPostviewActivity;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$3;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    invoke-virtual {v0}, Lcom/lge/camera/ShotPostviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$3;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity$3;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    # getter for: Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/lge/camera/ShotPostviewActivity;->access$200(Lcom/lge/camera/ShotPostviewActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/lge/camera/ShotPostviewActivity;->access$102(Lcom/lge/camera/ShotPostviewActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 600
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$3;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    # getter for: Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/lge/camera/ShotPostviewActivity;->access$100(Lcom/lge/camera/ShotPostviewActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 602
    :cond_0
    return-void
.end method
