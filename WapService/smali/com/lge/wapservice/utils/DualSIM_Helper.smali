.class public Lcom/lge/wapservice/utils/DualSIM_Helper;
.super Ljava/lang/Object;
.source "DualSIM_Helper.java"


# static fields
.field private static mMultiSimSubId:J

.field private static mSimID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/lge/wapservice/utils/DualSIM_Helper;->mSimID:I

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lge/wapservice/utils/DualSIM_Helper;->mMultiSimSubId:J

    return-void
.end method

.method public static getCurrentIMSIData()Ljava/lang/String;
    .locals 6

    .prologue
    .line 102
    sget v1, Lcom/lge/wapservice/utils/DualSIM_Helper;->mSimID:I

    invoke-static {v1}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getMultiSimSubIdBySlotId(I)J

    move-result-wide v2

    .line 103
    .local v2, "subid":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "imsi":Ljava/lang/String;
    const-string v1, "WapService_DualSIM_Helper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentIMSIData: imsi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-object v0
.end method

.method public static getIMSIData(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 91
    invoke-static {p0}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getMultiSimSubIdBySlotId(I)J

    move-result-wide v2

    .line 92
    .local v2, "subId":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "imsi":Ljava/lang/String;
    const-string v1, "WapService_DualSIM_Helper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIMSIData: imsi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / current slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v0
.end method

.method public static getMultiSimSubIdBySlotId(I)J
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    .line 62
    const-wide/16 v2, -0x1

    .line 64
    .local v2, "subscriptionId":J
    :try_start_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 65
    .local v1, "subId":[J
    const/4 v4, 0x0

    aget-wide v2, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "subId":[J
    :goto_0
    const-string v4, "WapService_DualSIM_Helper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMultiSimSubID: slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / subscriptionId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-wide v2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WapService_DualSIM_Helper"

    const-string v5, "Exception is occured.\n"

    invoke-static {v4, v5, v0}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getSimID()I
    .locals 3

    .prologue
    .line 146
    const-string v0, "WapService_DualSIM_Helper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DualSIM_Helper:getSimID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/wapservice/utils/DualSIM_Helper;->mSimID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget v0, Lcom/lge/wapservice/utils/DualSIM_Helper;->mSimID:I

    return v0
.end method

.method public static getSimOperator(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 114
    invoke-static {p0}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getMultiSimSubIdBySlotId(I)J

    move-result-wide v0

    .line 115
    .local v0, "subId":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 123
    invoke-static {p0}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getMultiSimSubIdBySlotId(I)J

    move-result-wide v0

    .line 124
    .local v0, "subId":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static setSimID(I)V
    .locals 3
    .param p0, "SubID"    # I

    .prologue
    .line 141
    const-string v0, "WapService_DualSIM_Helper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DualSIM_Helper:setSIMID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sput p0, Lcom/lge/wapservice/utils/DualSIM_Helper;->mSimID:I

    .line 143
    return-void
.end method

.method public static supportMultiSIM()Z
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method
