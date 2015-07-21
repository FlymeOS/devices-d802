.class public abstract Lcom/android/internal/telephony/SMSDispatcherEx;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "SMSDispatcherEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;
    }
.end annotation


# static fields
.field protected static final ADDRESS_TRANSLATION_FAILURE:I = 0x1

.field protected static final DELIVERYPENDINGLISTFORKDDI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DOMAIN_STATUS_CS_IMS:I = 0x2

.field protected static final DOMAIN_STATUS_CS_ONLY:I = 0x0

.field protected static final DOMAIN_STATUS_IMS_ONLY:I = 0x1

.field protected static final EMERGENCY_CALL_STARTS_NOTIFICATION:I = 0x10

.field protected static final EMERGENCY_CALL_STOPS_NOTIFICATION:I = 0x20

.field protected static final EVENT_HANDLE_READ_RECEIPT_REPORT:I = 0x133

.field protected static final EVENT_RETRY_ALERT_TIMEOUT:I = 0x12d

.field protected static final EVENT_SEND_RETRY_CBMI:I = 0x131

.field protected static final EVENT_SEND_RETRY_CONFIRMED_SMS:I = 0x12e

.field protected static final EVENT_SEND_RETRY_WITHPOPUP:I = 0x130

.field protected static final EVENT_STOP_RETRY_SENDING:I = 0x12f

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0x132

.field protected static final GENERAL_PROBLEMS:I = 0x0

.field private static final MAX_SEND_RETRIES:I

.field protected static final MSG_NOT_SENT:I = 0x5

.field protected static final MSG_TOO_LONG_FORNEWORK:I = 0x4

.field protected static final NETWORK_PROBLEMS:I = 0x1

.field protected static final NO_DOMAIN_NOTIFICATION_CHANGE:I = 0xf

.field protected static final NUMBER_OF_CAUSE_CODE:I = 0x33

