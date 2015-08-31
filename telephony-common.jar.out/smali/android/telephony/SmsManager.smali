.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field private static final DEFAULT_SUB_ID:I = -0x3ea

.field public static final EXTRA_MMS_DATA:Ljava/lang/String; = "android.telephony.extra.MMS_DATA"

.field static final LOG_TAG:Ljava/lang/String; = "SmsManager"

.field public static final MESSAGE_STATUS_READ:Ljava/lang/String; = "read"

.field public static final MESSAGE_STATUS_SEEN:Ljava/lang/String; = "seen"

.field public static final MMS_CONFIG_ALIAS_ENABLED:Ljava/lang/String; = "aliasEnabled"

.field public static final MMS_CONFIG_ALIAS_MAX_CHARS:Ljava/lang/String; = "aliasMaxChars"

.field public static final MMS_CONFIG_ALIAS_MIN_CHARS:Ljava/lang/String; = "aliasMinChars"

.field public static final MMS_CONFIG_ALLOW_ATTACH_AUDIO:Ljava/lang/String; = "allowAttachAudio"

.field public static final MMS_CONFIG_APPEND_TRANSACTION_ID:Ljava/lang/String; = "enabledTransID"

.field public static final MMS_CONFIG_EMAIL_GATEWAY_NUMBER:Ljava/lang/String; = "emailGatewayNumber"

.field public static final MMS_CONFIG_GROUP_MMS_ENABLED:Ljava/lang/String; = "enableGroupMms"

.field public static final MMS_CONFIG_HTTP_PARAMS:Ljava/lang/String; = "httpParams"

.field public static final MMS_CONFIG_HTTP_SOCKET_TIMEOUT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final MMS_CONFIG_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "maxImageHeight"

.field public static final MMS_CONFIG_MAX_IMAGE_WIDTH:Ljava/lang/String; = "maxImageWidth"

.field public static final MMS_CONFIG_MAX_MESSAGE_SIZE:Ljava/lang/String; = "maxMessageSize"

.field public static final MMS_CONFIG_MESSAGE_TEXT_MAX_SIZE:Ljava/lang/String; = "maxMessageTextSize"

.field public static final MMS_CONFIG_MMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final MMS_CONFIG_MMS_ENABLED:Ljava/lang/String; = "enabledMMS"

.field public static final MMS_CONFIG_MMS_READ_REPORT_ENABLED:Ljava/lang/String; = "enableMMSReadReports"

.field public static final MMS_CONFIG_MULTIPART_SMS_ENABLED:Ljava/lang/String; = "enableMultipartSMS"

.field public static final MMS_CONFIG_NAI_SUFFIX:Ljava/lang/String; = "naiSuffix"

.field public static final MMS_CONFIG_NOTIFY_WAP_MMSC_ENABLED:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final MMS_CONFIG_RECIPIENT_LIMIT:Ljava/lang/String; = "recipientLimit"

.field public static final MMS_CONFIG_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final MMS_CONFIG_SMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_THRESHOLD:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final MMS_CONFIG_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "maxSubjectLength"

.field public static final MMS_CONFIG_SUPPORT_MMS_CONTENT_DISPOSITION:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final MMS_CONFIG_UA_PROF_TAG_NAME:Ljava/lang/String; = "uaProfTagName"

.field public static final MMS_CONFIG_UA_PROF_URL:Ljava/lang/String; = "uaProfUrl"

.field public static final MMS_CONFIG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field public static final MMS_ERROR_CONFIGURATION_ERROR:I = 0x7

.field public static final MMS_ERROR_HTTP_FAILURE:I = 0x4

.field public static final MMS_ERROR_INVALID_APN:I = 0x2

.field public static final MMS_ERROR_IO_ERROR:I = 0x5

.field public static final MMS_ERROR_RETRY:I = 0x6

.field public static final MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x3

.field public static final MMS_ERROR_UNSPECIFIED:I = 0x1

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_ROAMING_COVERAGE:I = 0x7

.field public static final SMS_TYPE_INCOMING:I = 0x0

.field public static final SMS_TYPE_OUTGOING:I = 0x1

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final iLGSmsMgr:Landroid/telephony/ILGSmsManager;

.field private static mSubmitIsRoaming:Z

.field private static mSubmitPriority:I

.field private static final sInstance:Landroid/telephony/SmsManager;

.field private static final sLockObject:Ljava/lang/Object;

.field private static final sSubInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/telephony/SmsManager;",
            ">;"
        }
    .end annotation
.end field

.field private static vp:I


