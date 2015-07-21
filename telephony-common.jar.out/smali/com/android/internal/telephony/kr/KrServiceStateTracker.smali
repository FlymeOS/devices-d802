.class public Lcom/android/internal/telephony/kr/KrServiceStateTracker;
.super Landroid/os/Handler;
.source "KrServiceStateTracker.java"

# interfaces
.implements Lcom/lge/telephony/KrRejectCause/IRejectCauseStateListener;


# static fields
.field private static final EVENT_SKT_FA_CHG_DONE:I = 0x2

.field private static final EVENT_SKT_FA_CHG_START:I = 0x1

.field private static final EVENT_SKT_FA_LTE_CHG_DONE:I = 0x4

.field private static final EVENT_SKT_FA_LTE_CHG_START:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "KrServiceStateTracker"


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mFaChannel:Ljava/lang/String;

.field private mFaLTEChannel:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPersonalLockMonitor:Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

.field private mRejectManager:Lcom/android/internal/telephony/kr/KrRejectManager;

.field private mSpnManager:Lcom/android/internal/telephony/kr/KrSpnManager;

.field private mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "sst"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p3, "timeZoneMonitor"    # Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    new-instance v1, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 118
    iput-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 119
    iput-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    .line 122
    iput-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mSpnManager:Lcom/android/internal/telephony/kr/KrSpnManager;

    .line 125
    iput-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRejectManager:Lcom/android/internal/telephony/kr/KrRejectManager;

    .line 128
    iput-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPersonalLockMonitor:Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;

    .line 132
    iput-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    .line 136
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaLTEChannel:Ljava/lang/String;

    .line 137
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaChannel:Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 144
    iput-object p3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    .line 147
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/kr/KrRegStateNotification;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    .line 151
    new-instance v1, Lcom/android/internal/telephony/kr/KrSpnManager;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/internal/telephony/kr/KrSpnManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/kr/KrServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mSpnManager:Lcom/android/internal/telephony/kr/KrSpnManager;

    .line 155
    const-string v1, "USIM_PERSONAL_LOCK"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    new-instance v1, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/kr/KrServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPersonalLockMonitor:Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;

    .line 161
    :cond_0
    const-string v1, "KR_REJECT_CAUSE"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    new-instance v1, Lcom/android/internal/telephony/kr/KrRejectManager;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/internal/telephony/kr/KrRejectManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/kr/KrServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRejectManager:Lcom/android/internal/telephony/kr/KrRejectManager;

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRejectManager:Lcom/android/internal/telephony/kr/KrRejectManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/kr/KrRejectManager;->setRejectCauseStateListener(Lcom/lge/telephony/KrRejectCause/IRejectCauseStateListener;)V

    .line 167
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "KR"

    const-string v2, "SKT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    const-string v1, "android.intent.action.FA_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.intent.action.FA_LTE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    :cond_2
    const-string v1, "KR"

    const-string v2, "SKT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "KR"

    const-string v2, "KT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    :cond_3
    const-string v1, "android.intent.action.LG_NVITEM_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    :cond_4
    const-string v1, "KR"

    const-string v2, "LGU"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    const-string v1, "com.lge.intent.action.LTE_EMM_REJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaChannel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/kr/KrServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/kr/KrServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaChannel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaLTEChannel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/kr/KrServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/kr/KrServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaLTEChannel:Ljava/lang/String;

    return-object p1
.end method

.method private faCHGReboot()V
    .locals 8

    .prologue
    .line 306
    iget-object v5, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 308
    .local v2, "pm":Landroid/os/PowerManager;
    const-string v5, "EVENT_SKT_FA_CHG_DONE faCHGReboot++"

    invoke-static {v5}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 310
    const v5, 0x1000001a

    const-string v6, "GSMSST-FA"

    invoke-virtual {v2, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 312
    .local v0, "mWakeLockforFA":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 314
    iget-object v5, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "skt_fa_changed"

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 316
    .local v3, "rebootToast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 318
    const-string v5, "EVENT_SKT_FA_CHG_DONE skt_fa_changed display"

    invoke-static {v5}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 320
    new-instance v1, Lcom/android/internal/telephony/kr/KrServiceStateTracker$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)V

    .line 333
    .local v1, "myTask":Ljava/util/TimerTask;
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    .line 334
    .local v4, "timer":Ljava/util/Timer;
    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v1, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 335
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 537
    const-string v0, "KrServiceStateTracker"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method


