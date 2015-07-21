.class public Lcom/lge/telephony/LgePreferredNetwork;
.super Landroid/os/Handler;
.source "LgePreferredNetwork.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "RIL_LGEPreferredNetwork"

.field protected static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field protected static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1

.field public static final NT_MODE_DEFAULT:I = 0x0

.field public static final NT_MODE_LTEOFF:I = 0x1


# instance fields
.field protected ACTION_PREFERRED_NETWORK_GET:Ljava/lang/String;

.field protected ACTION_PREFERRED_NETWORK_SET:Ljava/lang/String;

.field protected EXTRA_NETWORK_TYPE:Ljava/lang/String;

.field isIntentDuplicate:Z

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mSetNetworkType:I

.field protected mTypeGet:I

.field protected mTypeSet:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    const-string v0, "SetNetworkMode_LTE"

    iput-object v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->ACTION_PREFERRED_NETWORK_SET:Ljava/lang/String;

    .line 21
    const-string v0, "GetNetworkMode_LTE"

    iput-object v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->ACTION_PREFERRED_NETWORK_GET:Ljava/lang/String;

    .line 22
    const-string v0, "NetworkType"

    iput-object v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->EXTRA_NETWORK_TYPE:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/lge/telephony/LgePreferredNetwork;->mTypeGet:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->mTypeSet:I

    .line 37
    iput-boolean v1, p0, Lcom/lge/telephony/LgePreferredNetwork;->isIntentDuplicate:Z

    .line 38
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    iput v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->mSetNetworkType:I

    .line 40
    new-instance v0, Lcom/lge/telephony/LgePreferredNetwork$1;

    invoke-direct {v0, p0}, Lcom/lge/telephony/LgePreferredNetwork$1;-><init>(Lcom/lge/telephony/LgePreferredNetwork;)V

    iput-object v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    invoke-direct {p0, p1}, Lcom/lge/telephony/LgePreferredNetwork;->register(Lcom/android/internal/telephony/Phone;)V

    .line 55
    return-void
.end method

