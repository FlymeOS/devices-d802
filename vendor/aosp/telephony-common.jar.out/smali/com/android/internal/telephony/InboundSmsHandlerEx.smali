.class public abstract Lcom/android/internal/telephony/InboundSmsHandlerEx;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "InboundSmsHandlerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;,
        Lcom/android/internal/telephony/InboundSmsHandlerEx$EMSSegmentExpirationRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_KTLBS_DATA_SMS_RECEIVED:Ljava/lang/String; = "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

.field protected static final APP_DIRECTED_SMS_FORMATTED:I = 0x0

.field protected static final APP_DIRECTED_SMS_NORMAL:I = -0x1

.field protected static final APP_DIRECTED_SMS_PROCESSED:I = 0x1

.field protected static final APP_DIRECTED_SMS_VZWLBSROVER:I = -0x2

.field public static final EMS_EXPIRATION_TIME:I = 0x493e0

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field static final INCOMPLETE_SELECT:Ljava/lang/String; = "reference_number=? AND time=?"

.field private static final KEYWORD_MOBILEBOX_PRO:Ljava/lang/String; = "Mobilbox Pro"

.field private static final KIZON_PACKAGE:Ljava/lang/String; = "com.lge.band"

.field private static final KIZON_PATTERN:Ljava/util/regex/Pattern;

.field private static final KIZON_PREFIX:Ljava/lang/String; = "^KizON.*\\[[0-9a-zA-Z+/=]{6}\\]"

.field private static final MCAFEE_PACKAGE:Ljava/lang/String; = "com.wsandroid.suite.lge"

.field private static final MCAFEE_PATTERN:Ljava/util/regex/Pattern;

.field private static final MCAFEE_PREFIX:Ljava/lang/String; = "service.wsandroid.lge.token"

.field private static final MCAFEE_WEB_PREFIX:Ljava/lang/String;

.field public static final MISSING_CONCAT_CHAR:Ljava/lang/String; = "(...)"

.field private static final MOBILEBOX_PRO_SERVER:Ljava/lang/String; = "3311"

.field private static final NEED_TO_CHANGE_DELIVER_ACTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final PUBLIC_FIRST_BYTE:B = -0xft

.field private static final PUBLIC_PACKAGE:Ljava/lang/String; = "com.tion.securitysms"

.field private static final PUBLIC_SECOND_BYTE:B = -0x60t

.field public static RECEIVE_DAN_SUCCESS:Z = false

.field private static final SMS_INBOX_CONSTRAINT:Ljava/lang/String; = "(type = 1)"

.field private static final SMS_INBOX_MAX_COUNT:I = 0x32

.field private static final SPTS_ADDRESS:Ljava/lang/String; = "00000000000"

.field public static final STITCHING_WAIT_TIME:J = 0x2932e00L

.field private static final TAG:Ljava/lang/String; = "Mms Testbed"

.field private static final TFDM_CLASS_NAME:Ljava/lang/String; = "com.tracfone.generic.clientprovisioninghandler.DeviceManagerSMSIntentReceiver"

.field private static final TFDM_PACKAGE_NAME:Ljava/lang/String; = "com.tracfone.generic.clientprovisioninghandler"

.field private static final TFDM_PREFIX:Ljava/lang/String; = "//DM"

.field private static final TFDM_SERVER:Ljava/lang/String; = "50228"

.field private static final VVMApp:Ljava/lang/String; = "com.coremobility.app.vnotes"

.field private static final mOperatorMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final mRawUri:Landroid/net/Uri;

.field private static final prefixVZW:Ljava/lang/String; = "//VZW"


# instance fields
.field protected lgu:Lcom/android/internal/telephony/LGUSmsUtils;

