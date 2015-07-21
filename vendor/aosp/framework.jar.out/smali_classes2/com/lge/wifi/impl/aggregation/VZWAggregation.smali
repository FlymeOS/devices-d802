.class public Lcom/lge/wifi/impl/aggregation/VZWAggregation;
.super Ljava/lang/Object;
.source "VZWAggregation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;,
        Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;
    }
.end annotation


# static fields
.field private static final AGG_STATE_COMPLETED:I = 0x0

.field private static final AGG_STATE_IDLE:I = 0x0

.field private static final AGG_STATE_RUNNING:I = 0x0

.field public static final EXTRA_AGGREGATION_DESC:Ljava/lang/String; = "aggregation_description"

.field public static final EXTRA_AGGREGATION_RESULT:Ljava/lang/String; = "aggregation_result"

.field public static final EXTRA_BW_USER_GROUP:Ljava/lang/String; = "aggregation_bw_user_group"

.field public static final EXTRA_LOCATION:Ljava/lang/String; = "aggregation_location"

.field public static final SIM_TYPE_NOT_VZW:I = 0x3

.field public static final SIM_TYPE_VZW_3G:I = 0x4

.field public static final SIM_TYPE_VZW_4G:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WiFiAggregation"

.field public static final WIFI_AGGREGATION_SERVER_END:Ljava/lang/String; = "com.lge.wifi.impl.aggregation.end"

.field public static final WIFI_AGGREGATION_SERVER_START:Ljava/lang/String; = "com.lge.wifi.impl.aggregation.start"

.field private static retryCnt:I


# instance fields
.field private context:Landroid/content/Context;

.field private mState:I

.field mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field mTelephonyMgrEx:Landroid/telephony/TelephonyManagerEx;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->retryCnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    .line 47
    iput-object v1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    .line 48
    iput-object v1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->context:Landroid/content/Context;

    .line 49
    iput-object v1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 50
    iput-object v1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgrEx:Landroid/telephony/TelephonyManagerEx;

    .line 51
    iput-object v1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 56
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 19
    sput p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->retryCnt:I

    return p0
.end method