.method private getLteOffNetworkMode()I
    .locals 3

    .prologue
    .line 107
    const/4 v0, -0x1

    .line 108
    .local v0, "setNetworkType":I
    invoke-virtual {p0}, Lcom/lge/telephony/LgePreferredNetwork;->getPreferredNetworkMode()I

    move-result v1

    .line 110
    .local v1, "settingsNetworkMode":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 111
    const/4 v0, 0x7

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 113
    const/4 v0, 0x4

    goto :goto_0

    .line 114
    :cond_2
    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 115
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getLteOnNetworkMode()I
    .locals 3

    .prologue
    .line 88
    const/4 v0, -0x1

    .line 89
    .local v0, "setNetworkType":I
    invoke-virtual {p0}, Lcom/lge/telephony/LgePreferredNetwork;->getPreferredNetworkMode()I

    move-result v1

    .line 91
    .local v1, "settingsNetworkMode":I
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 92
    const/16 v0, 0xa

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 96
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 97
    :cond_3
    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 101
    :cond_4
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private register(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 60
    invoke-virtual {p0}, Lcom/lge/telephony/LgePreferredNetwork;->setIntentActionName()V

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lge/telephony/LgePreferredNetwork;->ACTION_PREFERRED_NETWORK_SET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/lge/telephony/LgePreferredNetwork;->ACTION_PREFERRED_NETWORK_GET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LgePreferredNetwork mPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/LgePreferredNetwork;->log(Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected controlTddstatus(II)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "networktype"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    :cond_0
    return-void
.end method

.method protected getNetworkMode()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "LTE ON/OFF getNetworkType"

    invoke-virtual {p0, v0}, Lcom/lge/telephony/LgePreferredNetwork;->log(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/telephony/LgePreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 171
    return-void
.end method

.method protected getPreferredNetworkMode()I
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 128
    .local v0, "nwMode":I
    return v0
.end method

.method protected handleGetPreferredNetworkTypeResponse(I)V
    .locals 4
    .param p1, "modemNetworkMode"    # I

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/lge/telephony/LgePreferredNetwork;->getPreferredNetworkMode()I

    move-result v0

    .line 213
    .local v0, "settingsNetworkMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteOnOffHandler: modemNetworkMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " settingsNetworkMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/LgePreferredNetwork;->log(Ljava/lang/String;)V

    .line 216
    if-ltz p1, :cond_1

    const/16 v1, 0xc

    if-gt p1, v1, :cond_1

    .line 218
    if-eq p1, v0, :cond_0

    .line 219
    move v0, p1

    .line 221
    invoke-virtual {p0, v0}, Lcom/lge/telephony/LgePreferredNetwork;->setPreferredNetworkMode(I)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-virtual {p0, v1}, Lcom/lge/telephony/LgePreferredNetwork;->setPreferredNetworkMode(I)V

    .line 226
    iget-object v1, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lge/telephony/LgePreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 175
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 178
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 179
    iget v2, p0, Lcom/lge/telephony/LgePreferredNetwork;->mSetNetworkType:I

    invoke-virtual {p0, v2}, Lcom/lge/telephony/LgePreferredNetwork;->setPreferredNetworkMode(I)V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LteOnOffHandler: mSetNetworkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/telephony/LgePreferredNetwork;->getPreferredNetworkMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/telephony/LgePreferredNetwork;->log(Ljava/lang/String;)V

    .line 182
    iget v2, p0, Lcom/lge/telephony/LgePreferredNetwork;->mTypeSet:I

    iget v3, p0, Lcom/lge/telephony/LgePreferredNetwork;->mSetNetworkType:I

    invoke-virtual {p0, v2, v3}, Lcom/lge/telephony/LgePreferredNetwork;->controlTddstatus(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    :goto_1
    iget v2, p0, Lcom/lge/telephony/LgePreferredNetwork;->mTypeSet:I

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v3}, Lcom/lge/telephony/LgePreferredNetwork;->sendResponse(ILjava/lang/Throwable;)V

    .line 190
    iput-boolean v4, p0, Lcom/lge/telephony/LgePreferredNetwork;->isIntentDuplicate:Z

    goto :goto_0

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v4}, Lcom/lge/telephony/LgePreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_1

    .line 193
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 194
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 195
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v4

    .line 197
    .local v1, "modemNetworkMode":I
    iget v2, p0, Lcom/lge/telephony/LgePreferredNetwork;->mTypeGet:I

    invoke-virtual {p0, v2, v1}, Lcom/lge/telephony/LgePreferredNetwork;->controlTddstatus(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    const-string v2, "if tddStatus is on, ignore modemNetworkMode, because tdd on is always lte only"

    invoke-virtual {p0, v2}, Lcom/lge/telephony/LgePreferredNetwork;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p0, v1}, Lcom/lge/telephony/LgePreferredNetwork;->handleGetPreferredNetworkTypeResponse(I)V

    .line 204
    .end local v1    # "modemNetworkMode":I
    :cond_3
    iget v2, p0, Lcom/lge/telephony/LgePreferredNetwork;->mTypeGet:I

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v3}, Lcom/lge/telephony/LgePreferredNetwork;->sendResponse(ILjava/lang/Throwable;)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v0, "RIL_LGEPreferredNetwork"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public reRegister(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reRegister old mPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new phone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/telephony/LgePreferredNetwork;->log(Ljava/lang/String;)V

    .line 71
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    :cond_1
    invoke-direct {p0, p1}, Lcom/lge/telephony/LgePreferredNetwork;->register(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method protected sendResponse(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 236
    return-void
.end method

.method protected setIntentActionName()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method protected setNetworkMode(I)V
    .locals 5
    .param p1, "setLteMode"    # I

    .prologue
    const/4 v4, 0x1

    .line 146
    const/4 v0, -0x1

    .line 147
    .local v0, "tempNetMode":I
    packed-switch p1, :pswitch_data_0

    .line 158
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE ON/OFF tempNetMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setLteMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/LgePreferredNetwork;->log(Ljava/lang/String;)V

    .line 159
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 166
    :goto_1
    return-void

    .line 149
    :pswitch_0
    invoke-direct {p0}, Lcom/lge/telephony/LgePreferredNetwork;->getLteOnNetworkMode()I

    move-result v0

    .line 150
    goto :goto_0

    .line 153
    :pswitch_1
    invoke-direct {p0}, Lcom/lge/telephony/LgePreferredNetwork;->getLteOffNetworkMode()I

    move-result v0

    .line 154
    goto :goto_0

    .line 162
    :cond_0
    iput v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->mSetNetworkType:I

    .line 164
    iget-object v1, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/lge/telephony/LgePreferredNetwork;->mSetNetworkType:I

    invoke-virtual {p0, v4}, Lcom/lge/telephony/LgePreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 165
    iput-boolean v4, p0, Lcom/lge/telephony/LgePreferredNetwork;->isIntentDuplicate:Z

    goto :goto_1

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setPreferredNetworkMode(I)V
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 136
    if-ltz p1, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetworkMode invalid networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/telephony/LgePreferredNetwork;->log(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/lge/telephony/LgePreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