.field private static final SENDALLOWPACKAGE:[Ljava/lang/String;

.field static final SEND_RETRY_DELAY:I

.field protected static final SERVICE_NOT_AVAILABLE:I = 0x2

.field protected static final SERVICE_NOT_SUPPORTED:I = 0x3

.field protected static final SMS_NETWORK_FAILURE:I = 0x3

.field protected static final SMS_NOT_SUPPORTED:I = 0x64

.field protected static final SMS_ORIGINATION_DENIED:I = 0x61

.field private static final SMS_RETRY_POPUP_DISP_TIMEOUT:I = 0x2710

.field static isInProgressWithUserPermit:[Z

.field public static mSubmitIsRoaming:Z

.field public static mSubmitPriority:I

.field protected static sCBNumber:Ljava/lang/String;

.field public static sSimFull:Z


# instance fields
.field private causeCodeArray:[J

.field private mCDG2CauseCodesTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCauseCodesTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMessagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryListener:Landroid/content/DialogInterface$OnClickListener;

.field mSTrackersForRetry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mSyncronousSending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.vending"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.finsky"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcherEx;->SENDALLOWPACKAGE:[Ljava/lang/String;

    .line 199
    const-string v0, "doNotUse_AP_retry"

    invoke-static {v4, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 200
    sput v2, Lcom/android/internal/telephony/SMSDispatcherEx;->MAX_SEND_RETRIES:I

    .line 222
    :goto_0
    const-string v0, "vzw_sms_retry_scheme"

    invoke-static {v4, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 223
    const/16 v0, 0x7530

    sput v0, Lcom/android/internal/telephony/SMSDispatcherEx;->SEND_RETRY_DELAY:I

    .line 231
    :goto_1
    sput v2, Lcom/android/internal/telephony/SMSDispatcherEx;->mSubmitPriority:I

    .line 235
    sput-boolean v2, Lcom/android/internal/telephony/SMSDispatcherEx;->sSimFull:Z

    .line 239
    sput-boolean v2, Lcom/android/internal/telephony/SMSDispatcherEx;->mSubmitIsRoaming:Z

    .line 243
    const/4 v0, 0x5

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcherEx;->isInProgressWithUserPermit:[Z

    .line 272
    sput-object v4, Lcom/android/internal/telephony/SMSDispatcherEx;->sCBNumber:Ljava/lang/String;

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcherEx;->DELIVERYPENDINGLISTFORKDDI:Ljava/util/ArrayList;

    return-void

    .line 202
    :cond_0
    const-string v0, "vzw_sms_retry_scheme"

    invoke-static {v4, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 211
    sput v5, Lcom/android/internal/telephony/SMSDispatcherEx;->MAX_SEND_RETRIES:I

    goto :goto_0

    .line 214
    :cond_1
    sput v5, Lcom/android/internal/telephony/SMSDispatcherEx;->MAX_SEND_RETRIES:I

    goto :goto_0

    .line 225
    :cond_2
    const/16 v0, 0x7d0

    sput v0, Lcom/android/internal/telephony/SMSDispatcherEx;->SEND_RETRY_DELAY:I

    goto :goto_1
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    const/4 v2, 0x1

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 155
    const/16 v0, 0x33

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->causeCodeArray:[J

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/android/internal/telephony/SMSDispatcherEx;->MO_MSG_QUEUE_LIMIT:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mCauseCodesTable:Ljava/util/HashMap;

    .line 467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mCDG2CauseCodesTable:Ljava/util/HashMap;

    .line 1444
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcherEx$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcherEx$1;-><init>(Lcom/android/internal/telephony/SMSDispatcherEx;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mRetryListener:Landroid/content/DialogInterface$OnClickListener;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v1, "sms_gcf_config"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 290
    const-string v0, "SMSDispatcher(), Creator KEY_SMS_GCF_CONFIG is Defined -> AsyncronousSending"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSyncronousSending:Z

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v1, "cdma_cause_code_display"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->initializeCauseCodesHashMap()V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v1, "cdma_sms_cdg2"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->initializeCDG2CauseCodesHashMap()V

    .line 311
    :cond_1
    return-void

    .line 293
    :cond_2
    const-string v0, "SMSDispatcher(), Creator KEY_SMS_GCF_CONFIG is NOT Defined -> SyncronousSending"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 294
    const-string v0, "persist.radio.sms_sync_sending"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSyncronousSending:Z

    goto :goto_0

    .line 155
    nop

    :array_0
    .array-data 8
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x2f
        0x30
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0xff
        0x8000
        0x8001
        0x8002
        0x8003
        0x8004
        0x8005
        0x8006
        0x8007
        0x8008
        0x8009
        0x800a
        0x800b
    .end array-data
.end method

.method private cdmaCauseCodeDisplayFunc(I)V
    .locals 13
    .param p1, "errorCode"    # I

    .prologue
    .line 693
    int-to-long v2, p1

    .line 695
    .local v2, "causeCode":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cdmaCauseCodeDisplayFunc(), [SMS.MO.ERROR] causeCode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 697
    const/4 v6, 0x0

    .line 698
    .local v6, "displayCauseCode":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 699
    .local v9, "rsrc":Landroid/content/res/Resources;
    const-string v8, ""

    .line 700
    .local v8, "failReasonStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/lge/internal/R$string;->STR_res_CAUSECODE_NORMAL:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 701
    .local v5, "causeCodeStr":Ljava/lang/String;
    sget v10, Lcom/lge/internal/R$array;->STR_res_SMSCAUSECODE_NORMAL:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 703
    .local v4, "causeCodeItems":[Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcherEx;->getDisplayOfCauseCode(J)I

    move-result v6

    .line 706
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcherEx;->informTranslateCauseCode(J)I

    move-result v10

    const/16 v11, 0x33

    if-eq v10, v11, :cond_0

    .line 707
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SMS.MO.ERROR] CAUSECODE, Cause Code : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcherEx;->informTranslateCauseCode(J)I

    move-result v11

    aget-object v11, v4, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 711
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mCauseCodesTable:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 712
    if-eqz v8, :cond_1

    .line 713
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :cond_1
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v7

    .line 716
    .local v7, "e":Ljava/lang/NullPointerException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cdmaCauseCodeDisplayFunc(), [SMS.MO.ERROR] Invalid display CauseCode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDisplayOfCauseCode(J)I
    .locals 7
    .param p1, "causeCode"    # J

    .prologue
    .line 721
    const/16 v1, 0x33

    .line 722
    .local v1, "displayIndex":I
    const/4 v0, 0x0

    .local v0, "arrayIndex":I
    :goto_0
    const/16 v3, 0x33

    if-ge v0, v3, :cond_5

    .line 723
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->causeCodeArray:[J

    aget-wide v4, v3, v0

    cmp-long v3, p1, v4

    if-nez v3, :cond_4

    .line 724
    if-ltz v0, :cond_0

    const/4 v3, 0x7

    if-gt v0, v3, :cond_0

    .line 725
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 738
    .end local v1    # "displayIndex":I
    .local v2, "displayIndex":I
    :goto_2
    return v2

    .line 726
    .end local v2    # "displayIndex":I
    .restart local v1    # "displayIndex":I
    :cond_0
    const/16 v3, 0x1a

    if-ne v0, v3, :cond_1

    .line 727
    const/4 v1, 0x2

    goto :goto_1

    .line 728
    :cond_1
    const/16 v3, 0x1d

    if-ne v0, v3, :cond_2

    .line 729
    const/4 v1, 0x3

    goto :goto_1

    .line 730
    :cond_2
    const/16 v3, 0x23

    if-ne v0, v3, :cond_3

    .line 731
    const/4 v1, 0x4

    goto :goto_1

    .line 733
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 722
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v2, v1

    .line 738
    .end local v1    # "displayIndex":I
    .restart local v2    # "displayIndex":I
    goto :goto_2
.end method

.method private getSmsImsiData(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 1935
    const-string v1, ""

    .line 1937
    .local v1, "iccdImsi":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(J)Ljava/lang/String;

    move-result-object v0

    .line 1938
    .local v0, "iccd":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v2

    .line 1940
    .local v2, "imsi":Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 1941
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1942
    const-string v1, "sim2"

    .line 1950
    :goto_0
    return-object v1

    .line 1944
    :cond_0
    const-string v1, "sim1"

    goto :goto_0

    .line 1947
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSmsIsRoaming()Z
    .locals 2

    .prologue
    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMSDispatcherEx : getSmsIsRoaming(), get value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/SMSDispatcherEx;->mSubmitIsRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1576
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSubmitIsRoaming:Z

    return v0
.end method

.method private handleSendFailForCDG2(Landroid/os/AsyncResult;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v10, 0x1

    .line 1767
    const/4 v5, 0x0

    .line 1768
    .local v5, "isRetry":Z
    const/4 v3, 0x0

    .line 1770
    .local v3, "errorCode":I
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1771
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SmsResponse;

    iget v3, v7, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 1774
    :cond_0
    const/4 v2, 0x1

    .line 1776
    .local v2, "error":I
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_1

    .line 1777
    const/4 v2, 0x6

    .line 1781
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSendComplete(), [SMS.MO.CDG2] SMSDispatcher2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v9, "cdma_sms_cdg2"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1782
    move v0, v3

    .line 1783
    .local v0, "causeCode":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 1784
    .local v6, "r":Landroid/content/res/Resources;
    const-string v4, ""

    .line 1785
    .local v4, "failReasonStr":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/lge/internal/R$string;->STR_res_CAUSECODE_NORMAL:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1787
    .local v1, "causeCodeStr":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSendComplete(), [SMS.MO.CDG2] causeCode => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1789
    sparse-switch v0, :sswitch_data_0

    .line 1806
    const/4 v5, 0x1

    .line 1810
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSendComplete(), [SMS.MO.CDG2]  CDG final error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1812
    if-nez v5, :cond_2

    .line 1813
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v7, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1815
    iget-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSyncronousSending:Z

    if-eqz v7, :cond_2

    .line 1816
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->processNextPendingMessage()V

    .line 1821
    :cond_2
    return v5

    .line 1791
    :sswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/lge/internal/R$string;->sp_unknown_destination_address_SHORT:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1793
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1796
    :sswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/lge/internal/R$string;->sp_ms_originated_sms_denied_SHORT:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1798
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1801
    :sswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/lge/internal/R$string;->STR_res_SERVICENOTSUPPORTED_NORMAL:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1803
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1789
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x61 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleSendSmsForSendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1176
    .local v0, "ss":I
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->checkNotInService()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcherEx;->getNotInServiceError(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1192
    :goto_0
    return-void

    .line 1184
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSyncronousSending:Z

    if-eqz v1, :cond_1

    .line 1185
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;-><init>(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->enqueueMessageForSending(Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;)V

    goto :goto_0

    .line 1189
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method private handleUserPermitForSendRawPdu(Lcom/android/internal/telephony/SmsHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v2, 0x4

    .line 1196
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v1, "modify_check_confirm_popup_concat_message_mo"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcherEx;->inProgressConcatMoWithoutUserPermit(Lcom/android/internal/telephony/SmsHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/SMSDispatcherEx;->processUserPermitConsideringConcat(Lcom/android/internal/telephony/SmsHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private informTranslateCauseCode(J)I
    .locals 5
    .param p1, "causeCode"    # J

    .prologue
    const/16 v1, 0x33

    .line 742
    const/4 v0, 0x0

    .local v0, "arrayIndex":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 743
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->causeCodeArray:[J

    aget-wide v2, v2, v0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 747
    .end local v0    # "arrayIndex":I
    :goto_1
    return v0

    .line 742
    .restart local v0    # "arrayIndex":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 747
    goto :goto_1
.end method

.method private initializeCDG2CauseCodesHashMap()V
    .locals 4

    .prologue
    .line 469
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 470
    .local v0, "rsrc":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mCDG2CauseCodesTable:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->sp_unknown_destination_address_SHORT:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mCDG2CauseCodesTable:Ljava/util/HashMap;

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->sp_ms_originated_sms_denied_SHORT:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mCDG2CauseCodesTable:Ljava/util/HashMap;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->STR_res_SERVICENOTSUPPORTED_NORMAL:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    return-void
.end method

.method private initializeCauseCodesHashMap()V
    .locals 4

    .prologue
    .line 456
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 457
    .local v0, "rsrc":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mCauseCodesTable:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->STR_res_GENERALPROBLEMS_NORMAL:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mCauseCodesTable:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->STR_res_NETWORKPROBLEMS_NORMAL:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mCauseCodesTable:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->STR_res_SERVICENOTAVAILABLE_NORMAL:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mCauseCodesTable:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->STR_res_SERVICENOTSUPPORTED_NORMAL:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mCauseCodesTable:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->STR_res_MSGTOOLONGFORNEWORK_NORMAL:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mCauseCodesTable:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->STR_res_MSGNOTSENT_NORMAL:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    return-void
.end method

.method private isAvailableNetworkForDCN()Z
    .locals 3

    .prologue
    .line 1665
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    .line 1666
    .local v0, "curVoiceNetwork":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableNetworkForDCN, curVoiceNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1667
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 1672
    :cond_0
    const/4 v1, 0x1

    .line 1674
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDestinationFreeShortCode(Ljava/lang/String;)Z
    .locals 8
    .param p1, "destAddr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 1737
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1738
    .local v1, "rule":I
    const/4 v3, 0x0

    .line 1740
    .local v3, "smsCategory":I
    if-eq v1, v4, :cond_0

    if-ne v1, v7, :cond_3

    .line 1741
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 1742
    .local v2, "simCountryIso":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v6, :cond_2

    .line 1743
    :cond_1
    const-string v5, "Can\'t get SIM country Iso: trying network country Iso"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1744
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 1746
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v5, p1, v2}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1748
    .end local v2    # "simCountryIso":Ljava/lang/String;
    :cond_3
    if-eq v1, v6, :cond_4

    if-ne v1, v7, :cond_7

    .line 1749
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1750
    .local v0, "networkCountryIso":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v6, :cond_6

    .line 1751
    :cond_5
    const-string v5, "Can\'t get Network country Iso: trying SIM country Iso"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1752
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1754
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v5, p1, v0}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    move-result v3

    .line 1757
    .end local v0    # "networkCountryIso":Ljava/lang/String;
    :cond_7
    if-ne v3, v4, :cond_8

    .line 1758
    const-string v5, "It is a FREE short code"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1761
    :goto_0
    return v4

    :cond_8
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isDisabledSendSms(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageNames"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x19

    .line 1957
    const/4 v2, 0x0

    .line 1959
    .local v2, "isAllowPackageName":Z
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcherEx;->SENDALLOWPACKAGE:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 1960
    .local v4, "localPackageName":Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v7, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_3

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1961
    :cond_1
    const/4 v2, 0x1

    .line 1962
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMSDispatcher, isAllowSendSMS() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1968
    .end local v4    # "localPackageName":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_4

    .line 1971
    :goto_1
    return v5

    .line 1959
    .restart local v4    # "localPackageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1971
    .end local v4    # "localPackageName":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private routeRetrySendingForVzw(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v3, 0x3

    .line 659
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    const-string v1, "handleSendComplete(), Send ReTry : This is Multipart Message"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendComplete(), Send EVENT_SEND_RETRY mImsRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 663
    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 664
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 665
    .local v0, "retryMsg":Landroid/os/Message;
    sget v1, Lcom/android/internal/telephony/SMSDispatcherEx;->SEND_RETRY_DELAY:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendComplete(), Send EVENT_SEND_RETRY mRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 684
    :goto_0
    return-void

    .line 668
    .end local v0    # "retryMsg":Landroid/os/Message;
    :cond_0
    const-string v1, "handleSendComplete(), Send ReTry : This is Single part Message"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendComplete(), Send EVENT_SEND_RETRY mImsRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 670
    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v1, :cond_1

    .line 671
    const-string v1, "handleSendComplete(), First send attempt was SMS over IMS"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 673
    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 674
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 675
    .restart local v0    # "retryMsg":Landroid/os/Message;
    sget v1, Lcom/android/internal/telephony/SMSDispatcherEx;->SEND_RETRY_DELAY:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendComplete(), Send EVENT_SEND_RETRY mRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 678
    .end local v0    # "retryMsg":Landroid/os/Message;
    :cond_1
    const-string v1, "handleSendComplete(), First send attempt was SMS over 1xRTT"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 679
    const-string v1, "handleSendComplete(), Retry Popup will be occurred"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 680
    const/16 v1, 0x130

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 681
    .restart local v0    # "retryMsg":Landroid/os/Message;
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private sendE911StartDAN()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 319
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v3, "sms_dan_send"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-ne v4, v2, :cond_0

    .line 320
    const-string v2, "[sms.mo.dan] handleMessage(), receive EVENT_VOICE_CALL_STARTED"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 321
    const-string v2, "ril.cdma.emergencyCall"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "inEcm":Ljava/lang/String;
    const-string v2, "persist.radio.starte911call"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "isStartE911":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    const-string v2, "persist.radio.starte911call"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->isUiccInserted()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 333
    const-string v2, "[sms.mo.dan] UICC card is inserted into device"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 334
    const-string v2, "[sms.mo.dan] The UE is required to send the 911 Start Notification"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 335
    const-string v2, "[sms.mo.dan] UE Enters Emergency Mode -> UE Sends 911 Start DAN"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 336
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendDomainNotiMessage(Landroid/content/Context;I)V

    .line 343
    .end local v0    # "inEcm":Ljava/lang/String;
    .end local v1    # "isStartE911":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 338
    .restart local v0    # "inEcm":Ljava/lang/String;
    .restart local v1    # "isStartE911":Ljava/lang/String;
    :cond_1
    const-string v2, "[sms.mo.dan] UICC card is Not inserted into device"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 339
    const-string v2, "[sms.mo.dan] The UE is not required to send the 911 Start Notification"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRetryCountForVzw(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "ss"    # I

    .prologue
    .line 630
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    .line 639
    sget v0, Lcom/android/internal/telephony/SMSDispatcherEx;->MAX_SEND_RETRIES:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 640
    const-string v0, "handleSendComplete(), First attempt was over IMS, Current 1x is In service"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSendComplete: Once 1x retry automatically:  isIms()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->isIms()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mImsRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMessageRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SS= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 648
    :cond_0
    return-void
.end method


# virtual methods
.method checkAvailableToSend(Landroid/app/PendingIntent;)Z
    .locals 5
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v1, 0x1

    .line 1525
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v3, "sms_over_ims_in_lte_single_mode"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAvailableToSend(), usim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ril.card_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " roaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " servicestate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ims = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->isIms()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mccRoaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.radio.isroaming"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1531
    const-string v2, "ril.card_operator"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "false"

    const-string v3, "persist.radio.isroaming"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1534
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->isIms()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1535
    if-eqz p1, :cond_0

    .line 1537
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 1546
    :cond_1
    return v1

    .line 1538
    :catch_0
    move-exception v0

    .line 1539
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "checkAvailableToSend(), failed to send error result"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkNotInService()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1687
    const/4 v1, 0x0

    .line 1688
    .local v1, "notInService":Z
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1690
    .local v2, "ss":I
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v4, "support_sms_over_ps"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-ne v5, v3, :cond_2

    .line 1691
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 1692
    .local v0, "data_ss":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNotInService(), service state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data service state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1694
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v5, v3, :cond_1

    .line 1695
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->isIms()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1696
    const/4 v1, 0x1

    .line 1719
    .end local v0    # "data_ss":I
    :cond_0
    :goto_0
    return v1

    .line 1700
    .restart local v0    # "data_ss":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->isIms()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 1701
    const/4 v1, 0x1

    goto :goto_0

    .line 1705
    .end local v0    # "data_ss":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v4, "mo_sms_with_1xcsfb"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1706
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 1707
    .restart local v0    # "data_ss":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNotInService(), service state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data service state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1710
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->isIms()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1711
    const/4 v1, 0x1

    goto :goto_0

    .line 1715
    .end local v0    # "data_ss":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->isIms()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 1716
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected dequeueFailedPendingMessage(I)V
    .locals 6
    .param p1, "serviceState"    # I

    .prologue
    .line 1508
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1510
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;

    iget-object v1, v2, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;->tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1511
    .local v1, "mTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/telephony/SMSDispatcherEx;->getNotInServiceError(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1513
    .end local v1    # "mTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dequeueFailedPendingMessage(), Removed Failed message from pending queue. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " left"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1515
    monitor-exit v3

    .line 1516
    return-void

    .line 1515
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected enableAutoDCDisconnect(I)V
    .locals 0
    .param p1, "timeOut"    # I

    .prologue
    .line 1466
    return-void
.end method

.method enqueueMessageForSending(Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;

    .prologue
    .line 1493
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSyncronousSending:Z

    if-nez v0, :cond_0

    .line 1505
    :goto_0
    return-void

    .line 1496
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1497
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMessageForSending(), Added message to the pending queue. Queue size is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1501
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1502
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;->tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1504
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIsSimFull()Z
    .locals 2

    .prologue
    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIsSimFull() - smsdispatcher mSimFull = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/SMSDispatcherEx;->sSimFull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2150
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcherEx;->sSimFull:Z

    return v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;Lcom/android/internal/telephony/SmsHeader;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .param p5, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            "Lcom/android/internal/telephony/SmsHeader;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1425
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    const-string v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    const-string v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    const-string v1, "smsHeader"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    return-object v0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;Z)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .param p5, "isMultiPart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1409
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    const-string v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    const-string v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    const-string v1, "parts"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0x12d

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 353
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 438
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 356
    :pswitch_0
    const-string v5, "handleMessage(), EVENT_SEND_RETRY_WITHPOPUP Received!!"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 357
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcherEx;->handleRetryByOption(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 363
    :pswitch_1
    const-string v5, "handleMessage(), EVENT_RETRY_ALERT_TIMEOUT Received!!"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 364
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/AlertDialog;

    check-cast v5, Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 365
    iput-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 366
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 367
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 368
    .local v4, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    sget v5, Lcom/android/internal/telephony/SMSDispatcherEx;->MAX_SEND_RETRIES:I

    iput v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 370
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v4, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 371
    .local v0, "asyncres":Landroid/os/AsyncResult;
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 372
    .local v1, "commandExcep":Lcom/android/internal/telephony/CommandException;
    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 376
    invoke-virtual {p0, v8, v0}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessage(Landroid/os/Message;)Z

    .line 378
    const-string v5, "handleMessage(), [SMS.MO.RETRY] Case EVENT_RETRY_ALERT_TIMEOUT, ok!!"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 381
    .end local v0    # "asyncres":Landroid/os/AsyncResult;
    .end local v1    # "commandExcep":Lcom/android/internal/telephony/CommandException;
    .end local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const-string v5, "handleMessage(), [SMS.MO.RETRY] Case EVENT_RETRY_ALERT_TIMEOUT, mSTrackersForRetry empty!!"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :pswitch_2
    const-string v5, "handleMessage(), EVENT_SEND_RETRY_CONFIRMED_SMS Received!!"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 387
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage(), [SMS.MO.RETRY] mSTrackersForRetry.size()=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 389
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 390
    .local v3, "sTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage(), [SMS.MO.RETRY] sTracker.mRetryCount=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 393
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v5}, Lcom/android/internal/telephony/SMSDispatcherEx;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 398
    .end local v3    # "sTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_3
    const-string v5, "handleMessage(), EVENT_STOP_RETRY_SENDING Received!!"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 400
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 401
    const-string v5, "handleMessage(), Case EVENT_STOP_RETRY_SENDING called..."

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 402
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 403
    .restart local v3    # "sTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    sget v5, Lcom/android/internal/telephony/SMSDispatcherEx;->MAX_SEND_RETRIES:I

    iput v5, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 405
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 406
    .restart local v0    # "asyncres":Landroid/os/AsyncResult;
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 407
    .restart local v1    # "commandExcep":Lcom/android/internal/telephony/CommandException;
    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 411
    invoke-virtual {p0, v8, v0}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessage(Landroid/os/Message;)Z

    .line 412
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v5}, Lcom/android/internal/telephony/SMSDispatcherEx;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 419
    .end local v0    # "asyncres":Landroid/os/AsyncResult;
    .end local v1    # "commandExcep":Lcom/android/internal/telephony/CommandException;
    .end local v3    # "sTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_4
    const-string v5, "handleMessage(), receive EVENT_SEND_RETRY_CBMI"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 420
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.ENABLE_CBMI"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 427
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendE911StartDAN()V

    goto/16 :goto_0

    .line 433
    :pswitch_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcherEx;->handleReadReceiptReport(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected handleMessageEventSendConfirmedSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSyncronousSending:Z

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;-><init>(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcherEx;->enqueueMessageForSending(Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;)V

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method protected handleRetryByOption(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/16 v6, 0x12f

    .line 1345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRetryByOption(), [SMS.MO.RETRY] retry popup mSTrackersForRetry.size()=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1347
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v5, Lcom/android/internal/telephony/SMSDispatcherEx;->MO_MSG_QUEUE_LIMIT:I

    if-lt v4, v5, :cond_0

    .line 1348
    const-string v4, "handleRetryByOption(), mSTrackersForRetry.size exceeded"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1349
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessage(Landroid/os/Message;)Z

    .line 1398
    :goto_0
    return-void

    .line 1354
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 1355
    .local v3, "ss":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRetryByOption(), Service State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1356
    if-eqz v3, :cond_1

    .line 1357
    const-string v4, "handleRetryByOption(), Service state is not in service, So not show retry popup to user"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1358
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1364
    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1365
    const-string v4, "persist.gsm.sms.dcnaddress"

    const-string v5, "4437501000"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1366
    .local v1, "propertyDcnAddress":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRetryByOption(), tracker.mDestAddress = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRetryByOption(), propertyDcnAddress = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1368
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1369
    const-string v4, "handleRetryByOption(), This is DCN sending, So not show retry popup to user"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1370
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1377
    .end local v1    # "propertyDcnAddress":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1379
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    sget v6, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v5, Lcom/lge/internal/R$string;->sp_retry_title_NORMAL:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->sp_sms_vzw_retry_msg_NORMAL:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->sp_sms_vzw_retry_yes_NORMAL:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mRetryListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->sp_sms_vzw_retry_no_NORMAL:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mRetryListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1390
    .local v0, "d":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1391
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1393
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    const-string v4, "handleRetryByOption(), [SMS.MO.RETRY] handleRetryByOption: mSTrackersForRetry add..."

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1396
    const/16 v4, 0x12d

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x2710

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v8, 0x1

    .line 487
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 488
    .local v5, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v3, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 491
    .local v3, "sentIntent":Landroid/app/PendingIntent;
    if-nez v5, :cond_1

    .line 492
    const-string v6, "handleSendComplete(), SmsTracker was null, Return"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 498
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SmsResponse;

    iget v6, v6, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    iput v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 503
    :goto_1
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_6

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSendComplete(), SMS send complete. Broadcasting intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 506
    iget-object v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_2

    .line 508
    const/4 v6, 0x0

    const-string v7, "kddi_receive_status_report_iwk"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v8, :cond_5

    .line 509
    sget-object v6, Lcom/android/internal/telephony/SMSDispatcherEx;->DELIVERYPENDINGLISTFORKDDI:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const-string v6, "handleSendComplete(),[KDDI] handleSendComplete()- tracker.mDeliveryIntent!=null)"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 519
    :cond_2
    :goto_2
    iget-object v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mReadReceiptIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_3

    .line 521
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->readReceiptPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->processNextPendingMessage()V

    goto :goto_0

    .line 500
    :cond_4
    const-string v6, "handleSendComplete(), SmsResponse was null"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_1

    .line 513
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 531
    :cond_6
    const-string v6, "handleSendComplete, SMS send failed"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 533
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 536
    .local v4, "ss":I
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v7, "cdma_sms_cdg2"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v8, :cond_7

    .line 537
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/SMSDispatcherEx;->handleSendFailForCDG2(Landroid/os/AsyncResult;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 543
    :cond_7
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v6, :cond_8

    if-eqz v4, :cond_8

    .line 547
    sget v6, Lcom/android/internal/telephony/SMSDispatcherEx;->MAX_SEND_RETRIES:I

    iput v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSendComplete: Skipping retry:  isIms()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->isIms()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mRetryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mImsRetry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMessageRef="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SS= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 558
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v7, "vzw_sms_retry_scheme"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v8, :cond_9

    .line 559
    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/SMSDispatcherEx;->setRetryCountForVzw(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    .line 565
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->checkNotInService()Z

    move-result v6

    if-ne v8, v6, :cond_b

    .line 568
    iget-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSyncronousSending:Z

    if-eqz v6, :cond_a

    .line 569
    const-string v6, "handleSendComplete(), due to Not In Service, send failed intent and dequeueFailedPendingMessage"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 570
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcherEx;->dequeueFailedPendingMessage(I)V

    goto/16 :goto_0

    .line 572
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/telephony/SMSDispatcherEx;->getNotInServiceError(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 576
    :cond_b
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_d

    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    sget v7, Lcom/android/internal/telephony/SMSDispatcherEx;->MAX_SEND_RETRIES:I

    if-ge v6, v7, :cond_d

    .line 588
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v7, "vzw_sms_retry_scheme"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 589
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcherEx;->routeRetrySendingForVzw(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 591
    :cond_c
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 592
    const/4 v6, 0x3

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 593
    .local v2, "retryMsg":Landroid/os/Message;
    sget v6, Lcom/android/internal/telephony/SMSDispatcherEx;->SEND_RETRY_DELAY:I

    int-to-long v6, v6

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 597
    .end local v2    # "retryMsg":Landroid/os/Message;
    :cond_d
    const/4 v1, 0x0

    .line 599
    .local v1, "errorCode":I
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_e

    .line 600
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SmsResponse;

    iget v1, v6, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 603
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v7, "cdma_cause_code_display"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v8, :cond_e

    .line 604
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->cdmaCauseCodeDisplayFunc(I)V

    .line 609
    :cond_e
    const/4 v0, 0x1

    .line 611
    .local v0, "error":I
    const-string v6, "handleSendComplete(), SMS send failed RESULT_ERROR_GENERIC_FAILURE"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 613
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_f

    .line 615
    const/4 v0, 0x6

    .line 619
    :cond_f
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 622
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->processNextPendingMessage()V

    goto/16 :goto_0
.end method

.method inProgressConcatMoWithoutUserPermit(Lcom/android/internal/telephony/SmsHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 4
    .param p1, "incomingConcat"    # Lcom/android/internal/telephony/SmsHeader;
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v2, 0x1

    .line 1149
    if-eqz p1, :cond_2

    .line 1150
    iget-object v1, p1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    rem-int/lit8 v0, v1, 0x5

    .line 1151
    .local v0, "currentConcatIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Concat Index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1152
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcherEx;->isInProgressWithUserPermit:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-le v1, v2, :cond_1

    .line 1154
    const-string v1, "Case 1: in Progress concat MO without user permit"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1156
    const v3, 0xc3d0

    iget-object v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1159
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessage(Landroid/os/Message;)Z

    move v1, v2

    .line 1165
    .end local v0    # "currentConcatIndex":I
    :goto_1
    return v1

    .line 1156
    .restart local v0    # "currentConcatIndex":I
    :cond_0
    iget-object v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    .line 1163
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcherEx;->isInProgressWithUserPermit:[Z

    aput-boolean v2, v1, v0

    .line 1165
    .end local v0    # "currentConcatIndex":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected initCallBackNumber()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcherEx;->sCBNumber:Ljava/lang/String;

    .line 276
    return-void
.end method

.method protected isDTAGsMobileBoxProApp()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1828
    const/4 v4, 0x0

    .line 1829
    .local v4, "retVal":Z
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1830
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1833
    .local v2, "packageNames":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_0

    .line 1834
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->getPackageNameByCallingPid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .line 1839
    :cond_0
    const/4 v0, 0x0

    .line 1840
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    .line 1843
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v2, v5

    const/16 v6, 0x40

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1850
    :cond_1
    :goto_0
    const-string v5, "de.telekom.mds.mbp"

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1852
    const/4 v4, 0x1

    .line 1854
    :cond_2
    return v4

    .line 1844
    :catch_0
    move-exception v1

    .line 1846
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "isDTAGsMobileBoxApp, Can\'t get calling app package info"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isDTAGsMobileBoxProServer(Ljava/lang/String;)Z
    .locals 6
    .param p1, "destinationAddress"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1859
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 1860
    .local v1, "mccmnc":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "3011"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "73240"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "81214"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "81215"

    aput-object v5, v2, v4

    .line 1862
    .local v2, "mobileBoxProServers":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 1863
    aget-object v4, v2, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1864
    const-string v3, "26201"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1868
    :cond_0
    return v3

    .line 1862
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method processNextPendingMessage()V
    .locals 4

    .prologue
    .line 1471
    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSyncronousSending:Z

    if-nez v1, :cond_0

    .line 1490
    :goto_0
    return-void

    .line 1474
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1476
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1477
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processNextPendingMessage(), Removed message from pending queue. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " left"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1484
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1485
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mPendingMessagesList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;

    .line 1487
    .local v0, "message":Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;->tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1489
    .end local v0    # "message":Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1480
    :cond_2
    :try_start_1
    const-string v1, "processNextPendingMessage(), Pending messages list consistency failure detected!"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected processUserPermitConsideringConcat(Lcom/android/internal/telephony/SmsHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V
    .locals 4
    .param p1, "incomingConcat"    # Lcom/android/internal/telephony/SmsHeader;
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p3, "checkDestEvent"    # I

    .prologue
    .line 1074
    if-eqz p1, :cond_2

    .line 1075
    iget-object v2, p1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    rem-int/lit8 v0, v2, 0x5

    .line 1076
    .local v0, "currentConcatIndex":I
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcherEx;->mTrackerForConcat:[[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 1077
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcherEx;->mTrackerForConcat:[[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v3, p1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    new-array v3, v3, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    aput-object v3, v2, v0

    .line 1080
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcherEx;->mTrackerForConcat:[[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 1081
    const-string v2, " MAX_CONCAT_TRACKER_ARRAY_NUM overflow"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1083
    if-eqz p2, :cond_5

    :try_start_0
    iget-object v2, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_5

    .line 1084
    iget-object v2, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcherEx;->mTrackerForConcat:[[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int/lit8 v3, v3, -0x1

    aput-object p2, v2, v3

    .line 1096
    .end local v0    # "currentConcatIndex":I
    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget-object v3, p1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-ne v2, v3, :cond_4

    .line 1097
    :cond_3
    const-string v2, "Case 2: process user permit considering non concat or concat"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1098
    invoke-virtual {p0, p3, p2}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessage(Landroid/os/Message;)Z

    .line 1100
    :cond_4
    :goto_1
    return-void

    .line 1086
    .restart local v0    # "currentConcatIndex":I
    :cond_5
    :try_start_1
    const-string v2, "processUserPermitConsideringConcat, tracker is null or mSentIntent is null"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1089
    :catch_0
    move-exception v1

    .line 1090
    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "processUserPermitConsideringConcat, failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public retryCBMIEnable()V
    .locals 4

    .prologue
    .line 1552
    const-string v1, "SMSDispatcherEx - retryCBMIEnable()"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1553
    const/16 v1, 0x131

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1554
    .local v0, "retryMsg":Landroid/os/Message;
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1555
    return-void
.end method

.method protected sendDomainNotiMessage(Landroid/content/Context;I)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "domainStatus"    # I

    .prologue
    .line 1583
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->isAvailableNetworkForDCN()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1584
    const-string v4, "[sms.mo.dan] Current network is not available for sending DCN"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1585
    const-string v4, "[sms.mo.dan] Quit sending Domain Change Notification"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1656
    :goto_0
    return-void

    .line 1588
    :cond_0
    const/4 v4, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.lge.kddi.intent.action.DAN_SENT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1589
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    const/4 v4, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.lge.kddi.intent.action.DAN_DELIVERED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1592
    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    const-string v4, "persist.gsm.sms.dcnaddress"

    const-string v8, "4437501000"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1594
    .local v20, "propertyDcnAddress":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sms.mo.dan] propertyDcnAddress : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1596
    if-nez v20, :cond_1

    .line 1597
    const-string v4, "[sms.mo.dan] DAN NOT SEND because propertyDcnAddress is null"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 1599
    :cond_1
    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x5

    if-ge v4, v8, :cond_3

    .line 1600
    :cond_2
    const-string v4, "[sms.mo.dan] DAN NOT SEND because propertyDcnAddress is empty or less than length 5"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 1603
    :cond_3
    const-string v4, "[sms.mo.dan] DAN SEND because propertyDcnAddress is correct"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1605
    move-object/from16 v13, v20

    .line 1606
    .local v13, "destAddr":Ljava/lang/String;
    move-object/from16 v21, v20

    .line 1609
    .local v21, "scAddr":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1610
    .local v18, "msgType":I
    const/16 v17, 0x0

    .line 1611
    .local v17, "msgId":I
    const/16 v16, 0x8

    .line 1612
    .local v16, "length":I
    move/from16 v22, p2

    .line 1613
    .local v22, "status":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v26, 0x3e8

    div-long v8, v8, v26

    long-to-int v0, v8

    move/from16 v23, v0

    .line 1614
    .local v23, "timeStamp":I
    const/4 v12, 0x0

    .line 1616
    .local v12, "data":[B
    const-string v4, "[sms.mo.dan] SMSDispatcher.java sendDomainNotiMessage"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1619
    :try_start_0
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x40

    invoke-direct {v11, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1620
    .local v11, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1621
    .local v14, "dos":Ljava/io/DataOutputStream;
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1622
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1623
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1624
    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1625
    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1626
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    .line 1627
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 1628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sms.mo.dan] Message Type: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " Message ID: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " Message Length : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " Status : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " Time Stamp : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1637
    .end local v11    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "dos":Ljava/io/DataOutputStream;
    :goto_1
    if-eqz v12, :cond_4

    .line 1638
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sms.mo.dan] UserData(payload) : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1644
    :goto_2
    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v13, v12, v4, v8}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->getDomainNotiPdu(Ljava/lang/String;Ljava/lang/String;[BZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v19

    .line 1646
    .local v19, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v19, :cond_5

    .line 1647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sms.mo.dan] Submit pdu Data : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1648
    invoke-static {v12}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v13, v1, v4, v2}, Lcom/android/internal/telephony/SMSDispatcherEx;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .line 1649
    .local v5, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->getFormat()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/SMSDispatcherEx;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v24

    .line 1651
    .local v24, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 1633
    .end local v5    # "map":Ljava/util/HashMap;
    .end local v19    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v24    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_0
    move-exception v15

    .line 1634
    .local v15, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sms.mo.dan] Creating Notification Data failed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 1640
    .end local v15    # "ex":Ljava/io/IOException;
    :cond_4
    const-string v4, "[sms.mo.dan] UserData(payload) is null"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_2

    .line 1653
    .restart local v19    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const-string v4, "[sms.mo.dan] Submit pdu Data is null"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected sendEmailoverMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 20
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 962
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v13, 0x0

    .line 963
    .local v13, "messageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->getSubId()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/SMSDispatcherEx;->writeOutboxMessage(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 971
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcherEx;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v19, v0

    .line 972
    .local v19, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 973
    .local v18, "msgCount":I
    const/4 v7, 0x0

    .line 975
    .local v7, "encoding":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEmailoverMultipartText(), msgCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 977
    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v16, v0

    .line 979
    .local v16, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 980
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcherEx;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v15

    .line 981
    .local v15, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEmailoverMultipartText(), i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "details = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 983
    iget v2, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v2, :cond_2

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    if-ne v7, v2, :cond_2

    .line 986
    :cond_1
    iget v7, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 989
    :cond_2
    aput-object v15, v16, v17

    .line 979
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 964
    .end local v7    # "encoding":I
    .end local v15    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v16    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v17    # "i":I
    .end local v18    # "msgCount":I
    .end local v19    # "refNumber":I
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 993
    .restart local v7    # "encoding":I
    .restart local v16    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v17    # "i":I
    .restart local v18    # "msgCount":I
    .restart local v19    # "refNumber":I
    :cond_4
    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 994
    .local v11, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 996
    .local v12, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 997
    new-instance v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 998
    .local v14, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v19

    iput v0, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 999
    add-int/lit8 v2, v17, 0x1

    iput v2, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1000
    move/from16 v0, v18

    iput v0, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1007
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1008
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1009
    .local v6, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v14, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1012
    const/4 v2, 0x1

    if-ne v7, v2, :cond_5

    .line 1013
    aget-object v2, v16, v17

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v2, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1014
    aget-object v2, v16, v17

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v2, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1018
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v3, "send_2_segment_sms_via_sms_not_ems"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1019
    const/4 v6, 0x0

    .line 1023
    :cond_6
    const/4 v8, 0x0

    .line 1024
    .local v8, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_7

    .line 1025
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 1028
    .restart local v8    # "sentIntent":Landroid/app/PendingIntent;
    :cond_7
    const/4 v9, 0x0

    .line 1029
    .local v9, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_8

    .line 1030
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 1033
    .restart local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_8
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v2, v18, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendNewSubmitPduforEmailoverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V

    .line 996
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 1033
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 1037
    .end local v6    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v14    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_a
    return-void
.end method

.method protected abstract sendEmailoverText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZI)V
    .locals 28
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "priority"    # I
    .param p9, "isExpectMore"    # Z
    .param p10, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "IZI)V"
        }
    .end annotation

    .prologue
    .line 812
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v21, 0x0

    .line 815
    .local v21, "doNotWriteMessage":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v5, "allow_sending_MBP_directed_sms"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->isDTAGsMobileBoxProApp()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcherEx;->isDTAGsMobileBoxProServer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 817
    const-string v4, "MobilBoxPro message should not be saved"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 818
    const/16 v21, 0x1

    .line 823
    :cond_0
    if-nez p6, :cond_5

    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    move-object/from16 v0, p7

    invoke-static {v0, v4}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v21, :cond_1

    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->getSubId()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v11, p7

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/SMSDispatcherEx;->writeOutboxMessage(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    .line 835
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcherEx;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v27, v0

    .line 836
    .local v27, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 837
    .local v26, "msgCount":I
    const/4 v9, 0x0

    .line 840
    .local v9, "encoding":I
    const-string v4, "persist.gsm.sms.forcegsm7"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 841
    .local v23, "encodingType":Ljava/lang/String;
    const-string v4, "0"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 844
    .local v25, "isConvertToGsmAlphabet":Z
    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v22, v0

    .line 845
    .local v22, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v5, "KREncodingScheme"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 851
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v20

    .line 864
    .local v20, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_3
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_3

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    if-ne v9, v4, :cond_3

    .line 867
    :cond_2
    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 869
    :cond_3
    aput-object v20, v22, v24

    .line 845
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 825
    .end local v9    # "encoding":I
    .end local v20    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v22    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v23    # "encodingType":Ljava/lang/String;
    .end local v24    # "i":I
    .end local v25    # "isConvertToGsmAlphabet":Z
    .end local v26    # "msgCount":I
    .end local v27    # "refNumber":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 833
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->getSubId()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/internal/telephony/SMSDispatcherEx;->moveToOutbox(JLandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 854
    .restart local v9    # "encoding":I
    .restart local v22    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v23    # "encodingType":Ljava/lang/String;
    .restart local v24    # "i":I
    .restart local v25    # "isConvertToGsmAlphabet":Z
    .restart local v26    # "msgCount":I
    .restart local v27    # "refNumber":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v5, "send_2_segment_sms_via_sms_not_ems"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 855
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcherEx;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v20

    .restart local v20    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_3

    .line 858
    .end local v20    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_7
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v20

    .restart local v20    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_3

    .line 873
    .end local v20    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_8
    new-instance v16, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 874
    .local v16, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v17, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 876
    .local v17, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v24, 0x0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_16

    .line 877
    new-instance v19, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 878
    .local v19, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 879
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 880
    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 887
    const/4 v4, 0x1

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 888
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 889
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 892
    const/4 v4, 0x1

    if-ne v9, v4, :cond_9

    .line 893
    aget-object v4, v22, v24

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v4, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 894
    aget-object v4, v22, v24

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v4, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 898
    :cond_9
    if-nez v24, :cond_a

    .line 899
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/SMSDispatcherEx;->setReplyAddress(Lcom/android/internal/telephony/SmsHeader;)V

    .line 904
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v5, "send_2_segment_sms_via_sms_not_ems"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 905
    const/4 v8, 0x0

    .line 909
    :cond_b
    const/4 v10, 0x0

    .line 910
    .local v10, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_c

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-le v4, v0, :cond_c

    .line 911
    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 914
    .restart local v10    # "sentIntent":Landroid/app/PendingIntent;
    :cond_c
    const/4 v11, 0x0

    .line 915
    .local v11, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_d

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-le v4, v0, :cond_d

    .line 916
    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 920
    .restart local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_d
    sget v4, Lcom/android/internal/telephony/SMSDispatcherEx;->vp:I

    if-lez v4, :cond_e

    .line 922
    sget v4, Lcom/android/internal/telephony/SMSDispatcherEx;->vp:I

    invoke-static {v4}, Landroid/telephony/SmsMessage;->setValidityPeriod(I)V

    .line 933
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v5, "vzw_sms_retry_scheme"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 934
    if-eqz v26, :cond_f

    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_12

    .line 935
    :cond_f
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    add-int/lit8 v4, v26, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_11

    const/4 v12, 0x1

    :goto_5
    sget-object v14, Lcom/android/internal/telephony/SMSDispatcherEx;->sCBNumber:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v13, p9

    move-object/from16 v18, p6

    invoke-virtual/range {v4 .. v18}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V

    .line 951
    :cond_10
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->initCallBackNumber()V

    .line 876
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 935
    :cond_11
    const/4 v12, 0x0

    goto :goto_5

    .line 938
    :cond_12
    const/4 v4, 0x1

    move/from16 v0, v26

    if-le v0, v4, :cond_10

    .line 939
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    add-int/lit8 v4, v26, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_13

    const/4 v12, 0x1

    :goto_7
    sget-object v14, Lcom/android/internal/telephony/SMSDispatcherEx;->sCBNumber:Ljava/lang/String;

    const/4 v15, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v13, p9

    move-object/from16 v18, p6

    invoke-virtual/range {v4 .. v18}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V

    goto :goto_6

    :cond_13
    const/4 v12, 0x0

    goto :goto_7

    .line 944
    :cond_14
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    add-int/lit8 v4, v26, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_15

    const/4 v12, 0x1

    :goto_8
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v18, p6

    invoke-virtual/range {v4 .. v18}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V

    goto :goto_6

    :cond_15
    const/4 v12, 0x0

    goto :goto_8

    .line 954
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v19    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_16
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 11
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 803
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZI)V

    .line 804
    return-void
.end method

.method protected sendMultipartTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 0
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "callingPkg"    # Ljava/lang/String;
    .param p7, "replyAddr"    # Ljava/lang/String;
    .param p8, "confirmRead"    # I
    .param p9, "replyOption"    # I
    .param p10, "protocolId"    # I
    .param p11, "isExpectMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .prologue
    .line 1068
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendMultipartTextWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 27
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/internal/telephony/LGSendingSMSOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1984
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p7, "msgOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/internal/telephony/LGSendingSMSOption;>;"
    const/16 v19, 0x0

    .line 1985
    .local v19, "doNotWriteMessage":Z
    const/16 v16, 0x0

    .line 1987
    .local v16, "messageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v3, "allow_sending_MBP_directed_sms"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1988
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->isDTAGsMobileBoxProApp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcherEx;->isDTAGsMobileBoxProServer(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1989
    const-string v2, "MobilBoxPro message should not be saved"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1990
    const/16 v19, 0x1

    .line 1995
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v19, :cond_1

    .line 1996
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->getSubId()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/SMSDispatcherEx;->writeOutboxMessage(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 2004
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcherEx;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v26, v0

    .line 2005
    .local v26, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 2006
    .local v24, "msgCount":I
    const/4 v7, 0x0

    .line 2009
    .local v7, "encoding":I
    const-string v2, "persist.gsm.sms.forcegsm7"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2010
    .local v21, "encodingType":Ljava/lang/String;
    const-string v2, "0"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 2013
    .local v23, "isConvertToGsmAlphabet":Z
    move/from16 v0, v24

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v20, v0

    .line 2014
    .local v20, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 2019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v3, "KREncodingScheme"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 2020
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v18

    .line 2033
    .local v18, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_2
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v2, :cond_3

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    if-ne v7, v2, :cond_3

    .line 2036
    :cond_2
    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 2038
    :cond_3
    aput-object v18, v20, v22

    .line 2014
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 1996
    .end local v7    # "encoding":I
    .end local v18    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v20    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v21    # "encodingType":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v23    # "isConvertToGsmAlphabet":Z
    .end local v24    # "msgCount":I
    .end local v26    # "refNumber":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 2023
    .restart local v7    # "encoding":I
    .restart local v20    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v21    # "encodingType":Ljava/lang/String;
    .restart local v22    # "i":I
    .restart local v23    # "isConvertToGsmAlphabet":Z
    .restart local v24    # "msgCount":I
    .restart local v26    # "refNumber":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v3, "send_2_segment_sms_via_sms_not_ems"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 2024
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcherEx;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v18

    .restart local v18    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_2

    .line 2027
    .end local v18    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v18

    .restart local v18    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_2

    .line 2042
    .end local v18    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_7
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2043
    .local v14, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v15, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2045
    .local v15, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    .line 2046
    new-instance v17, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 2047
    .local v17, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 2048
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 2049
    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 2056
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 2057
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2058
    .local v6, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 2061
    const/4 v2, 0x1

    if-ne v7, v2, :cond_8

    .line 2062
    aget-object v2, v20, v22

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v2, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2063
    aget-object v2, v20, v22

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v2, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2067
    :cond_8
    if-nez v22, :cond_9

    .line 2068
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SMSDispatcherEx;->setReplyAddress(Lcom/android/internal/telephony/SmsHeader;)V

    .line 2073
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v3, "send_2_segment_sms_via_sms_not_ems"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 2074
    const/4 v6, 0x0

    .line 2078
    :cond_a
    const/4 v8, 0x0

    .line 2079
    .local v8, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_b

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-le v2, v0, :cond_b

    .line 2080
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 2083
    .restart local v8    # "sentIntent":Landroid/app/PendingIntent;
    :cond_b
    const/4 v9, 0x0

    .line 2084
    .local v9, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_c

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-le v2, v0, :cond_c

    .line 2085
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 2088
    .restart local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_c
    const/16 v25, 0x0

    .line 2089
    .local v25, "readReceiptIntent":Landroid/app/PendingIntent;
    if-eqz p7, :cond_d

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-le v2, v0, :cond_d

    .line 2090
    move-object/from16 v0, p7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/internal/telephony/LGSendingSMSOption;

    iget-object v0, v2, Lcom/lge/internal/telephony/LGSendingSMSOption;->mReadReceiptIntent:Landroid/app/PendingIntent;

    move-object/from16 v25, v0

    .line 2094
    :cond_d
    sget v2, Lcom/android/internal/telephony/SMSDispatcherEx;->vp:I

    if-lez v2, :cond_e

    .line 2096
    sget v2, Lcom/android/internal/telephony/SMSDispatcherEx;->vp:I

    invoke-static {v2}, Landroid/telephony/SmsMessage;->setValidityPeriod(I)V

    .line 2107
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v3, "vzw_sms_retry_scheme"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 2108
    if-eqz v24, :cond_f

    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_12

    .line 2109
    :cond_f
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v2, v24, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_11

    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x0

    move-object/from16 v0, p7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/internal/telephony/LGSendingSMSOption;

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v16}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLcom/lge/internal/telephony/LGSendingSMSOption;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V

    .line 2045
    :cond_10
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 2109
    :cond_11
    const/4 v10, 0x0

    goto :goto_4

    .line 2112
    :cond_12
    const/4 v2, 0x1

    move/from16 v0, v24

    if-le v0, v2, :cond_10

    .line 2113
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v2, v24, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_13

    const/4 v10, 0x1

    :goto_6
    const/4 v11, 0x0

    move-object/from16 v0, p7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/internal/telephony/LGSendingSMSOption;

    const/4 v13, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v16}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLcom/lge/internal/telephony/LGSendingSMSOption;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V

    goto :goto_5

    :cond_13
    const/4 v10, 0x0

    goto :goto_6

    .line 2118
    :cond_14
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v2, v24, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_15

    const/4 v10, 0x1

    :goto_7
    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v16}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V

    goto :goto_5

    :cond_15
    const/4 v10, 0x0

    goto :goto_7

    .line 2124
    .end local v6    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v17    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v25    # "readReceiptIntent":Landroid/app/PendingIntent;
    :cond_16
    return-void
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLcom/lge/internal/telephony/LGSendingSMSOption;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
.end method

.method protected abstract sendNewSubmitPduforEmailoverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
.end method

.method protected abstract sendNewSubmitPduforReadAck(Ljava/lang/String;I)V
.end method

.method protected sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1243
    iget-object v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1244
    .local v2, "map":Ljava/util/HashMap;
    const-string v8, "pdu"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v4, v8

    check-cast v4, [B

    .line 1247
    .local v4, "pdu":[B
    const/4 v7, 0x0

    .line 1248
    .local v7, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v9, "modify_check_confirm_popup_concat_message_mo"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1249
    const-string v8, "smsHeader"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    check-cast v7, Lcom/android/internal/telephony/SmsHeader;

    .line 1253
    .restart local v7    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_0
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1257
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1258
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 1261
    .local v3, "packageNames":[Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mSmsSendDisabled:Z

    if-eqz v8, :cond_3

    .line 1263
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v9, "permitted_package_smsmo_in_capable_sms_false"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1264
    aget-object v8, v3, v10

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SMSDispatcherEx;->isDisabledSendSms(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1265
    const-string v8, "sendRawPdu, Device does not support sending sms."

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1266
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8, v12, v10}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1341
    :cond_1
    :goto_0
    return-void

    .line 1271
    :cond_2
    const-string v8, "sendRawPdu, Device does not support sending sms."

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1272
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8, v12, v10}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_0

    .line 1279
    :cond_3
    if-nez v4, :cond_4

    .line 1280
    const-string v8, "sendRawPdu, Empty PDU"

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1281
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const/4 v9, 0x3

    invoke-virtual {p1, v8, v9, v10}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_0

    .line 1294
    :cond_4
    if-eqz v3, :cond_5

    array-length v8, v3

    if-nez v8, :cond_6

    .line 1296
    :cond_5
    const-string v8, "sendRawPdu, Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1299
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8, v11, v10}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_0

    .line 1307
    :cond_6
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v3, v8

    const/16 v9, 0x40

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1317
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcherEx;->checkAvailableToSend(Landroid/app/PendingIntent;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1325
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcherEx;->checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1327
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1328
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/SMSDispatcherEx;->handleUserPermitForSendRawPdu(Lcom/android/internal/telephony/SmsHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 1308
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 1309
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "sendRawPdu, Can\'t get calling app package info: refusing to send SMS"

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1312
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8, v11, v10}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_0

    .line 1333
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_7
    if-eqz v7, :cond_8

    .line 1334
    sget-object v8, Lcom/android/internal/telephony/SMSDispatcherEx;->isInProgressWithUserPermit:[Z

    iget-object v9, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    rem-int/lit8 v9, v9, 0x5

    aput-boolean v10, v8, v9

    .line 1339
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcherEx;->handleSendSmsForSendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method public sendReadReceipt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "MessageId"    # I

    .prologue
    .line 2127
    const-string v0, "sendReadReceipt() SMSDispatchrEx.java"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2128
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendNewSubmitPduforReadAck(Ljava/lang/String;I)V

    .line 2129
    return-void
.end method

.method protected sendTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 0
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "callingPkg"    # Ljava/lang/String;
    .param p7, "replyAddr"    # Ljava/lang/String;
    .param p8, "confirmRead"    # I
    .param p9, "replyOption"    # I
    .param p10, "protocolId"    # I
    .param p11, "isExpectMore"    # Z

    .prologue
    .line 1063
    return-void
.end method

.method protected abstract sendTextWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZILcom/lge/internal/telephony/LGSendingSMSOption;)V
.end method

.method public setIsSimFull(Z)V
    .locals 2
    .param p1, "isSimFull"    # Z

    .prologue
    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsSimFull() - smsdispatcher, mSimFull = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/SMSDispatcherEx;->sSimFull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2141
    sput-boolean p1, Lcom/android/internal/telephony/SMSDispatcherEx;->sSimFull:Z

    .line 2142
    return-void
.end method

.method protected setMultipartTextValidityPeriod(I)V
    .locals 0
    .param p1, "validityperiod"    # I

    .prologue
    .line 1143
    sput p1, Lcom/android/internal/telephony/SMSDispatcherEx;->vp:I

    .line 1144
    return-void
.end method

.method protected setReplyAddress(Lcom/android/internal/telephony/SmsHeader;)V
    .locals 7
    .param p1, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    const/4 v3, 0x1

    .line 753
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v5, "replyAddress"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isReleaseOperator()Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 755
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcherEx;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, "replyAddr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 758
    invoke-static {v2}, Lcom/lge/telephony/LGPhoneNumberUtils;->KRsmsnetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 759
    .local v0, "daBytes":[B
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;-><init>()V

    .line 760
    .local v1, "replayaddress":Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    if-eqz v0, :cond_0

    .line 762
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->replyData:[B

    .line 763
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x2

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_2

    :goto_0
    sub-int v3, v4, v3

    iput v3, v1, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->addressLength:I

    .line 768
    :cond_0
    iput-object v1, p1, Lcom/android/internal/telephony/SmsHeader;->replyAddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    .line 771
    .end local v0    # "daBytes":[B
    .end local v1    # "replayaddress":Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    .end local v2    # "replyAddr":Ljava/lang/String;
    :cond_1
    return-void

    .line 763
    .restart local v0    # "daBytes":[B
    .restart local v1    # "replayaddress":Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    .restart local v2    # "replyAddr":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setSmsIsRoaming(Z)V
    .locals 2
    .param p1, "isRoaming"    # Z

    .prologue
    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMSDispatcherEx : setSmsIsRoaming(), isRoaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1566
    sput-boolean p1, Lcom/android/internal/telephony/SMSDispatcherEx;->mSubmitIsRoaming:Z

    .line 1567
    return-void
.end method

.method public setSmsPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 1439
    sput p1, Lcom/android/internal/telephony/SMSDispatcherEx;->mSubmitPriority:I

    .line 1440
    return-void
.end method

.method public smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)V
    .locals 2
    .param p1, "isOnOff"    # Ljava/lang/String;

    .prologue
    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SmsDispatcher] smsReceptionBlockingforNIAPPolicy(), isOnOff = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1726
    return-void
.end method

.method protected writeOutboxMessage(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;
    .locals 13
    .param p1, "subId"    # J
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "requireDeliveryReport"    # Z
    .param p6, "creator"    # Ljava/lang/String;

    .prologue
    .line 1878
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v10, "should_write_messages_for_vzw"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-ne v8, v9, :cond_0

    .line 1879
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-static {v8, v0, v1}, Lcom/android/internal/telephony/LGVerizonBranded;->shouldWriteMessageForVZW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1880
    const/4 v6, 0x0

    .line 1927
    :goto_0
    return-object v6

    .line 1885
    :cond_0
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v10, "do_not_save_sms_to_isis_short_code"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-ne v8, v9, :cond_1

    .line 1886
    const/4 v8, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcherEx;->isDestinationFreeShortCode(Ljava/lang/String;)Z

    move-result v9

    if-ne v8, v9, :cond_1

    .line 1887
    const/4 v6, 0x0

    goto :goto_0

    .line 1894
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 1896
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "sub_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1897
    const-string v8, "address"

    move-object/from16 v0, p3

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    const-string v8, "body"

    move-object/from16 v0, p4

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    const-string v8, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1900
    const-string v8, "seen"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1901
    const-string v8, "read"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1902
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1903
    const-string v8, "creator"

    move-object/from16 v0, p6

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    :cond_2
    if-eqz p5, :cond_3

    .line 1906
    const-string v8, "status"

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1909
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1912
    .local v4, "identity":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1913
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcherEx;->getSmsImsiData(J)Ljava/lang/String;

    move-result-object v3

    .line 1914
    .local v3, "mIccImsi":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMSDispatcherEx,  writeOutboxMessage, mIccImsi:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1915
    const-string v8, "sms_imsi_data"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    .end local v3    # "mIccImsi":Ljava/lang/String;
    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1927
    .local v6, "uri":Landroid/net/Uri;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1923
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1924
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "SMSDispatcherEx,  writeOutboxMessage: Failed to persist outbox message"

    invoke-static {v8, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1925
    const/4 v6, 0x0

    .line 1927
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method