# instance fields
.field private mSubId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 80
    new-instance v0, Landroid/telephony/SmsManager;

    const-wide/16 v2, -0x3ea

    invoke-direct {v0, v2, v3}, Landroid/telephony/SmsManager;-><init>(J)V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    .line 216
    new-instance v0, Landroid/telephony/LGSmsManagerImpl;

    invoke-direct {v0}, Landroid/telephony/LGSmsManagerImpl;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    .line 222
    const/4 v0, -0x1

    sput v0, Landroid/telephony/SmsManager;->vp:I

    .line 226
    sput v1, Landroid/telephony/SmsManager;->mSubmitPriority:I

    .line 230
    sput-boolean v1, Landroid/telephony/SmsManager;->mSubmitIsRoaming:Z

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    iput-wide p1, p0, Landroid/telephony/SmsManager;->mSubId:J

    .line 861
    return-void
.end method

.method private createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1180
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_1

    .line 1182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1183
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1184
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1186
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 1187
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BJ)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1189
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 1190
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1195
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 827
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static getDefaultSmsSubId()J
    .locals 2

    .prologue
    .line 1253
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getILGSmsManager()Landroid/telephony/ILGSmsManager;
    .locals 1

    .prologue
    .line 835
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    return-object v0
.end method

.method private static getISmsService()Lcom/android/internal/telephony/ISms;
    .locals 1

    .prologue
    .line 894
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .locals 3

    .prologue
    .line 886
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 887
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-nez v0, :cond_0

    .line 888
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sms is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 890
    :cond_0
    return-object v0
.end method

.method public static getIsSimFull()Z
    .locals 3

    .prologue
    .line 2914
    const/4 v0, 0x0

    .line 2916
    .local v0, "simFull":Z
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSManager.java --> getIsSimFull - iLGSmsMgr.getIsSimFull() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v2}, Landroid/telephony/ILGSmsManager;->getIsSimFull()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2917
    sget-object v1, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v1}, Landroid/telephony/ILGSmsManager;->getIsSimFull()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2920
    :goto_0
    return v0

    .line 2918
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getSmsIsRoaming()Z
    .locals 1

    .prologue
    .line 2281
    sget-boolean v0, Landroid/telephony/SmsManager;->mSubmitIsRoaming:Z

    return v0
.end method

.method public static getSmsManagerForSubscriber(J)Landroid/telephony/SmsManager;
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 849
    sget-object v2, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 850
    :try_start_0
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsManager;

    .line 851
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    if-nez v0, :cond_0

    .line 852
    new-instance v0, Landroid/telephony/SmsManager;

    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    invoke-direct {v0, p0, p1}, Landroid/telephony/SmsManager;-><init>(J)V

    .line 853
    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    :cond_0
    monitor-exit v2

    return-object v0

    .line 856
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private grantCarrierPackageUriPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "permission"    # I

    .prologue
    .line 2356
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2357
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2359
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 2361
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2362
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, p2, p4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 2364
    :cond_0
    return-void
.end method

