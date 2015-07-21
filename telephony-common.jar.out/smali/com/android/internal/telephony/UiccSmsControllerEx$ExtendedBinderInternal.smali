.class final Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;
.super Lcom/lge/internal/telephony/ISmsEx$Stub;
.source "UiccSmsControllerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccSmsControllerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExtendedBinderInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/UiccSmsControllerEx;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-direct {p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/UiccSmsControllerEx;Lcom/android/internal/telephony/UiccSmsControllerEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/UiccSmsControllerEx;
    .param p2, "x1"    # Lcom/android/internal/telephony/UiccSmsControllerEx$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;-><init>(Lcom/android/internal/telephony/UiccSmsControllerEx;)V

    return-void
.end method

.method private getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const/4 v3, 0x0

    .line 375
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v1

    .line 378
    .local v1, "phoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 380
    :cond_0
    const/4 v1, 0x0

    .line 384
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    iget-object v2, v2, Lcom/android/internal/telephony/UiccSmsControllerEx;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 393
    :goto_0
    return-object v2

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "RIL_UiccSmsControllerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " For subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v2, v3

    .line 389
    goto :goto_0

    .line 390
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "RIL_UiccSmsControllerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " For subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v2, v3

    .line 393
    goto :goto_0
.end method


# virtual methods
.method public copySmsToIccEf(I[B[B)I
    .locals 4
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 74
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->copySmsToIccEf(I[B[B)I

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 77
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "copySmsToIccEf iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public copySmsToIccEfForSubscriber(I[B[BJ)I
    .locals 4
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B
    .param p4, "subId"    # J

    .prologue
    .line 399
    invoke-direct {p0, p4, p5}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 400
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->copySmsToIccEf(I[B[B)I

    move-result v1

    .line 404
    :goto_0
    return v1

    .line 403
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "copySmsToIccEf iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public copySmsToIccEfPrivate(I[B[BI)I
    .locals 4
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B
    .param p4, "sms_format"    # I

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 193
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->copySmsToIccEfPrivate(I[B[BI)I

    move-result v1

    .line 197
    :goto_0
    return v1

    .line 196
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "copySmsToIccEfPrivate iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public copySmsToIccEfPrivateForSubscriber(I[B[BIJ)I
    .locals 3
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B
    .param p4, "sms_format"    # I
    .param p5, "subId"    # J

    .prologue
    .line 202
    invoke-direct {p0, p5, p6}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 203
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->copySmsToIccEfPrivate(I[B[BI)I

    move-result v1

    .line 207
    :goto_0
    return v1

    .line 206
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "copySmsToIccEfPrivate iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public disableGsmBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 354
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->disableGsmBroadcastRange(II)Z

    move-result v1

    .line 358
    :goto_0
    return v1

    .line 357
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "disableGsmBroadcastRange iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableAutoDCDisconnect(I)V
    .locals 4
    .param p1, "timeOut"    # I

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 279
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->enableAutoDCDisconnect(I)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "enableAutoDCDisconnect iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableGsmBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 344
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->enableGsmBroadcastRange(II)Z

    move-result v1

    .line 348
    :goto_0
    return v1

    .line 347
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "enableGsmBroadcastRange iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsSimFull()Z
    .locals 4

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 321
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    const/4 v1, 0x0

    .line 322
    .local v1, "isSimFull":Z
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->getIsSimFull()Z

    move-result v1

    .line 326
    :cond_0
    return v1
.end method

.method public getMaxEfSms()I
    .locals 4

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 84
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->getMaxEfSms()I

    move-result v1

    .line 88
    :goto_0
    return v1

    .line 87
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "getMaxEfSms iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxEfSmsForSubscriber(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 409
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 410
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->getMaxEfSms()I

    move-result v1

    .line 414
    :goto_0
    return v1

    .line 413
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "getMaxEfSms iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxEfSmsMultiModeForSubscriber(IJ)I
    .locals 4
    .param p1, "sms_format"    # I
    .param p2, "subId"    # J

    .prologue
    .line 459
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 460
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->getMaxEfSmsMultiMode(I)I

    move-result v1

    .line 464
    :goto_0
    return v1

    .line 463
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "getMaxEfSmsMultiModeForSubscriber iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmscenterAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 51
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->getSmscenterAddress()Ljava/lang/String;

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    .line 54
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "getSmscenterAddress iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmscenterAddressForSubscriber(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 429
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 430
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->getSmscenterAddress()Ljava/lang/String;

    move-result-object v1

    .line 434
    :goto_0
    return-object v1

    .line 433
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "getSmscenterAddress iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUiccType()I
    .locals 4

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 222
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->getUiccType()I

    move-result v1

    .line 226
    :goto_0
    return v1

    .line 225
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "getUiccType iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertDBForLGMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "destUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 333
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->insertDBForLGMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 337
    :goto_0
    return-object v1

    .line 336
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "insertDBForLGMessage iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBlockSendMessage(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v1, 0x0

    .line 483
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 484
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->isBlockSendMessage(Ljava/util/List;)Z

    move-result v1

    .line 489
    :goto_0
    return v1

    .line 487
    :cond_0
    const-string v2, "RIL_UiccSmsControllerEx"

    const-string v3, "[UiccSmsControllerEx] isBlockSendMessage(), iccSmsIntMgrEx is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFdnEnabled()Z
    .locals 4

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 290
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->isFdnEnabled()Z

    move-result v1

    .line 295
    :goto_0
    return v1

    .line 293
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "isFdnEnabled iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFdnEnabledOnSubscription(J)Z
    .locals 3
    .param p1, "subscription"    # J

    .prologue
    .line 449
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 450
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->isFdnEnabled()Z

    move-result v1

    .line 455
    :goto_0
    return v1

    .line 453
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "isFdnEnabled iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendEmailoverMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 245
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 246
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendEmailoverMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 251
    :goto_0
    return-void

    .line 248
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendEmailoverMultipartText iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendEmailoverText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 235
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 236
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendEmailoverText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendEmailoverText iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IIIZ)V
    .locals 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 268
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 269
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendMultipartTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IIIZ)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendMultipartTextLge iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "cbAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 128
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 129
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendMultipartTextWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendMultipartTextWithCbAddress iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/internal/telephony/LGSendingSMSOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "msgOptions":Ljava/util/List;, "Ljava/util/List<Lcom/lge/internal/telephony/LGSendingSMSOption;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 151
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 152
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendMultipartTextWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendMultipartTextWithMsgOption iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendReadReceipt(Ljava/lang/String;I)V
    .locals 4
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "MessageId"    # I

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 161
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendReadReceipt(Ljava/lang/String;I)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendReadReceipt iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IIIZ)V
    .locals 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "replyAddr"    # Ljava/lang/String;
    .param p8, "confirmRead"    # I
    .param p9, "replyOption"    # I
    .param p10, "protocolId"    # I
    .param p11, "isExpectMore"    # Z

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 258
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 259
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IIIZ)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendTextLge iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "cbAddress"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 118
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 119
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendTextWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendTextWithCbAddress iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/lge/internal/telephony/LGSendingSMSOption;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "msgOption"    # Lcom/lge/internal/telephony/LGSendingSMSOption;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 140
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 141
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendTextWithMsgOption() UiccSmsControllerEx.java"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 142
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendTextWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/lge/internal/telephony/LGSendingSMSOption;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendTextWithMsgOption iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIsSimFull(Z)V
    .locals 4
    .param p1, "isSimFull"    # Z

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 313
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setIsSimFull(Z)V

    .line 317
    :cond_0
    return-void
.end method

.method public setMultipartTextValidityPeriod(I)V
    .locals 4
    .param p1, "validityperiod"    # I

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 40
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setMultipartTextValidityPeriod(I)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setMultipartTextValidityPeriod iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMultipartTextValidityPeriodForSubscriber(IJ)V
    .locals 4
    .param p1, "validityperiod"    # I
    .param p2, "subscription"    # J

    .prologue
    .line 471
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 472
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setMultipartTextValidityPeriod(I)V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setMultipartTextValidityPeriod is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmsIsRoaming(Z)V
    .locals 4
    .param p1, "isRoaming"    # Z

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 302
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setSmsIsRoaming(Z)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setSmsIsRoaming iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmsPriority(I)V
    .locals 4
    .param p1, "priority"    # I

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 106
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setSmsPriority(I)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setSmsPriority iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmscenterAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "smsc"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 61
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setSmscenterAddress(Ljava/lang/String;)Z

    move-result v1

    .line 65
    :goto_0
    return v1

    .line 64
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setSmscenterAddress iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSmscenterAddressForSubscriber(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "subId"    # J

    .prologue
    .line 439
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 440
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setSmscenterAddress(Ljava/lang/String;)Z

    move-result v1

    .line 444
    :goto_0
    return v1

    .line 443
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setSmscenterAddress iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUiccType(I)V
    .locals 4
    .param p1, "uiccType"    # I

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 213
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setUiccType(I)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setUiccType iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z
    .locals 4
    .param p1, "isOnOff"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 365
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z

    move-result v1

    .line 369
    :goto_0
    return v1

    .line 368
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "smsReceptionBlockingforNIAPPolicy iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateMessageOnIccEfMultiMode(II[BI)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsformat"    # I

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 173
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->updateMessageOnIccEfMultiMode(II[BI)Z

    move-result v1

    .line 177
    :goto_0
    return v1

    .line 176
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "updateMessageOnIccEfMultiMode iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateMessageOnIccEfMultiModeForSubscriber(II[BIJ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsformat"    # I
    .param p5, "subId"    # J

    .prologue
    .line 182
    invoke-direct {p0, p5, p6}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 183
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->updateMessageOnIccEfMultiMode(II[BI)Z

    move-result v1

    .line 187
    :goto_0
    return v1

    .line 186
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "updateMessageOnIccEfMultiModeForSubscriber iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSmsOnSimReadStatus(IZ)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "read"    # Z

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 94
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->updateSmsOnSimReadStatus(IZ)Z

    move-result v1

    .line 98
    :goto_0
    return v1

    .line 97
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "updateSmsOnSimReadStatus iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSmsOnSimReadStatusForSubscriber(IZJ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "read"    # Z
    .param p3, "subId"    # J

    .prologue
    .line 419
    invoke-direct {p0, p3, p4}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 420
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->updateSmsOnSimReadStatus(IZ)Z

    move-result v1

    .line 424
    :goto_0
    return v1

    .line 423
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "updateSmsOnSimReadStatus iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v1, 0x0

    goto :goto_0
.end method
