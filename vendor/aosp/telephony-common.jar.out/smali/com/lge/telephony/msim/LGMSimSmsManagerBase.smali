.class public abstract Lcom/lge/telephony/msim/LGMSimSmsManagerBase;
.super Ljava/lang/Object;
.source "LGMSimSmsManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LGMSimSmsManagerBase"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for common API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private static logUnexpectedMTKMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for MTK API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private static logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "LGMSimSmsManagerBase"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method private static logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for QCOM API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public copyMessageToIcc([B[BIJ)Z
    .locals 1
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "subId"    # J

    .prologue
    .line 109
    const-string v0, "copyMessageToIcc"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public copySmsToIcc([B[BIJ)I
    .locals 1
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "subId"    # J

    .prologue
    .line 237
    const-string v0, "copySmsToIcc"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 238
    const/4 v0, -0x1

    return v0
.end method

.method public copySmsToIccPrivate([B[BIIJ)I
    .locals 1
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "sms_format"    # I
    .param p5, "subId"    # J

    .prologue
    .line 286
    const-string v0, "copySmsToIccPrivate"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 287
    const/4 v0, -0x1

    return v0
.end method

.method public deleteMessageFromIcc(IJ)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "subId"    # J

    .prologue
    .line 121
    const-string v0, "deleteMessageFromIcc"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public deleteMessageFromIccMultiMode(IIJ)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "smsformat"    # I
    .param p3, "subId"    # J

    .prologue
    .line 299
    const-string v0, "deleteMessageFromIccMultiMode"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcast(IJ)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "subId"    # J

    .prologue
    .line 160
    const-string v0, "disableCellBroadcast"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcastRange(IIJ)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "subId"    # J

    .prologue
    .line 185
    const-string v0, "disableCellBroadcastRange"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public enableCellBroadcast(IJ)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "subId"    # J

    .prologue
    .line 148
    const-string v0, "enableCellBroadcast"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public enableCellBroadcastRange(IIJ)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "subId"    # J

    .prologue
    .line 173
    const-string v0, "enableCellBroadcastRange"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxEfSms(IJ)I
    .locals 1
    .param p1, "sms_format"    # I
    .param p2, "subId"    # J

    .prologue
    .line 271
    const-string v0, "getMaxEfSms"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 272
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxEfSms(J)I
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 259
    const-string v0, "getMaxEfSms"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 260
    const/4 v0, -0x1

    return v0
.end method

.method public getServiceCenterAddress(J)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 222
    const-string v0, "getServiceCenterAddress"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFdnEnabledOnSubscription(J)Z
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 248
    const-string v0, "isFdnEnabledOnSubscription"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 1
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
    .line 95
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "sendMultipartTextMessage"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;J)V
    .locals 1
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "subId"    # J

    .prologue
    .line 77
    const-string v0, "sendTextMessage"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public setServiceCenterAddress(Ljava/lang/String;J)Z
    .locals 1
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "subId"    # J

    .prologue
    .line 211
    const-string v0, "setServiceCenterAddress"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public updateMessageOnIcc(II[BJ)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B
    .param p4, "subId"    # J

    .prologue
    .line 136
    const-string v0, "updateMessageOnIcc"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public updateSmsOnSimReadStatus(IZJ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "read"    # Z
    .param p3, "subId"    # J

    .prologue
    .line 199
    const-string v0, "updateSmsOnSimReadStatus"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    return v0
.end method
