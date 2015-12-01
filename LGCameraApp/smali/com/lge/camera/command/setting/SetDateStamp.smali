.class public Lcom/lge/camera/command/setting/SetDateStamp;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetDateStamp.java"


# instance fields
.field private mDateStampValueOn:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mDateStampValueOn:Z

    .line 25
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetDateStamp;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 6
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 34
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetDateStamp;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isDateStampSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 39
    const-string v2, "CameraApp"

    const-string v3, "SetDateStampMode : model is not supported."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_date_stamp"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "value":Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## SetDateStampMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 47
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mDateStampValueOn:Z

    .line 52
    :goto_1
    if-eqz p1, :cond_3

    .line 54
    :try_start_0
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "time_stamp"

    invoke-virtual {v2, v3, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_date_stamp"

    invoke-interface {v2, v3, v1}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 50
    :cond_4
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mDateStampValueOn:Z

    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "Time stamp SetParam-RuntimeException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isDateStampSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string v0, "CameraApp"

    const-string v1, "SetDateStampMode : model is not supported."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "SetDateStampMode - Show Toast Message : SetDateStampMode is = "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mDateStampValueOn:Z

    if-eqz v0, :cond_1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerInitMenu()V

    .line 74
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto :goto_0
.end method
