.class public Lcom/lge/camera/util/MainHandler;
.super Landroid/os/Handler;
.source "MainHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/util/MainHandler$HandlerFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/util/MainHandler$HandlerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/util/MainHandler$HandlerFunction;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    .line 44
    iput-object p1, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    .line 45
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 53
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    if-eqz v0, :cond_0

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 99
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    invoke-interface {v0}, Lcom/lge/camera/util/MainHandler$HandlerFunction;->setMainButtonEnable()V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    invoke-interface {v0}, Lcom/lge/camera/util/MainHandler$HandlerFunction;->doVoiceShutterIndicatorUpdateHandler()V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    invoke-interface {v0}, Lcom/lge/camera/util/MainHandler$HandlerFunction;->doSettingFlashHandler()V

    goto :goto_0

    .line 70
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    invoke-interface {v0}, Lcom/lge/camera/util/MainHandler$HandlerFunction;->showRequestedSizeLimit()V

    goto :goto_0

    .line 74
    :pswitch_4
    const-string v0, "CameraApp"

    const-string v1, "MSG_HEATING_START"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    invoke-interface {v0}, Lcom/lge/camera/util/MainHandler$HandlerFunction;->startHeatingwarning()V

    goto :goto_0

    .line 79
    :pswitch_5
    const-string v0, "CameraApp"

    const-string v1, "MSG_HEATING_STOP"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    invoke-interface {v0}, Lcom/lge/camera/util/MainHandler$HandlerFunction;->stopHeatingwarning()V

    goto :goto_0

    .line 84
    :pswitch_6
    const-string v0, "CameraApp"

    const-string v1, "MSG_HEATING_SHOW "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    invoke-interface {v0}, Lcom/lge/camera/util/MainHandler$HandlerFunction;->showHeatingwarning()V

    goto :goto_0

    .line 89
    :pswitch_7
    const-string v0, "CameraApp"

    const-string v1, "MSG_HEATING_SHOW "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    invoke-interface {v0}, Lcom/lge/camera/util/MainHandler$HandlerFunction;->hideAudiozoomready()V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/util/MainHandler;->mGet:Lcom/lge/camera/util/MainHandler$HandlerFunction;

    .line 49
    return-void
.end method