.method static synthetic access$102(Lcom/lge/wifi/impl/aggregation/VZWAggregation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/aggregation/VZWAggregation;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->getEQIMID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/wifi/impl/aggregation/VZWAggregation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/aggregation/VZWAggregation;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/wifi/impl/aggregation/VZWAggregation;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/aggregation/VZWAggregation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEQIMID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 444
    const/4 v2, 0x1

    .line 445
    .local v2, "TYPE_MEID":I
    const/4 v1, 0x3

    .line 446
    .local v1, "TYPE_EUIMID":I
    const-string v0, ""

    .line 448
    .local v0, "EQIMID":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgrEx:Landroid/telephony/TelephonyManagerEx;

    if-nez v3, :cond_0

    .line 449
    const/4 v3, 0x0

    .line 463
    :goto_0
    return-object v3

    .line 451
    :cond_0
    const-string v3, "ro.telephony.default_network"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 452
    iget-object v3, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgrEx:Landroid/telephony/TelephonyManagerEx;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManagerEx;->getDeviceIdForVZW(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_1
    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 460
    :cond_1
    const-string v3, "WiFiAggregation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getEQIMID() return ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 463
    goto :goto_0

    .line 454
    :cond_2
    iget-object v3, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgrEx:Landroid/telephony/TelephonyManagerEx;

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManagerEx;->getDeviceIdForVZW(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getHashString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "inputString"    # Ljava/lang/String;

    .prologue
    .line 415
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 417
    .local v5, "sb":Ljava/lang/StringBuffer;
    if-nez p1, :cond_0

    .line 418
    const/4 v6, 0x0

    .line 438
    :goto_0
    return-object v6

    .line 422
    :cond_0
    :try_start_0
    const-string v6, "SHA1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 423
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 425
    .local v2, "input":[B
    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v3, v2, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 426
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 428
    .local v4, "mdbytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 430
    aget-byte v6, v4, v1

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 433
    .end local v1    # "i":I
    .end local v2    # "input":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "mdbytes":[B
    :catch_0
    move-exception v0

    .line 435
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "WiFiAggregation"

    const-string v7, " Error - Hash Algorithm is not supported"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "bw_user_group"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;

    .prologue
    .line 382
    const-string v1, "WiFiAggregation"

    const-string v2, "Send Result Intent [com.lge.wifi.impl.aggregation.end]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-nez p1, :cond_0

    .line 386
    const-string v1, "WiFiAggregation"

    const-string v2, "Send Result is NULL !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local p1    # "result":Ljava/lang/String;
    .end local p2    # "description":Ljava/lang/String;
    .end local p3    # "bw_user_group":Ljava/lang/String;
    .end local p4    # "location":Ljava/lang/String;
    :goto_0
    return-void

    .line 391
    .restart local p1    # "result":Ljava/lang/String;
    .restart local p2    # "description":Ljava/lang/String;
    .restart local p3    # "bw_user_group":Ljava/lang/String;
    .restart local p4    # "location":Ljava/lang/String;
    :cond_0
    const-string v2, "WiFiAggregation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " aggregation_result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    move-object v1, p1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v2, "WiFiAggregation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " aggregation_description "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_2

    move-object v1, p2

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v2, "WiFiAggregation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " aggregation_bw_user_group "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_3

    move-object v1, p3

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v2, "WiFiAggregation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " aggregation_location "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p4, :cond_4

    move-object v1, p4

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v1, "FAIL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->retryCnt:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 398
    const-string v1, "WiFiAggregation"

    const-string v2, "Ignore fail intent. Only last try just send intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 391
    :cond_1
    const-string v1, " "

    goto :goto_1

    .line 392
    :cond_2
    const-string v1, " "

    goto :goto_2

    .line 393
    :cond_3
    const-string v1, " "

    goto :goto_3

    .line 394
    :cond_4
    const-string v1, " "

    goto :goto_4

    .line 402
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wifi.impl.aggregation.end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "aggregation_result"

    if-eqz p1, :cond_6

    .end local p1    # "result":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v1, "aggregation_description"

    if-eqz p2, :cond_7

    .end local p2    # "description":Ljava/lang/String;
    :goto_6
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v1, "aggregation_bw_user_group"

    if-eqz p3, :cond_8

    .end local p3    # "bw_user_group":Ljava/lang/String;
    :goto_7
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v1, "aggregation_location"

    if-eqz p4, :cond_9

    .end local p4    # "location":Ljava/lang/String;
    :goto_8
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->context:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 403
    .restart local p1    # "result":Ljava/lang/String;
    .restart local p2    # "description":Ljava/lang/String;
    .restart local p3    # "bw_user_group":Ljava/lang/String;
    .restart local p4    # "location":Ljava/lang/String;
    :cond_6
    const-string p1, " "

    goto :goto_5

    .line 404
    .end local p1    # "result":Ljava/lang/String;
    :cond_7
    const-string p2, " "

    goto :goto_6

    .line 405
    .end local p2    # "description":Ljava/lang/String;
    :cond_8
    const-string p3, " "

    goto :goto_7

    .line 406
    .end local p3    # "bw_user_group":Ljava/lang/String;
    :cond_9
    const-string p4, " "

    goto :goto_8
.end method


# virtual methods
.method public startAggregation(Landroid/content/Context;)V
    .locals 3
    .param p1, "rContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v0, "WiFiAggregation"

    const-string v1, "Aggregation request received."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->context:Landroid/content/Context;

    .line 65
    iget v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    if-nez v0, :cond_1

    .line 67
    const-string v0, "WiFiAggregation"

    const-string v1, "Start aggregation thread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    .line 70
    new-instance v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;-><init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    .line 71
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->start()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    if-nez v0, :cond_2

    .line 76
    const-string v0, "WiFiAggregation"

    const-string v1, "Restart aggregation thread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    .line 78
    new-instance v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;-><init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    .line 79
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->start()V

    goto :goto_0

    .line 82
    :cond_2
    iget v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    if-nez v0, :cond_0

    .line 84
    const-string v0, "WiFiAggregation"

    const-string v1, "Running thread exist. Ignore request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
