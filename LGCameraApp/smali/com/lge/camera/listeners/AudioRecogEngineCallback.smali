.class public Lcom/lge/camera/listeners/AudioRecogEngineCallback;
.super Ljava/lang/Object;
.source "AudioRecogEngineCallback.java"

# interfaces
.implements Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mGet:Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;

    .line 31
    iput-object p1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mGet:Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;

    .line 32
    return-void
.end method


# virtual methods
.method public onAudioEngineStartCallback(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 35
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioEngineStartCallback(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    packed-switch p1, :pswitch_data_0

    .line 42
    :pswitch_0
    return-void

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioEngineStopCallback(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 45
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioEngineStopCallback(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    packed-switch p1, :pswitch_data_0

    .line 52
    :pswitch_0
    return-void

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioRecogErrorCallback(I)V
    .locals 3
    .param p1, "error_type"    # I

    .prologue
    .line 55
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioRecogStateCallback(), ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 59
    :pswitch_0
    const-wide/16 v0, 0x19

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 60
    invoke-virtual {p0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->restartEngine()V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioRecogResultCallback(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 76
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioRecogResultCallback() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    packed-switch p1, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mGet:Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;->audioCallbackTakePicture()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public restartEngine()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "CameraApp"

    const-string v1, "restartEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mGet:Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mGet:Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;->audioCallbackRestartEngine()V

    .line 73
    :cond_0
    return-void
.end method
