.class public Lcom/lge/uicc/framework/IccRefreshHandler;
.super Landroid/os/Handler;
.source "IccRefreshHandler.java"


# static fields
.field private static final EVENT_PHONE_DISCONNECT:I = 0x3

.field private static final EVENT_PROXY_SIM_STATE_CHANGED:I = 0x2

.field private static final EVENT_SIM_REFRESH:I = 0x1

.field private static final EVENT_SIM_REFRESH_BY_OTA_AFTER_CALL_END:I = 0x4

.field private static mInstance:Lcom/lge/uicc/framework/IccRefreshHandler;


# instance fields
.field private isResetPhoneAfterCall:Z

.field private mContext:Landroid/content/Context;

.field private mSimState:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    const-string v1, ""

    iput-object v1, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->mSimState:Ljava/lang/String;

    .line 52
    iput-boolean v3, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->isResetPhoneAfterCall:Z

    .line 61
    invoke-static {v3}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v0

    .line 62
    .local v0, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {v0, p0, v4, v6}, Lcom/android/internal/telephony/RIL;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->mContext:Landroid/content/Context;

    .line 67
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SKT"

    aput-object v2, v1, v3

    const-string v2, "KT"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "proxy.sim_state"

    invoke-static {v1, p0, v5, v6}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccRefreshHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logd(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccRefreshHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private onSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 8
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 144
    const-string v3, "no result recieved"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->loge(Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "VZW"

    aput-object v4, v3, v5

    const-string v4, "USC"

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "csim.aid"

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    const-string v3, "com.lge.intent.action.OTA_CSIM_REFRESH_EVENT"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccTools;->broadcastIntent(Ljava/lang/String;)V

    .line 154
    const-string v3, "ota_csim_refresh_status"

    const-string v4, "REFRESHED"

    invoke-static {v3, v4}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    const-string v3, "OTA_CSIM_REFRESH_EVENT RECEIVED"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 158
    :cond_2
    iget v3, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v3, :pswitch_data_0

    .line 222
    const-string v3, "onSimRefresh with unknown operation"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_0
    const-string v3, "REFRESH_RESULT_FILE_UPDATE"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 162
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.intent.action.OTA_USIM_REFRESH_FILE_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/lge/uicc/framework/IccTools;->broadcastStickyIntent(Landroid/content/Intent;)V

    .line 165
    iget v3, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    const/16 v4, 0x2ff0

    if-ne v3, v4, :cond_0

    .line 166
    const-string v3, "com.lge.intent.action.OTA_USIM_REFRESH_FILE_UPDATED_DCM_LOCK"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccTools;->broadcastIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :pswitch_1
    const-string v3, "REFRESH_RESULT_INIT"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 174
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.intent.action.OTA_USIM_REFRESH_INIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/lge/uicc/framework/IccTools;->broadcastStickyIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 179
    :pswitch_2
    const-string v3, "REFRESH_RESULT_RESET"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 181
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.intent.action.OTA_USIM_REFRESH_TO_RESET"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/lge/uicc/framework/IccTools;->broadcastStickyIntent(Landroid/content/Intent;)V

    .line 183
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SKT"

    aput-object v4, v3, v5

    const-string v4, "KT"

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 185
    .local v1, "a":Landroid/app/ActivityManager;
    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 187
    .local v2, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v2, :cond_3

    .line 188
    const-string v3, "RunningTaskInfo is Null"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_3
    const-string v4, "com.lge.ota.SKTUsimDownloadActivity"

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v4, "com.lge.ota.KTRegiActivity"

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 194
    :cond_4
    const-string v3, "pass OTA in IccRefreshHander......"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_5
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "KT"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_6

    .line 199
    const-string v3, "OTA Reset after the Call End"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 200
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 202
    :cond_6
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "KT"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    const-string v3, "OTA message from KT : OTA Result Activity Execute"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v0, "KTota":Landroid/content/Intent;
    const-string v3, "com.lge.ota"

    const-string v4, "com.lge.ota.KTResultActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v3, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 216
    .end local v0    # "KTota":Landroid/content/Intent;
    .end local v1    # "a":Landroid/app/ActivityManager;
    .end local v2    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_3
    const-string v3, "REFRESH_RESULT_OTA"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 217
    const-string v3, "Send SIM_REFRESH_RESET event to the module to reset the phone by user."

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 218
    const-string v3, "com.lge.intent.action.OTA_USIM_REFRESH_TO_RESET"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccTools;->broadcastIntent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected static setup()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/lge/uicc/framework/IccRefreshHandler;->mInstance:Lcom/lge/uicc/framework/IccRefreshHandler;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/lge/uicc/framework/IccRefreshHandler;

    invoke-direct {v0}, Lcom/lge/uicc/framework/IccRefreshHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/IccRefreshHandler;->mInstance:Lcom/lge/uicc/framework/IccRefreshHandler;

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 72
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 74
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_0
    const-string v3, "EVENT_SIM_REFRESH"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 77
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SIM_REFRESH with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p0, v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->onSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_2

    .line 90
    iput-boolean v6, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->isResetPhoneAfterCall:Z

    .line 92
    const-string v3, "OTA message from KT : OTA Result Activity Execute"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, "KTota":Landroid/content/Intent;
    const-string v3, "com.lge.ota"

    const-string v4, "com.lge.ota.KTResultActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    iget-object v3, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    .end local v0    # "KTota":Landroid/content/Intent;
    :cond_2
    iput-boolean v5, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->isResetPhoneAfterCall:Z

    goto :goto_0

    .line 104
    :pswitch_2
    const-string v3, "Received PHONE_DISCONNECT event ..."

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 105
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "KT"

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    iget-boolean v3, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->isResetPhoneAfterCall:Z

    if-eqz v3, :cond_0

    .line 108
    iput-boolean v6, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->isResetPhoneAfterCall:Z

    .line 109
    const-string v3, "OTA message from KT : OTA Result Activity Execute"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .restart local v0    # "KTota":Landroid/content/Intent;
    const-string v3, "com.lge.ota"

    const-string v4, "com.lge.ota.KTResultActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    iget-object v3, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 119
    .end local v0    # "KTota":Landroid/content/Intent;
    :pswitch_3
    const-string v3, "proxy.sim_state"

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "newState":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->mSimState:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->mSimState:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->mSimState:Ljava/lang/String;

    const-string v4, "READY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "READY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 126
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    const-string v3, "OTA EVENT_PHONE_DISCONNECT registered"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    .line 136
    :cond_3
    :goto_1
    iput-object v2, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->mSimState:Ljava/lang/String;

    goto/16 :goto_0

    .line 129
    :cond_4
    iget-object v3, p0, Lcom/lge/uicc/framework/IccRefreshHandler;->mSimState:Ljava/lang/String;

    const-string v4, "NOT_READY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "NOT_READY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 131
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 132
    const-string v3, "OTA EVENT_PHONE_DISCONNECT deregistered"

    invoke-static {v3}, Lcom/lge/uicc/framework/IccRefreshHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
