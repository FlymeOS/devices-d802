.class public Lcom/lge/camera/receiver/HeadsetReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "HeadsetReceiver.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V
    .locals 0
    .param p1, "bridge"    # Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    .line 22
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    const-string v5, "state"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 31
    .local v4, "state":I
    const-string v5, "name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "nm":Ljava/lang/String;
    const-string v5, "microphone"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 34
    .local v2, "mic":I
    if-eqz v3, :cond_2

    if-ne v4, v7, :cond_2

    .line 35
    iget-object v5, p0, Lcom/lge/camera/receiver/HeadsetReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/AudioUtil;->getHasMic(Landroid/content/Context;)Z

    move-result v1

    .line 36
    .local v1, "hasmic":Z
    if-eqz v1, :cond_1

    if-ne v2, v7, :cond_1

    .line 37
    iget-object v5, p0, Lcom/lge/camera/receiver/HeadsetReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setHeadsetstate(I)V

    .line 38
    iget-object v5, p0, Lcom/lge/camera/receiver/HeadsetReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5, v8}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setForced_audiozoom(Z)V

    .line 50
    .end local v1    # "hasmic":Z
    .end local v2    # "mic":I
    .end local v3    # "nm":Ljava/lang/String;
    .end local v4    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 40
    .restart local v1    # "hasmic":Z
    .restart local v2    # "mic":I
    .restart local v3    # "nm":Ljava/lang/String;
    .restart local v4    # "state":I
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/receiver/HeadsetReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5, v7}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setHeadsetstate(I)V

    .line 41
    iget-object v5, p0, Lcom/lge/camera/receiver/HeadsetReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5, v7}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setForced_audiozoom(Z)V

    goto :goto_0

    .line 45
    .end local v1    # "hasmic":Z
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/receiver/HeadsetReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5, v8}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setHeadsetstate(I)V

    .line 46
    iget-object v5, p0, Lcom/lge/camera/receiver/HeadsetReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5, v7}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setForced_audiozoom(Z)V

    goto :goto_0
.end method
