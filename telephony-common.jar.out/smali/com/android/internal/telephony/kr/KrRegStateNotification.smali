.class public Lcom/android/internal/telephony/kr/KrRegStateNotification;
.super Ljava/lang/Object;
.source "KrRegStateNotification.java"


# static fields
.field static final CONGESTTION:I = 0x16

.field static final EPS_SERVICES_AND_NON_EPS_SERVICES_NOT_ALLOWED:I = 0x8

.field static final EPS_SERVICES_NOT_ALLOWED:I = 0x7

.field static final EPS_SERVICES_NOT_ALLOWED_IN_THIS_PLMN:I = 0xe

.field static final ESM_FAILURE:I = 0x13

.field static final ILLEGAL_ME:I = 0x6

.field static final ILLEGAL_UE:I = 0x3

.field static final IMEI_NOT_ACCEPTED:I = 0x5

.field static final IMPLICITLY_DETACHED:I = 0xa

.field static final IMSI_NUKNOWN_IN_HSS:I = 0x2

.field static final INFORMATION_ELEMENTNON_EXISTANT_OR_NOT_IMPLEMENTED:I = 0x63

.field static final INVALID_MANDATORY_INFO:I = 0x60

.field protected static final LOG_TAG:Ljava/lang/String; = "KrRegStateNotification"

.field static final LTE_AUTHENTICATION_REJECT:I = 0x54

.field static final MAC_FAILURE:I = 0x14

.field static final MESSAGE_TYPE_NONEXISTANT_OR_NOT_IMPLEMENTED:I = 0x61

.field static final MSC_TEMPORARILY_NOT_REACHABLE:I = 0x10

.field static final NETWORK_FAILURE:I = 0x11

.field static final NOT_AUTHORIZED_FOR_THIS_CSG:I = 0x19

.field static final NO_EPS_BEARER_CONTEXT_ACTIVATED:I = 0x28

.field static final NO_SUITABLE_CELLS_IN_TRACKING_AREA:I = 0xf

.field static final PLMN_NOT_ALLOWED:I = 0xb

.field static final PROTOCOL_ERROR_UNSPECIFIED:I = 0x6f

.field static final REJECTCAUSE_NOTIFICATION_ID:I = 0xc73b

.field static final ROAMING_IN_SERVICE_NOTIFICATION_ID:I = 0xc739

.field static final ROAMING_NOT_ALLOWED_IN_THIS_TRACKING_AREA:I = 0xd

.field static final SEARCHING_NOTIFICATION_ID:I = 0xc73a

.field static final SEMANTICALLY_INCORRECT_MSG:I = 0x5f

.field static final TRACKING_AREA_NOT_ALLOWED:I = 0xc

.field static final TYPE_NETWORK_SETTING:I = 0x3

.field static final TYPE_NORMAL:I = 0x1

.field static final TYPE_REBOOT:I = 0x2

.field static final UE_IDENTITY_CANNOT_BE_DERIVED_BY_THE_NERWORK:I = 0x9

.field static final UNKNOWN_OR_MISSING_APN:I = 0x1b

.field private static sGprsRejectDisplayed:Z

.field private static sGprsRejectReceived:I

.field private static sHasShownRebootNotiPopup:Z

.field private static sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGmmRejectCause:I

.field private mHasShownOperatorInfo:Z

.field private mImsiType:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLteRejectNotiMsg:Ljava/lang/String;

.field private mLteRejectNotiMsgRoaming:Ljava/lang/String;

.field private mLteRejectNotiTitle:Ljava/lang/String;

.field private mMmRejectCause:I

.field private mNotiType:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOperatorMccMnc:Ljava/lang/String;

.field private mOperatorName:Ljava/lang/String;

.field private mPrevImsiType:Ljava/lang/String;

.field private mPrevOperatorName:Ljava/lang/String;

.field private mRef:I

.field private mRejectNotiMsg:Ljava/lang/String;

.field private mRejectNotiTitle:Ljava/lang/String;

