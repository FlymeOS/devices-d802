.class public Lcom/lge/uicc/framework/IccNotiControllerVZW;
.super Landroid/os/Handler;
.source "IccNotiControllerVZW.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;,
        Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;
    }
.end annotation


# static fields
.field public static final ACTION_VZW_DISMISS_SIM_NOTIFICATION:Ljava/lang/String; = "com.lge.sim_noti_removed"

.field private static final ACTION_VZW_NOTI_SIM_PROVISIONING_FAIL:Ljava/lang/String; = "com.lge.intent.action.VZW_NOTI_SIM_PROVISIONING_FAIL"

.field private static final ACTION_VZW_NOTI_SIM_PROVISIONING_SUCCESS:Ljava/lang/String; = "com.lge.intent.action.VZW_NOTI_SIM_PROVISIONING_SUCCESS"

.field public static final ACTION_VZW_TAP_NO_SIM_NOTIFICATION:Ljava/lang/String; = "com.lge.no_sim_noti_removed"

.field private static final NONE:I

.field private static final NO_SIM_ID:I

.field private static final PROVISIONED_SIM_ID:I

.field private static final PROVISIONING_SIM_ID:I

.field private static final UNKNOWN_SIM_ID:I

.field private static mInstance:Lcom/lge/uicc/framework/IccNotiControllerVZW;

.field private static final mTabletProduct:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

.field mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFirstTime:Z

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSkipUpdate:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    sget v0, Lcom/lge/internal/R$drawable;->stat_notify_sim_no:I

    sput v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->NO_SIM_ID:I

    .line 71
    sget v0, Lcom/lge/internal/R$drawable;->stat_notify_sim_provisioning:I

    sput v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->PROVISIONING_SIM_ID:I

    .line 72
    sget v0, Lcom/lge/internal/R$drawable;->stat_notify_sim:I

    sput v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->PROVISIONED_SIM_ID:I

    .line 73
    sget v0, Lcom/lge/internal/R$drawable;->stat_notify_sim_unknown:I

    sput v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->UNKNOWN_SIM_ID:I

    .line 87
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mTabletProduct:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    sget-object v1, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_VZW4G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    iput-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    .line 66
    sget-object v1, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->ALREADY_PROVISIONED:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    iput-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    .line 82
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mFirstTime:Z

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSkipUpdate:Z

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 124
    new-instance v1, Lcom/lge/uicc/framework/IccNotiControllerVZW$1;

    invoke-direct {v1, p0}, Lcom/lge/uicc/framework/IccNotiControllerVZW$1;-><init>(Lcom/lge/uicc/framework/IccNotiControllerVZW;)V

    iput-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    const-string v1, "create instance"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "com.lge.intent.action.VZW_NOTI_SIM_PROVISIONING_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "com.lge.intent.action.VZW_NOTI_SIM_PROVISIONING_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "com.lge.sim_noti_removed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "com.lge.no_sim_noti_removed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/lge/uicc/framework/IccNotiControllerVZW;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccNotiControllerVZW;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/uicc/framework/IccNotiControllerVZW;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccNotiControllerVZW;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSkipUpdate:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/uicc/framework/IccNotiControllerVZW;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccNotiControllerVZW;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSkipUpdate:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/uicc/framework/IccNotiControllerVZW;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccNotiControllerVZW;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->updateIccNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/uicc/framework/IccNotiControllerVZW;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccNotiControllerVZW;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/uicc/framework/IccNotiControllerVZW;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccNotiControllerVZW;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->sendProvisionFailEvent()V

    return-void
.end method

