.class public Lcom/lge/camera/listeners/ShutterCallback;
.super Ljava/lang/Object;
.source "ShutterCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field private mGet:Lcom/lge/camera/ControllerFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 28
    iput-object p1, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/listeners/ShutterCallback;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/listeners/ShutterCallback;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method


# virtual methods
.method public onShutter()V
    .locals 6

    .prologue
    .line 33
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v2, :cond_0

    .line 35
    const-string v2, "CameraApp"

    const-string v3, "SHOT ShutterCallback()"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    const-string v2, "CameraApp"

    const-string v3, "ShutterCallback():: (mMediator.isPausing() == true)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 41
    const-string v2, "CameraApp"

    const-string v3, "ShutterCallback(): (mMediator.getApplicationMode() == MODE_CAMCORDER)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    sget-wide v2, Lcom/lge/camera/properties/ProjectVariables;->mCaptureStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/lge/camera/properties/ProjectVariables;->mCaptureStartTime:J

    sub-long v0, v2, v4

    .line 48
    .local v0, "mShutterLag":J
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SHOT TIME] Shutter Lag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lge/camera/properties/ProjectVariables;->mCaptureStartTime:J

    .line 52
    .end local v0    # "mShutterLag":J
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_full_continuous"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    const-string v2, "CameraApp"

    const-string v3, "ShutterCallback():: Full Frame Continuous shot"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/listeners/ShutterCallback$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/listeners/ShutterCallback$1;-><init>(Lcom/lge/camera/listeners/ShutterCallback;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_clear_shot"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_refocus"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 70
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/listeners/ShutterCallback$2;

    invoke-direct {v3, p0}, Lcom/lge/camera/listeners/ShutterCallback$2;-><init>(Lcom/lge/camera/listeners/ShutterCallback;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->playShutterSound()V

    .line 77
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/listeners/ShutterCallback$3;

    invoke-direct {v3, p0}, Lcom/lge/camera/listeners/ShutterCallback$3;-><init>(Lcom/lge/camera/listeners/ShutterCallback;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/listeners/ShutterCallback$4;

    invoke-direct {v3, p0}, Lcom/lge/camera/listeners/ShutterCallback$4;-><init>(Lcom/lge/camera/listeners/ShutterCallback;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