.method public static makeSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)[B
    .locals 10
    .param p0, "sca"    # Ljava/lang/String;
    .param p1, "oa"    # Ljava/lang/String;
    .param p2, "snippet"    # Ljava/lang/String;
    .param p3, "statusReport"    # Z
    .param p4, "time"    # J
    .param p6, "smsHeader"    # [B
    .param p7, "smsformat"    # I

    .prologue
    .line 2050
    sget-object v1, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Landroid/telephony/ILGSmsManager;->makeSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static makeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJII[B)[B
    .locals 12
    .param p0, "sca"    # Ljava/lang/String;
    .param p1, "oa"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "statusReport"    # Z
    .param p4, "time"    # J
    .param p6, "pid"    # I
    .param p7, "dcs"    # I
    .param p8, "smsHeader"    # [B

    .prologue
    .line 1970
    sget-object v1, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Landroid/telephony/ILGSmsManager;->makeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static makeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[B)[B
    .locals 10
    .param p0, "sca"    # Ljava/lang/String;
    .param p1, "oa"    # Ljava/lang/String;
    .param p2, "snippet"    # Ljava/lang/String;
    .param p3, "statusReport"    # Z
    .param p4, "time"    # J
    .param p6, "smsHeader"    # [B

    .prologue
    .line 1945
    sget-object v1, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/telephony/ILGSmsManager;->makeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static makeSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)[B
    .locals 10
    .param p0, "sca"    # Ljava/lang/String;
    .param p1, "da"    # Ljava/lang/String;
    .param p2, "snippet"    # Ljava/lang/String;
    .param p3, "statusReport"    # Z
    .param p4, "time"    # J
    .param p6, "smsHeader"    # [B
    .param p7, "smsformat"    # I

    .prologue
    .line 2073
    sget-object v1, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Landroid/telephony/ILGSmsManager;->makeSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static sendExceptionbySentIntent(Landroid/app/PendingIntent;I)V
    .locals 1
    .param p0, "sentIntent"    # Landroid/app/PendingIntent;
    .param p1, "failureCause"    # I

    .prologue
    .line 2258
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ILGSmsManager;->sendExceptionbySentIntent(Landroid/app/PendingIntent;I)V

    .line 2260
    return-void
.end method

.method public static sendExceptionbySentIntent(Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "failureCause"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2249
    .local p0, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ILGSmsManager;->sendExceptionbySentIntent(Ljava/util/ArrayList;I)V

    .line 2251
    return-void
.end method

.method public static setIsSimFull(Z)V
    .locals 2
    .param p0, "isSimFull"    # Z

    .prologue
    .line 2930
    :try_start_0
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p0}, Landroid/telephony/ILGSmsManager;->setIsSimFull(Z)V

    .line 2931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMSManager.java --> getIsSimFull - iLGSmsMgr.setIsSimFull() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v1}, Landroid/telephony/ILGSmsManager;->getIsSimFull()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2934
    :goto_0
    return-void

    .line 2932
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addMultimediaMessageDraft(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2683
    if-nez p1, :cond_0

    .line 2684
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2687
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2688
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 2689
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2695
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 2692
    :catch_0
    move-exception v1

    .line 2695
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 2662
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2663
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2664
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2669
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 2666
    :catch_0
    move-exception v1

    .line 2669
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public archiveStoredConversation(JZ)Z
    .locals 3
    .param p1, "conversationId"    # J
    .param p3, "archived"    # Z

    .prologue
    .line 2639
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2640
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2641
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2647
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2644
    :catch_0
    move-exception v1

    .line 2647
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 8
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 912
    const/4 v0, 0x0

    .line 914
    .local v0, "success":Z
    if-nez p2, :cond_0

    .line 915
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pdu is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 918
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 919
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 920
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForSubscriber(JLjava/lang/String;I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 927
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v0

    .line 923
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public copySmsToIcc([B[BI)I
    .locals 1
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 2205
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ILGSmsManager;->copySmsToIcc([B[BI)I

    move-result v0

    return v0
.end method

.method public copySmsToIccPrivate([B[BII)I
    .locals 1
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "sms_format"    # I

    .prologue
    .line 1997
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/telephony/ILGSmsManager;->copySmsToIccPrivate([B[BII)I

    move-result v0

    return v0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 8
    .param p1, "messageIndex"    # I

    .prologue
    .line 942
    const/4 v0, 0x0

    .line 943
    .local v0, "success":Z
    const/16 v2, 0xaf

    new-array v7, v2, [B

    .line 944
    .local v7, "pdu":[B
    const/4 v2, -0x1

    invoke-static {v7, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 947
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 948
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 949
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(JLjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 956
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 952
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIccMultiMode(II)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "smsformat"    # I

    .prologue
    .line 2099
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ILGSmsManager;->deleteMessageFromIccMultiMode(II)Z

    move-result v0

    return v0
.end method

.method public deleteStoredConversation(J)Z
    .locals 3
    .param p1, "conversationId"    # J

    .prologue
    .line 2587
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2588
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2589
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2595
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2592
    :catch_0
    move-exception v1

    .line 2595
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteStoredMessage(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 2562
    if-nez p1, :cond_0

    .line 2563
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2566
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2567
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 2568
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2573
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2570
    :catch_0
    move-exception v1

    .line 2573
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 4
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 1062
    const/4 v1, 0x0

    .line 1065
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1066
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastForSubscriber(JI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1073
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1069
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 1134
    const/4 v1, 0x0

    .line 1136
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 1137
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1140
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1141
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1142
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRangeForSubscriber(JII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1149
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 1145
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableGsmBroadcastRange(II)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 1166
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ILGSmsManager;->disableGsmBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    if-nez p1, :cond_0

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessageEx(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1500
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentTextEx(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessageEx(Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "dataCodingScheme"    # I
    .param p3, "bReplyAddress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1517
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/telephony/ILGSmsManager;->divideMessageEx(Ljava/lang/String;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessageEx(Ljava/lang/String;IZZ)Ljava/util/ArrayList;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "dataCodingScheme"    # I
    .param p3, "bReplyAddress"    # Z
    .param p4, "bSafeSMS"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1536
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/telephony/ILGSmsManager;->divideMessageEx(Ljava/lang/String;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessageForCopyToSIM(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1484
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2381
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty MMS location URL"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2384
    :cond_0
    if-nez p3, :cond_1

    .line 2385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2388
    :cond_1
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 2389
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v1, :cond_2

    .line 2404
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 2392
    .restart local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_2
    const-string v0, "com.android.phone"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, p3, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 2395
    const-string v0, "android.provider.Telephony.MMS_DOWNLOAD"

    const/4 v2, 0x2

    invoke-direct {p0, p1, p3, v0, v2}, Landroid/telephony/SmsManager;->grantCarrierPackageUriPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 2399
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IMms;->downloadMessage(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2401
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableAutoDCDisconnect(I)V
    .locals 1
    .param p1, "timeOut"    # I

    .prologue
    .line 2222
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p1}, Landroid/telephony/ILGSmsManager;->enableAutoDCDisconnect(I)V

    .line 2224
    return-void
.end method

.method public enableCellBroadcast(I)Z
    .locals 4
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 1031
    const/4 v1, 0x0

    .line 1034
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1035
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastForSubscriber(JI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1042
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1038
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 1096
    const/4 v1, 0x0

    .line 1098
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 1099
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1102
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1103
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1104
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRangeForSubscriber(JII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1111
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 1107
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableGsmBroadcastRange(II)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 1157
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ILGSmsManager;->enableGsmBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 999
    const/4 v1, 0x0

    .line 1002
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1003
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(JLjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1011
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 1007
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAutoPersisting()Z
    .locals 2

    .prologue
    .line 2872
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2873
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2874
    invoke-interface {v0}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2879
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2876
    :catch_0
    move-exception v1

    .line 2879
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCarrierConfigValues()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 2889
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2890
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2891
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/IMms;->getCarrierConfigValues(J)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2896
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 2893
    :catch_0
    move-exception v1

    .line 2896
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1234
    const-string v0, "unknown"

    .line 1236
    .local v0, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1237
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1238
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1243
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1240
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getMaxEfSms()I
    .locals 1

    .prologue
    .line 2170
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0}, Landroid/telephony/ILGSmsManager;->getMaxEfSms()I

    move-result v0

    return v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2114
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0}, Landroid/telephony/ILGSmsManager;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsCapacityOnIcc()I
    .locals 4

    .prologue
    .line 1263
    const/4 v1, -0x1

    .line 1265
    .local v1, "ret":I
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1266
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1267
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ISms;->getSmsCapacityOnIccForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1272
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1269
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSmscAddressFromIcc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1282
    const/4 v1, 0x0

    .line 1284
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1285
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1286
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ISms;->getSmscAddressFromIccForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1291
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 1288
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSubId()J
    .locals 4

    .prologue
    .line 875
    iget-wide v0, p0, Landroid/telephony/SmsManager;->mSubId:J

    const-wide/16 v2, -0x3ea

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 876
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubId()J

    move-result-wide v0

    .line 878
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/telephony/SmsManager;->mSubId:J

    goto :goto_0
.end method

.method public getUiccType()I
    .locals 1

    .prologue
    .line 2024
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0}, Landroid/telephony/ILGSmsManager;->getUiccType()I

    move-result v0

    return v0
.end method

.method public getValidityPeriod()I
    .locals 1

    .prologue
    .line 2155
    sget v0, Landroid/telephony/SmsManager;->vp:I

    return v0
.end method

.method public importMultimediaMessage(Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "timestampSecs"    # J
    .param p5, "seen"    # Z
    .param p6, "read"    # Z

    .prologue
    .line 2536
    if-nez p1, :cond_0

    .line 2537
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2540
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2541
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 2542
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2548
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 2545
    :catch_0
    move-exception v1

    .line 2548
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public importTextMessage(Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "timestampMillis"    # J
    .param p6, "seen"    # Z
    .param p7, "read"    # Z

    .prologue
    .line 2503
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 2504
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 2505
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2511
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v0

    .line 2508
    :catch_0
    move-exception v0

    .line 2511
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 420
    const-string v0, "3gpp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3gpp2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid pdu format. format must be either 3gpp or 3gpp2"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    :try_start_0
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 427
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISms;->injectSmsPduForSubscriber(J[BLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public insertDBForLGMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "destUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2291
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ILGSmsManager;->insertDBForLGMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isFdnEnabled()Z
    .locals 1

    .prologue
    .line 2238
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0}, Landroid/telephony/ILGSmsManager;->isFdnEnabled()Z

    move-result v0

    return v0
.end method

.method public isImsSmsSupported()Z
    .locals 4

    .prologue
    .line 1209
    const/4 v0, 0x0

    .line 1211
    .local v0, "boSupported":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1212
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1213
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1218
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1215
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 14
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "originatorPort"    # S
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 801
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid destinationAddress"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 805
    :cond_0
    if-eqz p5, :cond_1

    move-object/from16 v0, p5

    array-length v2, v0

    if-nez v2, :cond_2

    .line 806
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid message data"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 809
    :cond_2
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 810
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_3

    .line 811
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    const v2, 0xffff

    and-int v9, p3, v2

    const v2, 0xffff

    and-int v10, p4, v2

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/ISms;->sendDataWithOrigPortUsingSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 14
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 724
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-interface {v4, v5, v0}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 726
    const-string v4, "sendDataMessage(), Block Sending SMS in SMSManager5 by LGMDM"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 763
    :goto_0
    return-void

    .line 731
    :cond_0
    const/4 v4, 0x0

    const-string v5, "cdma_plus_dial_code_convert"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 732
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendTextMessage(), destinationAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 734
    move-object v13, p1

    .line 735
    .local v13, "tmpAddr":Ljava/lang/String;
    const-string v4, "+86"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 736
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 740
    :cond_1
    :goto_1
    move-object p1, v13

    .line 744
    .end local v13    # "tmpAddr":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 745
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 737
    .restart local v13    # "tmpAddr":Ljava/lang/String;
    :cond_3
    const-string v4, "**133*86"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 738
    const/16 v4, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 748
    .end local v13    # "tmpAddr":Ljava/lang/String;
    :cond_4
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    array-length v4, v0

    if-nez v4, :cond_6

    .line 749
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid message data"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 753
    :cond_6
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 754
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0xffff

    and-int v9, p3, v7

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 757
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v2

    .line 760
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "sendDataMessage(), RemoteException"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public sendEmailoverMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1900
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1902
    const-string v0, "sendEmailoverMultipartTextMessage(), Block Sending SMS in SMSManagerLGE5 by LGMDM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1910
    :goto_0
    return-void

    .line 1907
    :cond_0
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    sget v6, Landroid/telephony/SmsManager;->mSubmitPriority:I

    sget-boolean v7, Landroid/telephony/SmsManager;->mSubmitIsRoaming:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v7}, Landroid/telephony/ILGSmsManager;->sendEmailoverMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V

    goto :goto_0
.end method

.method public sendEmailoverTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1456
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    const-string v0, "sendEmailoverTextMessage(), Block Sending SMS in SMSManager7 by LGMDM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1466
    :goto_0
    return-void

    .line 1463
    :cond_0
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    sget v6, Landroid/telephony/SmsManager;->mSubmitPriority:I

    sget-boolean v7, Landroid/telephony/SmsManager;->mSubmitIsRoaming:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v7}, Landroid/telephony/ILGSmsManager;->sendEmailoverTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZ)V

    goto :goto_0
.end method

.method public sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2334
    if-nez p2, :cond_0

    .line 2335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2338
    :cond_0
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 2339
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v1, :cond_1

    .line 2352
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 2342
    .restart local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    const-string v0, "com.android.phone"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 2344
    const-string v0, "android.provider.Telephony.MMS_SEND"

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Landroid/telephony/SmsManager;->grantCarrierPackageUriPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 2347
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IMms;->sendMessage(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2349
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-interface {v4, v5, v0}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 523
    const-string v4, "sendMultipartTextMessage(), Block Sending SMS in SMSManager3 by LGMDM"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 584
    :goto_0
    return-void

    .line 528
    :cond_0
    const/4 v4, 0x0

    const-string v5, "cta_security_mo_sms_pop_up"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 529
    sget-object v4, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    move-object/from16 v0, p4

    invoke-interface {v4, v0}, Landroid/telephony/ILGSmsManager;->isBlockSendMessage(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 530
    const-string v4, "[SmsManager] sendMultipartTextMessage(), Block Sending SMS by Access Lock"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :cond_1
    const/4 v4, 0x0

    const-string v5, "cdma_plus_dial_code_convert"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 538
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendTextMessage(), destinationAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 540
    move-object v12, p1

    .line 541
    .local v12, "tmpAddr":Ljava/lang/String;
    const-string v4, "+86"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 542
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 546
    :cond_2
    :goto_1
    move-object p1, v12

    .line 550
    .end local v12    # "tmpAddr":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 551
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 543
    .restart local v12    # "tmpAddr":Ljava/lang/String;
    :cond_4
    const-string v4, "**133*86"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 544
    const/16 v4, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 553
    .end local v12    # "tmpAddr":Ljava/lang/String;
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_7

    .line 554
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid message body"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 557
    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 559
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 561
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    sget-object v4, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    sget v5, Landroid/telephony/SmsManager;->vp:I

    sget v6, Landroid/telephony/SmsManager;->mSubmitPriority:I

    sget-boolean v7, Landroid/telephony/SmsManager;->mSubmitIsRoaming:Z

    invoke-interface {v4, v5, v6, v7}, Landroid/telephony/ILGSmsManager;->setOptionsBeforeSend(IIZ)V

    .line 563
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 566
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v2

    .line 569
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "sendMultipartTextMessage(), RemoteException"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 573
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_8
    const/4 v8, 0x0

    .line 574
    .local v8, "sentIntent":Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 575
    .local v9, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_9

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 576
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 578
    .restart local v8    # "sentIntent":Landroid/app/PendingIntent;
    :cond_9
    if-eqz p5, :cond_a

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 579
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 581
    .restart local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V
    .locals 15
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I
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
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid destinationAddress"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 652
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_2

    .line 653
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid message body"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    :cond_2
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v2, v4, v0}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 659
    const-string v2, "sendMultipartTextMessage(), Block Sending SMS in SMSManager4 by LGMDM"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 688
    :cond_3
    :goto_0
    return-void

    .line 664
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    .line 666
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 667
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_3

    .line 668
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithOptionsUsingSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 673
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 677
    :cond_5
    const/4 v8, 0x0

    .line 678
    .local v8, "sentIntent":Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 679
    .local v9, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 680
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 682
    .restart local v8    # "sentIntent":Landroid/app/PendingIntent;
    :cond_6
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 683
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 685
    .restart local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "cbAddress"    # Ljava/lang/String;
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
    .line 1836
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1838
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "cbAddress"    # Ljava/lang/String;
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
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1849
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p7, "readReceiptIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1851
    const-string v0, "SendMultipartTextMessage(), Block Sending SMS in SMSManager2-2 by LGMDM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1860
    :goto_0
    return-void

    .line 1855
    :cond_0
    const-string v0, "SendMultipartTextMessage(), SMSManager"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1857
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    sget v7, Landroid/telephony/SmsManager;->mSubmitPriority:I

    sget-boolean v8, Landroid/telephony/SmsManager;->mSubmitIsRoaming:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Landroid/telephony/ILGSmsManager;->sendMultipartTextMessageWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IZLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public sendMultipartTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "replyAddress"    # Ljava/lang/String;
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
    .line 1625
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 1626
    return-void
.end method

.method public sendMultipartTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;III)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "replyAddress"    # Ljava/lang/String;
    .param p7, "confirmRead"    # I
    .param p8, "replyOption"    # I
    .param p9, "protocolId"    # I
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
            "III)V"
        }
    .end annotation

    .prologue
    .line 1669
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1671
    const-string v0, "sendMultipartTextMessageLge(), Block Sending SMS in SMSManagerMultiLGE by LGMDM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1679
    :goto_0
    return-void

    .line 1676
    :cond_0
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v10}, Landroid/telephony/ILGSmsManager;->sendMultipartTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IIIZ)V

    goto :goto_0
.end method

.method public sendMultipartTextMessageMoreLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "replyAddress"    # Ljava/lang/String;
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
    .line 1739
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessageMoreLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 1740
    return-void
.end method

.method public sendMultipartTextMessageMoreLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;III)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "replyAddress"    # Ljava/lang/String;
    .param p7, "confirmRead"    # I
    .param p8, "replyOption"    # I
    .param p9, "protocolId"    # I
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
            "III)V"
        }
    .end annotation

    .prologue
    .line 1782
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    const-string v0, "sendMultipartTextMessageMoreLge(), Block Sending SMS in SMSManagerMultiMoreLGE by LGMDM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1792
    :goto_0
    return-void

    .line 1789
    :cond_0
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    const/4 v10, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v10}, Landroid/telephony/ILGSmsManager;->sendMultipartTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IIIZ)V

    goto :goto_0
.end method

.method public sendStoredMultimediaMessage(Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "configOverrides"    # Landroid/os/Bundle;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2816
    if-nez p1, :cond_0

    .line 2817
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2820
    :cond_0
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, p3}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2822
    const-string v0, "sendStoredMultimediaMessage, Block Sending SMS in sendStoredMultimediaMessage by LGMDM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2835
    :cond_1
    :goto_0
    return-void

    .line 2827
    :cond_2
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 2828
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    .line 2829
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(JLjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2832
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendStoredMultipartTextMessage(Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2781
    .local p3, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p4, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_0

    .line 2782
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2785
    :cond_0
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, p3}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2787
    const-string v0, "sendStoredMultipartTextMessage(), Block Sending SMS in sendStoredMultipartTextMessage by LGMDM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2798
    :goto_0
    return-void

    .line 2792
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2793
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->sendStoredMultipartText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2795
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendStoredTextMessage(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2727
    if-nez p1, :cond_0

    .line 2728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2731
    :cond_0
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, p3}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2733
    const-string v0, "sendStoredTextMessage, Block Sending SMS in sendStoredTextMessage by LGMDM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2744
    :goto_0
    return-void

    .line 2738
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2739
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->sendStoredText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2741
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 274
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    const-string v2, "sendTextMessage, Block Sending SMS in SMSManager1 by LGMDM"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v2, 0x0

    const-string v3, "cdma_plus_dial_code_convert"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextMessage(), destinationAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 284
    move-object v10, p1

    .line 285
    .local v10, "tmpAddr":Ljava/lang/String;
    const-string v2, "+86"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 286
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 290
    :cond_1
    :goto_1
    move-object p1, v10

    .line 294
    .end local v10    # "tmpAddr":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 295
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    .restart local v10    # "tmpAddr":Ljava/lang/String;
    :cond_3
    const-string v2, "**133*86"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 288
    const/16 v2, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 299
    .end local v10    # "tmpAddr":Ljava/lang/String;
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    const-string v3, "allow_sending_empty_sms"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 300
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 307
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    sget-object v2, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    sget v3, Landroid/telephony/SmsManager;->vp:I

    sget v4, Landroid/telephony/SmsManager;->mSubmitPriority:I

    sget-boolean v5, Landroid/telephony/SmsManager;->mSubmitIsRoaming:Z

    invoke-interface {v2, v3, v4, v5}, Landroid/telephony/ILGSmsManager;->setOptionsBeforeSend(IIZ)V

    .line 310
    const/4 v2, 0x0

    const-string v3, "not_send_sms_in_call"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 311
    sget-object v2, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v2}, Landroid/telephony/ILGSmsManager;->notSendMsgInCall()V

    .line 316
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 318
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 321
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "sendTextMessage(), RemoteException"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    .locals 15
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I

    .prologue
    .line 373
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid destinationAddress"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid message body"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 382
    :cond_1
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v2, v4, v0}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 384
    const-string v2, "sendTextMessage, Block Sending SMS in SMSManager2 by LGMDM"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 399
    :cond_2
    :goto_0
    return-void

    .line 390
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 391
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_2

    .line 392
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/telephony/ISms;->sendTextWithOptionsUsingSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "readReceiptIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1442
    const-string v0, "sendTextMessage() with only readReceipt"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1443
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 1444
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "cbAddress"    # Ljava/lang/String;

    .prologue
    .line 1397
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1399
    const-string v0, "SendTextMessage(), Block Sending SMS in SMSManager6 by LGMDM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1410
    :goto_0
    return-void

    .line 1406
    :cond_0
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    sget v7, Landroid/telephony/SmsManager;->mSubmitPriority:I

    sget-boolean v8, Landroid/telephony/SmsManager;->mSubmitIsRoaming:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v8}, Landroid/telephony/ILGSmsManager;->sendTextMessageWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "cbAddress"    # Ljava/lang/String;
    .param p7, "readReceiptIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1422
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1424
    const-string v0, "SendTextMessage(), Block Sending SMS in SMSManager6 by LGMDM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1434
    :goto_0
    return-void

    .line 1429
    :cond_0
    const-string v0, "sendTextMessage() with CB & readReceipt"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1431
    new-instance v6, Lcom/lge/internal/telephony/LGSendingSMSOption;

    sget v1, Landroid/telephony/SmsManager;->mSubmitPriority:I

    sget-boolean v0, Landroid/telephony/SmsManager;->mSubmitIsRoaming:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {v6, p6, v1, p7, v0}, Lcom/lge/internal/telephony/LGSendingSMSOption;-><init>(Ljava/lang/String;ILandroid/app/PendingIntent;I)V

    .line 1432
    .local v6, "msgOption":Lcom/lge/internal/telephony/LGSendingSMSOption;
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ILGSmsManager;->sendTextMessageWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/lge/internal/telephony/LGSendingSMSOption;)V

    goto :goto_0

    .line 1431
    .end local v6    # "msgOption":Lcom/lge/internal/telephony/LGSendingSMSOption;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public sendTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;III)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "replyAddr"    # Ljava/lang/String;
    .param p7, "confirmRead"    # I
    .param p8, "replyOption"    # I
    .param p9, "protocolId"    # I

    .prologue
    .line 1578
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    const-string v0, "sendTextMessageLge(), Block Sending SMS in SMSManagerLGE by LGMDM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1588
    :goto_0
    return-void

    .line 1585
    :cond_0
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v10}, Landroid/telephony/ILGSmsManager;->sendTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IIIZ)V

    goto :goto_0
.end method

.method public sendTextMessageMoreLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;III)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "replyAddress"    # Ljava/lang/String;
    .param p7, "confirmRead"    # I
    .param p8, "replyOption"    # I
    .param p9, "protocolId"    # I

    .prologue
    .line 1690
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1692
    const-string v0, "sendTextMessageMoreLge(), Block Sending SMS in SMSManagerMoreLGE by LGMDM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1701
    :goto_0
    return-void

    .line 1698
    :cond_0
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    const/4 v10, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v10}, Landroid/telephony/ILGSmsManager;->sendTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IIIZ)V

    goto :goto_0
.end method

.method public sendreadReceipt(Landroid/telephony/SmsMessage;)V
    .locals 3
    .param p1, "receivedSMS"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 2903
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/telephony/ILGSmsManager;->sendReadReceipt(Ljava/lang/String;I)V

    .line 2904
    return-void
.end method

.method public setAutoPersisting(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2851
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2852
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2853
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2858
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 2855
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setServiceCenterAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "smsc"    # Ljava/lang/String;

    .prologue
    .line 2129
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p1}, Landroid/telephony/ILGSmsManager;->setServiceCenterAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSmsIsRoaming(Z)V
    .locals 0
    .param p1, "isRoaming"    # Z

    .prologue
    .line 2272
    sput-boolean p1, Landroid/telephony/SmsManager;->mSubmitIsRoaming:Z

    .line 2273
    return-void
.end method

.method public setSmsPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 1922
    sput p1, Landroid/telephony/SmsManager;->mSubmitPriority:I

    .line 1923
    return-void
.end method

.method public setSmscAddressToIcc(Ljava/lang/String;)Z
    .locals 4
    .param p1, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 1303
    const/4 v1, 0x0

    .line 1305
    .local v1, "ret":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1306
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/telephony/ISms;->setSmscAddressToIccForSubscriber(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1312
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1309
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setUiccType(I)V
    .locals 1
    .param p1, "uiccType"    # I

    .prologue
    .line 2010
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p1}, Landroid/telephony/ILGSmsManager;->setUiccType(I)V

    .line 2012
    return-void
.end method

.method public setValidityPeriod(I)V
    .locals 0
    .param p1, "validityperiod"    # I

    .prologue
    .line 2144
    sput p1, Landroid/telephony/SmsManager;->vp:I

    .line 2145
    return-void
.end method

.method public smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z
    .locals 1
    .param p1, "isOnOff"    # Ljava/lang/String;

    .prologue
    .line 2310
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p1}, Landroid/telephony/ILGSmsManager;->smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 8
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    .prologue
    .line 974
    const/4 v0, 0x0

    .line 977
    .local v0, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 978
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 979
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(JLjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 986
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 982
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateMmsDownloadStatus(Landroid/content/Context;IILandroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageRef"    # I
    .param p3, "status"    # I
    .param p4, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2473
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2474
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_1

    .line 2484
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 2477
    .restart local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/IMms;->updateMmsDownloadStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2481
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_1
    if-eqz p4, :cond_0

    .line 2482
    const/4 v1, 0x2

    invoke-virtual {p1, p4, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 2478
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public updateMmsSendStatus(Landroid/content/Context;I[BILandroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageRef"    # I
    .param p3, "pdu"    # [B
    .param p4, "status"    # I
    .param p5, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2440
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2441
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_1

    .line 2451
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 2444
    .restart local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    invoke-interface {v0, p2, p3, p4}, Lcom/android/internal/telephony/IMms;->updateMmsSendStatus(I[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2448
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_1
    if-eqz p5, :cond_0

    .line 2449
    const/4 v1, 0x1

    invoke-virtual {p1, p5, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 2445
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public updateSmsOnSimReadStatus(IZ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "read"    # Z

    .prologue
    .line 2186
    sget-object v0, Landroid/telephony/SmsManager;->iLGSmsMgr:Landroid/telephony/ILGSmsManager;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ILGSmsManager;->updateSmsOnSimReadStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public updateSmsSendStatus(IZ)V
    .locals 2
    .param p1, "messageRef"    # I
    .param p2, "success"    # Z

    .prologue
    .line 450
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 451
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 452
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->updateSmsSendStatus(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateStoredMessageStatus(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "statusValues"    # Landroid/content/ContentValues;

    .prologue
    .line 2609
    if-nez p1, :cond_0

    .line 2610
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2613
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2614
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 2615
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2621
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2618
    :catch_0
    move-exception v1

    .line 2621
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAllMessagesFromIccExtended()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method