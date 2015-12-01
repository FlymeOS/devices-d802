.class Lcom/lge/camera/controller/SoundController$1;
.super Ljava/lang/Object;
.source "SoundController.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SoundController;
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
    .line 152
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 9
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 154
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadComplete() id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",status:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->setLoadedSoundMaskID(I)V
    invoke-static {v0, p2}, Lcom/lge/camera/controller/SoundController;->access$000(Lcom/lge/camera/controller/SoundController;I)V

    .line 156
    if-eqz p3, :cond_0

    if-ne p2, v8, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # getter for: Lcom/lge/camera/controller/SoundController;->mShutterSoundResID:I
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$100(Lcom/lge/camera/controller/SoundController;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # getter for: Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$200(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    iget-object v1, v1, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # getter for: Lcom/lge/camera/controller/SoundController;->mShutterSoundResID:I
    invoke-static {v3}, Lcom/lge/camera/controller/SoundController;->access$100(Lcom/lge/camera/controller/SoundController;)I

    move-result v3

    invoke-virtual {v0, v1, v3, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 160
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # setter for: Lcom/lge/camera/controller/SoundController;->mShutterSoundResID:I
    invoke-static {v0, v4}, Lcom/lge/camera/controller/SoundController;->access$102(Lcom/lge/camera/controller/SoundController;I)I

    .line 161
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadComplete() reload resID:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # getter for: Lcom/lge/camera/controller/SoundController;->mShutterSoundResID:I
    invoke-static {v3}, Lcom/lge/camera/controller/SoundController;->access$100(Lcom/lge/camera/controller/SoundController;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->getSoundIDPlayedBeforeLoaded()I
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$300(Lcom/lge/camera/controller/SoundController;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 166
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # getter for: Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$400(Lcom/lge/camera/controller/SoundController;)I

    move-result v0

    if-ne p2, v0, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useContinuousSound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object v7, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # getter for: Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$200(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;

    move-result-object v0

    sget v5, Lcom/lge/camera/controller/SoundController;->MAX_CONTINUOUS_SHOT_SOUND:I

    move v1, p2

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    # setter for: Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I
    invoke-static {v7, v0}, Lcom/lge/camera/controller/SoundController;->access$502(Lcom/lge/camera/controller/SoundController;I)I

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V
    invoke-static {v0, v4}, Lcom/lge/camera/controller/SoundController;->access$600(Lcom/lge/camera/controller/SoundController;I)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # getter for: Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$700(Lcom/lge/camera/controller/SoundController;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->checkShutterSoundLoaded()Z
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$800(Lcom/lge/camera/controller/SoundController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/SoundController$1$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/SoundController$1$1;-><init>(Lcom/lge/camera/controller/SoundController$1;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # setter for: Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z
    invoke-static {v0, v8}, Lcom/lge/camera/controller/SoundController;->access$702(Lcom/lge/camera/controller/SoundController;Z)Z

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # invokes: Lcom/lge/camera/controller/SoundController;->checkAllSoundLoaded()Z
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$900(Lcom/lge/camera/controller/SoundController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    const-string v0, "CameraApp"

    const-string v1, "All Sound Loaded"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_3
    return-void

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    # getter for: Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$200(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;

    move-result-object v0

    move v1, p2

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method
