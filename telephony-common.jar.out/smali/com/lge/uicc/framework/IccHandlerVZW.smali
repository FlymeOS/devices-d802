.class public Lcom/lge/uicc/framework/IccHandlerVZW;
.super Lcom/lge/uicc/framework/IccHandler;
.source "IccHandlerVZW.java"


# static fields
.field private static final EVENT_HPLMNWACT_LOADED:I = 0x2

.field private static final EVENT_IMSI_M_LOADED:I = 0x1

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x3

.field private static final EVENT_SET_VPE_STATE:I = 0x4

.field private static mInstance:Lcom/lge/uicc/framework/IccHandlerVZW;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccHandler;-><init>()V

    .line 50
    const-string v0, "imsi_m"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 51
    const-string v0, "hplmnwact"

    const/4 v1, 0x2

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 53
    const-string v0, "radio_state"

    const/4 v1, 0x3

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/uicc/framework/IccHandlerVZW;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method protected static setup()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "VZW"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-object v0, Lcom/lge/uicc/framework/IccHandlerVZW;->mInstance:Lcom/lge/uicc/framework/IccHandlerVZW;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/lge/uicc/framework/IccHandlerVZW;

    invoke-direct {v0}, Lcom/lge/uicc/framework/IccHandlerVZW;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/IccHandlerVZW;->mInstance:Lcom/lge/uicc/framework/IccHandlerVZW;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 62
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Lcom/lge/uicc/framework/IccHandler;->handleMessage(Landroid/os/Message;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    const-string v3, "EVENT_IMSI_M_LOADED"

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 65
    const-string v3, "imsi_m"

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    const-string v3, "Error: imsi_m is not valid"

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/IccHandlerVZW;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    const-string v3, "IMSI_M"

    invoke-static {v3, v5}, Lcom/lge/uicc/framework/IccTools;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_1
    const-string v3, "EVENT_HPLMNWACT_LOADED"

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 74
    const-string v3, "hplmnwact"

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    const-string v3, "Error: hplmnwact is not valid"

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/IccHandlerVZW;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    const-string v3, "HPLMN_SIMTYPE"

    invoke-static {v3, v5}, Lcom/lge/uicc/framework/IccTools;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RADIO_STATE_CHANGED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "radio_state"

    invoke-static {v4}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 84
    const-string v3, "radio_state"

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/lge/uicc/framework/IccHandlerVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 86
    .local v0, "airplaneMode":I
    const-string v3, "proxy.sim_state"

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "READY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 87
    const-string v3, "Airplane mode is on. Update the VPE status"

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 88
    invoke-static {v6}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v2

    .line 89
    .local v2, "ril":Lcom/android/internal/telephony/RIL;
    if-eqz v2, :cond_0

    .line 90
    const/16 v3, 0x1001

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/lge/uicc/framework/IccHandlerVZW;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/telephony/RIL;->UIMInternalRequestCmd(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 99
    .end local v0    # "airplaneMode":I
    .end local v2    # "ril":Lcom/android/internal/telephony/RIL;
    :pswitch_3
    const-string v3, "EVENT_SET_VPE_STATE"

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/IccHandlerVZW;->logd(Ljava/lang/String;)V

    .line 100
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 101
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 102
    const-string v3, "initializeVPEstate OK"

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/IccHandlerVZW;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeVPEstate Fails : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/IccHandlerVZW;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