.field private mRejectNotification:Landroid/app/Notification;

.field private mRoamingInServiceNotification:Landroid/app/Notification;

.field private mSearchingNotification:Landroid/app/Notification;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private newSS:Landroid/telephony/ServiceState;

.field onRebootNotiDialogClick:Landroid/content/DialogInterface$OnClickListener;

.field private prevSS:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    sput v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectReceived:I

    .line 142
    sput-boolean v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    .line 144
    sput-boolean v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sHasShownRebootNotiPopup:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v3, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    .line 124
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    .line 125
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    .line 130
    iput-object v3, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mImsiType:Ljava/lang/String;

    .line 131
    iput-object v3, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mPrevImsiType:Ljava/lang/String;

    .line 133
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 136
    iput v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRef:I

    .line 138
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiTitle:Ljava/lang/String;

    .line 139
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    .line 140
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotiType:I

    .line 146
    iput v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mMmRejectCause:I

    .line 147
    iput v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mGmmRejectCause:I

    .line 149
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiTitle:Ljava/lang/String;

    .line 150
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    .line 151
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsgRoaming:Ljava/lang/String;

    .line 153
    new-instance v1, Lcom/android/internal/telephony/kr/KrRegStateNotification$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification$1;-><init>(Lcom/android/internal/telephony/kr/KrRegStateNotification;)V

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 837
    new-instance v1, Lcom/android/internal/telephony/kr/KrRegStateNotification$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification$2;-><init>(Lcom/android/internal/telephony/kr/KrRegStateNotification;)V

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->onRebootNotiDialogClick:Landroid/content/DialogInterface$OnClickListener;

    .line 169
    if-eqz p1, :cond_0

    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.intent.action.telephony.reboot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 176
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sHasShownRebootNotiPopup:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 74
    sput-boolean p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sHasShownRebootNotiPopup:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/kr/KrRegStateNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/kr/KrRegStateNotification;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->showRebootNotiPopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/kr/KrRegStateNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/kr/KrRegStateNotification;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->reBoot()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/kr/KrRegStateNotification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/kr/KrRegStateNotification;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancel(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 935
    const-string v0, "noti_for_all_user"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 940
    :goto_0
    return-void

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private clearAllNotification()V
    .locals 2

    .prologue
    .line 898
    const v0, 0xc739

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->cancel(I)V

    .line 899
    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    const v0, 0xc73b

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->cancel(I)V

    .line 902
    :cond_0
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    const v0, 0xc73a

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->cancel(I)V

    .line 905
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    .line 906
    return-void
.end method

.method private getAndSetOperatorInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 352
    const-string v0, "support_multi_imsi"

    invoke-static {v4, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    const-string v0, "lgu.imsi_type"

    invoke-static {v0, v4}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mImsiType:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mImsiType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mImsiType:Ljava/lang/String;

    const-string v1, "SPON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lgu_roaming_spon_noti"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    .line 363
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrevOperatorName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperatorName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 364
    return-void

    .line 357
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/kr/KrRegStateNotification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const-class v1, Lcom/android/internal/telephony/kr/KrRegStateNotification;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    .line 183
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    iget v2, v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRef:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRef:I

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance():: sInstance.mRef="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    iget v2, v2, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRef:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLteRejectCauseString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 884
    sget-object v1, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    if-nez v1, :cond_0

    .line 885
    const/4 v0, 0x0

    .line 894
    .local v0, "message":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 888
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 889
    .restart local v0    # "message":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    sget-object v1, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    iget-object v0, v1, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsgRoaming:Ljava/lang/String;

    goto :goto_0

    .line 892
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    iget-object v0, v1, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method private getRejectTypeString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 802
    packed-switch p1, :pswitch_data_0

    .line 810
    const-string v0, "NOT_AVAILABLE"

    :goto_0
    return-object v0

    .line 804
    :pswitch_0
    const-string v0, "TYPE_REBOOT"

    goto :goto_0

    .line 806
    :pswitch_1
    const-string v0, "TYPE_NETWORK_SETTING"

    goto :goto_0

    .line 808
    :pswitch_2
    const-string v0, "TYPE_NORMAL"

    goto :goto_0

    .line 802
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isImsiChanged()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 943
    const-string v2, "support_multi_imsi"

    invoke-static {v3, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 954
    :cond_0
    :goto_0
    return v1

    .line 946
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mImsiType:Ljava/lang/String;

    if-nez v2, :cond_2

    move v1, v0

    .line 947
    goto :goto_0

    .line 949
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mImsiType:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mPrevImsiType:Ljava/lang/String;

    .line 950
    const-string v2, "lgu.imsi_type"

    invoke-static {v2, v3}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mImsiType:Ljava/lang/String;

    .line 951
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mImsiType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 952
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mImsiType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mPrevImsiType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static isRoaming()Z
    .locals 3

    .prologue
    .line 876
    const-string v0, "true"

    const-string v1, "persist.radio.isroaming"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 880
    const-string v0, "KrRegStateNotification"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    return-void
.end method

.method private notify(ILandroid/app/Notification;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "noti"    # Landroid/app/Notification;

    .prologue
    const/4 v2, 0x0

    .line 927
    const-string v0, "noti_for_all_user"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 932
    :goto_0
    return-void

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static notifyLteRejectCauseChanged(II)V
    .locals 2
    .param p0, "emmCause"    # I
    .param p1, "esmCause"    # I

    .prologue
    .line 918
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LGU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    sget-object v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    if-nez v0, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->setLteRejectInfoLGU(II)V

    goto :goto_0
.end method

.method public static notifyRejectCauseChanged(II)V
    .locals 2
    .param p0, "mmCause"    # I
    .param p1, "gmmCause"    # I

    .prologue
    .line 909
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LGU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    sget-object v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    if-nez v0, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->setRejectInfoLGU(II)V

    goto :goto_0
.end method

.method private processInSvcKT()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 258
    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->getAndSetOperatorInfo()V

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->showOperatorInfoKT()V

    .line 266
    iput-boolean v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    .line 267
    const-string v0, "Show roaming operator info. since operator name changed"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    if-nez v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->showOperatorInfoKT()V

    .line 270
    iput-boolean v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    .line 271
    const-string v0, "Show roaming operator info. since it has not been shown before"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->clearAllNotification()V

    .line 275
    const-string v0, "roaming in-service notification cleared"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processInSvcLGU()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LGU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 308
    const v0, 0xc73a

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->cancel(I)V

    .line 310
    sget v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectReceived:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    sget-boolean v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    if-nez v0, :cond_2

    .line 312
    const-string v0, "Gprs reject received but not displayed now"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 313
    sget v0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectReceived:I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->setRejectInfoLGU(II)V

    .line 321
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->getAndSetOperatorInfo()V

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 323
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->showOperatorInfoLGU()V

    .line 324
    iput-boolean v3, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    .line 325
    const-string v0, "Show roaming operator info. since operator name changed"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_3
    const v0, 0xc73b

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->cancel(I)V

    .line 318
    sput v2, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectReceived:I

    .line 319
    sput-boolean v2, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    goto :goto_1

    .line 326
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    if-nez v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->showOperatorInfoLGU()V

    .line 328
    iput-boolean v3, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    .line 329
    const-string v0, "Show roaming operator info. since it has not been shown before"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->clearAllNotification()V

    .line 333
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiTitle:Ljava/lang/String;

    .line 334
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    .line 335
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsgRoaming:Ljava/lang/String;

    .line 336
    const-string v0, "roaming in-service notification cleared"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processInSvcSKT()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 281
    const-string v0, "KR"

    const-string v1, "SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->getAndSetOperatorInfo()V

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->showOperatorInfoSKT()V

    .line 289
    iput-boolean v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    .line 290
    const-string v0, "Show roaming operator info. since operator name changed"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    if-nez v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->showOperatorInfoSKT()V

    .line 293
    iput-boolean v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    .line 294
    const-string v0, "Show roaming operator info. since it has not been shown before"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->clearAllNotification()V

    .line 298
    const-string v0, "roaming in-service notification cleared"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reBoot()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 857
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    const-string v4, "lgu_roaming_reboot_toast"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 858
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v3, 0x50

    invoke-virtual {v1, v3, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 859
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 861
    new-instance v2, Lcom/android/internal/telephony/kr/KrRegStateNotification$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification$3;-><init>(Lcom/android/internal/telephony/kr/KrRegStateNotification;)V

    .line 871
    .local v2, "tt":Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 872
    .local v0, "timer":Ljava/util/Timer;
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 873
    return-void
.end method

.method private setLteRejectInfoLGU(II)V
    .locals 6
    .param p1, "emmRejectCause"    # I
    .param p2, "esmRejectCause"    # I

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 603
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LGU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLteRejectInfo() : emmRejectCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", esmRejectCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 608
    if-lez p1, :cond_5

    .line 609
    invoke-static {}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 610
    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_3

    .line 611
    :cond_2
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->setRoamingRejectNotiLGU(IIZ)V

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsgRoaming:Ljava/lang/String;

    goto :goto_0

    .line 617
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->setRoamingRejectNotiLGU(IIZ)V

    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotiType:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->showRejectNotiLGU(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 623
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->setLteRejectNotiLGU(II)V

    .line 624
    if-eq p1, v4, :cond_0

    if-eq p1, v5, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->showRejectNotiLGU(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 632
    :cond_5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiTitle:Ljava/lang/String;

    .line 633
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    .line 634
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsgRoaming:Ljava/lang/String;

    .line 635
    sput v3, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectReceived:I

    .line 636
    sput-boolean v3, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    .line 637
    const v0, 0xc73b

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->cancel(I)V

    goto :goto_0
.end method

.method private setRoamingRejectNotiLGU(IIZ)V
    .locals 7
    .param p1, "mm_reject_cause"    # I
    .param p2, "gmm_reject_cause"    # I
    .param p3, "isLte"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 713
    if-eqz p3, :cond_1

    .line 714
    move v0, p1

    .line 733
    .local v0, "rejectNumber":I
    :goto_0
    if-gtz v0, :cond_7

    .line 799
    :cond_0
    :goto_1
    return-void

    .line 716
    .end local v0    # "rejectNumber":I
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mMmRejectCause:I

    if-eq v1, p1, :cond_3

    .line 717
    if-lez p1, :cond_2

    move v0, p1

    .line 729
    .restart local v0    # "rejectNumber":I
    :goto_2
    iput p1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mMmRejectCause:I

    .line 730
    iput p2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mGmmRejectCause:I

    goto :goto_0

    .end local v0    # "rejectNumber":I
    :cond_2
    move v0, p2

    .line 717
    goto :goto_2

    .line 718
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mGmmRejectCause:I

    if-eq v1, p2, :cond_5

    .line 719
    if-lez p2, :cond_4

    move v0, p2

    .restart local v0    # "rejectNumber":I
    :goto_3
    goto :goto_2

    .end local v0    # "rejectNumber":I
    :cond_4
    move v0, p1

    goto :goto_3

    .line 726
    :cond_5
    if-lez p1, :cond_6

    move v0, p1

    .restart local v0    # "rejectNumber":I
    :goto_4
    goto :goto_2

    .end local v0    # "rejectNumber":I
    :cond_6
    move v0, p2

    goto :goto_4

    .line 737
    .restart local v0    # "rejectNumber":I
    :cond_7
    packed-switch v0, :pswitch_data_0

    .line 793
    :pswitch_0
    const-string v1, "lgu_network_reject_cause_normal_title"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiTitle:Ljava/lang/String;

    .line 794
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    .line 795
    iput v4, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotiType:I

    .line 796
    sput-boolean v3, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    goto :goto_1

    .line 743
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lgu_network_reject_cause_service_title"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiTitle:Ljava/lang/String;

    .line 744
    const-string v1, "lgu_network_reject_cause_service_msg"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    .line 745
    iput v6, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotiType:I

    .line 746
    sput-boolean v3, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    goto :goto_1

    .line 750
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lgu_network_reject_cause_data_title"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiTitle:Ljava/lang/String;

    .line 751
    const-string v1, "lgu_network_reject_cause_data_msg"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    .line 752
    iput v6, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotiType:I

    .line 753
    if-nez p3, :cond_0

    .line 754
    sput-boolean v5, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    goto/16 :goto_1

    .line 759
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lgu_network_reject_cause_data_title"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiTitle:Ljava/lang/String;

    .line 760
    const-string v1, "lgu_network_reject_cause_data_msg"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    .line 761
    iput v4, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotiType:I

    .line 762
    if-nez p3, :cond_0

    .line 763
    sput-boolean v5, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    goto/16 :goto_1

    .line 771
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lgu_network_reject_cause_normal_title"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiTitle:Ljava/lang/String;

    .line 772
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    .line 773
    iput v4, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotiType:I

    .line 774
    sput-boolean v3, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    goto/16 :goto_1

    .line 779
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lgu_network_reject_cause_temp_title"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiTitle:Ljava/lang/String;

    .line 780
    const-string v1, "lgu_network_reject_cause_temp_msg"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    .line 781
    iput v5, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotiType:I

    .line 782
    sput-boolean v3, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    goto/16 :goto_1

    .line 786
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lgu_network_reject_cause_temp_title"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiTitle:Ljava/lang/String;

    .line 787
    const-string v1, "lgu_network_reject_cause_temp_msg"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    .line 788
    iput v4, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotiType:I

    .line 789
    sput-boolean v3, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    goto/16 :goto_1

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private showOperatorInfoKT()V
    .locals 7

    .prologue
    const/high16 v3, 0x10000000

    .line 425
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "KT_ROAMING_SUCCESS_NOTIFICATION_TITLE"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$drawable;->lgu_stat_sys_roaming:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    .line 432
    const/4 v6, 0x0

    .line 433
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.lge.roamingsettings"

    const-string v1, "com.lge.roamingsettings.ktroaming.KTRoaming"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 441
    const v0, 0xc739

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->notify(ILandroid/app/Notification;)V

    .line 443
    return-void
.end method

.method private showOperatorInfoLGU()V
    .locals 7

    .prologue
    const/high16 v3, 0x10000000

    .line 372
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "UPLUS_ROAMING_SUCCESS_NOTIFICATION_TITLE"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$drawable;->lgu_stat_sys_roaming:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    .line 379
    const/4 v6, 0x0

    .line 380
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.phone"

    const-string v1, "com.android.phone.NetworkSetting"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 388
    const v0, 0xc739

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->notify(ILandroid/app/Notification;)V

    .line 390
    return-void
.end method

.method private showOperatorInfoSKT()V
    .locals 7

    .prologue
    const/high16 v3, 0x10000000

    .line 398
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "SKT_ROAMING_SUCCESS_NOTIFICATION_TITLE"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$drawable;->stat_notify_current_provider:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    .line 405
    const/4 v6, 0x0

    .line 406
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.lge.roamingsettings"

    const-string v1, "com.lge.roamingsettings.troaming.TRoamingFGK"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 415
    const v0, 0xc739

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRoamingInServiceNotification:Landroid/app/Notification;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->notify(ILandroid/app/Notification;)V

    .line 417
    return-void
.end method

.method private showRebootNotiPopup()V
    .locals 4

    .prologue
    .line 820
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    sget v3, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v2, "lgu_roaming_reboot_notice_title"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "lgu_roaming_reboot_notice_content"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "button_yes"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->onRebootNotiDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "button_no"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->onRebootNotiDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 827
    .local v0, "rebootNotiDialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 828
    const-string v1, "Show reboot notice popup"

    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 829
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 830
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 831
    invoke-static {v0}, Lcom/android/internal/telephony/LGTelephonyUtils;->makePublic(Landroid/app/Dialog;)V

    .line 832
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 835
    :cond_0
    return-void
.end method

.method private showRejectNotiLGU(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "rejectNotiTitle"    # Ljava/lang/String;
    .param p2, "rejectNotiMsg"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/high16 v3, 0x10000000

    const/4 v1, 0x0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show reject notification with "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->getRejectTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 480
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "no reject title"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 521
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    const-string v0, "manual selection mode"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 488
    sput v1, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectReceived:I

    .line 489
    sput-boolean v1, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    goto :goto_0

    .line 493
    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v4, 0x108008a

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotification:Landroid/app/Notification;

    .line 500
    const/4 v6, 0x0

    .line 501
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    packed-switch p3, :pswitch_data_0

    .line 519
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotification:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 520
    const v0, 0xc73b

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotification:Landroid/app/Notification;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 503
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.telephony.reboot"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {v0, v1, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1

    .line 507
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.phone"

    const-string v4, "com.android.phone.NetworkSetting"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1

    .line 514
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showSearchingNotiLGU()V
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 453
    const-string v0, "No USIM, do not show searching"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 469
    :goto_0
    return-void

    .line 458
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "UPLUS_ROAMING_SEARCHING_NOTIFICATION_TITLE"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "UPLUS_ROAMING_SEARCHING_NOTIFICATION_CONTENT"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$drawable;->stat_notify_netwok_search:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 467
    const v0, 0xc73a

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRef:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRef:I

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispose mRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sInstance:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    iget v1, v1, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->clearAllNotification()V

    .line 196
    const-string v0, "dispose(): clear reject cause notification"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method public getRejectCauseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    return-object v0
.end method

.method public handleNotification(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const v5, 0xc73a

    const/4 v4, 0x1

    const v3, 0xc739

    const/4 v2, 0x0

    .line 202
    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "kt_roaming_notification"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 212
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prevSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVoiceSearching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/lge/telephony/LGServiceState;->isVoiceSearching(Landroid/telephony/ServiceState;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDataSearching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/lge/telephony/LGServiceState;->isDataSearching(Landroid/telephony/ServiceState;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    .line 219
    const-string v0, "Airplane Mode : roaming in-service, searching, and reject notifiation cleared"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->clearAllNotification()V

    .line 254
    :cond_2
    :goto_1
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    goto/16 :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->isImsiChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_6

    .line 223
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->processInSvcLGU()V

    .line 224
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->processInSvcSKT()V

    .line 225
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->processInSvcKT()V

    goto :goto_1

    .line 226
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/lge/telephony/LGServiceState;->isVoiceSearching(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/lge/telephony/LGServiceState;->isDataSearching(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 228
    :cond_7
    iput-boolean v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    .line 229
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->cancel(I)V

    .line 231
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "LGU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const-string v0, "Show searching ..."

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->showSearchingNotiLGU()V

    goto :goto_1

    .line 236
    :cond_8
    iput-boolean v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    .line 237
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->cancel(I)V

    .line 239
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "LGU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 240
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->cancel(I)V

    .line 242
    :cond_9
    const-string v0, "out of service : roaming in-service and searching notification cleared"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 245
    :cond_a
    iput-boolean v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mHasShownOperatorInfo:Z

    .line 246
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->cancel(I)V

    .line 247
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "LGU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 248
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->cancel(I)V

    .line 250
    :cond_b
    const-string v0, "in-service in domestic area : roaming in-service, searching, and reject notifiation cleared"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setLteRejectNotiLGU(II)V
    .locals 2
    .param p1, "emm_reject_cause"    # I
    .param p2, "esm_reject_cause"    # I

    .prologue
    const/4 v1, 0x0

    .line 647
    if-gtz p1, :cond_0

    .line 704
    :goto_0
    return-void

    .line 651
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotiType:I

    .line 653
    sparse-switch p1, :sswitch_data_0

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPLUS_FAIL_NOTIFICATION_TITLE"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiTitle:Ljava/lang/String;

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lgu_lteemmreject"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    goto :goto_0

    .line 664
    :sswitch_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiTitle:Ljava/lang/String;

    .line 665
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    goto :goto_0

    .line 670
    :sswitch_1
    const-string v0, "lgu_lte_single_device"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    const-string v0, "UPLUS_FAIL_NOTIFICATION_TITLE"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiTitle:Ljava/lang/String;

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lgu_lteemmreject"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 674
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiTitle:Ljava/lang/String;

    .line 675
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 680
    :sswitch_2
    const-string v0, "lgu_lte_single_device"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    .line 682
    const-string v0, "UPLUS_FAIL_NOTIFICATION_TITLE"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiTitle:Ljava/lang/String;

    .line 683
    const-string v0, "lgu_lteemmreject_19_8"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 685
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiTitle:Ljava/lang/String;

    .line 686
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 689
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiTitle:Ljava/lang/String;

    .line 690
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 695
    :sswitch_3
    const-string v0, "UPLUS_FAIL_NOTIFICATION_TITLE"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiTitle:Ljava/lang/String;

    .line 696
    const-string v0, "lgt_unauthenticated"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mLteRejectNotiMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 653
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xf -> :sswitch_0
        0x11 -> :sswitch_1
        0x13 -> :sswitch_2
        0x16 -> :sswitch_0
        0x54 -> :sswitch_3
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x61 -> :sswitch_0
        0x63 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method

.method public setRejectInfoLGU(II)V
    .locals 3
    .param p1, "mmRejectCause"    # I
    .param p2, "gmmRejectCause"    # I

    .prologue
    const/4 v2, 0x0

    .line 573
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LGU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRejectInfo() : mmRejectCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gmmRejectCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 578
    if-gtz p1, :cond_2

    if-lez p2, :cond_5

    .line 579
    :cond_2
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->setRoamingRejectNotiLGU(IIZ)V

    .line 580
    const/4 v0, 0x7

    if-eq p2, v0, :cond_3

    const/16 v0, 0xe

    if-ne p2, v0, :cond_4

    .line 582
    :cond_3
    sput p2, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectReceived:I

    .line 586
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mNotiType:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->showRejectNotiLGU(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 584
    :cond_4
    sput v2, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectReceived:I

    goto :goto_1

    .line 588
    :cond_5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiTitle:Ljava/lang/String;

    .line 589
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotiMsg:Ljava/lang/String;

    .line 590
    sput v2, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectReceived:I

    .line 591
    sput-boolean v2, Lcom/android/internal/telephony/kr/KrRegStateNotification;->sGprsRejectDisplayed:Z

    .line 592
    iput v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mMmRejectCause:I

    .line 593
    iput v2, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mGmmRejectCause:I

    .line 594
    const v0, 0xc73b

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->cancel(I)V

    goto :goto_0
.end method

.method public setSimState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 551
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update mSimState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 554
    const-string v0, "cancel all notification since sim is not inserted"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->clearAllNotification()V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    .line 560
    const-string v0, "LGU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    const-string v0, "cancel all notification since non-LGU+ USIM is inserted"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 562
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->clearAllNotification()V

    .line 566
    :cond_1
    return-void
.end method

.method public showRoamingRejectNotiSKT()V
    .locals 7

    .prologue
    const/high16 v3, 0x10000000

    .line 528
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "SKT_ROAMING_FAIL_NOTIFICATION_TITLE"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "SKT_ROAMING_FAIL_NOTIFICATION_CONTENT"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x108008a

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotification:Landroid/app/Notification;

    .line 535
    const/4 v6, 0x0

    .line 536
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.phone"

    const-string v1, "com.android.phone.NetworkSetting"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotification:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 543
    const v0, 0xc73b

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification;->mRejectNotification:Landroid/app/Notification;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->notify(ILandroid/app/Notification;)V

    .line 545
    return-void
.end method
