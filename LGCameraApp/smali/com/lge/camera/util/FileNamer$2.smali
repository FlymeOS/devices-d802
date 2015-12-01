.class Lcom/lge/camera/util/FileNamer$2;
.super Ljava/lang/Object;
.source "FileNamer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/util/FileNamer;->startCheckFileNameForCamera(Landroid/content/Context;ILjava/lang/String;Z)V
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
    .line 474
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    iput-object p2, p0, Lcom/lge/camera/util/FileNamer$2;->val$dir:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/camera/util/FileNamer$2;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/lge/camera/util/FileNamer$2;->val$storage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 476
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z
    invoke-static {v1, v11}, Lcom/lge/camera/util/FileNamer;->access$602(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 477
    const-string v1, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCheckFileName image with thread : file count ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J
    invoke-static {v7}, Lcom/lge/camera/util/FileNamer;->access$700(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 481
    .local v4, "startTime":J
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$700(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v2

    .line 482
    .local v2, "imageFileNumber":J
    # invokes: Lcom/lge/camera/util/FileNamer;->makePictureFileName(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/lge/camera/util/FileNamer;->access$800(J)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "fileName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lge/camera/util/FileNamer$2;->val$dir:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 485
    # invokes: Lcom/lge/camera/util/FileNamer;->makePictureFileName(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/lge/camera/util/FileNamer;->access$800(J)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$300(Lcom/lge/camera/util/FileNamer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v1, v11}, Lcom/lge/camera/util/FileNamer;->access$302(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 492
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J
    invoke-static {v1, v2, v3}, Lcom/lge/camera/util/FileNamer;->access$702(Lcom/lge/camera/util/FileNamer;J)J

    .line 494
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$300(Lcom/lge/camera/util/FileNamer;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 495
    const-string v1, "CameraApp"

    const-string v6, "startCheckFileName thread interrupted!"

    invoke-static {v1, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z
    invoke-static {v1, v10}, Lcom/lge/camera/util/FileNamer;->access$602(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 497
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v1, v10}, Lcom/lge/camera/util/FileNamer;->access$302(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 511
    :cond_3
    :goto_0
    return-void

    .line 500
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/lge/camera/util/FileNamer;->access$902(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;

    .line 501
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I
    invoke-static {v1, v11}, Lcom/lge/camera/util/FileNamer;->access$1002(Lcom/lge/camera/util/FileNamer;I)I

    .line 502
    const-string v1, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "image file is ready "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/camera/util/FileNamer;->access$900(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v1, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCheckFileName is finished with thread (elapse time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z
    invoke-static {v1, v10}, Lcom/lge/camera/util/FileNamer;->access$602(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 507
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->val$context:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 508
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$2;->val$context:Landroid/content/Context;

    iget v6, p0, Lcom/lge/camera/util/FileNamer$2;->val$storage:I

    iget-object v7, p0, Lcom/lge/camera/util/FileNamer$2;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J
    invoke-static {v7}, Lcom/lge/camera/util/FileNamer;->access$700(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v8

    invoke-static {v1, v6, v8, v9}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedPictureCount(Landroid/content/Context;IJ)V

    goto :goto_0
.end method
