.class Lcom/lge/camera/ShotPostviewActivity$2;
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
    .line 578
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity$2;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 580
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity$2;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    # getter for: Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/lge/camera/ShotPostviewActivity;->access$000(Lcom/lge/camera/ShotPostviewActivity;)Landroid/hardware/Camera;

    move-result-object v1

    if-nez v1, :cond_0

    .line 581
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    :cond_0
    return-void

    .line 584
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity$2;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    iget-object v3, v3, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity$2;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity$2;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    iget-object v3, v3, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/CameraHolder;->tryOpen(I)Landroid/hardware/Camera;

    move-result-object v2

    # setter for: Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1, v2}, Lcom/lge/camera/ShotPostviewActivity;->access$002(Lcom/lge/camera/ShotPostviewActivity;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 587
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