.method private cancelIccProvisionTimer()V
    .locals 1

    .prologue
    .line 382
    const-string v0, "cancelIccProvisioningCheckTimer"

    invoke-static {v0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->loge(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 385
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->sendProvisionSuccessEvent()V

    .line 387
    :cond_0
    return-void
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "mPhoneNumber":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 321
    const-string v1, "mPhoneNumber is null"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    .line 325
    .end local v0    # "mPhoneNumber":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 324
    .restart local v0    # "mPhoneNumber":Ljava/lang/String;
    :cond_0
    const-string v1, "mPhoneNumber is xxxxxxxx"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    iget-object v2, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 334
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 339
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 335
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 339
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccNotiControllerVZW] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logd(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccNotiControllerVZW] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private makeNotification(I)V
    .locals 10
    .param p1, "notiIconId"    # I

    .prologue
    const/4 v9, 0x0

    .line 241
    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 242
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 315
    :goto_0
    return-void

    .line 246
    :cond_0
    sget v6, Lcom/lge/uicc/framework/IccNotiControllerVZW;->PROVISIONING_SIM_ID:I

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 247
    sget v6, Lcom/lge/uicc/framework/IccNotiControllerVZW;->PROVISIONED_SIM_ID:I

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 248
    sget v6, Lcom/lge/uicc/framework/IccNotiControllerVZW;->UNKNOWN_SIM_ID:I

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 251
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 256
    .local v3, "r":Landroid/content/res/Resources;
    const-string v5, ""

    .line 257
    .local v5, "title":Ljava/lang/String;
    const-string v4, ""

    .line 259
    .local v4, "summary":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 260
    const-string v6, "No notification"

    invoke-static {v6}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_1
    sget v6, Lcom/lge/uicc/framework/IccNotiControllerVZW;->PROVISIONING_SIM_ID:I

    if-ne p1, v6, :cond_7

    .line 263
    const-string v6, "Provisioning notification"

    invoke-static {v6}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 264
    sget v6, Lcom/lge/internal/R$string;->sim_notification_provisioning_title:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 265
    sget v6, Lcom/lge/internal/R$string;->sim_notification_provisioning_text:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 293
    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 300
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 302
    .local v1, "notification":Landroid/app/Notification;
    sget v6, Lcom/lge/uicc/framework/IccNotiControllerVZW;->NO_SIM_ID:I

    if-eq p1, v6, :cond_3

    sget v6, Lcom/lge/uicc/framework/IccNotiControllerVZW;->PROVISIONING_SIM_ID:I

    if-eq p1, v6, :cond_3

    sget v6, Lcom/lge/uicc/framework/IccNotiControllerVZW;->UNKNOWN_SIM_ID:I

    if-ne p1, v6, :cond_6

    .line 303
    :cond_3
    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    sget-object v7, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISIONING:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    if-eq v6, v7, :cond_5

    sget-boolean v6, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mTabletProduct:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    sget-object v7, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISION_FAILED:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    if-eq v6, v7, :cond_5

    :cond_4
    sget-boolean v6, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mTabletProduct:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v7, :cond_6

    .line 308
    :cond_5
    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 312
    :cond_6
    const/4 v6, -0x2

    iput v6, v1, Landroid/app/Notification;->priority:I

    .line 313
    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.lge.sim_noti_removed"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 314
    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v6, p1, v1, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 266
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_7
    sget v6, Lcom/lge/uicc/framework/IccNotiControllerVZW;->PROVISIONED_SIM_ID:I

    if-ne p1, v6, :cond_8

    .line 267
    const-string v6, "Provisioned notification"

    invoke-static {v6}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 268
    sget v6, Lcom/lge/internal/R$string;->sim_notification_activation_successful_title:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 269
    sget v6, Lcom/lge/internal/R$string;->sim_notification_activation_successful_text:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 270
    :cond_8
    sget v6, Lcom/lge/uicc/framework/IccNotiControllerVZW;->UNKNOWN_SIM_ID:I

    if-ne p1, v6, :cond_c

    .line 271
    const-string v6, "Unknown SIM notification"

    invoke-static {v6}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 272
    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    sget-object v7, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_VZW3G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v7, :cond_a

    .line 273
    :cond_9
    sget v6, Lcom/lge/internal/R$string;->sim_notification_unreadable_sim_title:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 274
    sget v6, Lcom/lge/internal/R$string;->sim_notification_unreadable_sim_text:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 275
    :cond_a
    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    sget-object v7, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_NON_VZW:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    if-ne v6, v7, :cond_b

    .line 276
    sget v6, Lcom/lge/internal/R$string;->sim_notification_non_vzw_sim_title:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 277
    const-string v4, ""

    goto/16 :goto_1

    .line 278
    :cond_b
    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    sget-object v7, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISION_FAILED:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    if-ne v6, v7, :cond_2

    .line 279
    sget v6, Lcom/lge/internal/R$string;->sim_notification_activation_failed_title:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 280
    sget v6, Lcom/lge/internal/R$string;->sim_notification_activation_failed_text:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 282
    :cond_c
    sget v6, Lcom/lge/uicc/framework/IccNotiControllerVZW;->NO_SIM_ID:I

    if-ne p1, v6, :cond_d

    .line 283
    const-string v6, "No SIM notification"

    invoke-static {v6}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 284
    sget v6, Lcom/lge/internal/R$string;->sim_notification_nosim_tapping_title:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 285
    sget v6, Lcom/lge/internal/R$string;->sim_notification_nosim_tapping_text:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 286
    iget-object v6, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.lge.no_sim_noti_removed"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    .line 288
    :cond_d
    const-string v6, "invalid IconId"

    invoke-static {v6}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private registerIccProvisionTimer()V
    .locals 6

    .prologue
    .line 368
    const-string v0, "registerIccProvisioningCheckTimer"

    invoke-static {v0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->loge(Ljava/lang/String;)V

    .line 369
    new-instance v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$2;

    const-wide/32 v2, 0x493e0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/uicc/framework/IccNotiControllerVZW$2;-><init>(Lcom/lge/uicc/framework/IccNotiControllerVZW;JJ)V

    iput-object v0, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 378
    iget-object v0, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 379
    return-void
.end method

.method private sendProvisionFailEvent()V
    .locals 2

    .prologue
    .line 389
    const-string v1, "Send ACTION_PROVSIONING_FAIL"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->loge(Ljava/lang/String;)V

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.VZW_NOTI_SIM_PROVISIONING_FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "intent_uicc_provisioning_fail":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    sget-object v1, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISION_FAILED:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    iput-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    .line 393
    return-void
.end method

.method private sendProvisionSuccessEvent()V
    .locals 2

    .prologue
    .line 396
    const-string v1, "Send ACTION_PROVSIONING_SUCCESS"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->loge(Ljava/lang/String;)V

    .line 397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.VZW_NOTI_SIM_PROVISIONING_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "intent_uicc_provisioning_success":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 399
    sget-object v1, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISION_SUCCESS:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    iput-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    .line 400
    return-void
.end method

.method protected static setup()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "VZW"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mTabletProduct:Z

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    sget-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mInstance:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;

    invoke-direct {v0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mInstance:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    goto :goto_0
.end method

.method private final updateIccNotification()V
    .locals 3

    .prologue
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateIccNotification simState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mCardProvisionState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "mSimIconId":I
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    .line 211
    const-string v1, "Set NO_SIM_ID!!!"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 212
    sget v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->NO_SIM_ID:I

    .line 236
    :goto_0
    invoke-direct {p0, v0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->makeNotification(I)V

    .line 238
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 214
    :cond_1
    const-string v1, "Set default SIM_ID(0)!!!"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    sget-object v2, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_VZW3G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    sget-object v2, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_NON_VZW:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    if-ne v1, v2, :cond_4

    .line 216
    :cond_3
    const-string v1, "Set UNKNOWN_SIM_ID!!!"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 217
    sget v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->UNKNOWN_SIM_ID:I

    goto :goto_0

    .line 218
    :cond_4
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    sget-object v2, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_VZW4G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    if-ne v1, v2, :cond_8

    .line 219
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    sget-object v2, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISIONING:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    if-ne v1, v2, :cond_5

    .line 220
    const-string v1, "Set PROVISIONING_SIM_ID!!!"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 221
    sget v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->PROVISIONING_SIM_ID:I

    goto :goto_0

    .line 222
    :cond_5
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    sget-object v2, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISION_FAILED:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    if-ne v1, v2, :cond_6

    .line 223
    const-string v1, "Set UNKNOWN_SIM_ID by PROVISION_FAILED!!!"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 224
    sget v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->UNKNOWN_SIM_ID:I

    goto :goto_0

    .line 225
    :cond_6
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    sget-object v2, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISION_SUCCESS:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    if-ne v1, v2, :cond_7

    .line 226
    const-string v1, "Set PROVISIONED_SIM_ID!!!"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 227
    sget v0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->PROVISIONED_SIM_ID:I

    goto :goto_0

    .line 229
    :cond_7
    const-string v1, "Set default SIM_ID(0) by CardProvisionState.ALREADY_PROVISIONED & ACTION_VZW_DISMISS_SIM_NOTIFICATION.. etc!!!"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_8
    const-string v1, "Don\'t Make SIM Nofitication!!!"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSimState(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    const-string v3, "ss"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "stateExtra":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimState stateExtra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 160
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SIM_REMOVED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 180
    :cond_1
    :goto_0
    const-string v3, "HPLMN_SIMTYPE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 181
    const-string v3, "ril.card_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW4G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 182
    sget-object v3, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_VZW4G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    iput-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    .line 204
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,mCardOperatorType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    .line 205
    return-void

    .line 162
    :cond_3
    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 163
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 164
    :cond_4
    const-string v3, "LOCKED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 165
    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v3, "PIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 168
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 169
    :cond_5
    const-string v3, "PUK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 170
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 171
    :cond_6
    const-string v3, "PERM_DISABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 174
    .end local v0    # "lockedReason":Ljava/lang/String;
    :cond_7
    const-string v3, "CARD_IO_ERROR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 175
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 177
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 183
    :cond_9
    const-string v3, "ril.card_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW3G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 184
    sget-object v3, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_VZW3G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    iput-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    goto/16 :goto_1

    .line 186
    :cond_a
    sget-object v3, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_NON_VZW:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    iput-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    goto/16 :goto_1

    .line 188
    :cond_b
    const-string v3, "IMSI_M"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    const-string v3, "imsi_m.provisioned"

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "provisioned":Ljava/lang/String;
    const-string v3, "yes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 191
    iget-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    sget-object v4, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISIONING:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    if-ne v3, v4, :cond_c

    .line 192
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->cancelIccProvisionTimer()V

    goto/16 :goto_1

    .line 194
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCardOperatorType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 197
    :cond_d
    iget-boolean v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mFirstTime:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardOperatorType:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    sget-object v4, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_VZW4G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    if-ne v3, v4, :cond_2

    .line 198
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->registerIccProvisionTimer()V

    .line 199
    sget-object v3, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISIONING:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    iput-object v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCardProvisionState:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    .line 200
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW;->mFirstTime:Z

    goto/16 :goto_1
.end method
