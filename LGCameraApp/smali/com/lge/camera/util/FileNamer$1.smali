.class Lcom/lge/camera/util/FileNamer$1;
.super Ljava/lang/Object;
.source "FileNamer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/util/FileNamer;->startCheckFileNameForCamcorder(Landroid/content/Context;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/util/FileNamer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dir:Ljava/lang/String;

.field final synthetic val$storage:I


# direct methods
.method constructor <init>(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    iput-object p2, p0, Lcom/lge/camera/util/FileNamer$1;->val$dir:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/camera/util/FileNamer$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/lge/camera/util/FileNamer$1;->val$storage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 395
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z
    invoke-static {v1, v6}, Lcom/lge/camera/util/FileNamer;->access$002(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 396
    const-string v1, "CameraApp"

    const-string v4, "startCheckFileName video with thread"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 398
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$100(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v4

    # invokes: Lcom/lge/camera/util/FileNamer;->makeVideoFileName(J)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/lge/camera/util/FileNamer;->access$200(J)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "fileName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$1;->val$dir:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".3gp"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$1;->val$dir:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".mp4"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # operator++ for: Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$108(Lcom/lge/camera/util/FileNamer;)J

    .line 403
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$100(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v4

    # invokes: Lcom/lge/camera/util/FileNamer;->makeVideoFileName(J)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/lge/camera/util/FileNamer;->access$200(J)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$300(Lcom/lge/camera/util/FileNamer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v1, v6}, Lcom/lge/camera/util/FileNamer;->access$302(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 411
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$300(Lcom/lge/camera/util/FileNamer;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 412
    const-string v1, "CameraApp"

    const-string v4, "startCheckFileName thread interrupted!"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z
    invoke-static {v1, v8}, Lcom/lge/camera/util/FileNamer;->access$002(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 414
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v1, v8}, Lcom/lge/camera/util/FileNamer;->access$302(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 429
    :cond_4
    :goto_0
    return-void

    .line 417
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/lge/camera/util/FileNamer;->access$402(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I
    invoke-static {v1, v6}, Lcom/lge/camera/util/FileNamer;->access$502(Lcom/lge/camera/util/FileNamer;I)I

    .line 419
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video file is ready "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$400(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName is finished with thread (elapse time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z
    invoke-static {v1, v8}, Lcom/lge/camera/util/FileNamer;->access$002(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 425
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->val$context:Landroid/content/Context;

    if-eqz v1, :cond_4

    .line 426
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$1;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/lge/camera/util/FileNamer$1;->val$storage:I

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$1;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$100(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v6

    invoke-static {v1, v4, v6, v7}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedVideoCount(Landroid/content/Context;IJ)V

    goto :goto_0
.end method
