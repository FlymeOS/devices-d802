.class Lcom/lge/camera/PostviewRefocusActivity$7;
.super Ljava/lang/Object;
.source "PostviewRefocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewRefocusActivity;
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
    .line 1263
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1265
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v1, p0}, Lcom/lge/camera/PostviewRefocusActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 1267
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewRefocusActivity;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mAnimationTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$2100(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mScheduledTime:I
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$2300(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_2

    .line 1270
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # operator++ for: Lcom/lge/camera/PostviewRefocusActivity;->mScheduledTime:I
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$2308(Lcom/lge/camera/PostviewRefocusActivity;)I

    .line 1301
    :cond_1
    :goto_0
    return-void

    .line 1275
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$2000(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I
    invoke-static {v2}, Lcom/lge/camera/PostviewRefocusActivity;->access$200(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 1276
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->stopRefocusAnimation()V
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$2400(Lcom/lge/camera/PostviewRefocusActivity;)V

    .line 1277
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->updateGuideTextView()V
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$1300(Lcom/lge/camera/PostviewRefocusActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception!"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1280
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mCurMakingImageIndex:I
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$100(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mCurMakingImageIndex:I
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$100(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I
    invoke-static {v2}, Lcom/lge/camera/PostviewRefocusActivity;->access$2000(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_5

    .line 1282
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # operator++ for: Lcom/lge/camera/PostviewRefocusActivity;->mScheduledTime:I
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$2308(Lcom/lge/camera/PostviewRefocusActivity;)I

    goto :goto_0

    .line 1285
    :cond_5
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurMakingImageIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mCurMakingImageIndex:I
    invoke-static {v3}, Lcom/lge/camera/PostviewRefocusActivity;->access$100(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTimerCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I
    invoke-static {v3}, Lcom/lge/camera/PostviewRefocusActivity;->access$2000(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    const/4 v2, 0x0

    # setter for: Lcom/lge/camera/PostviewRefocusActivity;->mScheduledTime:I
    invoke-static {v1, v2}, Lcom/lge/camera/PostviewRefocusActivity;->access$2302(Lcom/lge/camera/PostviewRefocusActivity;I)I

    .line 1289
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I
    invoke-static {v2}, Lcom/lge/camera/PostviewRefocusActivity;->access$2000(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v2

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->startFrameAnimation(I)Z
    invoke-static {v1, v2}, Lcom/lge/camera/PostviewRefocusActivity;->access$2500(Lcom/lge/camera/PostviewRefocusActivity;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1290
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->stopRefocusAnimation()V
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$2400(Lcom/lge/camera/PostviewRefocusActivity;)V

    .line 1293
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # operator++ for: Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$2008(Lcom/lge/camera/PostviewRefocusActivity;)I

    .line 1294
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$2000(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I
    invoke-static {v2}, Lcom/lge/camera/PostviewRefocusActivity;->access$200(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 1295
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I
    invoke-static {v2}, Lcom/lge/camera/PostviewRefocusActivity;->access$200(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity$7;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I
    invoke-static {v3}, Lcom/lge/camera/PostviewRefocusActivity;->access$2000(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->setBarValue(I)V
    invoke-static {v1, v2}, Lcom/lge/camera/PostviewRefocusActivity;->access$2600(Lcom/lge/camera/PostviewRefocusActivity;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
