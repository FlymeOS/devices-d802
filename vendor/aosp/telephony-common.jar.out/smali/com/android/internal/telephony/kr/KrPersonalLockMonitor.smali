.class public Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;
.super Landroid/os/Handler;
.source "KrPersonalLockMonitor.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DELAYED_REJECT_CAUSE_ACTIVATION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "KrPersonalLockMonitor"


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mNetworkStateRegistrants:Landroid/os/RegistrantList;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field private mUsimPersoFinished:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/kr/KrServiceStateTracker;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "sst"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p3, "krSst"    # Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    new-instance v1, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor$1;-><init>(Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;)V

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mUsimPersoFinished:Z

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 70
    iput-object p2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 71
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.intent.action.SIM_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->handleUsimPersonalUnlockIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->checkUsimPersonalLock(Landroid/content/Intent;)V

    return-void
.end method

.method private checkUsimPersonalLock(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 157
    iget-object v5, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyUtils;->isUsimPersoLocked(Landroid/content/Context;)Z

    move-result v1

    .line 159
    .local v1, "locked":Z
    const/4 v3, 0x0

    .line 161
    .local v3, "radioDetached":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM_PERSO_LOCKED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->log(Ljava/lang/String;)V

    .line 163
    if-eqz v1, :cond_0

    .line 164
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyUtils;->getUsimPersoImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "persoImsi":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "subscriberId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM_PERSO_IMSI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getSubscriberId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->log(Ljava/lang/String;)V

    .line 171
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mUsimPersoFinished:Z

    if-nez v5, :cond_0

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGE] disable GW sub!, setOperatorSelection isQCRIL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isQCRIL()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->log(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isQCRIL()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 179
    iget-object v5, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v6, 0x60020

    const/4 v7, 0x0

    invoke-interface {v5, v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemIntegerItem(IILandroid/os/Message;)V

    .line 185
    :goto_0
    const/4 v3, 0x1

    .line 190
    .end local v2    # "persoImsi":Ljava/lang/String;
    .end local v4    # "subscriberId":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_2

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hold Reject Cause processing :: persoLockChecked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->log(Ljava/lang/String;)V

    .line 199
    :goto_1
    return-void

    .line 182
    .restart local v2    # "persoImsi":Ljava/lang/String;
    .restart local v4    # "subscriberId":Ljava/lang/String;
    :cond_1
    const-string v5, "[LGE] dummy for InFineon "

    invoke-static {v5}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v2    # "persoImsi":Ljava/lang/String;
    .end local v4    # "subscriberId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->delayedRejectPopupActivation(Z)V

    goto :goto_1
.end method

.method private delayedRejectPopupActivation(Z)V
    .locals 4
    .param p1, "needDelay"    # Z

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayedRejectPopupActivation needDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", persoLockChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->log(Ljava/lang/String;)V

    .line 148
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    if-nez v0, :cond_0

    .line 149
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/16 v0, 0x3e8

    :goto_0
    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->sendEmptyMessageDelayed(IJ)Z

    .line 151
    :cond_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleUsimPersonalUnlockIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 109
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->isUsimPersoLocked(Landroid/content/Context;)Z

    move-result v0

    .line 111
    .local v0, "locked":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM_UNLOCKED intent received! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", locked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->log(Ljava/lang/String;)V

    .line 112
    if-eqz v0, :cond_2

    .line 113
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isQCRIL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x60021

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemIntegerItem(IILandroid/os/Message;)V

    .line 117
    :cond_0
    sput-boolean v6, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 123
    .local v1, "skipRestoringSelection":Z
    if-nez v1, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 127
    :cond_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mUsimPersoFinished:Z

    .line 131
    .end local v1    # "skipRestoringSelection":Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mUsimPersoFinished:Z

    if-eqz v2, :cond_3

    .line 132
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->delayedRejectPopupActivation(Z)V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allow Reject Cause processing after 1sec :: persoLockChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->log(Ljava/lang/String;)V

    .line 140
    :cond_3
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v0, "KrPersonalLockMonitor"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    iput-object v2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 84
    iput-object v2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 85
    iput-object v2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 87
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->log(Ljava/lang/String;)V

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 94
    :pswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LGE] EVENT_DELAYED_REJECT_CAUSE_ACTIVATION : persoLockChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->log(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