# virtual methods
.method public checkNotiStateChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .locals 3
    .param p1, "oldSS"    # Landroid/telephony/ServiceState;
    .param p2, "newSS"    # Landroid/telephony/ServiceState;

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "hasNotiStateChnaged":Z
    invoke-static {p1}, Lcom/lge/telephony/LGServiceState;->isVoiceSearching(Landroid/telephony/ServiceState;)Z

    move-result v1

    invoke-static {p2}, Lcom/lge/telephony/LGServiceState;->isVoiceSearching(Landroid/telephony/ServiceState;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/lge/telephony/LGServiceState;->isDataSearching(Landroid/telephony/ServiceState;)Z

    move-result v1

    invoke-static {p2}, Lcom/lge/telephony/LGServiceState;->isDataSearching(Landroid/telephony/ServiceState;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    :cond_0
    const/4 v0, 0x1

    .line 282
    :cond_1
    return v0
.end method

.method protected clearLteRejectCauseLGU(ZIII)V
    .locals 1
    .param p1, "hasGprsAttached"    # Z
    .param p2, "voiceRegState"    # I
    .param p3, "dataRegState"    # I
    .param p4, "dataRadioTech"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRejectManager:Lcom/android/internal/telephony/kr/KrRejectManager;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRejectManager:Lcom/android/internal/telephony/kr/KrRejectManager;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/kr/KrRejectManager;->clearLteRejectCauseLGU(III)V

    .line 368
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    const-string v0, "USIM_PERSONAL_LOCK"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPersonalLockMonitor:Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPersonalLockMonitor:Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->dispose()V

    .line 197
    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPersonalLockMonitor:Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;

    .line 203
    :cond_0
    const-string v0, "KR_REJECT_CAUSE"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRejectManager:Lcom/android/internal/telephony/kr/KrRejectManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrRejectManager;->dispose()V

    .line 205
    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRejectManager:Lcom/android/internal/telephony/kr/KrRejectManager;

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->dispose()V

    .line 211
    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mSpnManager:Lcom/android/internal/telephony/kr/KrSpnManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrSpnManager;->dispose()V

    .line 216
    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mSpnManager:Lcom/android/internal/telephony/kr/KrSpnManager;

    .line 219
    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 221
    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 222
    return-void
.end method

.method firstUpdateSpnDisplyKR()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mSpnManager:Lcom/android/internal/telephony/kr/KrSpnManager;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mSpnManager:Lcom/android/internal/telephony/kr/KrSpnManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrSpnManager;->firstUpdateSpnDisplyKR()V

    .line 250
    :cond_0
    return-void
.end method

.method getModemInfoServiceStatusKR()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRejectManager:Lcom/android/internal/telephony/kr/KrRejectManager;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRejectManager:Lcom/android/internal/telephony/kr/KrRejectManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrRejectManager;->getModemInfoServiceStatusKR()V

    .line 261
    :cond_0
    return-void
.end method

.method handleChangedNotiState(Z)V
    .locals 2
    .param p1, "hasNotiStateChnaged"    # Z

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->handleNotification(Landroid/telephony/ServiceState;)V

    .line 291
    :cond_0
    return-void
.end method

.method protected handleGprsAttachForLteSingleDevice(ZI)V
    .locals 4
    .param p1, "hasGprsAttached"    # Z
    .param p2, "voiceRegState"    # I

    .prologue
    const/4 v2, 0x0

    .line 340
    if-eqz p1, :cond_1

    .line 342
    const-string v1, "lgu_lte_single_device"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "support_usim_compatibility"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    if-eqz p2, :cond_1

    .line 346
    const-string v1, "persist.radio.camped_mccmnc"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "campedMccMnc":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "campedMccMnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ril_card_operator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ril.card_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 350
    const-string v1, "LGU"

    const-string v2, "ril.card_operator"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    const-string v1, "450"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->makeNetworkAttachedEvent()V

    .line 360
    .end local v0    # "campedMccMnc":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x6002b

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 473
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 526
    :goto_0
    return-void

    .line 476
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SKT_FA_CHG_START, mFaChannel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x60006

    iget-object v4, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaChannel:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 482
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 483
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 484
    const-string v2, "Error while changing FA"

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "skt_fa_changed_fail"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 487
    .local v1, "rebootToast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 489
    .end local v1    # "rebootToast":Landroid/widget/Toast;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OK! FA Changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->faCHGReboot()V

    .line 491
    const-string v2, "EVENT_SKT_FA_CHG_DONE, faCHGReboot--"

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SKT_FA_CHG_START, mFaLTEChannel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaLTEChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 497
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaLTEChannel:Ljava/lang/String;

    const-string v3, "band5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "2"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v6, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 500
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaLTEChannel:Ljava/lang/String;

    const-string v3, "band3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "3"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v6, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 504
    :cond_2
    const-string v2, "Band error while changing FA"

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 510
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 511
    const-string v2, "Error while changing FA"

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "skt_fa_changed_fail"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 514
    .restart local v1    # "rebootToast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 516
    .end local v1    # "rebootToast":Landroid/widget/Toast;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OK! FA Changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 517
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->faCHGReboot()V

    .line 518
    const-string v2, "EVENT_SKT_FA_LTE_CHG_DONE, faCHGReboot--"

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method handleNotificationKR()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->handleNotification(Landroid/telephony/ServiceState;)V

    .line 269
    :cond_0
    return-void
.end method

.method public isManualSelectionAvailable()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRejectManager:Lcom/android/internal/telephony/kr/KrRejectManager;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRejectManager:Lcom/android/internal/telephony/kr/KrRejectManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrRejectManager;->isManualSelectionAvailable()Z

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyLteRejectCauseChanged(II)V
    .locals 0
    .param p1, "emmCause"    # I
    .param p2, "esmCause"    # I

    .prologue
    .line 533
    invoke-static {p1, p2}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->notifyLteRejectCauseChanged(II)V

    .line 534
    return-void
.end method

.method public notifyRejectCauseChanged(II)V
    .locals 0
    .param p1, "mmCause"    # I
    .param p2, "gmmCause"    # I

    .prologue
    .line 529
    invoke-static {p1, p2}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->notifyRejectCauseChanged(II)V

    .line 530
    return-void
.end method

.method public postProcessEventNetworkStateChanged()V
    .locals 2

    .prologue
    .line 396
    const/4 v0, 0x0

    const-string v1, "KR_REJECT_CAUSE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->getModemInfoServiceStatusKR()V

    .line 402
    :cond_0
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->handleNotificationKR()V

    .line 406
    :cond_1
    return-void
.end method

.method public postProcessEventPollStateGprs(III)V
    .locals 5
    .param p1, "regState"    # I
    .param p2, "dataRegState"    # I
    .param p3, "type"    # I

    .prologue
    .line 411
    const-string v3, "KT"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_0

    .line 412
    const-string v1, ""

    .line 413
    .local v1, "ota_is_running":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->isKTOTAMode(Landroid/content/Context;)Z

    move-result v2

    .line 414
    .local v2, "ota_mode":Z
    const-string v3, "gsm.lge.ota_is_running"

    const-string v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ota_is_running : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ota_mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 418
    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 419
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 420
    .local v0, "KTota":Landroid/content/Intent;
    const-string v3, "com.lge.ota"

    const-string v4, "com.lge.ota.KTNoUSIMActivityForLockScreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 422
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 426
    .end local v0    # "KTota":Landroid/content/Intent;
    .end local v1    # "ota_is_running":Ljava/lang/String;
    .end local v2    # "ota_mode":Z
    :cond_0
    return-void
.end method

.method public postProcessPollStateDone(ZZZIII)V
    .locals 2
    .param p1, "hasChanged"    # Z
    .param p2, "hasGprsAttached"    # Z
    .param p3, "hasNotiStateChnaged"    # Z
    .param p4, "voiceRegState"    # I
    .param p5, "dataRegState"    # I
    .param p6, "dataRadioTech"    # I

    .prologue
    .line 433
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->handleChangedNotiState(Z)V

    .line 442
    :goto_0
    const-string v0, "LGU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->updateSpnDisplayRoamingForLGU()V

    .line 450
    :cond_0
    if-eqz p1, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->firstUpdateSpnDisplyKR()V

    .line 457
    :cond_1
    invoke-virtual {p0, p2, p4}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->handleGprsAttachForLteSingleDevice(ZI)V

    .line 461
    const-string v0, "LGU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->clearLteRejectCauseLGU(ZIII)V

    .line 466
    :cond_2
    return-void

    .line 436
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->handleChangedNotiState(Z)V

    goto :goto_0
.end method

.method public showSearchingNotiBySimReady(Ljava/lang/String;)V
    .locals 2
    .param p1, "icc_state"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "icc_state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 376
    const-string v0, "ABSENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->setSimState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->setSimState(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 380
    const-string v0, "sim is absent"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const-string v0, "READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mRegStateNotification:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->setSimState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->setSimState(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 386
    const-string v0, "sim is ready"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateSpnDisplay()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mSpnManager:Lcom/android/internal/telephony/kr/KrSpnManager;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mSpnManager:Lcom/android/internal/telephony/kr/KrSpnManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrSpnManager;->updateSpnDisplay()V

    .line 242
    :cond_0
    return-void
.end method

.method updateSpnDisplayRoamingForLGU()V
    .locals 2

    .prologue
    .line 229
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "updateSpnDisplay() after polling"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->updateSpnDisplay()V

    .line 235
    :cond_0
    return-void
.end method
