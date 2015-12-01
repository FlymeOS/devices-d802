.class public Lcom/lge/camera/command/setting/SetOlaMainBeautyShot;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetOlaMainBeautyShot.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 26
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetOlaMainBeautyShot;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 5
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOlaMainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v2

    instance-of v2, v2, Lcom/lge/camera/module/MainBeautyShot;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOlaMainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v2

    const-string v3, "FaceBeauty"

    invoke-virtual {v2, v3}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "dual-recorder"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 42
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOlaMainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "MainBeautyShot"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOlaMainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetOlaMainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFaceBeauty()Lcom/lge/olaworks/library/FaceBeauty;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "value":I
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOlaMainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_beautyshot"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 47
    .local v0, "preference":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 48
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOlaMainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_beautyshot"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 49
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beautyshot value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_1
    if-gez v1, :cond_2

    .line 52
    const/4 v1, 0x0

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOlaMainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->setFaceBeutyShotParameter(I)V

    goto :goto_0
.end method
