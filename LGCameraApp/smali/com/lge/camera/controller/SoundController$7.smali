.class Lcom/lge/camera/controller/SoundController$7;
.super Ljava/lang/Object;
.source "SoundController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SoundController;->buildSoundPoolSoundSource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SoundController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SoundController;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 468
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    iget-object v1, v1, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    .line 469
    .local v0, "app_mode":I
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    new-instance v2, Landroid/media/SoundPool;

    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->getShutterStreamType()I

    move-result v3

    invoke-direct {v2, v6, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    # setter for: Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;
    invoke-static {v1, v2}, Lcom/lge/camera/controller/SoundController;->access$202(Lcom/lge/camera/controller/SoundController;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 470
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # getter for: Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$200(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # getter for: Lcom/lge/camera/controller/SoundController;->completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;
    invoke-static {v2}, Lcom/lge/camera/controller/SoundController;->access$1100(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool$OnLoadCompleteListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 471
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x3

    invoke-direct {v2, v6, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    # setter for: Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;
    invoke-static {v1, v2}, Lcom/lge/camera/controller/SoundController;->access$1202(Lcom/lge/camera/controller/SoundController;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 472
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # getter for: Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$1200(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # getter for: Lcom/lge/camera/controller/SoundController;->completeListener_music:Landroid/media/SoundPool$OnLoadCompleteListener;
    invoke-static {v2}, Lcom/lge/camera/controller/SoundController;->access$1300(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool$OnLoadCompleteListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 473
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    const/4 v2, -0x1

    # setter for: Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I
    invoke-static {v1, v2}, Lcom/lge/camera/controller/SoundController;->access$1402(Lcom/lge/camera/controller/SoundController;I)I

    .line 474
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # setter for: Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I
    invoke-static {v1, v4}, Lcom/lge/camera/controller/SoundController;->access$1502(Lcom/lge/camera/controller/SoundController;I)I

    .line 475
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # setter for: Lcom/lge/camera/controller/SoundController;->mMusicSoundSampleIDLoadedMaskID:I
    invoke-static {v1, v4}, Lcom/lge/camera/controller/SoundController;->access$1602(Lcom/lge/camera/controller/SoundController;I)I

    .line 476
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # setter for: Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z
    invoke-static {v1, v4}, Lcom/lge/camera/controller/SoundController;->access$702(Lcom/lge/camera/controller/SoundController;Z)Z

    .line 477
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # setter for: Lcom/lge/camera/controller/SoundController;->mShutterSoundResID:I
    invoke-static {v1, v4}, Lcom/lge/camera/controller/SoundController;->access$102(Lcom/lge/camera/controller/SoundController;I)I

    .line 478
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sound Load-Start, app_mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isHwTuning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    if-ne v0, v5, :cond_1

    .line 481
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSourceHWTunned()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$1700(Lcom/lge/camera/controller/SoundController;)V

    .line 482
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSourceHWTunnedInCamcorder()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$1800(Lcom/lge/camera/controller/SoundController;)V

    .line 496
    :cond_0
    :goto_0
    const-string v1, "CameraApp"

    const-string v2, "Sound Load-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-void

    .line 483
    :cond_1
    if-nez v0, :cond_0

    .line 484
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSourceHWTunned()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$1900(Lcom/lge/camera/controller/SoundController;)V

    .line 485
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSourceHWTunned()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$1700(Lcom/lge/camera/controller/SoundController;)V

    goto :goto_0

    .line 488
    :cond_2
    if-ne v0, v5, :cond_3

    .line 489
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSource()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$2000(Lcom/lge/camera/controller/SoundController;)V

    .line 490
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSourceInCamcorder()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$2100(Lcom/lge/camera/controller/SoundController;)V

    goto :goto_0

    .line 491
    :cond_3
    if-nez v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSource()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$2200(Lcom/lge/camera/controller/SoundController;)V

    .line 493
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$7;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSource()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$2000(Lcom/lge/camera/controller/SoundController;)V

    goto :goto_0
.end method
