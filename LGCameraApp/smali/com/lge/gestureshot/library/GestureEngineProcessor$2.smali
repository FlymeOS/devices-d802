.class Lcom/lge/gestureshot/library/GestureEngineProcessor$2;
.super Ljava/lang/Object;
.source "GestureEngineProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/gestureshot/library/GestureEngineProcessor;->initialize()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;


# direct methods
.method constructor <init>(Lcom/lge/gestureshot/library/GestureEngineProcessor;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, "tempInfo":[Lcom/lge/gestureshot/library/HandInfo;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mStopThreadSign:Z
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$200(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 196
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_1
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mInputbuf:[B
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$300(Lcom/lge/gestureshot/library/GestureEngineProcessor;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->bFrameUpdated:Z
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$400(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mInputbuf:[B
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$300(Lcom/lge/gestureshot/library/GestureEngineProcessor;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->nOrientation:I
    invoke-static {v3}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$500(Lcom/lge/gestureshot/library/GestureEngineProcessor;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->nWidth:I
    invoke-static {v4}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$600(Lcom/lge/gestureshot/library/GestureEngineProcessor;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->nHeight:I
    invoke-static {v5}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$700(Lcom/lge/gestureshot/library/GestureEngineProcessor;)I

    move-result v5

    iget-object v6, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->nImageType:I
    invoke-static {v6}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$800(Lcom/lge/gestureshot/library/GestureEngineProcessor;)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/lge/gestureshot/library/GestureEngine;->find([BIIII)I

    .line 209
    invoke-static {}, Lcom/lge/gestureshot/library/GestureEngine;->getHandInfo()[Lcom/lge/gestureshot/library/HandInfo;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_0

    .line 215
    array-length v2, v1

    if-nez v2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mPreEventCheckTime:J
    invoke-static {v2, v4, v5}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$902(Lcom/lge/gestureshot/library/GestureEngineProcessor;J)J

    .line 217
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mPreEventCheckTime:J
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$900(Lcom/lge/gestureshot/library/GestureEngineProcessor;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEventCheckTime:J
    invoke-static {v4}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$1000(Lcom/lge/gestureshot/library/GestureEngineProcessor;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$1100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$1100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    iget-object v3, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mPreEventCheckTime:J
    invoke-static {v3}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$900(Lcom/lge/gestureshot/library/GestureEngineProcessor;)J

    move-result-wide v4

    # setter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEventCheckTime:J
    invoke-static {v2, v4, v5}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$1002(Lcom/lge/gestureshot/library/GestureEngineProcessor;J)J

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # setter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->bFrameUpdated:Z
    invoke-static {v2, v7}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$402(Lcom/lge/gestureshot/library/GestureEngineProcessor;Z)Z

    goto/16 :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    invoke-virtual {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->stop()V

    .line 199
    const-string v2, "CameraApp"

    const-string v3, "InterruptedException GestureEngine Stopped"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 227
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandInfo:Lcom/lge/gestureshot/library/HandInfo;
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Lcom/lge/gestureshot/library/HandInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandInfo:Lcom/lge/gestureshot/library/HandInfo;
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Lcom/lge/gestureshot/library/HandInfo;

    move-result-object v2

    aget-object v3, v1, v7

    invoke-virtual {v2, v3}, Lcom/lge/gestureshot/library/HandInfo;->compareHandInfo(Lcom/lge/gestureshot/library/HandInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # setter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->bFrameUpdated:Z
    invoke-static {v2, v7}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$402(Lcom/lge/gestureshot/library/GestureEngineProcessor;Z)Z

    goto/16 :goto_0

    .line 236
    :cond_3
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandInfo:Lcom/lge/gestureshot/library/HandInfo;
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Lcom/lge/gestureshot/library/HandInfo;

    move-result-object v2

    aget-object v3, v1, v7

    invoke-virtual {v2, v3}, Lcom/lge/gestureshot/library/HandInfo;->setHandInfo(Lcom/lge/gestureshot/library/HandInfo;)V

    .line 238
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$1100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$1100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 241
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEventCheckTime:J
    invoke-static {v2, v4, v5}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$1002(Lcom/lge/gestureshot/library/GestureEngineProcessor;J)J

    .line 243
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandInfo:Lcom/lge/gestureshot/library/HandInfo;
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Lcom/lge/gestureshot/library/HandInfo;

    move-result-object v2

    iget v2, v2, Lcom/lge/gestureshot/library/HandInfo;->mEvent:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 244
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$1100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # setter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->bFrameUpdated:Z
    invoke-static {v2, v7}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$402(Lcom/lge/gestureshot/library/GestureEngineProcessor;Z)Z

    .line 253
    :cond_4
    return-void

    .line 249
    :cond_5
    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # setter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->bFrameUpdated:Z
    invoke-static {v2, v7}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$402(Lcom/lge/gestureshot/library/GestureEngineProcessor;Z)Z

    goto/16 :goto_0
.end method
