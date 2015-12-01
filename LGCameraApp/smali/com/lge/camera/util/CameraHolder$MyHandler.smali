.class Lcom/lge/camera/util/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/util/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/util/CameraHolder;


# direct methods
.method constructor <init>(Lcom/lge/camera/util/CameraHolder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lge/camera/util/CameraHolder$MyHandler;->this$0:Lcom/lge/camera/util/CameraHolder;

    .line 83
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 84
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v1, p0, Lcom/lge/camera/util/CameraHolder$MyHandler;->this$0:Lcom/lge/camera/util/CameraHolder;

    monitor-enter v1

    .line 93
    :try_start_0
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraHolder-handleMessage:RELEASE_CAMERA [mKeepBeforeTime] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/util/CameraHolder$MyHandler;->this$0:Lcom/lge/camera/util/CameraHolder;

    # getter for: Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J
    invoke-static {v3}, Lcom/lge/camera/util/CameraHolder;->access$000(Lcom/lge/camera/util/CameraHolder;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder$MyHandler;->this$0:Lcom/lge/camera/util/CameraHolder;

    # getter for: Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J
    invoke-static {v0}, Lcom/lge/camera/util/CameraHolder;->access$000(Lcom/lge/camera/util/CameraHolder;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 96
    const-string v0, "CameraApp"

    const-string v2, "we don\'t need to release, return"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    monitor-exit v1

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder$MyHandler;->this$0:Lcom/lge/camera/util/CameraHolder;

    # invokes: Lcom/lge/camera/util/CameraHolder;->releaseCamera()Z
    invoke-static {v0}, Lcom/lge/camera/util/CameraHolder;->access$100(Lcom/lge/camera/util/CameraHolder;)Z

    .line 100
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