.field protected sprintReassemblySms:Lcom/android/internal/telephony/LGSprintReassemblySms;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    sput-boolean v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->RECEIVE_DAN_SUCCESS:Z

    .line 126
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    .line 139
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    const-string v1, "icc_index"

    aput-object v1, v0, v5

    const-string v1, "time"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    .line 179
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.provider.Telephony.VOICE_RECEIVED"

    aput-object v1, v0, v2

    const-string v1, "android.provider.Telephony.VIDEO_RECEIVED"

    aput-object v1, v0, v3

    const-string v1, "android.provider.Telephony.CALLBACKURL_SKT_RECEIVED"

    aput-object v1, v0, v4

    const-string v1, "android.provider.Telephony.CALLBACKURL_KT_RECEIVED"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->NEED_TO_CHANGE_DELIVER_ACTION:[Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^((\\[[wW][eE][bB]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->SMS_WEB_SEND:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\])[ \n\r]?)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->MCAFEE_WEB_PREFIX:Ljava/lang/String;

    .line 203
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->MCAFEE_WEB_PREFIX:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->MCAFEE_PATTERN:Ljava/util/regex/Pattern;

    .line 208
    const-string v0, "^KizON.*\\[[0-9a-zA-Z+/=]{6}\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->KIZON_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .prologue
    const/4 v2, 0x1

    .line 236
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "OperatorMessage"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 240
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->initOperatorMessagesMap()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "lgu_dispatch"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 246
    new-instance v0, Lcom/android/internal/telephony/LGUSmsUtils;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/telephony/LGUSmsUtils;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->lgu:Lcom/android/internal/telephony/LGUSmsUtils;

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "sprint_reassembly_sms"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    new-instance v0, Lcom/android/internal/telephony/LGSprintReassemblySms;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/LGSprintReassemblySms;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sprintReassemblySms:Lcom/android/internal/telephony/LGSprintReassemblySms;

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "force_write_mode_allowed"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->allowOpWriteSmsForPhone()V

    .line 261
    :cond_3
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private addGsmOperatorMessages([[BZZLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V
    .locals 6
    .param p1, "pdus"    # [[B
    .param p2, "isConcat"    # Z
    .param p3, "existsPortAddrs"    # Z
    .param p4, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p6, "receiver"    # Landroid/content/BroadcastReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[BZZ",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/SmsOperatorBasicMessage;",
            ">;",
            "Landroid/content/BroadcastReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1375
    .local p5, "operatorMessageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/SmsOperatorBasicMessage;>;"
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1376
    const-string v1, "KTPortMessage"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1377
    const-string v1, "SKTCommonPush"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1378
    const-string v1, "SKTUrlCallback"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1379
    const-string v1, "lgu_gsm_operator_message"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1385
    :goto_0
    if-nez p2, :cond_0

    .line 1386
    const-string v1, "specialMessage"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1388
    :cond_0
    return-void

    .line 1381
    :cond_1
    const-string v1, "KTUrlCallback"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1382
    const-string v1, "spam"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pdus"    # [[B
    .param p3, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p5, "receiver"    # Landroid/content/BroadcastReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[[B",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/SmsOperatorBasicMessage;",
            ">;",
            "Landroid/content/BroadcastReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1391
    .local p4, "operatorMessageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/SmsOperatorBasicMessage;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1392
    const-string v0, "spam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1393
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p2, p5}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorSpamMessage(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p3, p2, p5}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addSMSPermissionTracking()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2135
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2136
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2138
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNewSms(), [Permission Check] allowed SMS_RECEIVED_ACTION Activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2145
    .end local v0    # "i":I
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2147
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2148
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNewSms(), [Permission Check] allowed SMS_DELIVER_ACTION Activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2152
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private allowOpWriteSmsForPhone()V
    .locals 9

    .prologue
    .line 2442
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2443
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const-string v5, "com.android.phone"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2444
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v6, "appops"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 2445
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v5, 0xf

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v7, "com.android.phone"

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    .line 2446
    .local v3, "mode":I
    if-eqz v3, :cond_0

    .line 2447
    const-string v5, "addTrackerToRawTable, OP_WRITE_SMS : !MODE_ALLOWED -> MODE_ALLOWED "

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2448
    const/16 v5, 0xf

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v7, "com.android.phone"

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 2457
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "mode":I
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 2451
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "mode":I
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    const-string v5, "addTrackerToRawTable, OP_WRITE_SMS : MODE_ALLOWED "

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2453
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "mode":I
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 2455
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Phone package not found: com.android.phone"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkConcatTimeStamp(Lcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "refNumber"    # Ljava/lang/String;

    .prologue
    .line 2299
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v6, "ConcatMTCheckTimestamp_DCM"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2300
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v6

    const-wide/32 v8, 0x240c8400

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 2305
    .local v0, "comparingTime":Ljava/lang/String;
    :goto_0
    const-string v4, "address=? AND reference_number=? AND date<?"

    .line 2306
    .local v4, "whereEx":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    const/4 v5, 0x1

    aput-object p3, v3, v5

    const/4 v5, 0x2

    aput-object v0, v3, v5

    .line 2309
    .local v3, "whereArgsEx":[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2310
    .local v1, "deleteCnt":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessagePart(), [KRSMS] duplicated reference number & more than 10 minutes earlier timestamp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2316
    .end local v1    # "deleteCnt":I
    :goto_1
    return-void

    .line 2303
    .end local v0    # "comparingTime":Ljava/lang/String;
    .end local v3    # "whereArgsEx":[Ljava/lang/String;
    .end local v4    # "whereEx":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "comparingTime":Ljava/lang/String;
    goto :goto_0

    .line 2311
    .restart local v3    # "whereArgsEx":[Ljava/lang/String;
    .restart local v4    # "whereEx":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2312
    .local v2, "e":Landroid/database/SQLException;
    const-string v5, "processMessagePart(), Can\'t access multipart SMS database"

    invoke-static {v5, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2313
    .end local v2    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v2

    .line 2314
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v5, "processMessagePart(), Runtime Exception: maybe concat reference is mixed"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method private controlSeperateSmsUicc(Lcom/android/internal/telephony/InboundSmsTracker;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2211
    const-string v2, "icc_index"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2212
    .local v0, "iccColumn":I
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 2213
    .local v1, "iccSring":Ljava/lang/String;
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2215
    :cond_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 2216
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2217
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2219
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2221
    :cond_2
    const/4 v2, -0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2222
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->lgeGetIndexOnIcc()I

    move-result v2

    if-lez v2, :cond_3

    .line 2223
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->lgeGetIndexOnIcc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2225
    :cond_3
    return-object v1
.end method

.method private dispatchPduKRTestbed(Ljava/lang/String;ILjava/lang/String;[[BLandroid/content/BroadcastReceiver;)I
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "messageCount"    # I
    .param p3, "serviceCenter"    # Ljava/lang/String;
    .param p4, "pdus"    # [[B
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 2483
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2484
    .local v9, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p2, :cond_1

    .line 2485
    aget-object v0, p4, v7

    const-string v1, "3gpp2"

    invoke-static {v0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 2487
    .local v8, "msg":Landroid/telephony/SmsMessage;
    if-eqz v8, :cond_0

    .line 2488
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v6

    .line 2489
    .local v6, "data":[B
    const/4 v0, 0x0

    array-length v1, v6

    invoke-virtual {v9, v6, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2484
    .end local v6    # "data":[B
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2495
    .end local v8    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_WAPSERVICE:Z

    if-eqz v0, :cond_2

    .line 2496
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mWapPush:Lcom/android/internal/telephony/WapPushOverSmsEx;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object v2, p5

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/WapPushOverSmsEx;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2501
    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mWapPush:Lcom/android/internal/telephony/WapPushOverSmsEx;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object v2, p5

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/WapPushOverSmsEx;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method private dispatchVVM3Pdu([B)V
    .locals 6
    .param p1, "vvm3pduToDispatch"    # [B

    .prologue
    .line 1840
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1841
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "data"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.vvm3] intent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1843
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1845
    const-string v0, "[sms.mt.vvm3] dispatchVVM3Pdu end]"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1846
    return-void
.end method

.method private getSMSInboxMessageCount()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1484
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1485
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "(type = 1)"

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1489
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 1490
    const/4 v7, 0x0

    .line 1495
    :goto_0
    return v7

    .line 1493
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1494
    .local v7, "count":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getUserDataForSafeMMS(Landroid/telephony/SmsMessage;)[B
    .locals 5
    .param p1, "msg"    # Landroid/telephony/SmsMessage;

    .prologue
    const/4 v4, 0x0

    .line 2550
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAFE SMS isSafeSMSCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    iget-byte v2, v2, Lcom/android/internal/telephony/SmsHeader;->safeSMS:B

    and-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2552
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 2553
    .local v0, "safeMmsPdu":[B
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    iget-byte v1, v1, Lcom/android/internal/telephony/SmsHeader;->safeSMS:B

    aput-byte v1, v0, v4

    .line 2554
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2558
    .end local v0    # "safeMmsPdu":[B
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v0

    goto :goto_0
.end method

.method private handleCdmaSmsCDG2(Landroid/telephony/SmsMessage;)V
    .locals 10
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    const/16 v9, 0x1002

    const/16 v8, 0x32

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(), CDMA SMS CDG2 Test mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "cdma_sms_cdg2"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2158
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 2159
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v4, "sms_over_lgims"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(), KEY_SMS_OVER_LGIMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "sms_over_lgims"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2161
    const-string v3, "persist.radio.sms_ims"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2162
    .local v0, "mImsRegi":Ljava/lang/String;
    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2163
    const-string v3, "handleMessage(), IMS is not registered!Execute SMS CDG2 Test mode"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2164
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    .line 2165
    iget-object v1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 2166
    .local v1, "smsCdma":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v2

    .line 2168
    .local v2, "teleService":I
    if-ne v2, v9, :cond_0

    .line 2169
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->getSMSInboxMessageCount()I

    move-result v3

    if-lt v3, v8, :cond_0

    .line 2170
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    .line 2189
    .end local v0    # "mImsRegi":Ljava/lang/String;
    .end local v1    # "smsCdma":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2    # "teleService":I
    :cond_0
    :goto_0
    return-void

    .line 2174
    .restart local v0    # "mImsRegi":Ljava/lang/String;
    :cond_1
    const-string v3, "handleMessage(), IMS is registered!Ignore SMS CDG2 Test mode"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 2177
    .end local v0    # "mImsRegi":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(), KEY_SMS_OVER_LGIMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "sms_over_lgims"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2178
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    .line 2179
    iget-object v1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 2180
    .restart local v1    # "smsCdma":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v2

    .line 2182
    .restart local v2    # "teleService":I
    if-ne v2, v9, :cond_0

    .line 2183
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->getSMSInboxMessageCount()I

    move-result v3

    if-lt v3, v8, :cond_0

    .line 2184
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    goto :goto_0
.end method

.method private handleConcatStitching(Lcom/android/internal/telephony/InboundSmsTracker;I[[BZZZLjava/lang/String;Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "messageCount"    # I
    .param p3, "pdus"    # [[B
    .param p4, "exceedFirstTimePeriod"    # Z
    .param p5, "exceedSecondTimePeriod"    # Z
    .param p6, "allSegmentReceived"    # Z
    .param p7, "missingSegIndex"    # Ljava/lang/String;
    .param p8, "stitchRefMsg"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 2254
    if-eqz p4, :cond_2

    .line 2255
    new-instance p7, Ljava/lang/String;

    .end local p7    # "missingSegIndex":Ljava/lang/String;
    invoke-direct {p7}, Ljava/lang/String;-><init>()V

    .line 2256
    .restart local p7    # "missingSegIndex":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 2257
    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    aget-object v1, p3, v0

    array-length v1, v1

    if-lez v1, :cond_1

    .line 2259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart, [RED] fill pdu seg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2256
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2261
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart, [RED] fill missing seg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2262
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 2263
    const-string v1, ","

    invoke-virtual {p7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 2264
    if-eqz p8, :cond_0

    .line 2265
    invoke-virtual {p8}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v1

    aput-object v1, p3, v0

    .line 2266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart, pdus["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = stitchRefMsg.getPdu()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    goto :goto_1

    .line 2271
    .end local v0    # "i":I
    :cond_2
    if-nez p6, :cond_4

    if-nez p4, :cond_3

    if-eqz p5, :cond_4

    .line 2272
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/telephony/InboundSmsTracker;->isNeedToKeepDB:Z

    .line 2276
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart, [RED] tracker.isNeedToKeepDB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/internal/telephony/InboundSmsTracker;->isNeedToKeepDB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2277
    return-object p7

    .line 2274
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/internal/telephony/InboundSmsTracker;->isNeedToKeepDB:Z

    goto :goto_2
.end method

.method private handleConcatStitching2(IZZZLjava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "messageCount"    # I
    .param p2, "exceedFirstTimePeriod"    # Z
    .param p3, "exceedSecondTimePeriod"    # Z
    .param p4, "allSegmentReceived"    # Z
    .param p5, "missingSegIndex"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 2282
    if-le p1, v1, :cond_0

    .line 2283
    if-nez p4, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 2284
    const-string v0, "ctreplace"

    invoke-virtual {p6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2285
    if-eqz p5, :cond_0

    .line 2286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessagePart(), [RED] missingSegIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2287
    const-string v0, "missingSegIndex"

    invoke-virtual {p6, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2293
    :cond_0
    :goto_0
    return-void

    .line 2290
    :cond_1
    const-string v0, "ctreplace"

    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleEmsSegTimer(Lcom/android/internal/telephony/InboundSmsTracker;JZI)V
    .locals 26
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "firstTime"    # J
    .param p4, "isFirtMTconcat"    # Z
    .param p5, "mMessageCount"    # I

    .prologue
    .line 2321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt] tracker.getMessageCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2322
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "concat_stitching"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2325
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 2326
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x14

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v8, v2

    .line 2328
    .local v8, "dispatchTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrackerToRawTable, [RED] create first timer. dispatchTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2329
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;-><init>(Lcom/android/internal/telephony/InboundSmsHandlerEx;Lcom/android/internal/telephony/InboundSmsTracker;JJ)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2354
    .end local v8    # "dispatchTime":J
    :cond_0
    :goto_0
    return-void

    .line 2336
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "concat_expired_time"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2337
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 2338
    const-wide/32 v16, 0x5265c00

    .line 2339
    .local v16, "expiryTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrackerToRawTable, [RED] CMCC create first timer. expiryTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2340
    new-instance v2, Ljava/lang/Thread;

    new-instance v11, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    invoke-direct/range {v11 .. v17}, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;-><init>(Lcom/android/internal/telephony/InboundSmsHandlerEx;Lcom/android/internal/telephony/InboundSmsTracker;JJ)V

    invoke-direct {v2, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2346
    .end local v16    # "expiryTime":J
    :cond_2
    const-string v2, "[sms.mt] calls EMSSegmentExpirationRunnable"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2347
    new-instance v2, Ljava/lang/Thread;

    new-instance v19, Lcom/android/internal/telephony/InboundSmsHandlerEx$EMSSegmentExpirationRunnable;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v23

    move-object/from16 v20, p0

    move-wide/from16 v24, p2

    invoke-direct/range {v19 .. v25}, Lcom/android/internal/telephony/InboundSmsHandlerEx$EMSSegmentExpirationRunnable;-><init>(Lcom/android/internal/telephony/InboundSmsHandlerEx;Ljava/lang/String;IIJ)V

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private handleMsgKRTestbed(IZ[[BLandroid/database/Cursor;I)I
    .locals 4
    .param p1, "destPort"    # I
    .param p2, "isCdmaWapPush"    # Z
    .param p3, "pdus"    # [[B
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "cursorCount"    # I

    .prologue
    const/4 v3, 0x2

    .line 2462
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_2

    .line 2463
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    .line 2464
    const/4 v2, 0x1

    invoke-interface {p4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2466
    .local v0, "cursorSequence":I
    if-nez p2, :cond_0

    .line 2467
    add-int/lit8 v0, v0, -0x1

    .line 2469
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, p3, v0

    .line 2474
    if-nez v0, :cond_1

    invoke-interface {p4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2475
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 2462
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2478
    .end local v0    # "cursorSequence":I
    :cond_2
    return p1
.end method

.method private static initOperatorMessagesMap()V
    .locals 3

    .prologue
    .line 1365
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    const-string v1, "specialMessage"

    const-string v2, "GsmSmsKRSpecialMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    const-string v1, "SKTCommonPush"

    const-string v2, "GsmSmsSKTPortMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    const-string v1, "SKTUrlCallback"

    const-string v2, "GsmSmsSKTUrlCallback"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    const-string v1, "KTPortMessage"

    const-string v2, "GsmSmsKTPortMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    const-string v1, "KTUrlCallback"

    const-string v2, "GsmSmsKTUrlCallback"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    const-string v1, "lgu_gsm_operator_message"

    const-string v2, "GsmSmsLGUMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    return-void
.end method

.method private isDirectedToMailboxPro(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "messageBody"    # Ljava/lang/String;
    .param p2, "originatingAddress"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2360
    if-nez p1, :cond_1

    .line 2368
    :cond_0
    :goto_0
    return v0

    .line 2364
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDirectedToMailboxPro: messageBody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "originatingAddress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 2368
    const-string v1, "Mobilbox Pro"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "3311"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processDirectedSMS(Lcom/android/internal/telephony/InboundSmsTracker;I[[BLandroid/content/BroadcastReceiver;)I
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "messageCount"    # I
    .param p3, "pdus"    # [[B
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt] processMessagePart messageCount =["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1200
    const/4 v10, 0x0

    .line 1201
    .local v10, "msg":Landroid/telephony/SmsMessage;
    const-string v9, ""

    .line 1202
    .local v9, "messageBody":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, p2, :cond_3

    .line 1203
    aget-object v2, p3, v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "3gpp2"

    :goto_1
    invoke-static {v2, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v10

    .line 1206
    if-nez v10, :cond_1

    .line 1202
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    const-string v0, "3gpp"

    goto :goto_1

    .line 1211
    :cond_1
    if-nez v8, :cond_2

    .line 1212
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 1214
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 1219
    :cond_3
    if-nez v10, :cond_4

    .line 1220
    const-string v0, "[sms.mt] application directed sms null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1222
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 1223
    const/4 v0, 0x2

    .line 1268
    :goto_3
    return v0

    .line 1227
    :cond_4
    iget-object v0, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput-object v9, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processMessagePart] msg.mWrappedSmsMessage.messageBody = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1231
    const/4 v7, -0x1

    .line 1232
    .local v7, "directedSmsStatus":I
    iget-object v0, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v0, :cond_5

    .line 1233
    iget-object v0, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->parseDirectedSMS(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/BroadcastReceiver;)I

    move-result v7

    .line 1236
    :cond_5
    const/4 v0, 0x1

    if-ne v0, v7, :cond_6

    .line 1237
    const-string v0, "[processMessagePart] return parseDirectedSMS = true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1238
    const-string v0, "[sms.mt] app directed sms has been processed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1240
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 1241
    const/4 v0, 0x1

    goto :goto_3

    .line 1242
    :cond_6
    if-nez v7, :cond_7

    .line 1243
    const-string v0, "[processMessagePart] Discard!! there is no application for Application Directed SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1244
    const-string v0, "[sms.mt] app directed sms has been discarded."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1246
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 1247
    const/4 v0, 0x1

    goto :goto_3

    .line 1250
    :cond_7
    const/4 v0, -0x2

    if-ne v0, v7, :cond_8

    .line 1252
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1253
    .local v1, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v0, "com.lge.vzwsmsfilter"

    const-string v2, "com.lge.vzwsmsfilter.SmsFilterReceiver"

    invoke-direct {v6, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering SMS to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1257
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1258
    const-string v0, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1259
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1262
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1266
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processMessagePart] directedSmsStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1268
    const/16 v0, 0xb

    goto/16 :goto_3
.end method

.method private processLegacyVVM(Lcom/android/internal/telephony/InboundSmsTracker;I[[B)I
    .locals 6
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "messageCount"    # I
    .param p3, "pdus"    # [[B

    .prologue
    const/4 v4, 0x2

    .line 1274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms.mt.legacyVVM] processLegacyVVM messageCount =["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1276
    const/4 v3, 0x0

    aget-object v5, p3, v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "3gpp2"

    :goto_0
    invoke-static {v5, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 1278
    .local v2, "msg":Landroid/telephony/SmsMessage;
    if-nez v2, :cond_1

    .line 1279
    const-string v3, "[sms.mt.legacyVVM] sms is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1281
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    move v3, v4

    .line 1305
    :goto_1
    return v3

    .line 1276
    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    :cond_0
    const-string v3, "3gpp"

    goto :goto_0

    .line 1285
    .restart local v2    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    const/4 v1, 0x0

    .line 1287
    .local v1, "legacyVoiceMailNumber":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 1288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms.mt.legacyVVM] processLegacyVVM legacyVoiceMailNumber is =["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1290
    if-nez v1, :cond_2

    .line 1291
    const-string v3, "[sms.mt.legacyVVM] processLegacyVVM legacyVoiceMailNumber is null"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move v3, v4

    .line 1292
    goto :goto_1

    .line 1295
    :cond_2
    const-string v3, "900080002021"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1296
    const-string v3, "[sms.mt.legacyVVM] processLegacyVVM legacyVoiceMailNumber is 900080002021"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1298
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1299
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1300
    const-string v3, "pdus"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1301
    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1302
    const/4 v3, 0x1

    goto :goto_1

    .line 1305
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v3, 0xb

    goto :goto_1
.end method

.method private processMobileboxProDirectedSMS(Lcom/android/internal/telephony/InboundSmsTracker;I[[BLandroid/content/BroadcastReceiver;)Z
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "messageCount"    # I
    .param p3, "pdus"    # [[B
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "allow_sending_MBP_directed_sms"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "26201"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2376
    :cond_0
    const/4 v0, 0x0

    .line 2434
    :goto_0
    return v0

    .line 2380
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "de.telekom.mds.mbp"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 2381
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_2

    iget-boolean v0, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    .line 2382
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2384
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v7

    .line 2385
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_0

    .line 2388
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_3
    const-string v0, "[sms.mt] processMobileboxProDirectedSMS MobileboxPro is installed"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2390
    const/4 v10, 0x0

    .line 2391
    .local v10, "msg":Landroid/telephony/SmsMessage;
    const-string v9, ""

    .line 2392
    .local v9, "messageBody":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, p2, :cond_7

    .line 2393
    aget-object v2, p3, v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "3gpp2"

    :goto_2
    invoke-static {v2, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v10

    .line 2395
    if-nez v10, :cond_5

    .line 2392
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2393
    :cond_4
    const-string v0, "3gpp"

    goto :goto_2

    .line 2399
    :cond_5
    if-nez v8, :cond_6

    .line 2400
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 2402
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 2406
    :cond_7
    if-nez v10, :cond_8

    .line 2407
    const-string v0, "[sms.mbp] application directed sms null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 2408
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2409
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 2410
    const/4 v0, 0x1

    goto :goto_0

    .line 2414
    :cond_8
    iget-object v0, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v0, :cond_9

    .line 2415
    iget-object v0, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput-object v9, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 2418
    iget-object v0, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->isDirectedToMailboxPro(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2419
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2421
    .local v1, "mMBPintent":Landroid/content/Intent;
    const-string v0, "de.telekom.mds.mbp"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2422
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2424
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 2427
    const-string v0, "[processMessagePart] return processMobileboxProDirectedSMS = true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 2428
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2429
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 2430
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2434
    .end local v1    # "mMBPintent":Landroid/content/Intent;
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private processTFDM(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v0, 0x0

    .line 2508
    const-string v2, "processTFDM start "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2510
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2544
    :cond_0
    :goto_0
    return v0

    .line 2514
    :cond_1
    aget-object v2, p2, v0

    const-string v3, "3gpp"

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 2515
    .local v8, "msg":Landroid/telephony/SmsMessage;
    if-eqz v8, :cond_0

    .line 2520
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    .line 2521
    .local v9, "originatingAddress":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    .line 2523
    .local v7, "messageBody":Ljava/lang/String;
    const-string v2, "50228"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2525
    const-string v2, "OA is not DM number"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 2528
    :cond_2
    const-string v2, "originatingAddress is 50228"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2529
    const-string v2, "//DM"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2531
    const-string v2, "it doesn\'t start With //DM"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 2534
    :cond_3
    const-string v0, "startsWith //DM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2535
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2536
    .local v1, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v0, "com.tracfone.generic.clientprovisioninghandler"

    const-string v2, "com.tracfone.generic.clientprovisioninghandler.DeviceManagerSMSIntentReceiver"

    invoke-direct {v6, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering SMS to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2540
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2541
    const-string v0, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2542
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 2544
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private queryForAllSegments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "refNumber"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/String;

    .prologue
    .line 2564
    const/4 v11, 0x0

    .line 2566
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v9, v0

    const/4 v0, 0x1

    aput-object p2, v9, v0

    const/4 v0, 0x2

    aput-object p3, v9, v0

    .line 2568
    .local v9, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 2569
    .local v12, "phoneId":Ljava/lang/String;
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    aput-object p3, v4, v0

    const/4 v0, 0x3

    aput-object v12, v4, v0

    .line 2572
    .local v4, "whereArgsInDSDA":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "ems_segment_timer"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2574
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "concat_ref_in_dsda"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2575
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const-string v3, "address=? AND reference_number=? AND count=? AND sub_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2597
    :goto_0
    return-object v11

    .line 2578
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const-string v8, "address=? AND reference_number=? AND count=?"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0

    .line 2581
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "use_original_telephony_provider"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2584
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const-string v8, "address=? AND reference_number=? AND count=?"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0

    .line 2589
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "concat_ref_in_dsda"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2590
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_PROJECTION:[Ljava/lang/String;

    const-string v3, "address=? AND reference_number=? AND count=? AND sub_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0

    .line 2593
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_PROJECTION:[Ljava/lang/String;

    const-string v8, "address=? AND reference_number=? AND count=?"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0
.end method

.method private seperateSmsUicc(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 16
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    .line 2231
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 2232
    .local v14, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 2233
    .local v15, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v15, :cond_0

    iget v6, v15, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 2241
    .local v6, "destPort":I
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->is3gpp2()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    iget v9, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v10, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v11, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v13

    invoke-direct/range {v2 .. v13}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZI)V

    .line 2245
    .local v2, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    return-object v2

    .line 2233
    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :cond_0
    const/4 v6, -0x1

    goto :goto_0
.end method

.method private supportWifiOffEmergency(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 5
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 2194
    instance-of v3, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v3, :cond_1

    .line 2195
    const-string v3, "dispatchNormalMessage(), [KDDI] WIFI OFF SmsMessage is cdma instance "

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move-object v2, p1

    .line 2196
    check-cast v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 2197
    .local v2, "wifi_off_sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 2198
    .local v1, "serviceCategory":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchNormalMessage(), [KDDI] Service category is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2199
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/16 v3, 0x26

    if-eq v1, v3, :cond_0

    const/16 v3, 0x28

    if-ne v1, v3, :cond_1

    .line 2200
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchNormalMessage(), [KDDI] Service category  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " broadcast to WIFI!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2201
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SMS_WIFI_OFF"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2202
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2205
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "serviceCategory":I
    .end local v2    # "wifi_off_sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 38
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 755
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v37

    .line 756
    .local v37, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 760
    .local v16, "firstTime":J
    const/16 v18, 0x0

    .line 763
    .local v18, "isFirtMTconcat":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    .line 765
    const/16 v22, 0x0

    .line 768
    .local v22, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v35

    .line 771
    .local v35, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v20

    .line 772
    .local v20, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    .line 773
    .local v31, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 775
    .local v21, "count":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    .line 778
    .local v34, "seqNumber":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v4, 0x0

    aput-object v20, v23, v4

    const/4 v4, 0x1

    aput-object v31, v23, v4

    const/4 v4, 0x2

    aput-object v21, v23, v4

    .line 780
    .local v23, "deleteWhereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    .line 781
    .local v30, "phoneId":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    aput-object v20, v24, v4

    const/4 v4, 0x1

    aput-object v31, v24, v4

    const/4 v4, 0x2

    aput-object v21, v24, v4

    const/4 v4, 0x3

    aput-object v30, v24, v4

    .line 782
    .local v24, "deleteWhereArgsInDSDA":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_ref_in_dsda"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 783
    const-string v4, "address=? AND reference_number=? AND count=? AND sub_id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 792
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ConcatMTCheckTimestamp"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ConcatMTCheckTimestamp_DCM"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 794
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->checkConcatTimeStamp(Lcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_ref_in_dsda"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND count=? AND sequence=? AND sub_id=?"

    const/4 v9, 0x5

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v20, v8, v9

    const/4 v9, 0x1

    aput-object v31, v8, v9

    const/4 v9, 0x2

    aput-object v21, v8, v9

    const/4 v9, 0x3

    aput-object v34, v8, v9

    const/4 v9, 0x4

    aput-object v30, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 812
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;)V

    .line 815
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 816
    .local v28, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v29

    .line 817
    .local v29, "pdu":[B
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v27

    .line 818
    .local v27, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v4

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: dup message segment PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is different from existing PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    :cond_2
    const/4 v4, 0x5

    .line 863
    if-eqz v22, :cond_3

    .line 864
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 889
    .end local v20    # "address":Ljava/lang/String;
    .end local v21    # "count":Ljava/lang/String;
    .end local v22    # "cursor":Landroid/database/Cursor;
    .end local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .end local v27    # "oldPdu":[B
    .end local v28    # "oldPduString":Ljava/lang/String;
    .end local v29    # "pdu":[B
    .end local v30    # "phoneId":Ljava/lang/String;
    .end local v31    # "refNumber":Ljava/lang/String;
    .end local v34    # "seqNumber":Ljava/lang/String;
    .end local v35    # "sequence":I
    :cond_3
    :goto_2
    return v4

    .line 786
    .restart local v20    # "address":Ljava/lang/String;
    .restart local v21    # "count":Ljava/lang/String;
    .restart local v22    # "cursor":Landroid/database/Cursor;
    .restart local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .restart local v30    # "phoneId":Ljava/lang/String;
    .restart local v31    # "refNumber":Ljava/lang/String;
    .restart local v34    # "seqNumber":Ljava/lang/String;
    .restart local v35    # "sequence":I
    :cond_4
    :try_start_1
    const-string v4, "address=? AND reference_number=? AND count=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 859
    .end local v20    # "address":Ljava/lang/String;
    .end local v21    # "count":Ljava/lang/String;
    .end local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .end local v30    # "phoneId":Ljava/lang/String;
    .end local v31    # "refNumber":Ljava/lang/String;
    .end local v34    # "seqNumber":Ljava/lang/String;
    .end local v35    # "sequence":I
    :catch_0
    move-exception v25

    .line 860
    .local v25, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v4, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 861
    const/4 v4, 0x2

    .line 863
    if-eqz v22, :cond_3

    .line 864
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 806
    .end local v25    # "e":Landroid/database/SQLException;
    .restart local v20    # "address":Ljava/lang/String;
    .restart local v21    # "count":Ljava/lang/String;
    .restart local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .restart local v30    # "phoneId":Ljava/lang/String;
    .restart local v31    # "refNumber":Ljava/lang/String;
    .restart local v34    # "seqNumber":Ljava/lang/String;
    .restart local v35    # "sequence":I
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND count=? AND sequence=?"

    const/4 v9, 0x4

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v20, v8, v9

    const/4 v9, 0x1

    aput-object v31, v8, v9

    const/4 v9, 0x2

    aput-object v21, v8, v9

    const/4 v9, 0x3

    aput-object v34, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    goto/16 :goto_1

    .line 824
    :cond_6
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 826
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ems_segment_timer"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 829
    const/4 v4, 0x3

    new-array v13, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v20, v13, v4

    const/4 v4, 0x1

    aput-object v31, v13, v4

    const/4 v4, 0x2

    aput-object v21, v13, v4

    .line 830
    .local v13, "whereArgs":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addTrackerToRawTable, [RED] refNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_ref_in_dsda"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 834
    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v20, v8, v4

    const/4 v4, 0x1

    aput-object v31, v8, v4

    const/4 v4, 0x2

    aput-object v21, v8, v4

    const/4 v4, 0x3

    aput-object v30, v8, v4

    .line 835
    .local v8, "whereArgsInDSDA":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND count=? AND sub_id=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 842
    .end local v8    # "whereArgsInDSDA":[Ljava/lang/String;
    :goto_3
    if-eqz v22, :cond_d

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_d

    .line 843
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 844
    const-string v4, "time"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 845
    .local v36, "timeColumn":I
    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 847
    .end local v36    # "timeColumn":I
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addTrackerToRawTable, [RED] NOT new mt seg firstTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 856
    :goto_4
    const-string v4, "time"

    new-instance v5, Ljava/lang/Long;

    move-wide/from16 v0, v16

    invoke-direct {v5, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 863
    .end local v13    # "whereArgs":[Ljava/lang/String;
    :cond_8
    if-eqz v22, :cond_9

    .line 864
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 870
    .end local v20    # "address":Ljava/lang/String;
    .end local v21    # "count":Ljava/lang/String;
    .end local v22    # "cursor":Landroid/database/Cursor;
    .end local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .end local v30    # "phoneId":Ljava/lang/String;
    .end local v31    # "refNumber":Ljava/lang/String;
    .end local v34    # "seqNumber":Ljava/lang/String;
    .end local v35    # "sequence":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, v37

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v26

    .line 871
    .local v26, "newUri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI of new row -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v19

    .line 876
    .local v19, "mMessageCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ems_segment_timer"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 877
    invoke-direct/range {v14 .. v19}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->handleEmsSegTimer(Lcom/android/internal/telephony/InboundSmsTracker;JZI)V

    .line 881
    :cond_a
    :try_start_4
    invoke-static/range {v26 .. v26}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v32

    .line 882
    .local v32, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 884
    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 886
    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 838
    .end local v19    # "mMessageCount":I
    .end local v26    # "newUri":Landroid/net/Uri;
    .end local v32    # "rowId":J
    .restart local v13    # "whereArgs":[Ljava/lang/String;
    .restart local v20    # "address":Ljava/lang/String;
    .restart local v21    # "count":Ljava/lang/String;
    .restart local v22    # "cursor":Landroid/database/Cursor;
    .restart local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .restart local v30    # "phoneId":Ljava/lang/String;
    .restart local v31    # "refNumber":Ljava/lang/String;
    .restart local v34    # "seqNumber":Ljava/lang/String;
    .restart local v35    # "sequence":I
    :cond_c
    :try_start_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v11, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const-string v12, "address=? AND reference_number=? AND count=?"

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    goto/16 :goto_3

    .line 852
    :cond_d
    const/16 v18, 0x1

    .line 853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addTrackerToRawTable, [RED] new mt seg. firstTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 863
    .end local v13    # "whereArgs":[Ljava/lang/String;
    .end local v20    # "address":Ljava/lang/String;
    .end local v21    # "count":Ljava/lang/String;
    .end local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .end local v30    # "phoneId":Ljava/lang/String;
    .end local v31    # "refNumber":Ljava/lang/String;
    .end local v34    # "seqNumber":Ljava/lang/String;
    .end local v35    # "sequence":I
    :catchall_0
    move-exception v4

    if-eqz v22, :cond_e

    .line 864
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4

    .line 887
    .end local v22    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "mMessageCount":I
    .restart local v26    # "newUri":Landroid/net/Uri;
    :catch_1
    move-exception v25

    .line 888
    .local v25, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing URI for new row: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 889
    const/4 v4, 0x2

    goto/16 :goto_2
.end method

.method protected dispatchDirectedSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "originatingAddress"    # Ljava/lang/String;
    .param p4, "applicationPrefix"    # Ljava/lang/String;
    .param p5, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 981
    new-instance v1, Landroid/content/Intent;

    const-string v0, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const-string v0, "parameters"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    const-string v0, "originator"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    const-string v0, "prefix"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 992
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 994
    return-void
.end method

.method protected dispatchDirectedVVM([[B)V
    .locals 7
    .param p1, "pdus"    # [[B

    .prologue
    .line 1877
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1879
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "3gpp2"

    .line 1880
    .local v6, "strFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->is3gpp2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1881
    const-string v6, "3gpp"

    .line 1883
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchDirectedVVM(), strFormat : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1885
    const-string v0, "com.coremobility.app.vnotes"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1886
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1887
    const-string v0, "format"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1888
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1890
    return-void
.end method

.method public dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 1468
    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1469
    return-void
.end method

.method public dispatchEx(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1473
    const-string v1, "format"

    move-object v0, p3

    check-cast v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1476
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->setDeliverIntentIfNeeded(Landroid/content/Intent;)V

    .line 1478
    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1479
    return-void
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 3
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v1, 0x2

    .line 309
    const-string v2, "[sms.mt] dispatchMessage start ["

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 311
    if-nez p1, :cond_0

    .line 312
    const-string v2, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;)V

    .line 329
    :goto_0
    return v1

    .line 316
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mSmsReceiveDisabled:Z

    if-eqz v2, :cond_1

    .line 318
    const-string v1, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 320
    const/4 v1, 0x1

    goto :goto_0

    .line 323
    :cond_1
    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "cryptState":Ljava/lang/String;
    const-string v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    const-string v2, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v1

    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 11
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v3, 0x1

    .line 343
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    .line 346
    .local v10, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    const-string v1, "[sms.mt] dispatchNormalMessage start ["

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 347
    if-eqz v10, :cond_0

    iget-object v1, v10, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v1, :cond_7

    .line 349
    :cond_0
    const/4 v4, -0x1

    .line 350
    .local v4, "destPort":I
    if-eqz v10, :cond_4

    iget-object v1, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_4

    .line 352
    iget-object v1, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destination port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 387
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->is3gpp2()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZI)V

    .line 395
    .end local v4    # "destPort":I
    .local v0, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "concat_ref_in_dsda"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/InboundSmsTracker;->mLgePhoneId:I

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchNormalMessage(), [RED] tracker.mLgePhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/InboundSmsTracker;->mLgePhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 402
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v8

    .end local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_3
    :goto_1
    return v8

    .line 357
    .restart local v4    # "destPort":I
    :cond_4
    const/4 v1, 0x0

    const-string v2, "wifi_off_emergency_received"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 358
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->supportWifiOffEmergency(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 363
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "support_sprint_vvm"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    const-string v2, "ro.chameleon.vvm"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->parseDirectedVVM(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v8

    .line 366
    .local v8, "directedVvmApp":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchNormalMessage(), directedVvmApp result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 367
    if-eq v8, v3, :cond_3

    .line 374
    .end local v8    # "directedVvmApp":I
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "sprint_reassembly_sms"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sprintReassemblySms:Lcom/android/internal/telephony/LGSprintReassemblySms;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->supportSmsReassembly(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v9

    .line 376
    .local v9, "result":I
    const/16 v1, 0xb

    if-eq v9, v1, :cond_1

    move v8, v9

    .line 377
    goto :goto_1

    .line 391
    .end local v4    # "destPort":I
    .end local v9    # "result":I
    :cond_7
    invoke-direct {p0, p1, v10}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->seperateSmsUicc(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    .restart local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto/16 :goto_0
.end method

.method protected dispatchOperatorMessage(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;)I
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/InboundSmsTracker;",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/SmsOperatorBasicMessage;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, "operatorMessageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/SmsOperatorBasicMessage;>;"
    const/4 v9, 0x3

    const/4 v6, 0x1

    .line 1402
    const-string v7, "dispatchOperatorMessage"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1403
    if-nez p2, :cond_1

    .line 1404
    const-string v6, "dispatchOperatorMessage sms null"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1405
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 1407
    const/4 v6, 0x2

    .line 1464
    :cond_0
    :goto_0
    return v6

    .line 1410
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/telephony/SmsOperatorBasicMessage;

    .line 1411
    .local v2, "operatorMessage":Lcom/lge/telephony/SmsOperatorBasicMessage;
    if-eqz v2, :cond_2

    .line 1414
    invoke-interface {v2}, Lcom/lge/telephony/SmsOperatorBasicMessage;->getInformation()Landroid/os/Bundle;

    move-result-object v5

    .line 1415
    .local v5, "value":Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 1418
    const-string v7, "valid"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v6, :cond_4

    .line 1419
    invoke-interface {v2, p0}, Lcom/lge/telephony/SmsOperatorBasicMessage;->dispatch(Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v0

    .line 1420
    .local v0, "dispatchResult":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchResult = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1421
    if-eqz v0, :cond_2

    .line 1423
    if-ne v0, v6, :cond_3

    .line 1424
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    goto :goto_0

    .line 1429
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    .line 1430
    .local v4, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v4, :cond_0

    iget-object v7, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v8, 0xf180

    if-ne v7, v8, :cond_0

    .line 1431
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    goto :goto_0

    .line 1438
    .end local v0    # "dispatchResult":I
    .end local v4    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchOperatorMessage OPERATE_MESSAGE_VALID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "valid"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1439
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1440
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    goto/16 :goto_0

    .line 1450
    .end local v2    # "operatorMessage":Lcom/lge/telephony/SmsOperatorBasicMessage;
    .end local v5    # "value":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v7

    and-int/lit16 v3, v7, 0xff

    .line 1451
    .local v3, "pid_byte":I
    const/16 v7, 0x49

    if-lt v3, v7, :cond_6

    const/16 v7, 0x5d

    if-le v3, v7, :cond_9

    :cond_6
    const/16 v7, 0x60

    if-lt v3, v7, :cond_7

    const/16 v7, 0x7b

    if-le v3, v7, :cond_9

    :cond_7
    const/16 v7, 0x80

    if-lt v3, v7, :cond_8

    const/16 v7, 0xbf

    if-le v3, v7, :cond_9

    :cond_8
    const/16 v7, 0x7d

    if-ne v3, v7, :cond_a

    const-string v7, "KT"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v6, :cond_a

    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v8, "KTFotaMessage"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eq v7, v6, :cond_a

    .line 1458
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchOperatorMessage(), message discard : [reserved] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1459
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    goto/16 :goto_0

    .line 1464
    :cond_a
    const/16 v6, 0xb

    goto/16 :goto_0
.end method

.method protected dispatchPdus([[B)V
    .locals 6
    .param p1, "pdus"    # [[B

    .prologue
    .line 1008
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1010
    const-string v0, "format"

    const-string v2, "3gpp2"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1013
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 7
    .param p1, "pdus"    # [[B
    .param p2, "port"    # I

    .prologue
    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms://localhost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 999
    .local v6, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v1, v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1000
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1001
    const-string v0, "format"

    const-string v2, "3gpp2"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1003
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1005
    return-void
.end method

.method protected getStrMsgWhat(I)Ljava/lang/String;
    .locals 3
    .param p1, "nMsg"    # I

    .prologue
    .line 2097
    const/4 v0, 0x0

    .line 2098
    .local v0, "strRet":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2126
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid msg.what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2129
    :goto_0
    return-object v0

    .line 2100
    :pswitch_1
    const-string v0, "EVENT_NEW_SMS"

    .line 2101
    goto :goto_0

    .line 2103
    :pswitch_2
    const-string v0, "EVENT_BROADCAST_SMS"

    .line 2104
    goto :goto_0

    .line 2106
    :pswitch_3
    const-string v0, "EVENT_BROADCAST_COMPLETE"

    .line 2107
    goto :goto_0

    .line 2109
    :pswitch_4
    const-string v0, "EVENT_RETURN_TO_IDLE"

    .line 2110
    goto :goto_0

    .line 2112
    :pswitch_5
    const-string v0, "EVENT_RELEASE_WAKELOCK"

    .line 2113
    goto :goto_0

    .line 2115
    :pswitch_6
    const-string v0, "EVENT_START_ACCEPTING_SMS"

    .line 2116
    goto :goto_0

    .line 2118
    :pswitch_7
    const-string v0, "EVENT_UPDATE_PHONE_OBJECT"

    .line 2119
    goto :goto_0

    .line 2122
    :pswitch_8
    const-string v0, "EVENT_DAN_SMS_COMPLETE"

    .line 2123
    goto :goto_0

    .line 2098
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x1

    .line 265
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception processing incoming SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "sms_permission_tracking"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 272
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addSMSPermissionTracking()V

    .line 278
    :cond_2
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 280
    .local v3, "sms":Landroid/telephony/SmsMessage;
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "cdma_sms_cdg2"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 281
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->handleCdmaSmsCDG2(Landroid/telephony/SmsMessage;)V

    .line 284
    :cond_3
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 292
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    .local v2, "result":I
    :goto_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 293
    if-ne v2, v1, :cond_4

    .line 294
    .local v1, "handled":Z
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 285
    .end local v1    # "handled":Z
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 286
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Exception dispatching message"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    const/4 v2, 0x2

    .restart local v2    # "result":I
    goto :goto_1

    .line 293
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected parseDirectedSMS(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/BroadcastReceiver;)I
    .locals 32
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1017
    const/16 v27, 0x0

    .line 1018
    .local v27, "processStatus":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1019
    const-string v2, "[sms.mt.parseDirectedSMS] sms.getMessageBody() is NULL "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1020
    const/16 v27, -0x1

    move/from16 v28, v27

    .line 1193
    .end local v27    # "processStatus":I
    .local v28, "processStatus":I
    :goto_0
    return v28

    .line 1022
    .end local v28    # "processStatus":I
    .restart local v27    # "processStatus":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] sms.getMessageBody() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1025
    const/16 v24, 0x0

    .line 1028
    .local v24, "packageIndex":I
    const/4 v15, 0x1

    .line 1032
    .local v15, "bIsSeparator":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    const-string v3, "//VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1033
    const-string v2, "[sms.mt.parseDirectedSMS] not startsWith //VZW "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1034
    const/16 v16, 0x0

    .line 1042
    .local v16, "bStartWithVZW":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    .line 1043
    .local v9, "appDirectedSMS":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] parseDirectedSMS / appDirectedSMS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1046
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-le v2, v3, :cond_2

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "//VZWLBSROVER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1047
    const-string v2, "[sms.mt.parseDirectedSMS] //VZWLBSROVER"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1050
    const/16 v27, -0x2

    move/from16 v28, v27

    .end local v27    # "processStatus":I
    .restart local v28    # "processStatus":I
    goto :goto_0

    .line 1037
    .end local v9    # "appDirectedSMS":Ljava/lang/String;
    .end local v16    # "bStartWithVZW":Z
    .end local v28    # "processStatus":I
    .restart local v27    # "processStatus":I
    :cond_1
    const-string v2, "[sms.mt.parseDirectedSMS] startsWith //VZW "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1038
    const/16 v16, 0x1

    .restart local v16    # "bStartWithVZW":Z
    goto :goto_1

    .line 1057
    .restart local v9    # "appDirectedSMS":Ljava/lang/String;
    :cond_2
    if-eqz v16, :cond_6

    const-string v2, "//VZW"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1061
    .local v31, "tempSMS":Ljava/lang/String;
    :goto_2
    const-string v2, ":"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1062
    const-string v2, "[sms.mt.parseDirectedSMS] check separator"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1063
    const/4 v15, 0x0

    .line 1069
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 1070
    .local v26, "pkgManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v20

    .line 1072
    .local v20, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 1073
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appInfo.packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGVerizonBranded;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "VZWSMS"

    invoke-static {v2, v3, v5}, Lcom/android/internal/telephony/LGVerizonBranded;->isAVSPackageAuthorized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGVerizonBranded;->isItSignedByVZW(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1082
    :cond_4
    const/16 v29, 0x0

    .line 1083
    .local v29, "receiverCount":I
    const/16 v21, 0x0

    .line 1084
    .local v21, "isReceiverMatched":Z
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .local v13, "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 1096
    .local v25, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    .line 1097
    .local v30, "receivers":[Landroid/content/pm/ActivityInfo;
    if-eqz v30, :cond_8

    .line 1098
    move-object/from16 v14, v30

    .local v14, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v0, v14

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    aget-object v8, v14, v19

    .line 1099
    .local v8, "actInfo":Landroid/content/pm/ActivityInfo;
    add-int/lit8 v29, v29, 0x1

    .line 1103
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x80

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1111
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v23, v0

    .line 1112
    .local v23, "metaData":Landroid/os/Bundle;
    if-nez v23, :cond_7

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] metaData is null. Unable to get meta data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1098
    .end local v23    # "metaData":Landroid/os/Bundle;
    :cond_5
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .end local v8    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v19    # "i$":I
    .end local v20    # "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v21    # "isReceiverMatched":Z
    .end local v22    # "len$":I
    .end local v25    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v26    # "pkgManager":Landroid/content/pm/PackageManager;
    .end local v29    # "receiverCount":I
    .end local v30    # "receivers":[Landroid/content/pm/ActivityInfo;
    .end local v31    # "tempSMS":Ljava/lang/String;
    :cond_6
    move-object/from16 v31, v9

    .line 1057
    goto/16 :goto_2

    .line 1088
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v21    # "isReceiverMatched":Z
    .restart local v26    # "pkgManager":Landroid/content/pm/PackageManager;
    .restart local v29    # "receiverCount":I
    .restart local v31    # "tempSMS":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1089
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] Can\'t find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1090
    add-int/lit8 v24, v24, 0x1

    .line 1091
    goto/16 :goto_3

    .line 1104
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "actInfo":Landroid/content/pm/ActivityInfo;
    .restart local v14    # "arr$":[Landroid/content/pm/ActivityInfo;
    .restart local v19    # "i$":I
    .restart local v22    # "len$":I
    .restart local v25    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v30    # "receivers":[Landroid/content/pm/ActivityInfo;
    :catch_1
    move-exception v17

    .line 1105
    .restart local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] Can\'t find receivers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appInfo.packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1106
    add-int/lit8 v24, v24, 0x1

    .line 1107
    goto :goto_5

    .line 1115
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v23    # "metaData":Landroid/os/Bundle;
    :cond_7
    const-string v2, "com.verizon.directedAppSMS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "com.verizon.directedAppSMS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1116
    const-string v2, "com.verizon.directedAppSMS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    const/16 v21, 0x1

    .line 1119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] matched !! receiver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actInfo.metaData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1126
    .end local v8    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v23    # "metaData":Landroid/os/Bundle;
    :cond_8
    if-nez v21, :cond_b

    .line 1128
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_9

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.verizon.directedAppSMS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    .line 1130
    :cond_9
    add-int/lit8 v24, v24, 0x1

    .line 1131
    goto/16 :goto_3

    .line 1134
    :cond_a
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.verizon.directedAppSMS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] appInfo = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] appInfo.metaData = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] appInfo.metaData.getString(METADATA_NAME) = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.verizon.directedAppSMS"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1138
    :cond_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_d

    .line 1140
    const-string v2, "[sms.mt.parseDirectedSMS] applicationPrefixList is Empty"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1185
    .end local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "isReceiverMatched":Z
    .end local v25    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v29    # "receiverCount":I
    .end local v30    # "receivers":[Landroid/content/pm/ActivityInfo;
    :cond_c
    add-int/lit8 v24, v24, 0x1

    .line 1186
    goto/16 :goto_3

    .line 1142
    .restart local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "isReceiverMatched":Z
    .restart local v25    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v29    # "receiverCount":I
    .restart local v30    # "receivers":[Landroid/content/pm/ActivityInfo;
    :cond_d
    const/4 v11, 0x0

    .local v11, "appPrefixCount":I
    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_c

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] applicationPrefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1148
    const/4 v2, 0x1

    if-ne v15, v2, :cond_12

    .line 1149
    const/4 v2, 0x0

    const-string v3, ":"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1150
    .local v12, "applicationPrefixFromSMSBody":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] SMS contain a separator(:), applicationPrefixFromSMSBody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1160
    :cond_e
    if-eqz v15, :cond_f

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    if-nez v15, :cond_11

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1165
    :cond_10
    if-eqz v15, :cond_13

    .line 1166
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1170
    .local v4, "parameters":Ljava/lang/String;
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] parameters : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1173
    if-lez v29, :cond_14

    .line 1174
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchDirectedSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1180
    :goto_8
    const/16 v27, 0x1

    .line 1142
    .end local v4    # "parameters":Ljava/lang/String;
    :cond_11
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 1152
    .end local v12    # "applicationPrefixFromSMSBody":Ljava/lang/String;
    :cond_12
    move-object/from16 v12, v31

    .line 1153
    .restart local v12    # "applicationPrefixFromSMSBody":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v3, v2, :cond_e

    .line 1154
    const-string v2, "[sms.mt.parseDirectedSMS] SMS length is too short to compare !"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_9

    .line 1168
    :cond_13
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "parameters":Ljava/lang/String;
    goto :goto_7

    .line 1176
    :cond_14
    const-string v2, "[sms.mt.parseDirectedSMS] There is not a receiver. No run dispatchDirectedSms !!"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_8

    .line 1188
    .end local v4    # "parameters":Ljava/lang/String;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "appPrefixCount":I
    .end local v12    # "applicationPrefixFromSMSBody":Ljava/lang/String;
    .end local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "isReceiverMatched":Z
    .end local v25    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v29    # "receiverCount":I
    .end local v30    # "receivers":[Landroid/content/pm/ActivityInfo;
    :cond_15
    const/4 v2, 0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_16

    .line 1190
    if-eqz v16, :cond_17

    const/16 v27, 0x0

    .line 1192
    :cond_16
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] processStatus=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move/from16 v28, v27

    .line 1193
    .end local v27    # "processStatus":I
    .restart local v28    # "processStatus":I
    goto/16 :goto_0

    .line 1190
    .end local v28    # "processStatus":I
    .restart local v27    # "processStatus":I
    :cond_17
    const/16 v27, -0x1

    goto :goto_a
.end method

.method protected parseDirectedVVM(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 10
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/16 v6, 0xb

    const/4 v7, 0x1

    .line 1893
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1894
    const-string v7, "parseDirectedVVM(), sms.getMessageBody() is NULL."

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1932
    :goto_0
    return v6

    .line 1898
    :cond_0
    new-array v4, v7, [[B

    .line 1899
    .local v4, "pdus":[[B
    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v9

    aput-object v9, v4, v8

    .line 1904
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    const-string v9, "//ANDROID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    const-string v9, "//CM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1905
    :cond_1
    const-string v7, "parseDirectedVVM(), No matching string."

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 1911
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1912
    .local v5, "pkgManager":Landroid/content/pm/PackageManager;
    const/16 v8, 0x80

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 1914
    .local v3, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1915
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v8, "com.coremobility.app.vnotes"

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1917
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseDirectedVVM(), appInfo.packageName: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1918
    const-string v6, "parseDirectedVVM(), VVM App is installed."

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1919
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchDirectedVVM([[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 1920
    goto :goto_0

    .line 1923
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "pkgManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1924
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseDirectedVVM(), Exception : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1927
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchDirectedVVM([[B)V

    move v6, v7

    .line 1928
    goto/16 :goto_0

    .line 1931
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v5    # "pkgManager":Landroid/content/pm/PackageManager;
    :cond_4
    const-string v7, "parseDirectedVVM(), VVM Control message is received. But VVM App is not installed."

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected processKizONMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 12
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v2, 0x0

    .line 1596
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1597
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 1600
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v0, "com.lge.band"

    const/4 v3, 0x0

    invoke-virtual {v11, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1605
    :goto_0
    if-eqz v10, :cond_0

    const-string v0, "com.lge.band"

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 1627
    :goto_1
    return v0

    .line 1601
    :catch_0
    move-exception v6

    .line 1602
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "processKizONMessage(), KizON package doesn\'t existed."

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 1609
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    aget-object v3, p2, v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3gpp2"

    :goto_2
    invoke-static {v3, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v9

    .line 1610
    .local v9, "msg":Landroid/telephony/SmsMessage;
    if-eqz v9, :cond_3

    .line 1611
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    .line 1612
    .local v8, "messageBody":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1613
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->KIZON_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1615
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processKizONMessage(), Found pattern : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1617
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1618
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "com.lge.band"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1619
    const-string v0, "processKizONMessage(), Delivering SMS to : com.lge.band"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1620
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1621
    const-string v0, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1623
    const/4 v0, 0x1

    goto :goto_1

    .line 1609
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v7    # "m":Ljava/util/regex/Matcher;
    .end local v8    # "messageBody":Ljava/lang/String;
    .end local v9    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    const-string v0, "3gpp"

    goto :goto_2

    .restart local v9    # "msg":Landroid/telephony/SmsMessage;
    :cond_3
    move v0, v2

    .line 1627
    goto :goto_1
.end method

.method protected processMcAfeeMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v2, 0x0

    .line 1561
    const-string v0, "service.wsandroid.lge.token"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1562
    .local v9, "token":Ljava/lang/String;
    const-string v10, ""

    .line 1563
    .local v10, "web_token":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMcAfeeMessage(), McAfee token : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1565
    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 1591
    :goto_0
    return v0

    .line 1569
    :cond_0
    aget-object v3, p2, v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3gpp2"

    :goto_1
    invoke-static {v3, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 1570
    .local v8, "msg":Landroid/telephony/SmsMessage;
    if-eqz v8, :cond_3

    .line 1571
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    .line 1572
    .local v7, "messageBody":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "kr_operator_web_send"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1573
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->MCAFEE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1574
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1575
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 1579
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMcAfeeMessage(), token = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", web_token = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1581
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1582
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1583
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "com.wsandroid.suite.lge"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    const-string v0, "processMcAfeeMessage(), Delivering SMS to : com.wsandroid.suite.lge"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1585
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1586
    const-string v0, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1587
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1588
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1569
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v7    # "messageBody":Ljava/lang/String;
    .end local v8    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    const-string v0, "3gpp"

    goto/16 :goto_1

    .restart local v8    # "msg":Landroid/telephony/SmsMessage;
    :cond_3
    move v0, v2

    .line 1591
    goto/16 :goto_0
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 54
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 407
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v6

    .line 409
    .local v6, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v37

    .line 411
    .local v37, "destPort":I
    const/16 v44, 0x0

    .line 414
    .local v44, "iccSring":Ljava/lang/String;
    const/4 v8, 0x0

    .line 415
    .local v8, "exceedFirstTimePeriod":Z
    const/4 v9, 0x0

    .line 416
    .local v9, "exceedSecondTimePeriod":Z
    const/4 v10, 0x0

    .line 417
    .local v10, "allSegmentReceived":Z
    const/4 v11, 0x0

    .line 418
    .local v11, "missingSegIndex":Ljava/lang/String;
    const/4 v12, 0x0

    .line 421
    .local v12, "stitchRefMsg":Landroid/telephony/SmsMessage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms.mt] processMessagePart messageCount = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 423
    const/4 v4, 0x1

    if-ne v6, v4, :cond_2

    .line 425
    const-string v4, "[sms.mt] single-part message"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 426
    const/4 v4, 0x1

    new-array v7, v4, [[B

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v5

    aput-object v5, v7, v4

    .line 557
    .local v7, "pdus":[[B
    :cond_0
    :goto_0
    new-instance v15, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 559
    .local v15, "resultReceiver":Landroid/content/BroadcastReceiver;
    const/16 v4, 0xb84

    move/from16 v0, v37

    if-ne v0, v4, :cond_1b

    .line 561
    const-string v17, ""

    .line 562
    .local v17, "smscAddress":Ljava/lang/String;
    const-string v18, ""

    .line 563
    .local v18, "originatingAddress":Ljava/lang/String;
    const/16 v52, -0x1

    .line 567
    .local v52, "result":I
    const/16 v46, 0x0

    .line 571
    .local v46, "isSafeSMSCheck":Z
    new-instance v49, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v49 .. v49}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 572
    .local v49, "output":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v30, v7

    .local v30, "arr$":[[B
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v47, v0

    .local v47, "len$":I
    const/16 v41, 0x0

    .local v41, "i$":I
    :goto_1
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_18

    aget-object v50, v30, v41

    .line 574
    .local v50, "pdu":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "kddi_cdma_wap_push"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 575
    const-string v4, "[sms.mt] cdma wap push) "

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 576
    invoke-static/range {v50 .. v50}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v48

    .line 577
    .local v48, "msg":Landroid/telephony/SmsMessage;
    if-eqz v48, :cond_1

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v4

    if-nez v4, :cond_14

    .line 572
    .end local v48    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    :goto_2
    add-int/lit8 v41, v41, 0x1

    goto :goto_1

    .line 428
    .end local v7    # "pdus":[[B
    .end local v15    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v17    # "smscAddress":Ljava/lang/String;
    .end local v18    # "originatingAddress":Ljava/lang/String;
    .end local v30    # "arr$":[[B
    .end local v41    # "i$":I
    .end local v46    # "isSafeSMSCheck":Z
    .end local v47    # "len$":I
    .end local v49    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v50    # "pdu":[B
    .end local v52    # "result":I
    :cond_2
    const-string v4, "[sms.mt] not single-part message"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 430
    const/16 v33, 0x0

    .line 434
    .local v33, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->queryForAllSegments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    .line 442
    .local v42, "firstTime":J
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 443
    const-string v4, "time"

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v53

    .line 444
    .local v53, "timeColumn":I
    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 446
    .end local v53    # "timeColumn":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 447
    .local v34, "currentTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x14

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v0, v4

    move-wide/from16 v38, v0

    .line 449
    .local v38, "dispatchTime":J
    const-wide/32 v4, 0x2932e00

    add-long v4, v4, v42

    cmp-long v4, v34, v4

    if-lez v4, :cond_7

    .line 450
    const/4 v9, 0x1

    .line 454
    :cond_4
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, [RED] exceedSecondTimePeriod = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, [RED] exceedFirstTimePeriod = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 459
    .end local v34    # "currentTime":J
    .end local v38    # "dispatchTime":J
    .end local v42    # "firstTime":J
    :cond_5
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v36

    .line 460
    .local v36, "cursorCount":I
    move/from16 v0, v36

    if-ge v0, v6, :cond_e

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 469
    if-nez v9, :cond_8

    if-nez v8, :cond_8

    .line 470
    const-string v4, "processMessagePart, [RED] short return"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    const/4 v4, 0x0

    .line 551
    if-eqz v33, :cond_6

    .line 552
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 748
    .end local v33    # "cursor":Landroid/database/Cursor;
    .end local v36    # "cursorCount":I
    :cond_6
    :goto_4
    return v4

    .line 451
    .restart local v33    # "cursor":Landroid/database/Cursor;
    .restart local v34    # "currentTime":J
    .restart local v38    # "dispatchTime":J
    .restart local v42    # "firstTime":J
    :cond_7
    add-long v4, v42, v38

    cmp-long v4, v34, v4

    if-lez v4, :cond_4

    .line 452
    const/4 v8, 0x1

    goto :goto_3

    .line 473
    .end local v34    # "currentTime":J
    .end local v38    # "dispatchTime":J
    .end local v42    # "firstTime":J
    .restart local v36    # "cursorCount":I
    :cond_8
    :try_start_1
    const-string v4, "processMessagePart, do not return. It\'s exceeded waiting dispatching time"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 487
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "seperate_processing_sms_uicc"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 488
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->controlSeperateSmsUicc(Lcom/android/internal/telephony/InboundSmsTracker;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v44

    .line 493
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 494
    if-eqz v9, :cond_f

    .line 495
    const/4 v4, 0x1

    new-array v7, v4, [[B

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v5

    aput-object v5, v7, v4

    .line 506
    .restart local v7    # "pdus":[[B
    :goto_6
    new-array v7, v6, [[B

    .line 507
    :cond_a
    :goto_7
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 510
    if-eqz v9, :cond_11

    .line 511
    const-string v4, "processMessagePart, [RED] exceedSecondTimePeriod! Do not get pdus from db"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 542
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 543
    invoke-direct/range {v4 .. v12}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->handleConcatStitching(Lcom/android/internal/telephony/InboundSmsTracker;I[[BZZZLjava/lang/String;Landroid/telephony/SmsMessage;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 551
    :cond_c
    if-eqz v33, :cond_0

    .line 552
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 476
    .end local v7    # "pdus":[[B
    :cond_d
    const/4 v4, 0x0

    .line 551
    if-eqz v33, :cond_6

    .line 552
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 481
    :cond_e
    const/4 v10, 0x1

    .line 482
    :try_start_2
    const-string v4, "processMessagePart, [RED] allSegmentReceived"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 547
    .end local v36    # "cursorCount":I
    :catch_0
    move-exception v40

    .line 548
    .local v40, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v4, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 549
    const/4 v4, 0x0

    .line 551
    if-eqz v33, :cond_6

    .line 552
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 497
    .end local v40    # "e":Landroid/database/SQLException;
    .restart local v36    # "cursorCount":I
    :cond_f
    :try_start_4
    new-array v7, v6, [[B

    .restart local v7    # "pdus":[[B
    goto :goto_6

    .line 502
    .end local v7    # "pdus":[[B
    :cond_10
    new-array v7, v6, [[B

    .restart local v7    # "pdus":[[B
    goto :goto_6

    .line 517
    :cond_11
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v5

    sub-int v45, v4, v5

    .line 519
    .local v45, "index":I
    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v7, v45

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 522
    if-nez v12, :cond_12

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, [RED] createFromPdu for stitchRefMsg index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 524
    aget-object v4, v7, v45

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v12

    .line 531
    :cond_12
    if-nez v45, :cond_a

    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 532
    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    .line 534
    .local v51, "port":I
    invoke-static/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v51

    .line 535
    const/4 v4, -0x1

    move/from16 v0, v51

    if-eq v0, v4, :cond_a

    .line 536
    move/from16 v37, v51

    goto/16 :goto_7

    .line 551
    .end local v7    # "pdus":[[B
    .end local v36    # "cursorCount":I
    .end local v45    # "index":I
    .end local v51    # "port":I
    :catchall_0
    move-exception v4

    if-eqz v33, :cond_13

    .line 552
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v4

    .line 580
    .end local v33    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "pdus":[[B
    .restart local v15    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .restart local v17    # "smscAddress":Ljava/lang/String;
    .restart local v18    # "originatingAddress":Ljava/lang/String;
    .restart local v30    # "arr$":[[B
    .restart local v41    # "i$":I
    .restart local v46    # "isSafeSMSCheck":Z
    .restart local v47    # "len$":I
    .restart local v48    # "msg":Landroid/telephony/SmsMessage;
    .restart local v49    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v50    # "pdu":[B
    .restart local v52    # "result":I
    :cond_14
    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v50

    .line 605
    .end local v48    # "msg":Landroid/telephony/SmsMessage;
    :cond_15
    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, v50

    array-length v5, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_2

    .line 584
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v4

    if-nez v4, :cond_15

    .line 585
    const-string v4, "3gpp"

    move-object/from16 v0, v50

    invoke-static {v0, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v48

    .line 587
    .restart local v48    # "msg":Landroid/telephony/SmsMessage;
    if-eqz v48, :cond_15

    .line 588
    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v17

    .line 589
    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    .line 592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "SafeSMSforMMSNoti"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    if-nez v46, :cond_17

    .line 593
    const/16 v46, 0x1

    .line 594
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->getUserDataForSafeMMS(Landroid/telephony/SmsMessage;)[B

    move-result-object v50

    goto :goto_8

    .line 597
    :cond_17
    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v50

    goto :goto_8

    .line 608
    .end local v48    # "msg":Landroid/telephony/SmsMessage;
    .end local v50    # "pdu":[B
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mWapPush:Lcom/android/internal/telephony/WapPushOverSmsEx;

    invoke-virtual/range {v49 .. v49}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    move-object/from16 v16, p0

    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/telephony/WapPushOverSmsEx;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I

    move-result v52

    .line 613
    const/4 v4, -0x1

    move/from16 v0, v52

    if-eq v0, v4, :cond_19

    .line 614
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 618
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchWapPdu() returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 620
    const/4 v4, -0x1

    move/from16 v0, v52

    if-ne v0, v4, :cond_1a

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 623
    .end local v17    # "smscAddress":Ljava/lang/String;
    .end local v18    # "originatingAddress":Ljava/lang/String;
    .end local v30    # "arr$":[[B
    .end local v41    # "i$":I
    .end local v46    # "isSafeSMSCheck":Z
    .end local v47    # "len$":I
    .end local v49    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v52    # "result":I
    :cond_1b
    const/4 v4, -0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_22

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "public_sms"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 626
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v15}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processPublicMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_1c

    .line 627
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 633
    :cond_1c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v15}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processSPTSMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_1d

    .line 634
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 639
    :cond_1d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v15}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processMcAfeeMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_1e

    .line 640
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 645
    :cond_1e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v15}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processKizONMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_1f

    .line 646
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 651
    :cond_1f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7, v15}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processMobileboxProDirectedSMS(Lcom/android/internal/telephony/InboundSmsTracker;I[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_20

    .line 652
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 657
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "app_directed_sms"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 658
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7, v15}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processDirectedSMS(Lcom/android/internal/telephony/InboundSmsTracker;I[[BLandroid/content/BroadcastReceiver;)I

    move-result v52

    .line 659
    .restart local v52    # "result":I
    const/16 v4, 0xb

    move/from16 v0, v52

    if-eq v0, v4, :cond_21

    .line 660
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 666
    .end local v52    # "result":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "legacy_vvm_not_save"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 667
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processLegacyVVM(Lcom/android/internal/telephony/InboundSmsTracker;I[[B)I

    move-result v52

    .line 668
    .restart local v52    # "result":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms.mt.legacyVVM] processLegacyVVM result =["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 669
    const/4 v4, 0x1

    move/from16 v0, v52

    if-ne v0, v4, :cond_22

    .line 670
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 671
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 672
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 679
    .end local v52    # "result":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "OperatorMessage"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 680
    const-string v4, "operator message"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 681
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v15}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processOperatorMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)I

    move-result v52

    .line 682
    .restart local v52    # "result":I
    const/16 v4, 0xb

    move/from16 v0, v52

    if-eq v0, v4, :cond_23

    .line 683
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 688
    .end local v52    # "result":I
    :cond_23
    new-instance v25, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_FILTER"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 690
    .local v25, "intent":Landroid/content/Intent;
    const/16 v32, 0x0

    .line 692
    .local v32, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v31

    .line 694
    .local v31, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v31, :cond_24

    .line 695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v32

    .line 699
    :cond_24
    if-eqz v32, :cond_26

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    .line 700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms.mt] processMessagePart carrierPackages.get(0) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 701
    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    const-string v4, "destport"

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    :goto_9
    const-string v4, "pdus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 708
    const-string v4, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "seperate_processing_sms_uicc"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 712
    const/4 v4, 0x1

    if-ne v6, v4, :cond_27

    .line 713
    const-string v4, "indexOnIcc"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->lgeGetIndexOnIcc()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    :cond_25
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "trf_no_premium_sms"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    .line 722
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v15}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processTFDM(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_28

    .line 723
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 704
    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->setAndDirectIntent(Landroid/content/Intent;I)V

    goto :goto_9

    .line 715
    :cond_27
    const-string v4, "indexOnIcc"

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    .line 729
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v19, p0

    move/from16 v20, v6

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-object/from16 v24, v11

    .line 730
    invoke-direct/range {v19 .. v25}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->handleConcatStitching2(IZZZLjava/lang/String;Landroid/content/Intent;)V

    .line 735
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "SafeSMS"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 736
    const/4 v4, 0x0

    aget-object v4, v7, v4

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->makeSafeSmsField(Landroid/content/Intent;[B)V

    .line 741
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "tmus_whitepages_nameid"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->wrapIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v25

    .line 746
    :cond_2b
    const-string v26, "android.permission.RECEIVE_SMS"

    const/16 v27, 0x10

    sget-object v29, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v24, p0

    move-object/from16 v28, v15

    invoke-virtual/range {v24 .. v29}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 748
    const/4 v4, 0x1

    goto/16 :goto_4
.end method

.method protected processMessagePartKRTestBed([BLjava/lang/String;IIIJIZLjava/lang/String;Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 38
    .param p1, "pdu"    # [B
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "referenceNumber"    # I
    .param p4, "sequenceNumber"    # I
    .param p5, "messageCount"    # I
    .param p6, "timestamp"    # J
    .param p8, "destPort"    # I
    .param p9, "isCdmaWapPush"    # Z
    .param p10, "serviceCenter"    # Ljava/lang/String;
    .param p11, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1672
    .local v14, "firstTime":J
    const/16 v31, 0x0

    check-cast v31, [[B

    .line 1673
    .local v31, "pdus":[[B
    const/16 v25, 0x0

    .line 1676
    .local v25, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    .line 1677
    .local v32, "refNumber":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    .line 1680
    .local v33, "seqNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND sequence=?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v32, v8, v9

    const/4 v9, 0x2

    aput-object v33, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1684
    if-eqz v25, :cond_9

    .line 1686
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1687
    const-string v4, "Mms Testbed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding duplicate message segment from address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " refNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seqNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1690
    .local v29, "oldPduString":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v28

    .line 1691
    .local v28, "oldPdu":[B
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1692
    const-string v4, "Mms Testbed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Warning: dup message segment PDU of length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is different from existing PDU of length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1695
    :cond_0
    const/4 v4, 0x1

    .line 1788
    if-eqz v25, :cond_1

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object/from16 v11, v31

    .line 1834
    .end local v28    # "oldPdu":[B
    .end local v29    # "oldPduString":Ljava/lang/String;
    .end local v31    # "pdus":[[B
    .end local v32    # "refNumber":Ljava/lang/String;
    .end local v33    # "seqNumber":Ljava/lang/String;
    .local v11, "pdus":[[B
    :cond_2
    :goto_0
    return v4

    .line 1697
    .end local v11    # "pdus":[[B
    .restart local v31    # "pdus":[[B
    .restart local v32    # "refNumber":Ljava/lang/String;
    .restart local v33    # "seqNumber":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1704
    :goto_1
    const-string v7, ""

    .line 1705
    .local v7, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "cdma_kr_testbed_mms_receive"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p9, :cond_a

    .line 1706
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v4, "reference_number ="

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1707
    .local v37, "whereTemp":Ljava/lang/StringBuilder;
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1713
    .end local v37    # "whereTemp":Ljava/lang/StringBuilder;
    :goto_2
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/4 v4, 0x0

    aput-object p2, v36, v4

    const/4 v4, 0x1

    aput-object v32, v36, v4

    .line 1714
    .local v36, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "cdma_kr_testbed_mms_receive"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz p9, :cond_b

    .line 1715
    const-string v4, "Mms Testbed"

    const-string v5, "processMessagePart() - KEY_CDMA_MMS_RECEIVE and CDMA WAP PUSH - RawUri query"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1728
    :goto_3
    if-eqz v25, :cond_12

    .line 1729
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1730
    .local v13, "cursorCount":I
    add-int/lit8 v4, p5, -0x1

    if-eq v13, v4, :cond_d

    .line 1732
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 1733
    .local v35, "values":Landroid/content/ContentValues;
    const-string v4, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1734
    const-string v4, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    const-string v4, "address"

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    const-string v4, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1737
    const-string v4, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1738
    const-string v4, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1739
    const/4 v4, -0x1

    move/from16 v0, p8

    if-eq v0, v4, :cond_4

    .line 1740
    const-string v4, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1743
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ems_segment_timer"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1744
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 1745
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1746
    const-string v4, "time"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 1747
    .local v34, "timeColumn":I
    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1750
    .end local v34    # "timeColumn":I
    :cond_5
    const-string v4, "time"

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v14, v15}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1753
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ems_segment_timer"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1756
    new-instance v4, Ljava/lang/Thread;

    new-instance v9, Lcom/android/internal/telephony/InboundSmsHandlerEx$EMSSegmentExpirationRunnable;

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/InboundSmsHandlerEx$EMSSegmentExpirationRunnable;-><init>(Lcom/android/internal/telephony/InboundSmsHandlerEx;Ljava/lang/String;IIJ)V

    .end local v13    # "cursorCount":I
    invoke-direct {v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1759
    :cond_7
    const/4 v4, 0x1

    .line 1788
    if-eqz v25, :cond_8

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object/from16 v11, v31

    .end local v31    # "pdus":[[B
    .restart local v11    # "pdus":[[B
    goto/16 :goto_0

    .line 1699
    .end local v7    # "where":Ljava/lang/String;
    .end local v11    # "pdus":[[B
    .end local v35    # "values":Landroid/content/ContentValues;
    .end local v36    # "whereArgs":[Ljava/lang/String;
    .restart local v31    # "pdus":[[B
    :cond_9
    :try_start_2
    const-string v4, "Mms Testbed"

    const-string v5, "SMSDispatcher.processMessagePartKRTestBed(): mResolver.query() returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 1784
    .end local v32    # "refNumber":Ljava/lang/String;
    .end local v33    # "seqNumber":Ljava/lang/String;
    :catch_0
    move-exception v26

    move-object/from16 v11, v31

    .line 1785
    .end local v31    # "pdus":[[B
    .restart local v11    # "pdus":[[B
    .local v26, "e":Landroid/database/SQLException;
    :goto_4
    :try_start_3
    const-string v4, "Mms Testbed"

    const-string v5, "Can\'t access multipart SMS database"

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1786
    const/4 v4, 0x2

    .line 1788
    if-eqz v25, :cond_2

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1710
    .end local v11    # "pdus":[[B
    .end local v26    # "e":Landroid/database/SQLException;
    .restart local v7    # "where":Ljava/lang/String;
    .restart local v31    # "pdus":[[B
    .restart local v32    # "refNumber":Ljava/lang/String;
    .restart local v33    # "seqNumber":Ljava/lang/String;
    :cond_a
    :try_start_4
    const-string v7, "address=? AND reference_number=?"

    goto/16 :goto_2

    .line 1720
    .restart local v36    # "whereArgs":[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ems_segment_timer"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v8, v36

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    goto/16 :goto_3

    .line 1723
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v8, v36

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    goto/16 :goto_3

    .line 1763
    .restart local v13    # "cursorCount":I
    :cond_d
    move/from16 v0, p5

    new-array v11, v0, [[B
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v31    # "pdus":[[B
    .restart local v11    # "pdus":[[B
    move-object/from16 v8, p0

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, v25

    .line 1764
    :try_start_5
    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->handleMsgKRTestbed(IZ[[BLandroid/database/Cursor;I)I

    move-result p8

    .line 1768
    if-eqz p9, :cond_f

    .line 1769
    aput-object p1, v11, p4

    .line 1775
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "cdma_kr_testbed_mms_receive"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz p9, :cond_10

    .line 1776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1788
    .end local v13    # "cursorCount":I
    :goto_6
    if-eqz v25, :cond_e

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1792
    :cond_e
    if-nez v11, :cond_13

    .line 1793
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 1771
    .restart local v13    # "cursorCount":I
    :cond_f
    add-int/lit8 v4, p4, -0x1

    :try_start_6
    aput-object p1, v11, v4

    goto :goto_5

    .line 1784
    :catch_1
    move-exception v26

    goto :goto_4

    .line 1778
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v36

    invoke-virtual {v4, v5, v7, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 1788
    .end local v7    # "where":Ljava/lang/String;
    .end local v13    # "cursorCount":I
    .end local v32    # "refNumber":Ljava/lang/String;
    .end local v33    # "seqNumber":Ljava/lang/String;
    .end local v36    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    :goto_7
    if-eqz v25, :cond_11

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v4

    .line 1781
    .end local v11    # "pdus":[[B
    .restart local v7    # "where":Ljava/lang/String;
    .restart local v31    # "pdus":[[B
    .restart local v32    # "refNumber":Ljava/lang/String;
    .restart local v33    # "seqNumber":Ljava/lang/String;
    .restart local v36    # "whereArgs":[Ljava/lang/String;
    :cond_12
    :try_start_7
    const-string v4, "Mms Testbed"

    const-string v5, "SMSDispatcher.processMessagePartKRTestBed(): mResolver.query() returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v11, v31

    .end local v31    # "pdus":[[B
    .restart local v11    # "pdus":[[B
    goto :goto_6

    .line 1796
    :cond_13
    new-instance v18, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 1799
    .local v18, "resultReceiver":Landroid/content/BroadcastReceiver;
    if-eqz p9, :cond_16

    .line 1801
    new-instance v30, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1802
    .local v30, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_8
    move/from16 v0, v27

    move/from16 v1, p5

    if-ge v0, v1, :cond_14

    .line 1804
    aget-object v4, v11, v27

    const/4 v5, 0x0

    aget-object v6, v11, v27

    array-length v6, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1802
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 1806
    :cond_14
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    .line 1809
    .local v17, "datagram":[B
    const/16 v4, 0xb84

    move/from16 v0, p8

    if-ne v0, v4, :cond_15

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mWapPush:Lcom/android/internal/telephony/WapPushOverSmsEx;

    move-object/from16 v16, v0

    const-string v20, ""

    const-string v21, ""

    move-object/from16 v19, p0

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/WapPushOverSmsEx;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1813
    :cond_15
    const/4 v4, 0x1

    new-array v11, v4, [[B

    .line 1814
    const/4 v4, 0x0

    aput-object v17, v11, v4

    .line 1816
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchPortAddressedPdus([[BI)V

    .line 1817
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 1822
    .end local v17    # "datagram":[B
    .end local v27    # "i":I
    .end local v30    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_16
    const/4 v4, -0x1

    move/from16 v0, p8

    if-eq v0, v4, :cond_18

    .line 1823
    const/16 v4, 0xb84

    move/from16 v0, p8

    if-ne v0, v4, :cond_17

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move/from16 v21, p5

    move-object/from16 v22, p10

    move-object/from16 v23, v11

    move-object/from16 v24, v18

    .line 1824
    invoke-direct/range {v19 .. v24}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchPduKRTestbed(Ljava/lang/String;ILjava/lang/String;[[BLandroid/content/BroadcastReceiver;)I

    move-result v4

    goto/16 :goto_0

    .line 1827
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchPortAddressedPdus([[BI)V

    .line 1834
    :goto_9
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 1832
    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchPdus([[B)V

    goto :goto_9

    .line 1788
    .end local v7    # "where":Ljava/lang/String;
    .end local v11    # "pdus":[[B
    .end local v18    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v32    # "refNumber":Ljava/lang/String;
    .end local v33    # "seqNumber":Ljava/lang/String;
    .end local v36    # "whereArgs":[Ljava/lang/String;
    .restart local v31    # "pdus":[[B
    :catchall_1
    move-exception v4

    move-object/from16 v11, v31

    .end local v31    # "pdus":[[B
    .restart local v11    # "pdus":[[B
    goto/16 :goto_7
.end method

.method protected processOperatorMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)I
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1311
    const/4 v4, 0x0

    .line 1312
    .local v4, "isConcat":Z
    const/4 v5, 0x0

    .line 1313
    .local v5, "existsPortAddrs":Z
    const/4 v9, 0x0

    .line 1315
    .local v9, "isGsm":Z
    const/4 v6, 0x0

    .line 1316
    .local v6, "sms":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1317
    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v6

    .line 1318
    const/4 v9, 0x0

    .line 1324
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "ctc_spam_msg"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v8, :cond_0

    .line 1325
    const/4 v9, 0x1

    .line 1329
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    .line 1331
    .local v10, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v10, :cond_1

    iget-object v2, v10, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v2, :cond_1

    .line 1332
    const/4 v4, 0x1

    .line 1335
    :cond_1
    if-eqz v10, :cond_2

    .line 1336
    iget-object v2, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v2, :cond_4

    move v5, v0

    .line 1340
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "KT_LBS"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v8, :cond_5

    .line 1341
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    const/16 v2, 0x51

    if-ne v0, v2, :cond_5

    .line 1342
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1343
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1344
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1345
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .end local v5    # "existsPortAddrs":Z
    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1361
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "isConcat":Z
    :goto_2
    return v8

    .line 1320
    .end local v10    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .restart local v4    # "isConcat":Z
    .restart local v5    # "existsPortAddrs":Z
    :cond_3
    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 1321
    const/4 v9, 0x1

    goto :goto_0

    .restart local v10    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_4
    move v5, v8

    .line 1336
    goto :goto_1

    .line 1353
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1354
    .local v7, "operatorMessageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/SmsOperatorBasicMessage;>;"
    if-ne v9, v8, :cond_7

    move-object v2, p0

    move-object v3, p2

    move-object v8, p3

    .line 1355
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addGsmOperatorMessages([[BZZLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1361
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchOperatorMessage(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;)I

    move-result v8

    goto :goto_2

    .line 1357
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "lgu_dispatch"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v8, :cond_6

    .line 1358
    const-string v0, "CdmaSmsLGUMessage"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v6, p2, p3}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method protected processPublicMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 12
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 1632
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1633
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    .line 1636
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v0, "com.tion.securitysms"

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1641
    :goto_0
    if-eqz v9, :cond_0

    const-string v0, "com.tion.securitysms"

    iget-object v3, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 1660
    :goto_1
    return v0

    .line 1637
    :catch_0
    move-exception v6

    .line 1638
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "processPublicMessage(), Public package doesn\'t existed."

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 1645
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    aget-object v3, p2, v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3gpp2"

    :goto_2
    invoke-static {v3, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 1646
    .local v8, "msg":Landroid/telephony/SmsMessage;
    if-eqz v8, :cond_3

    .line 1647
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v7

    .line 1648
    .local v7, "messageByte":[B
    if-eqz v7, :cond_3

    .line 1649
    aget-byte v0, v7, v2

    const/16 v3, -0xf

    if-ne v0, v3, :cond_3

    aget-byte v0, v7, v11

    const/16 v3, -0x60

    if-ne v0, v3, :cond_3

    .line 1650
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.lge.android.intent.action.SECURITY_SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1651
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "com.tion.securitysms"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1652
    const-string v0, "processPublicMessage(), Delivering SMS to : com.tion.securitysms"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1653
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1654
    const-string v0, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1655
    const-string v2, "com.lge.permission.SECURITY_SMS_RECEIVED"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    move v0, v11

    .line 1656
    goto :goto_1

    .line 1645
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v7    # "messageByte":[B
    .end local v8    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    const-string v0, "3gpp"

    goto :goto_2

    .restart local v8    # "msg":Landroid/telephony/SmsMessage;
    :cond_3
    move v0, v2

    .line 1660
    goto :goto_1
.end method

.method protected processSPTSMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1539
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v7, "spts_msg"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1540
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1541
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_1

    const-string v4, "com.lge.software.infocollector"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1542
    const/4 v2, 0x0

    .line 1543
    .local v2, "msg":Landroid/telephony/SmsMessage;
    aget-object v7, p2, v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "3gpp2"

    :goto_0
    invoke-static {v7, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 1544
    if-eqz v2, :cond_1

    .line 1545
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 1546
    .local v0, "address":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processSPTSMessage(), SPTSAddress : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1547
    if-eqz v0, :cond_1

    const-string v4, "00000000000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1548
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.spts.SMS_RECEIVED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1549
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "pdus"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1550
    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v4, p3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchEx(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    move v4, v5

    .line 1556
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return v4

    .line 1543
    .restart local v2    # "msg":Landroid/telephony/SmsMessage;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string v4, "3gpp"

    goto :goto_0

    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v4, v6

    .line 1556
    goto :goto_1
.end method

.method protected processVVM3Pdu(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v4, 0x0

    .line 1849
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 1850
    .local v0, "messageBody":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v2

    .line 1852
    .local v2, "vvm3pdu":[B
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_0

    if-eqz v2, :cond_0

    array-length v5, v2

    if-ge v5, v6, :cond_2

    .line 1853
    :cond_0
    const-string v5, "[sms.mt.vvm3] messageBody length or vvm3pdu length is short. return"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1871
    :cond_1
    :goto_0
    return v4

    .line 1857
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1858
    .local v1, "vvm3Str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.vvm3] messageBody = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1859
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.vvm3] vvm3Str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1860
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.vvm3] vvm3pdu = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1862
    array-length v5, v2

    add-int/lit8 v5, v5, -0x7

    new-array v3, v5, [B

    .line 1863
    .local v3, "vvm3pduToDispatch":[B
    array-length v5, v2

    add-int/lit8 v5, v5, -0x7

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1864
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.vvm3] vvm3pduToDispatch = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1866
    const-string v5, "UNRECOGNIZED?cmd=STATUS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "MBOXUPDATE?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1867
    :cond_3
    const-string v4, "[sms.mt.vvm3] string match"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1868
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchVVM3Pdu([B)V

    .line 1869
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public setDeliverIntentIfNeeded(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1501
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 1503
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez p1, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1507
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1508
    if-eqz v2, :cond_0

    .line 1510
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1511
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delivering SMS to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1517
    :cond_2
    if-eqz v2, :cond_0

    .line 1519
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1520
    .local v6, "smsPackage":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, "com.android.mms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1521
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1522
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandlerEx;->NEED_TO_CHANGE_DELIVER_ACTION:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v4, v1, v3

    .line 1523
    .local v4, "intentAction":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1526
    const-string v7, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1528
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDeliverIntentIfNeeded(), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >>>  SMS_DELIVER_ACTION"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1529
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDeliverIntentIfNeeded(), Delivering SMS to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1522
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
