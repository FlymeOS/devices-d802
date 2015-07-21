.class public Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;
.super Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.source "GsmServiceStateTrackerEx.java"


# static fields
.field private static final ACTION_MASTER_CLEAR_NOTIFICATION:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR_NOTIFICATION"

.field static final AUTH_REJECT:I = 0xff

.field protected static final EVENT_CT_NITZ_CHECK:I = 0x3f9

.field static final GPRS_SERVICE_AND_NONGPRS_SERVICE_NOT_ALLOWED:I = 0x8

.field static final GPRS_SERVICE_NOT_ALLOWED:I = 0x7

.field static final GPRS_SERVICE_NOT_ALLOWED_IN_THIS_AREA:I = 0xe

.field static final ILLEGAL_ME:I = 0x6

.field static final ILLEGAL_MS:I = 0x3

.field static final IMSI_UNKNOWN_IN_HLR:I = 0x2

.field static final LA_NOT_ALLOWED:I = 0xc

.field static final NATIONAL_ROAMING_NOT_ALLOWED:I = 0xd

.field static final NETWORK_FAILURE:I = 0x11

.field static final NO_SUITABLE_CELLS_IN_LA:I = 0xf

.field static final PLMN_NOT_ALLOWED:I = 0xb

.field private static mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

.field static networkRejectPopUpDialog:Landroid/app/AlertDialog;

.field private static prevCause:I

.field static prev_mLAC:I

.field static prev_mRAC:I


# instance fields
.field private isMultiTimeZoneArea:Z

.field public mAirplaneMode:Z

.field private mCurMltRadioInfo:Ljava/lang/String;

.field private mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

.field private mLAC:I

.field private mLGIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mLastOperatorNumeric:Ljava/lang/String;

.field public mLimitedServiceState:Z

.field public mNetworkFailure:Z

.field mNetworkRejectPopUpDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field protected mNitzControl:Z

.field protected mNitzWaitingTimeout:I

.field public mPermanentReject:Z

.field private mRAC:I

.field onNetworkRejectPopUpDialogClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 76
    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->networkRejectPopUpDialog:Landroid/app/AlertDialog;

    .line 77
    const/16 v0, 0x3e7

    sput v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prevCause:I

    .line 96
    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    .line 116
    sput v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mRAC:I

    .line 118
    sput v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mLAC:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 10
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 97
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->isMultiTimeZoneArea:Z

    .line 102
    const/16 v3, 0x3a98

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzWaitingTimeout:I

    .line 103
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzControl:Z

    .line 104
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLastOperatorNumeric:Ljava/lang/String;

    .line 111
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    .line 115
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    .line 117
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLAC:I

    .line 122
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mAirplaneMode:Z

    .line 126
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPermanentReject:Z

    .line 130
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLimitedServiceState:Z

    .line 131
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNetworkFailure:Z

    .line 138
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mCurMltRadioInfo:Ljava/lang/String;

    .line 142
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLGIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1570
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$5;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$5;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->onNetworkRejectPopUpDialogClick:Landroid/content/DialogInterface$OnClickListener;

    .line 1581
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$6;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$6;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNetworkRejectPopUpDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 213
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v3, "com.lge.android.intent.action.SPN_UPDATE_REQUEST"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLGIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x8ff

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerLGERACInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    const-string v3, "CTC"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "MANAGED_TIME_SETTING"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    if-eqz v3, :cond_4

    .line 238
    const-string v3, "CTC : use mTimeZoneMonitor the first subscription, because of phone switching"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 255
    :cond_0
    :goto_0
    const-string v3, "KR"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    new-instance v3, Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-direct {v3, v4, p0, v5}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    .line 261
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->getSavedNeedFixZone()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNeedFixZoneAfterNitz:Z

    .line 262
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNeedFixZoneAfterNitz:Z

    if-eqz v3, :cond_2

    .line 263
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->getSavedZoneOffset()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mZoneOffset:I

    .line 264
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->getSavedZoneDst()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mZoneDst:Z

    .line 265
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->getSavedZoneTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mZoneTime:J

    .line 266
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->getSavedTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSavedTime:J

    .line 267
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->getSavedAtTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSavedAtTime:J

    .line 268
    const-string v3, "TimeZone correction was delayed by Phone Switching!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 271
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setSavedNeedFixZone(Z)V

    .line 272
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setSavedZoneOffset(I)V

    .line 273
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setSavedZoneDst(Z)V

    .line 274
    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setSavedZoneTime(J)V

    .line 275
    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setSavedTime(J)V

    .line 276
    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setSavedAtTime(J)V

    .line 281
    :cond_2
    const-string v3, "CTC"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 283
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->StartTimeZoneMonitor()V

    .line 301
    :cond_3
    :goto_1
    return-void

    .line 242
    :cond_4
    const-string v3, "MANAGED_TIME_SETTING"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    if-nez v3, :cond_5

    .line 244
    invoke-static {}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getDefault()Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    .line 247
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    if-eqz v3, :cond_0

    .line 248
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-virtual {p0, v3, v7, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->setServiceStateTracker(Lcom/android/internal/telephony/ServiceStateTracker;)V

    goto/16 :goto_0

    .line 285
    :cond_6
    const/4 v2, 0x0

    .line 286
    .local v2, "iActivePhoneId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    .line 287
    .local v0, "activeSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 288
    :cond_7
    const-string v3, "CTC : not use TimeZoneMonitor, because there is no active phone at create phone"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 290
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubInfoRecord;

    iget-wide v4, v3, Landroid/telephony/SubInfoRecord;->subId:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v2

    .line 291
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 292
    const-string v3, "CTC : iActiveSub == mSubscription at create phone"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->StartTimeZoneMonitor()V

    goto :goto_1

    .line 295
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CTC : the first active phone\'s PhoneId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private StartTimeZoneMonitor()V
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzControl:Z

    .line 872
    const-string v0, "CTC : StartTimeZoneMonitor"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method private StopTimeZoneMonitor()V
    .locals 2

    .prologue
    const/16 v1, 0x3f9

    .line 876
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzControl:Z

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->removeMessages(I)V

    .line 881
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzControl:Z

    .line 882
    const-string v0, "CTC : StopTimeZoneMonitor"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNeedToUpdateSpnForSubId:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method private checkRejectCause(I)Z
    .locals 1
    .param p1, "curCause"    # I

    .prologue
    .line 1520
    sget v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prevCause:I

    if-eq v0, p1, :cond_0

    .line 1521
    sput p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prevCause:I

    .line 1522
    const/4 v0, 0x1

    .line 1525
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNetworkRejectPopUpDialog(I)V
    .locals 5
    .param p1, "rejectCode"    # I

    .prologue
    .line 1534
    const-string v2, "US"

    const-string v3, "ATT"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "US"

    const-string v3, "AIO"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "US"

    const-string v3, "CRK"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const-string v3, "trf_based_att"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1538
    :cond_0
    const-string v2, "ro.factorytest"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, "FACTORY_PROPERTY":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1540
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1541
    const-string v2, "Don\'t display the Reject Pop Up in AAT mode"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1568
    .end local v0    # "FACTORY_PROPERTY":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1548
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1550
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "GsmSST"

    const-string v3, "Show Network Reject PopUp Dialog"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->rejectErrorMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lge/internal/R$string;->dlg_ok:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->onNetworkRejectPopUpDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1555
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->checkRejectCause(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1556
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->networkRejectPopUpDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->networkRejectPopUpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1557
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->networkRejectPopUpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1559
    :cond_3
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->networkRejectPopUpDialog:Landroid/app/AlertDialog;

    .line 1560
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->networkRejectPopUpDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNetworkRejectPopUpDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1561
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->networkRejectPopUpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1562
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->networkRejectPopUpDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1563
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->networkRejectPopUpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private enhanceNetworkUsability(I)V
    .locals 3
    .param p1, "rejCode"    # I

    .prologue
    const/4 v2, 0x1

    .line 1424
    const-string v0, "EU"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1425
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    if-ne p1, v0, :cond_1

    .line 1430
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->createNetworkRejectPopUpDialog(I)V

    .line 1434
    :cond_1
    const-string v0, "US"

    const-string v1, "ATT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "US"

    const-string v1, "AIO"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "US"

    const-string v1, "CRK"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "trf_based_att"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1438
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1464
    :cond_3
    :goto_0
    return-void

    .line 1443
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->createNetworkRejectPopUpDialog(I)V

    goto :goto_0

    .line 1450
    :sswitch_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLimitedServiceState:Z

    .line 1451
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->updateSpnDisplay()V

    goto :goto_0

    .line 1456
    :sswitch_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNetworkFailure:Z

    .line 1457
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->updateSpnDisplay()V

    goto :goto_0

    .line 1438
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xf -> :sswitch_1
        0x11 -> :sswitch_2
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 811
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 814
    :goto_0
    return v1

    .line 811
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private radioLogForMLT(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1638
    const-string v6, "ro.debuggable"

    const-string v8, "0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v7

    .line 1639
    .local v3, "isDebugMode":Z
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1641
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    .line 1642
    .local v4, "mltRadioInfo":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1644
    .local v5, "mltSendIntent":Z
    if-eqz v0, :cond_4

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 1646
    :try_start_0
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v4, v6, v8
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    const/4 v5, 0x1

    .line 1656
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mCurMltRadioInfo:Ljava/lang/String;

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mCurMltRadioInfo:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1657
    const-string v6, "LOGRadioInfo : logRadioInfo is equal to mCurlogRadioInfo"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1658
    const/4 v5, 0x0

    .line 1663
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOGRadioInfo : broadcast "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1665
    if-eqz v3, :cond_2

    .line 1666
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOGRadioInfo : mCurlogRadioInfo "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mCurMltRadioInfo:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1669
    :cond_2
    if-ne v5, v7, :cond_3

    .line 1670
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mCurMltRadioInfo:Ljava/lang/String;

    .line 1672
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.lge.intent.action.LOG_RADIO_INFO"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1673
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1674
    const-string v6, "exceptionType"

    const/16 v7, 0xf

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1675
    const-string v6, "ModemLogData"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mCurMltRadioInfo:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1676
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1679
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    .line 1648
    :catch_0
    move-exception v1

    .line 1649
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_1

    .line 1652
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    :cond_4
    const-string v6, "LOGRadioInfo : ar or ar.result = null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rejectErrorMessage(I)Ljava/lang/String;
    .locals 3
    .param p1, "rejectCode"    # I

    .prologue
    .line 1466
    const/4 v0, 0x0

    .line 1468
    .local v0, "message":Ljava/lang/String;
    const-string v1, "US"

    const-string v2, "ATT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "US"

    const-string v2, "AIO"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "US"

    const-string v2, "CRK"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "trf_based_att"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1472
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1517
    :goto_0
    return-object v0

    .line 1474
    :sswitch_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->imsi_unknown_hlr:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1475
    goto :goto_0

    .line 1477
    :sswitch_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->illegal_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1478
    goto :goto_0

    .line 1480
    :sswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->illegal_me:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1481
    goto :goto_0

    .line 1483
    :sswitch_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->authentication_reject:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1484
    goto :goto_0

    .line 1491
    :cond_1
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 1493
    :sswitch_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->reject_cause_IMSI_unknown_in_HLR_PrDdefault:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1494
    goto :goto_0

    .line 1496
    :sswitch_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->reject_cause_Illegal_MS_PrDdefault:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1497
    goto :goto_0

    .line 1499
    :sswitch_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->reject_cause_Illegal_ME_PrDdefault:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1500
    goto :goto_0

    .line 1502
    :sswitch_7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->reject_cause_GPRS_services_not_allowed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1503
    goto :goto_0

    .line 1505
    :sswitch_8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->reject_cause_GPRS_services_and_non_GPRS_services_not_allowed_PrDdefault:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1506
    goto/16 :goto_0

    .line 1508
    :sswitch_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->reject_cause_GPRS_services_not_allowed_in_this_PLMN:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1509
    goto/16 :goto_0

    .line 1511
    :sswitch_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->reject_cause_Auth_Reject:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1472
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0xff -> :sswitch_3
    .end sparse-switch

    .line 1491
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0xe -> :sswitch_9
        0xff -> :sswitch_a
    .end sparse-switch
.end method

.method private sendMultiTimezoneIntentCTC()V
    .locals 4

    .prologue
    .line 1009
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzControl:Z

    if-nez v2, :cond_0

    .line 1010
    const-string v2, "CTC : mNitzControl false, do not send multi time zone intent"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1023
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1014
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLastOperatorNumeric:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLastOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CTC : already sent multi time zone intent operatorNumeric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1019
    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLastOperatorNumeric:Ljava/lang/String;

    .line 1020
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.intent.action.MULTI_TIMEZONE_CT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1022
    const-string v2, "CTC : send multi time zone intent"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendNitzIntent(Z)V
    .locals 8
    .param p1, "bSetTime"    # Z

    .prologue
    const/4 v7, 0x0

    .line 909
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->getAutoTimeZone()Z

    move-result v5

    if-nez v5, :cond_2

    .line 910
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CTC : not send intent, mSS.getVoiceRegState()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " getAutoTimeZone()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->getAutoTimeZone()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 943
    :cond_1
    :goto_0
    return-void

    .line 913
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 915
    .local v2, "operatorNumeric":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_1

    .line 916
    const/4 v5, 0x3

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "mcc":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "iso":Ljava/lang/String;
    invoke-static {v0}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 919
    .local v3, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 920
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TimeZone;

    .line 921
    .local v4, "zone":Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 922
    if-eqz p1, :cond_3

    .line 923
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 925
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzControl:Z

    if-eqz v5, :cond_1

    .line 926
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->sendSingleTimezoneIntentCTC(Ljava/lang/String;)V

    goto :goto_0

    .line 929
    .end local v4    # "zone":Ljava/util/TimeZone;
    :cond_4
    const-string v5, "cn"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 930
    const-string v5, "Asia/Shanghai"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 931
    .restart local v4    # "zone":Ljava/util/TimeZone;
    if-eqz p1, :cond_5

    .line 932
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 934
    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzControl:Z

    if-eqz v5, :cond_1

    .line 935
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->sendSingleTimezoneIntentCTC(Ljava/lang/String;)V

    goto :goto_0

    .line 937
    .end local v4    # "zone":Ljava/util/TimeZone;
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 938
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzControl:Z

    if-eqz v5, :cond_1

    .line 939
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->sendMultiTimezoneIntentCTC()V

    goto :goto_0
.end method

.method private sendSingleTimezoneIntentCTC(Ljava/lang/String;)V
    .locals 10
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v9, 0x0

    .line 946
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzControl:Z

    if-nez v5, :cond_1

    .line 947
    const-string v5, "CTC : mNitzControl false, do not send single time zone intent"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 951
    const-string v5, "CTC : zoneId is empty, do not send single time zone intent"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 954
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, "operatorNumeric":Ljava/lang/String;
    const-string v2, ""

    .line 956
    .local v2, "mcc":Ljava/lang/String;
    const-string v1, ""

    .line 957
    .local v1, "lastmcc":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_3

    .line 958
    invoke-virtual {v3, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 960
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLastOperatorNumeric:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLastOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_4

    .line 961
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLastOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 963
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 965
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CTC : already sent single time zone intent mcc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 968
    :cond_5
    const-string v5, "Asia/Shanghai"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 969
    const-string v5, "CTC : zoneID is Asia/Shanghai"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 972
    :cond_6
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLastOperatorNumeric:Ljava/lang/String;

    .line 973
    move-object v4, p1

    .line 975
    .local v4, "settingZoneId":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v6, Lcom/lge/internal/R$string;->sp_time_display_mode:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/lge/internal/R$array;->time_display_mode:I

    const/4 v7, -0x1

    new-instance v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$4;

    invoke-direct {v8, p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/lge/internal/R$string;->cancel:I

    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$3;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1000
    .local v0, "guideLocalTimeSettingDialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 1001
    const-string v5, "CTC : Show popup to lead to be automatic time setting enabled"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1003
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1004
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 822
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 824
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 825
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 827
    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method private setNetwork_GPRS_State_Change()V
    .locals 3

    .prologue
    .line 1207
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLAC:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLAC:I

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    .line 1208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.ACTION_NETWORK_GRPS_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1209
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1211
    const-string v1, "rac"

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1212
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send intent with GPRS state change rac =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLAC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1218
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1216
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No need to send intent rac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLAC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateVoiceRegStateForLteSingle()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1100
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    const-string v1, "persist.radio.isroaming"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 1105
    :cond_0
    return-void
.end method

.method private useDataRegStateForLTESingleMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1048
    const-string v0, "lgu_lte_single_device"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_usim_compatibility"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    :cond_0
    const-string v0, "45006"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 1054
    :cond_1
    return-void
.end method


# virtual methods
.method protected changeDisplayRuleforCN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)[Z
    .locals 4
    .param p1, "sim_mccmnc"    # Ljava/lang/String;
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "showSpn"    # Ljava/lang/Boolean;
    .param p5, "showPlmn"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 601
    const/4 v1, 0x2

    new-array v0, v1, [Z

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v0, v3

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v0, v2

    .line 603
    .local v0, "displayrule":[Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-object v0

    .line 608
    :cond_1
    const-string v1, "CN"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 609
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    .line 610
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 611
    aput-boolean v3, v0, v3

    .line 612
    aput-boolean v2, v0, v2

    .line 618
    :cond_2
    const-string v1, "45416"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 619
    aput-boolean v2, v0, v3

    .line 620
    aput-boolean v3, v0, v2

    .line 622
    :cond_3
    const-string v1, "HK"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 623
    aput-boolean v3, v0, v3

    .line 624
    aput-boolean v2, v0, v2

    goto :goto_0
.end method

.method protected changeDisplayRuleforESAME(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)[Z
    .locals 8
    .param p1, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "showSpn"    # Ljava/lang/Boolean;
    .param p5, "showPlmn"    # Ljava/lang/Boolean;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1684
    const/4 v4, 0x2

    new-array v0, v4, [Z

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aput-boolean v4, v0, v6

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aput-boolean v4, v0, v7

    .line 1685
    .local v0, "displayrule":[Z
    const/4 v2, 0x0

    .line 1686
    .local v2, "sim_imsi":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1687
    .local v1, "oper_imsi":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 1688
    .local v3, "subscriberId":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1689
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1691
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[changeDisplayRuleforESAME] sim_imsi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oper_imsi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " regioncode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->regioncode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " plmn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showSpn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showPlmn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SubscriberId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1694
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 1705
    :goto_0
    return-object v0

    .line 1698
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1699
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1700
    aput-boolean v7, v0, v6

    .line 1701
    aput-boolean v6, v0, v7

    .line 1704
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[changeDisplayRuleforESAME] showSpn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-boolean v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showPlmn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-boolean v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected changeSpnPlmnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v17

    .line 636
    .local v17, "operator":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 637
    .local v7, "currentLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 638
    .local v8, "currentcountry":Ljava/lang/String;
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v5, v0, [C

    fill-array-data v5, :array_0

    .line 639
    .local v5, "chunghwaTrad_chars":[C
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v3, v0, [C

    fill-array-data v3, :array_1

    .line 640
    .local v3, "chunghwaSimp_chars":[C
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 641
    .local v4, "chunghwaTrad":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 642
    .local v2, "chunghwaSimp":Ljava/lang/String;
    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v24, v0

    fill-array-data v24, :array_2

    .line 643
    .local v24, "twmTrad_chars":[C
    new-instance v23, Ljava/lang/String;

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>([C)V

    .line 644
    .local v23, "twmTrad":Ljava/lang/String;
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 645
    .local v22, "twmSimp":Ljava/lang/String;
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v21, v0

    fill-array-data v21, :array_3

    .line 646
    .local v21, "tstarTrad_chars":[C
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v19, v0

    fill-array-data v19, :array_4

    .line 647
    .local v19, "tstarSimp_chars":[C
    new-instance v20, Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([C)V

    .line 648
    .local v20, "tstarTrad":Ljava/lang/String;
    new-instance v18, Ljava/lang/String;

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([C)V

    .line 649
    .local v18, "tstarSimp":Ljava/lang/String;
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v13, v0, [C

    fill-array-data v13, :array_5

    .line 650
    .local v13, "fetTrad_chars":[C
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v11, v0, [C

    fill-array-data v11, :array_6

    .line 651
    .local v11, "fetSimp_chars":[C
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([C)V

    .line 652
    .local v12, "fetTrad":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([C)V

    .line 654
    .local v10, "fetSimp":Ljava/lang/String;
    if-nez p1, :cond_0

    const/4 v14, 0x0

    .line 804
    :goto_0
    return-object v14

    .line 655
    :cond_0
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "currentLanguage: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " currentcountry:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "operator:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "name:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 656
    const-string v26, "HK"

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1

    const-string v26, "TW"

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1

    const-string v26, "CN"

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_36

    .line 657
    :cond_1
    move-object/from16 v15, p1

    .line 658
    .local v15, "new_name":Ljava/lang/String;
    if-eqz v7, :cond_35

    if-eqz v8, :cond_35

    .line 659
    const-string v26, "FAR EASTONE"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "FarEasTone"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "FarEasTon"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "FET"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "KG TELECOM"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "KGT-ONLINE"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "KGT Online"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "KGT-ONLIN"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 667
    :cond_2
    const-string v15, "Far EasTone"

    .line 714
    :cond_3
    :goto_1
    if-eqz v17, :cond_7

    const-string v26, "46000"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    const-string v26, "46002"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    const-string v26, "46007"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    const-string v26, "46008"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 715
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v25

    .line 716
    .local v25, "voiceNetworkClass":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v9

    .line 717
    .local v9, "dataNetworkClass":I
    const/4 v6, 0x0

    .line 719
    .local v6, "curNetworkClass":I
    move/from16 v0, v25

    if-eq v0, v9, :cond_5

    if-eqz v9, :cond_1c

    .line 720
    :cond_5
    move v6, v9

    .line 725
    :goto_2
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v6, v0, :cond_1d

    .line 726
    const-string v15, "CMCC"

    .line 732
    :cond_6
    :goto_3
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "changeSpnPlmnName new_ name="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 736
    .end local v6    # "curNetworkClass":I
    .end local v9    # "dataNetworkClass":I
    .end local v25    # "voiceNetworkClass":I
    :cond_7
    const-string v26, "zh"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_24

    const-string v26, "TW"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_24

    .line 737
    const-string v26, "Chunghwa"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1f

    move-object v14, v4

    .line 738
    goto/16 :goto_0

    .line 668
    :cond_8
    const-string v26, "CHUNGHWA"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_9

    const-string v26, "Chunghw"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_9

    const-string v26, "Chunghwa Telecom"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_9

    const-string v26, "Chungwa"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 673
    :cond_9
    const-string v15, "Chunghwa"

    goto/16 :goto_1

    .line 674
    :cond_a
    const-string v26, "TWN GSM"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "TW MOBILE"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "TWN MOBITAI "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "TWN TransAsia Telecom GSM"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "TW Mobil"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "TWM"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "TransAsia"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "Mobitai"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "Taiwan Mobile Co. Ltd"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "Taiwan Mobile"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 684
    :cond_b
    const-string v15, "TW Mobile"

    goto/16 :goto_1

    .line 685
    :cond_c
    if-eqz v17, :cond_d

    const-string v26, "46689"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_e

    :cond_d
    const-string v26, "VIBO"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 687
    :cond_e
    const-string v15, "T Star"

    goto/16 :goto_1

    .line 688
    :cond_f
    const-string v26, "NEW WORLD"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_10

    const-string v26, "NEW WORL"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 689
    :cond_10
    const-string v15, "CSL"

    goto/16 :goto_1

    .line 690
    :cond_11
    const-string v26, "PEOPLES"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_12

    const-string v26, "China Mobile HK"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_12

    const-string v26, "CMHK"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 693
    :cond_12
    const-string v15, "China Mobile HK"

    goto/16 :goto_1

    .line 694
    :cond_13
    const-string v26, "3-DUALBAND-"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_14

    const-string v26, "3 (2G)"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 696
    :cond_14
    const-string v15, "3(2G)"

    goto/16 :goto_1

    .line 697
    :cond_15
    const-string v26, "SmarTone"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 698
    const-string v15, "SmarToneVodafone"

    goto/16 :goto_1

    .line 699
    :cond_16
    const-string v26, "STARHUB"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 700
    const-string v15, "StarHub"

    goto/16 :goto_1

    .line 701
    :cond_17
    const-string v26, "TELKOMSE"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_18

    const-string v26, "T-SEL"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 703
    :cond_18
    const-string v15, "TELKOMSEL"

    goto/16 :goto_1

    .line 704
    :cond_19
    const-string v26, "45501"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1a

    const-string v26, "45504"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 705
    :cond_1a
    const-string v15, "CTM"

    goto/16 :goto_1

    .line 708
    :cond_1b
    const-string v26, "45404"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 709
    const-string v15, "3(2G)"

    goto/16 :goto_1

    .line 722
    .restart local v6    # "curNetworkClass":I
    .restart local v9    # "dataNetworkClass":I
    .restart local v25    # "voiceNetworkClass":I
    :cond_1c
    move/from16 v6, v25

    goto/16 :goto_2

    .line 727
    :cond_1d
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v6, v0, :cond_1e

    .line 728
    const-string v15, "CMCC 3G"

    goto/16 :goto_3

    .line 729
    :cond_1e
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v6, v0, :cond_6

    .line 730
    const-string v15, "CMCC 4G"

    goto/16 :goto_3

    .line 739
    .end local v6    # "curNetworkClass":I
    .end local v9    # "dataNetworkClass":I
    .end local v25    # "voiceNetworkClass":I
    :cond_1f
    const-string v26, "TW Mobile"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_20

    move-object/from16 v14, v23

    .line 740
    goto/16 :goto_0

    .line 741
    :cond_20
    const-string v26, "T Star"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_21

    move-object/from16 v14, v20

    .line 742
    goto/16 :goto_0

    .line 743
    :cond_21
    const-string v26, "Far EasTone"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_22

    move-object v14, v12

    .line 744
    goto/16 :goto_0

    .line 745
    :cond_22
    const-string v26, "China Mobile HK"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_23

    const-string v26, "CMCC Peoples"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_24

    .line 746
    :cond_23
    const/16 v26, 0x6

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v16, v0

    fill-array-data v16, :array_7

    .line 747
    .local v16, "new_name_chars":[C
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([C)V

    .line 748
    .local v14, "new_language_name":Ljava/lang/String;
    goto/16 :goto_0

    .line 751
    .end local v14    # "new_language_name":Ljava/lang/String;
    .end local v16    # "new_name_chars":[C
    :cond_24
    const-string v26, "zh"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_28

    const-string v26, "HK"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_28

    .line 752
    const-string v26, "China Mobile HK"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_25

    const-string v26, "CMCC Peoples"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_26

    .line 753
    :cond_25
    const/16 v26, 0x6

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v16, v0

    fill-array-data v16, :array_8

    .line 754
    .restart local v16    # "new_name_chars":[C
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([C)V

    .line 755
    .restart local v14    # "new_language_name":Ljava/lang/String;
    goto/16 :goto_0

    .line 756
    .end local v14    # "new_language_name":Ljava/lang/String;
    .end local v16    # "new_name_chars":[C
    :cond_26
    const-string v26, "CTM"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_27

    .line 757
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v16, v0

    fill-array-data v16, :array_9

    .line 758
    .restart local v16    # "new_name_chars":[C
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([C)V

    .line 759
    .restart local v14    # "new_language_name":Ljava/lang/String;
    goto/16 :goto_0

    .line 760
    .end local v14    # "new_language_name":Ljava/lang/String;
    .end local v16    # "new_name_chars":[C
    :cond_27
    const-string v26, "T Star"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_28

    move-object/from16 v14, v20

    .line 761
    goto/16 :goto_0

    .line 764
    :cond_28
    const-string v26, "zh"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_35

    const-string v26, "CN"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_35

    .line 765
    const-string v26, "China Mobile HK"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_29

    const-string v26, "CMCC Peoples"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2a

    .line 766
    :cond_29
    const/16 v26, 0x6

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v16, v0

    fill-array-data v16, :array_a

    .line 767
    .restart local v16    # "new_name_chars":[C
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([C)V

    .line 768
    .restart local v14    # "new_language_name":Ljava/lang/String;
    goto/16 :goto_0

    .line 769
    .end local v14    # "new_language_name":Ljava/lang/String;
    .end local v16    # "new_name_chars":[C
    :cond_2a
    const-string v26, "CTM"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2b

    .line 770
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v16, v0

    fill-array-data v16, :array_b

    .line 771
    .restart local v16    # "new_name_chars":[C
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([C)V

    .line 772
    .restart local v14    # "new_language_name":Ljava/lang/String;
    goto/16 :goto_0

    .line 773
    .end local v14    # "new_language_name":Ljava/lang/String;
    .end local v16    # "new_name_chars":[C
    :cond_2b
    const-string v26, "CMCC"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_2c

    const-string v26, "China Mobile"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2d

    .line 774
    :cond_2c
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v16, v0

    fill-array-data v16, :array_c

    .line 775
    .restart local v16    # "new_name_chars":[C
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([C)V

    .line 776
    .restart local v14    # "new_language_name":Ljava/lang/String;
    goto/16 :goto_0

    .line 777
    .end local v14    # "new_language_name":Ljava/lang/String;
    .end local v16    # "new_name_chars":[C
    :cond_2d
    const-string v26, "CMCC 3G"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2e

    .line 778
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v16, v0

    fill-array-data v16, :array_d

    .line 779
    .restart local v16    # "new_name_chars":[C
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v27, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " 3G"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 780
    .restart local v14    # "new_language_name":Ljava/lang/String;
    goto/16 :goto_0

    .line 781
    .end local v14    # "new_language_name":Ljava/lang/String;
    .end local v16    # "new_name_chars":[C
    :cond_2e
    const-string v26, "CMCC 4G"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2f

    .line 782
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v16, v0

    fill-array-data v16, :array_e

    .line 783
    .restart local v16    # "new_name_chars":[C
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v27, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " 4G"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 784
    .restart local v14    # "new_language_name":Ljava/lang/String;
    goto/16 :goto_0

    .line 785
    .end local v14    # "new_language_name":Ljava/lang/String;
    .end local v16    # "new_name_chars":[C
    :cond_2f
    const-string v26, "CHN-CUGSM"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_30

    const-string v26, "China Unicom"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_30

    const-string v26, "CHN-UNICOM"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_31

    .line 788
    :cond_30
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v16, v0

    fill-array-data v16, :array_f

    .line 789
    .restart local v16    # "new_name_chars":[C
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([C)V

    .line 790
    .restart local v14    # "new_language_name":Ljava/lang/String;
    goto/16 :goto_0

    .line 791
    .end local v14    # "new_language_name":Ljava/lang/String;
    .end local v16    # "new_name_chars":[C
    :cond_31
    const-string v26, "Far EasTone"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_32

    move-object v14, v10

    .line 792
    goto/16 :goto_0

    .line 793
    :cond_32
    const-string v26, "T Star"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_33

    move-object/from16 v14, v18

    .line 794
    goto/16 :goto_0

    .line 795
    :cond_33
    const-string v26, "Chunghwa"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_34

    move-object v14, v2

    .line 796
    goto/16 :goto_0

    .line 797
    :cond_34
    const-string v26, "TW Mobile"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_35

    move-object/from16 v14, v22

    .line 798
    goto/16 :goto_0

    :cond_35
    move-object v14, v15

    .line 802
    goto/16 :goto_0

    .end local v15    # "new_name":Ljava/lang/String;
    :cond_36
    move-object/from16 v14, p1

    .line 804
    goto/16 :goto_0

    .line 638
    :array_0
    .array-data 2
        0x4e2ds
        -0x7c11s
        -0x6905s
        0x4fe1s
    .end array-data

    .line 639
    :array_1
    .array-data 2
        0x4e2ds
        0x534es
        0x7535s
        0x4fe1s
    .end array-data

    .line 642
    :array_2
    .array-data 2
        0x53f0s
        0x6e7es
        0x5927s
        0x54e5s
        0x5927s
    .end array-data

    .line 645
    nop

    :array_3
    .array-data 2
        0x53f0s
        0x7063s
        0x4e4bs
        0x661fs
    .end array-data

    .line 646
    :array_4
    .array-data 2
        0x53f0s
        0x6e7es
        0x4e4bs
        0x661fs
    .end array-data

    .line 649
    :array_5
    .array-data 2
        -0x6fa0s
        0x50b3s
        -0x6905s
        0x4fe1s
    .end array-data

    .line 650
    :array_6
    .array-data 2
        -0x7024s
        0x4f20s
        0x7535s
        0x4fe1s
    .end array-data

    .line 746
    :array_7
    .array-data 2
        0x4e2ds
        0x570bs
        0x79fbs
        0x52d5s
        -0x6667s
        0x6e2fs
    .end array-data

    .line 753
    :array_8
    .array-data 2
        0x4e2ds
        0x570bs
        0x79fbs
        0x52d5s
        -0x6667s
        0x6e2fs
    .end array-data

    .line 757
    :array_9
    .array-data 2
        0x6fb3s
        -0x6a80s
        -0x6905s
        -0x75f6s
    .end array-data

    .line 766
    :array_a
    .array-data 2
        0x4e2ds
        0x56fds
        0x79fbs
        0x52a8s
        -0x6667s
        0x6e2fs
    .end array-data

    .line 770
    :array_b
    .array-data 2
        0x6fb3s
        -0x6a18s
        0x7535s
        -0x7451s
    .end array-data

    .line 774
    :array_c
    .array-data 2
        0x4e2ds
        0x56fds
        0x79fbs
        0x52a8s
    .end array-data

    .line 778
    :array_d
    .array-data 2
        0x4e2ds
        0x56fds
        0x79fbs
        0x52a8s
    .end array-data

    .line 782
    :array_e
    .array-data 2
        0x4e2ds
        0x56fds
        0x79fbs
        0x52a8s
    .end array-data

    .line 788
    :array_f
    .array-data 2
        0x4e2ds
        0x56fds
        -0x7facs
        -0x6fe6s
    .end array-data
.end method

.method protected checkCtcNitz()V
    .locals 3

    .prologue
    const/16 v2, 0x3f9

    .line 836
    const-string v0, "CTC"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzControl:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 837
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->removeMessages(I)V

    .line 840
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzWaitingTimeout:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->sendEmptyMessageDelayed(IJ)Z

    .line 842
    :cond_1
    return-void
.end method

.method protected checkHplmnTMUS(Ljava/lang/String;)Z
    .locals 7
    .param p1, "simNumeric"    # Ljava/lang/String;

    .prologue
    .line 1321
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getHomeNetworks(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    .line 1323
    .local v1, "homeNetworks":[Ljava/lang/String;
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 1324
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 1325
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1326
    const/4 v5, 0x1

    .line 1330
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "numeric":Ljava/lang/String;
    :goto_1
    return v5

    .line 1324
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "numeric":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1330
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "numeric":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected checkIndiaThaiRoaming(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "roaming"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x3

    .line 1725
    const-string v4, "gsm.sim.operator.numeric"

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v5

    int-to-long v6, v5

    const-string v5, ""

    invoke-static {v4, v6, v7, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1726
    .local v2, "simNumeric":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkIndiaThaiRoaming] simNumeric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkIndiaThaiRoaming] operatorNumeric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkIndiaThaiRoaming] roaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1730
    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1731
    .local v0, "equalsMcc":Z
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1732
    .local v1, "equalsMnc":Z
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method protected checkInvalidUsimForGSM(I)V
    .locals 3
    .param p1, "rejCode"    # I

    .prologue
    .line 1229
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->regioncode:Ljava/lang/String;

    const-string v1, "SCA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "US"

    const-string v1, "TMO"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "US"

    const-string v1, "MPCS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CA"

    const-string v1, "RGS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1231
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 1232
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPermanentReject:Z

    .line 1233
    const-string v0, "[GsmServiceStateTrackerEX]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPermanentReject : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPermanentReject:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->updateSpnDisplay()V

    .line 1237
    :cond_2
    return-void
.end method

.method protected checkNationalRoaming(Ljava/lang/String;)Z
    .locals 7
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 1306
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getHomeNetworks(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    .line 1308
    .local v1, "homeNetworks":[Ljava/lang/String;
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 1309
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 1310
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1311
    const/4 v5, 0x1

    .line 1315
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "numeric":Ljava/lang/String;
    :goto_1
    return v5

    .line 1309
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "numeric":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1315
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "numeric":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected checkNotRoamingCountryTMUS(Ljava/lang/String;)Z
    .locals 7
    .param p1, "mccCheckforTMUS"    # Ljava/lang/String;

    .prologue
    .line 1347
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getNotRoamingCountry(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    .line 1349
    .local v3, "notRoamingCountry":[Ljava/lang/String;
    if-eqz p1, :cond_1

    if-eqz v3, :cond_1

    .line 1350
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1351
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1352
    const/4 v5, 0x1

    .line 1356
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "numeric":Ljava/lang/String;
    :goto_1
    return v5

    .line 1350
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "numeric":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1356
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "numeric":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected checkNotiStateChanged()Z
    .locals 4

    .prologue
    .line 1088
    const/4 v0, 0x0

    .line 1089
    .local v0, "hasNotiStateChnaged":Z
    const-string v1, "KR"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    if-eqz v1, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->checkNotiStateChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 1094
    :cond_0
    return v0
.end method

.method protected checkRadioStateForMLT(I)V
    .locals 4
    .param p1, "code"    # I

    .prologue
    const v3, 0xc0001

    const/16 v2, 0x3fb

    .line 1602
    const/4 v0, 0x0

    const-string v1, "SUPPORT_LOG_RF_INFO"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1606
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1631
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOGRadioInfo checkRadioState : unexpected service state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1612
    :pswitch_1
    const-string v0, "LOGRadioInfo : Send Radio state data (Emergency Service)"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1613
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getModemStringItem(ILandroid/os/Message;)V

    goto :goto_0

    .line 1618
    :pswitch_2
    const-string v0, "LOGRadioInfo : Send Radio state data (Out of Service)"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1619
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getModemStringItem(ILandroid/os/Message;)V

    goto :goto_0

    .line 1623
    :pswitch_3
    const-string v0, "LOGRadioInfo : In Service"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1627
    :pswitch_4
    const-string v0, "LOGRadioInfo : In Service(Roaming)"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1606
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected checkRoamingNetworkTMUS(Ljava/lang/String;)Z
    .locals 7
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 1334
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getRoamingNetworks(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v4

    .line 1336
    .local v4, "roamingNetworks":[Ljava/lang/String;
    if-eqz p1, :cond_1

    if-eqz v4, :cond_1

    .line 1337
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1338
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1339
    const/4 v5, 0x1

    .line 1343
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "numeric":Ljava/lang/String;
    :goto_1
    return v5

    .line 1337
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "numeric":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1343
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "numeric":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected checkZoneAndMultiTimeZoneArea(Ljava/util/TimeZone;)Ljava/util/TimeZone;
    .locals 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 1032
    move-object v0, p1

    .line 1033
    .local v0, "newZone":Ljava/util/TimeZone;
    const/4 v1, 0x0

    const-string v2, "MAUNAL_TIMEZONE_SETTING_POPUP"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNeedFixZoneAfterNitz:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->isMultiTimeZoneArea:Z

    if-eqz v1, :cond_0

    .line 1037
    const-string v1, "NITZ not received in multi-time zone area!! zone will be selected thru timezone setting popup"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1038
    const/4 v0, 0x0

    .line 1039
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->isMultiTimeZoneArea:Z

    .line 1042
    :cond_0
    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterLGERACInd(Landroid/os/Handler;)V

    .line 309
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->dispose()V

    .line 312
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    .line 318
    :cond_0
    const-string v0, "MANAGED_TIME_SETTING"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    if-eqz v0, :cond_1

    .line 320
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->unsetServiceStateTracker()V

    .line 326
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNeedFixZoneAfterNitz:Z

    if-eqz v0, :cond_2

    .line 327
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNeedFixZoneAfterNitz:Z

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setSavedNeedFixZone(Z)V

    .line 328
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mZoneOffset:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setSavedZoneOffset(I)V

    .line 329
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mZoneDst:Z

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setSavedZoneDst(Z)V

    .line 330
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mZoneTime:J

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setSavedZoneTime(J)V

    .line 331
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSavedTime:J

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setSavedTime(J)V

    .line 332
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSavedAtTime:J

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setSavedAtTime(J)V

    .line 333
    const-string v0, "TimeZone correction is needed after Phone Switching!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 338
    :cond_2
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setNotification(I)V

    .line 339
    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setNotification(I)V

    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->removeMessageCtNitzCheck(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLGIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 350
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 357
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v1, :cond_3

    .line 358
    const-string v1, "GsmSST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] while being destroyed. Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v1, 0x0

    const-string v2, "MANAGED_TIME_SETTING"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    if-eqz p1, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 363
    const-string v1, "NITZ received while disposing CDMAPhone!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 365
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    if-nez v1, :cond_0

    .line 366
    invoke-static {}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getDefault()Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    .line 369
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    if-eqz v1, :cond_1

    .line 370
    const-string v1, "Save NITZ info. to restore it after phone-switching"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 371
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-static {v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->setLostNitzInfo(Landroid/os/AsyncResult;)V

    .line 377
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    .line 378
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 439
    :cond_2
    :goto_0
    return-void

    .line 384
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 436
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 387
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CTC : NITZ is not received even waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNitzWaitingTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msec."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 388
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->sendNitzIntent(Z)V

    goto :goto_0

    .line 394
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setNetwork_GPRS_State_Change()V

    goto :goto_0

    .line 398
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 399
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 401
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    aget v1, v1, v4

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLAC:I

    .line 402
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send EVENT_RAC_UPDATE_IND updated LAC =    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLAC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RAC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 406
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLAC:I

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    if-nez v1, :cond_5

    .line 407
    sget v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mLAC:I

    if-ne v1, v3, :cond_4

    sget v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mRAC:I

    if-ne v1, v3, :cond_4

    .line 408
    const-string v1, "LTE attach reject, do not reset LAC/RAC"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLAC:I

    sput v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mLAC:I

    .line 411
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    sput v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mRAC:I

    .line 412
    const-string v1, "Reset LAC/RAC because of lte reject 29/33"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :cond_5
    sget v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mLAC:I

    if-ne v1, v3, :cond_6

    sget v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mRAC:I

    if-ne v1, v3, :cond_6

    .line 416
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLAC:I

    sput v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mLAC:I

    .line 417
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    sput v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mRAC:I

    .line 418
    const-string v1, "Set first LAC/RAC value, do not send intent to DCTracker"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 420
    :cond_6
    const-string v1, "TCL"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mRAC:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    if-ne v1, v2, :cond_7

    sget v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mLAC:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLAC:I

    if-eq v1, v2, :cond_2

    .line 421
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLAC:I

    sput v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mLAC:I

    .line 422
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRAC:I

    sput v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->prev_mRAC:I

    .line 423
    const/16 v1, 0x8fe

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 431
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->radioLogForMLT(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f9 -> :sswitch_0
        0x3fb -> :sswitch_3
        0x8fe -> :sswitch_1
        0x8ff -> :sswitch_2
    .end sparse-switch
.end method

.method handleRejectCause(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "stateForRejCode"    # Ljava/lang/String;
    .param p2, "regState"    # I

    .prologue
    .line 1387
    const/4 v1, 0x0

    .line 1388
    .local v1, "result":Z
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1390
    .local v0, "rejCode":I
    const/16 v2, 0x11

    if-ne v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 1391
    :goto_0
    const-string v2, "GsmSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rejCodeIgnore = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->checkInvalidUsimForGSM(I)V

    .line 1397
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->enhanceNetworkUsability(I)V

    .line 1399
    return v1

    .line 1390
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isAirplaneMode()Z
    .locals 1

    .prologue
    .line 1223
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mAirplaneMode:Z

    return v0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 1595
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mEmergencyOnly:Z

    return v0
.end method

.method protected isIndiaThaiSIM()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 1712
    const-string v2, "gsm.sim.operator.numeric"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    int-to-long v4, v3

    const-string v3, ""

    invoke-static {v2, v4, v5, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1713
    .local v0, "simNumeric":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isIndiaThiaSIM] simNumeric: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1714
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 1715
    const-string v2, "520"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "404"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1717
    :cond_0
    const-string v1, "[isIndiaThiaSIM] return true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1718
    const/4 v1, 0x1

    .line 1721
    :cond_1
    return v1
.end method

.method protected isInvalidUSIM()Z
    .locals 1

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPermanentReject:Z

    return v0
.end method

.method protected isLimitedStateATT()Z
    .locals 1

    .prologue
    .line 1246
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLimitedServiceState:Z

    return v0
.end method

.method public isManualSelectionAvailable()Z
    .locals 2

    .prologue
    .line 1077
    const/4 v0, 0x0

    const-string v1, "KR_REJECT_CAUSE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->isManualSelectionAvailable()Z

    move-result v0

    .line 1082
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isNetworkFailureATT()Z
    .locals 1

    .prologue
    .line 1249
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNetworkFailure:Z

    return v0
.end method

.method protected notifyRoaming()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 1365
    const-string v1, "H3G"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OPEN"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EU"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "P4P"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1366
    :cond_1
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    .local v0, "simNumeric":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_3

    const-string v1, "21902"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "26006"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "22299"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "23205"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "23210"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "23420"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "24002"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "24004"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "45403"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1371
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1373
    const-string v1, "GsmSST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Roaming] [baeksm] the Roaming status is not changed - ss.opwerator :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newss.operator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1376
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1377
    const-string v1, " [Roaming] Send noti to data"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1378
    const-string v1, "GsmSST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Roaming] the Roaming status is not changed - ss.opwerator :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newss.operator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    .end local v0    # "simNumeric":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected postProcessEventNetworkStateChanged()V
    .locals 1

    .prologue
    .line 1115
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->postProcessEventNetworkStateChanged()V

    .line 1121
    :cond_0
    return-void
.end method

.method protected postProcessEventPollStateGprs(III)V
    .locals 1
    .param p1, "regState"    # I
    .param p2, "dataRegState"    # I
    .param p3, "type"    # I

    .prologue
    .line 1155
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->postProcessEventPollStateGprs(III)V

    .line 1161
    :cond_0
    return-void
.end method

.method protected postProcessEventPollStateRegistration(II)V
    .locals 1
    .param p1, "regState"    # I
    .param p2, "type"    # I

    .prologue
    .line 1143
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mEmergencyOnly:Z

    .line 1147
    :cond_0
    return-void
.end method

.method protected postProcessPollStateDone(ZZZ)V
    .locals 7
    .param p1, "hasChanged"    # Z
    .param p2, "hasGprsAttached"    # Z
    .param p3, "hasNotiStateChnaged"    # Z

    .prologue
    .line 1190
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->postProcessPollStateDone(ZZZIII)V

    .line 1197
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->checkMissingPhoneForLGU()V

    .line 1201
    :cond_1
    return-void
.end method

.method protected preProcessEventNitzTime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "nitzString"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 1129
    const/4 v0, 0x0

    const-string v1, "MANAGED_TIME_SETTING"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    if-eqz v0, :cond_0

    .line 1131
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mTimeZoneMonitor:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->receivedNitz()V

    .line 1135
    :cond_0
    return-void
.end method

.method protected preProcessPollStateDone()V
    .locals 1

    .prologue
    .line 1169
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->queryInfoForIms()V

    .line 1172
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->updateVoiceRegStateForLteSingle()V

    .line 1182
    :cond_0
    return-void
.end method

.method protected regCodeToServiceState(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 444
    const-string v2, "VZW"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LRA"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KDDI"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CTC"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KR"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v0

    .line 470
    :goto_0
    :pswitch_0
    return v0

    .line 448
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 469
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 462
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 466
    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected removeMessageCtNitzCheck(Z)V
    .locals 3
    .param p1, "bFromNitz"    # Z

    .prologue
    const/16 v2, 0x3f9

    .line 845
    const-string v0, "CTC"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    if-eqz p1, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLastOperatorNumeric:Ljava/lang/String;

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTC : rx nitz in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLastOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 852
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->removeMessages(I)V

    .line 857
    :cond_1
    return-void
.end method

.method protected resetServiceStateFlagATT()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1252
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLimitedServiceState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNetworkFailure:Z

    if-eqz v0, :cond_1

    .line 1253
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLimitedServiceState:Z

    .line 1254
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNetworkFailure:Z

    .line 1255
    const-string v0, "[GsmServiceStateTrackerEX]"

    const-string v1, "resetServiceStateFlagATT()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_1
    return-void
.end method

.method protected revertToNitzTimeZoneForCTC(Z)Z
    .locals 4
    .param p1, "bNitzUpdatedTime"    # Z

    .prologue
    const/16 v3, 0x3f9

    const/4 v0, 0x1

    .line 860
    const-string v1, "CTC"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CTC : bNitzUpdatedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasMessages(EVENT_CT_NITZ_CHECK)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->hasMessages(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 862
    if-nez p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 863
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->sendNitzIntent(Z)V

    .line 867
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected reviseNullOperatorNumericByCampedMccMnc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 1062
    const-string v1, "KR"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1063
    const-string v1, "persist.radio.camped_mccmnc"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, "propCampedMccMnc":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 1067
    const-string v1, "operator numeric is revised by camped mcc/mnc property"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1068
    move-object p1, v0

    .line 1071
    .end local v0    # "propCampedMccMnc":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method setAdditionalServiceState([Ljava/lang/String;)V
    .locals 4
    .param p1, "states"    # [Ljava/lang/String;

    .prologue
    const/16 v3, 0xb

    .line 1402
    array-length v0, p1

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    aget-object v0, p1, v3

    if-eqz v0, :cond_3

    .line 1404
    const-string v0, "US"

    const-string v1, "TMO"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "US"

    const-string v1, "MPCS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1405
    :cond_0
    const-string v0, "GsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE_DEBUG] Check 64QAM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLGServiceState:Lcom/lge/telephony/LGServiceState;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/lge/telephony/LGServiceState;->getDefault(Landroid/telephony/ServiceState;)Lcom/lge/telephony/LGServiceState;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/telephony/LGServiceState;->setCheck64QAM(I)V

    .line 1411
    :cond_1
    const-string v0, "EU"

    const-string v1, "VDF"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "COM"

    const-string v1, "VDF"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EU"

    const-string v1, "ORG"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1414
    :cond_2
    const-string v0, "GsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sspark] RAT Dual Carrier : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mLGServiceState:Lcom/lge/telephony/LGServiceState;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/lge/telephony/LGServiceState;->getDefault(Landroid/telephony/ServiceState;)Lcom/lge/telephony/LGServiceState;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/telephony/LGServiceState;->setRATDualCarrier(I)V

    .line 1420
    :cond_3
    return-void
.end method

.method protected setMultiTimeZoneArea()V
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->isMultiTimeZoneArea:Z

    .line 1029
    return-void
.end method

.method public setTimeZoneMonitor()V
    .locals 4

    .prologue
    .line 886
    const-string v2, "CTC"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    const/4 v2, 0x0

    const-string v3, "MANAGED_TIME_SETTING"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    const/4 v1, 0x0

    .line 893
    .local v1, "iActivePhoneId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    .line 894
    .local v0, "activeSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 895
    :cond_2
    const-string v2, "CTC : not use TimeZoneMonitor, because there is no active phone"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 896
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->StopTimeZoneMonitor()V

    goto :goto_0

    .line 899
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    iget-wide v2, v2, Landroid/telephony/SubInfoRecord;->subId:J

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v1

    .line 900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CTC : the first active phone\'s PhoneId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 901
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 902
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->StartTimeZoneMonitor()V

    goto :goto_0

    .line 904
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->StopTimeZoneMonitor()V

    goto :goto_0
.end method

.method protected updatePlmnForEmergencyOnly(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7
    .param p1, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z

    .prologue
    const v6, 0x104039e

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 507
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v4

    .line 509
    .local v0, "plmnInfos":[Ljava/lang/String;
    const-string v1, "AU"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 515
    :cond_0
    const-string v1, "VZW"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpnDisplay: Sim = No sim, ServiceState = OUT_OF_SERVICE, RadioState = On, set plmn=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 525
    :cond_1
    const-string v1, "KDDI"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 526
    const/4 p3, 0x0

    .line 527
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 528
    const-string v1, "updateSpnDisplay: KDDI No SIM display default string "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 532
    :cond_2
    aput-object p2, v0, v5

    .line 533
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 534
    return-object v0
.end method

.method protected updatePlmnforSPR(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 581
    const-string v1, "SPR"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    .line 582
    const-string v1, "ro.cdma.home.operator.alpha"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "operatorAlpha":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    const-string v1, "Failed to get operator alpha property for SPR"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->loge(Ljava/lang/String;)V

    .line 587
    const-string v0, "LG"

    .line 596
    .end local v0    # "operatorAlpha":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 590
    .restart local v0    # "operatorAlpha":Ljava/lang/String;
    :cond_1
    const-string v1, "Chameleon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    const-string v0, "LG"

    goto :goto_0

    .end local v0    # "operatorAlpha":Ljava/lang/String;
    :cond_2
    move-object v0, p1

    .line 596
    goto :goto_0
.end method

.method protected updateShowRules(ZLjava/lang/String;ZLjava/lang/String;)[Z
    .locals 4
    .param p1, "showPlmn"    # Z
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "showSpn"    # Z
    .param p4, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 540
    const/4 v1, 0x2

    new-array v0, v1, [Z

    aput-boolean p1, v0, v3

    aput-boolean p3, v0, v2

    .line 542
    .local v0, "showRules":[Z
    const-string v1, "KDDI"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    const/4 p1, 0x1

    .line 545
    const/4 p3, 0x0

    .line 550
    :cond_0
    const-string v1, "SBM"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 552
    const/4 p1, 0x1

    .line 553
    const/4 p3, 0x0

    .line 558
    :cond_1
    const-string v1, "CTC"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 560
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 561
    const/4 p1, 0x1

    .line 562
    const/4 p3, 0x0

    .line 572
    :cond_2
    :goto_0
    aput-boolean p1, v0, v3

    .line 573
    aput-boolean p3, v0, v2

    .line 574
    return-object v0

    .line 565
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 566
    const/4 p1, 0x1

    .line 567
    const/4 p3, 0x0

    goto :goto_0
.end method

.method protected updateSpnDisplay()V
    .locals 1

    .prologue
    .line 478
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->updateSpnDisplay()V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0
.end method

.method protected updateSpnDisplayAfterDelayTime()V
    .locals 4

    .prologue
    .line 491
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    if-nez v1, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->updateSpnDisplay()V

    .line 502
    :goto_0
    return-void

    .line 494
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 495
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
