.class Lcom/lge/camera/util/FileNamer$3;
.super Ljava/lang/Object;
.source "FileNamer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/util/FileNamer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dir:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    iput-object p2, p0, Lcom/lge/camera/util/FileNamer$3;->val$dir:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/camera/util/FileNamer$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 575
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z
    invoke-static {v1, v9}, Lcom/lge/camera/util/FileNamer;->access$1102(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 576
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName_DCF with thread : file count ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$1200(Lcom/lge/camera/util/FileNamer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDCFNumber:J
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$1300(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 580
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$1200(Lcom/lge/camera/util/FileNamer;)I

    move-result v1

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDigitnum:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamer;->access$1400(Lcom/lge/camera/util/FileNamer;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDCFNumber:J
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$1300(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v6

    # invokes: Lcom/lge/camera/util/FileNamer;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;
    invoke-static {v1, v4, v6, v7}, Lcom/lge/camera/util/FileNamer;->access$1500(IIJ)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "fileName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->val$dir:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".jpg"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->val$dir:Ljava/lang/String;

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

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->val$dir:Ljava/lang/String;

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

    .line 585
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # invokes: Lcom/lge/camera/util/FileNamer;->addDCFCount()V
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$1600(Lcom/lge/camera/util/FileNamer;)V

    .line 586
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$1200(Lcom/lge/camera/util/FileNamer;)I

    move-result v1

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDigitnum:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamer;->access$1400(Lcom/lge/camera/util/FileNamer;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDCFNumber:J
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$1300(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v6

    # invokes: Lcom/lge/camera/util/FileNamer;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;
    invoke-static {v1, v4, v6, v7}, Lcom/lge/camera/util/FileNamer;->access$1500(IIJ)Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$300(Lcom/lge/camera/util/FileNamer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v1, v9}, Lcom/lge/camera/util/FileNamer;->access$302(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 594
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v1}, Lcom/lge/camera/util/FileNamer;->access$300(Lcom/lge/camera/util/FileNamer;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 595
    const-string v1, "CameraApp"

    const-string v4, "startCheckFileName_DCF thread interrupted!"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z
    invoke-static {v1, v8}, Lcom/lge/camera/util/FileNamer;->access$1102(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 597
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mStopThread:Z
    invoke-static {v1, v8}, Lcom/lge/camera/util/FileNamer;->access$302(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 613
    :cond_4
    :goto_0
    return-void

    .line 600
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/camera/util/FileNamer;->access$1800(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/lge/camera/util/FileNamer;->mCurrFileName:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/lge/camera/util/FileNamer;->access$1702(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;

    .line 601
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/lge/camera/util/FileNamer;->access$1802(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I
    invoke-static {v1, v9}, Lcom/lge/camera/util/FileNamer;->access$1902(Lcom/lge/camera/util/FileNamer;I)I

    .line 603
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next dcf file is ready "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mCurrFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$1700(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/camera/util/FileNamer;->access$1800(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName_DCF is finished with thread (elapse time = "

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

    .line 606
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # setter for: Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z
    invoke-static {v1, v8}, Lcom/lge/camera/util/FileNamer;->access$1102(Lcom/lge/camera/util/FileNamer;Z)Z

    .line 608
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->val$context:Landroid/content/Context;

    if-eqz v1, :cond_4

    .line 609
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDCFNumber:J
    invoke-static {v4}, Lcom/lge/camera/util/FileNamer;->access$1300(Lcom/lge/camera/util/FileNamer;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFCount(Landroid/content/Context;J)V

    .line 610
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamer;->access$1200(Lcom/lge/camera/util/FileNamer;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFFirstCount(Landroid/content/Context;I)V

    .line 611
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer$3;->this$0:Lcom/lge/camera/util/FileNamer;

    # getter for: Lcom/lge/camera/util/FileNamer;->mDigitnum:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamer;->access$1400(Lcom/lge/camera/util/FileNamer;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFDigit(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
