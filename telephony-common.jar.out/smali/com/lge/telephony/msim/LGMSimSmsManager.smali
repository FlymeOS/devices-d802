.class public Lcom/lge/telephony/msim/LGMSimSmsManager;
.super Ljava/lang/Object;
.source "LGMSimSmsManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LGMSimSmsManager"

.field private static final MSIM_SMS_MANAGER_ADAPTORS:[Ljava/lang/String;

.field protected static isMultiSimEnabled:Z

.field private static mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sInstance:Lcom/lge/telephony/msim/LGMSimSmsManager;


# instance fields
.field private final DEFAULT_SUB:I

.field public mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    sput-boolean v2, Lcom/lge/telephony/msim/LGMSimSmsManager;->isMultiSimEnabled:Z

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.lge.telephony.msim.TargetMSimSmsManagerAdaptor"

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/telephony/msim/LGMSimSmsManager;->MSIM_SMS_MANAGER_ADAPTORS:[Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/lge/telephony/msim/LGMSimSmsManager;->MSIM_SMS_MANAGER_ADAPTORS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/telephony/msim/RuntimeLoader;->getActiveDefaultConstructorFromClassList([Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;

    .line 30
    sget-object v0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error!! don\'t load target msim sms manager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    new-instance v0, Lcom/lge/telephony/msim/LGMSimSmsManager;

    invoke-direct {v0}, Lcom/lge/telephony/msim/LGMSimSmsManager;-><init>()V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimSmsManager;->sInstance:Lcom/lge/telephony/msim/LGMSimSmsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->DEFAULT_SUB:I

    .line 42
    sget-object v1, Lcom/lge/telephony/msim/LGMSimSmsManager;->mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 45
    :try_start_0
    sget-object v1, Lcom/lge/telephony/msim/LGMSimSmsManager;->mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    iput-object v1, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 57
    :cond_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 53
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDefault()Lcom/lge/telephony/msim/LGMSimSmsManager;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/lge/telephony/msim/LGMSimSmsManager;->sInstance:Lcom/lge/telephony/msim/LGMSimSmsManager;

    return-object v0
.end method


# virtual methods
.method public copyMessageToIcc([B[BIJ)Z
    .locals 6
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "subId"    # J

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->copyMessageToIcc([B[BIJ)Z

    move-result v0

    return v0
.end method

.method public copySmsToIcc([B[BIJ)I
    .locals 6
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "subId"    # J

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->copySmsToIcc([B[BIJ)I

    move-result v0

    return v0
.end method

.method public copySmsToIccPrivate([B[BIIJ)I
    .locals 9
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "sms_format"    # I
    .param p5, "subId"    # J

    .prologue
    .line 190
    iget-object v1, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->copySmsToIccPrivate([B[BIIJ)I

    move-result v0

    return v0
.end method

.method public deleteMessageFromIcc(IJ)Z
    .locals 2
    .param p1, "messageIndex"    # I
    .param p2, "subId"    # J

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->deleteMessageFromIcc(IJ)Z

    move-result v0

    return v0
.end method

.method public deleteMessageFromIccMultiMode(IIJ)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "smsformat"    # I
    .param p3, "subId"    # J

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->deleteMessageFromIccMultiMode(IIJ)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcast(IJ)Z
    .locals 2
    .param p1, "messageIdentifier"    # I
    .param p2, "subId"    # J

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->disableCellBroadcast(IJ)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(IIJ)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "subId"    # J

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->disableCellBroadcastRange(IIJ)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcast(IJ)Z
    .locals 2
    .param p1, "messageIdentifier"    # I
    .param p2, "subId"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->enableCellBroadcast(IJ)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(IIJ)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "subId"    # J

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->enableCellBroadcastRange(IIJ)Z

    move-result v0

    return v0
.end method

.method public getMaxEfSms(IJ)I
    .locals 2
    .param p1, "sms_format"    # I
    .param p2, "subId"    # J

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->getMaxEfSms(IJ)I

    move-result v0

    return v0
.end method

.method public getMaxEfSms(J)I
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->getMaxEfSms(J)I

    move-result v0

    return v0
.end method

.method public getServiceCenterAddress(J)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->getServiceCenterAddress(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFdnEnabledOnSubscription(J)Z
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->isFdnEnabledOnSubscription(J)Z

    move-result v0

    return v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "subId"    # J
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
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 80
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;J)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "subId"    # J

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;J)V

    .line 70
    return-void
.end method

.method public setServiceCenterAddress(Ljava/lang/String;J)Z
    .locals 2
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "subId"    # J

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->setServiceCenterAddress(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public updateMessageOnIcc(II[BJ)Z
    .locals 6
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B
    .param p4, "subId"    # J

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->updateMessageOnIcc(II[BJ)Z

    move-result v0

    return v0
.end method

.method public updateSmsOnSimReadStatus(IZJ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "read"    # Z
    .param p3, "subId"    # J

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->updateSmsOnSimReadStatus(IZJ)Z

    move-result v0

    return v0
.end method
