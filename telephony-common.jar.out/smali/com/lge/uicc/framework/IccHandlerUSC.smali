.class public Lcom/lge/uicc/framework/IccHandlerUSC;
.super Lcom/lge/uicc/framework/IccHandler;
.source "IccHandlerUSC.java"


# static fields
.field private static final EVENT_BIP_DISABLE:I = 0x4

.field private static final EVENT_BIP_ENABLE:I = 0x3

.field private static final EVENT_HPLMNWACT_LOADED:I = 0x6

.field private static final EVENT_IMSI_LOADED:I = 0x1

.field private static final EVENT_IMSI_M_LOADED:I = 0x5

.field private static final EVENT_NETWORK_LOCK_DONE:I = 0x2

.field private static mInstance:Lcom/lge/uicc/framework/IccHandlerUSC;


# instance fields
.field private card_operator:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccHandler;-><init>()V

    .line 44
    const-string v0, "card_operator"

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/uicc/framework/IccHandlerUSC;->card_operator:Ljava/lang/String;

    .line 54
    const-string v0, "imsi"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 55
    const-string v0, "[NW Lock] registerForConfig for [imsi]"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->logd(Ljava/lang/String;)V

    .line 57
    const-string v0, "imsi_m"

    const/4 v1, 0x5

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 58
    const-string v0, "hplmnwact"

    const/4 v1, 0x6

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method private isUSCCard()Z
    .locals 2

    .prologue
    .line 131
    const-string v0, "card_operator"

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/uicc/framework/IccHandlerUSC;->card_operator:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[USC] sim_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/uicc/framework/IccHandlerUSC;->card_operator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->logd(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/lge/uicc/framework/IccHandlerUSC;->card_operator:Ljava/lang/String;

    const-string v1, "USC4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/uicc/framework/IccHandlerUSC;->card_operator:Ljava/lang/String;

    const-string v1, "USC3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/uicc/framework/IccHandlerUSC;->card_operator:Ljava/lang/String;

    const-string v1, "TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requestUIMPowerdown()V
    .locals 3

    .prologue
    .line 141
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "value":Ljava/lang/String;
    const-string v2, "gsm.sim.state"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v0

    .line 144
    .local v0, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v0, :cond_0

    .line 145
    const-string v2, "fails to get RIL"

    invoke-virtual {p0, v2}, Lcom/lge/uicc/framework/IccHandlerUSC;->loge(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/lge/uicc/framework/IccHandlerUSC;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL;->UIMPowerdownrequest(Landroid/os/Message;)V

    .line 149
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/uicc/framework/IccTools;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNetworkLockForUSC()V
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_lock_setting_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const-string v0, "[NW Lock] NW-Lock Off in Hidden menu!!!"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->logd(Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccHandlerUSC;->isUSCCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NW Lock] NetworkLocked by sim_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/uicc/framework/IccHandlerUSC;->card_operator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->logd(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccHandlerUSC;->requestUIMPowerdown()V

    .line 126
    const-string v0, "usc.network_lock"

    const-string v1, "yes"

    invoke-static {v0, v1}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected static setup()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "USC"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    sget-object v0, Lcom/lge/uicc/framework/IccHandlerUSC;->mInstance:Lcom/lge/uicc/framework/IccHandlerUSC;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/lge/uicc/framework/IccHandlerUSC;

    invoke-direct {v0}, Lcom/lge/uicc/framework/IccHandlerUSC;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/IccHandlerUSC;->mInstance:Lcom/lge/uicc/framework/IccHandlerUSC;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    invoke-super {p0, p1}, Lcom/lge/uicc/framework/IccHandler;->handleMessage(Landroid/os/Message;)V

    .line 114
    :goto_0
    return-void

    .line 66
    :pswitch_0
    const-string v0, "[NW Lock] EVENT_IMSI_LOADED"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_1
    const-string v0, "[NW Lock] EVENT_NETWORK_LOCK_DONE"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_2
    const-string v0, "[USC] EVENT_BIP_ENABLE"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_3
    const-string v0, "[USC] EVENT_BIP_DISABLE"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_4
    const-string v0, "EVENT_IMSI_M_LOADED"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->logd(Ljava/lang/String;)V

    .line 87
    const-string v0, "imsi_m"

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "Error: imsi_m is not valid"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    const-string v0, "usc.network_lock"

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "[NW Lock]Skip to send intent, Network_lock is On"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    const-string v0, "IMSI_M"

    invoke-static {v0, v2}, Lcom/lge/uicc/framework/IccTools;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_5
    const-string v0, "EVENT_HPLMNWACT_LOADED"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->logd(Ljava/lang/String;)V

    .line 99
    const-string v0, "hplmnwact"

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "Error: hplmnwact is not valid"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    const-string v0, "usc.network_lock"

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    const-string v0, "[NW Lock]Skip to send intent, Network_lock is On"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerUSC;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_3
    const-string v0, "HPLMN_SIMTYPE"

    invoke-static {v0, v2}, Lcom/lge/uicc/framework/IccTools;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
