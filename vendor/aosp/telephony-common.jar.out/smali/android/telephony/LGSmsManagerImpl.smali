.class public Landroid/telephony/LGSmsManagerImpl;
.super Ljava/lang/Object;
.source "LGSmsManagerImpl.java"

# interfaces
.implements Landroid/telephony/ILGSmsManager;


# static fields
.field private static final SMS_FORMAT_CSIM:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private combineScaMsg([B[B)[B
    .locals 4
    .param p1, "encodedScAddress"    # [B
    .param p2, "encodedMessage"    # [B

    .prologue
    const/4 v3, 0x0

    .line 859
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 860
    .local v0, "encodedMegWithSca":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 861
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 862
    return-object v0
.end method

.method private static getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;
    .locals 1

    .prologue
    .line 749
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    return-object v0
.end method

.method private makeParts(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 670
    .local v4, "newParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 671
    .local v0, "combinedString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 672
    .local v5, "partString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    goto :goto_0

    .line 675
    .end local v5    # "partString":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Landroid/telephony/SmsMessage;->fragmentTextEx(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 676
    if-nez v4, :cond_1

    .line 677
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "newParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .restart local v4    # "newParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v1, v6, v7

    .line 681
    .local v1, "diff":I
    if-lez v1, :cond_2

    .line 682
    move v2, v1

    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_3

    .line 683
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 682
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 685
    .end local v2    # "i":I
    :cond_2
    if-gez v1, :cond_3

    .line 686
    move v2, v1

    .restart local v2    # "i":I
    :goto_2
    if-gez v2, :cond_3

    .line 687
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 690
    .end local v2    # "i":I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeParts(), parts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 691
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeParts(), newParts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 692
    return-object v4
.end method


# virtual methods
.method public copySmsToIcc([B[BI)I
    .locals 6
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 607
    const/4 v2, -0x1

    .line 609
    .local v2, "indexOnIcc":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copySmsToIcc(), status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 611
    if-nez p2, :cond_0

    .line 612
    const-string v4, "copySmsToIcc(), pdu is NULL "

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move v3, v2

    .line 629
    .end local v2    # "indexOnIcc":I
    .local v3, "indexOnIcc":I
    :goto_0
    return v3

    .line 617
    .end local v3    # "indexOnIcc":I
    .restart local v2    # "indexOnIcc":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 618
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_1

    .line 619
    const-string v4, "copySmsToIcc(), SmsManager --> IccSmsInterfaceManager"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->f(Ljava/lang/String;)I

    .line 621
    invoke-interface {v1, p3, p2, p1}, Lcom/lge/internal/telephony/ISmsEx;->copySmsToIccEf(I[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 627
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copySmsToIcc(), indexOnIcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move v3, v2

    .line 629
    .end local v2    # "indexOnIcc":I
    .restart local v3    # "indexOnIcc":I
    goto :goto_0

    .line 623
    .end local v3    # "indexOnIcc":I
    .restart local v2    # "indexOnIcc":I
    :catch_0
    move-exception v0

    .line 624
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "copySmsToIcc(), RemoteException"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public copySmsToIccEfForSubscriber([B[BIJ)I
    .locals 8
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "subId"    # J

    .prologue
    .line 1011
    const/4 v7, -0x1

    .line 1013
    .local v7, "indexOnIcc":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copySmsToIcc(), status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1016
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 1017
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 1018
    const-string v1, "copySmsToIcc(), SmsManager --> IccSmsInterfaceManager"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->f(Ljava/lang/String;)I

    move v1, p3

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p4

    .line 1019
    invoke-interface/range {v0 .. v5}, Lcom/lge/internal/telephony/ISmsEx;->copySmsToIccEfForSubscriber(I[B[BJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1025
    .end local v0    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copySmsToIcc(), indexOnIcc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1027
    return v7

    .line 1021
    :catch_0
    move-exception v6

    .line 1022
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v1, "copySmsToIcc(), RemoteException"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public copySmsToIccEfPrivateForSubscriber([B[BIIJ)I
    .locals 9
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "sms_format"    # I
    .param p5, "subId"    # J

    .prologue
    .line 991
    const/4 v8, -0x1

    .line 993
    .local v8, "indexOnIcc":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copySmsToIccEfPrivateForSubscriber(), status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 996
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 997
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 998
    const-string v2, "copySmsToIccEfPrivateForSubscriber(), SmsManager --> IccSmsInterfaceManagerEx"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->f(Ljava/lang/String;)I

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    move-wide v6, p5

    .line 999
    invoke-interface/range {v1 .. v7}, Lcom/lge/internal/telephony/ISmsEx;->copySmsToIccEfPrivateForSubscriber(I[B[BIJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1005
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copySmsToIccEfPrivateForSubscriber(), indexOnIcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1007
    return v8

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "copySmsToIccEfPrivateForSubscriber(), RemoteException"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public copySmsToIccPrivate([B[BII)I
    .locals 4
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "sms_format"    # I

    .prologue
    .line 469
    const/4 v1, -0x1

    .line 470
    .local v1, "indexOnIcc":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copySmsToIccPrivate(), status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  sms_format = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 472
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 473
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v0, p3, p2, p1, p4}, Lcom/lge/internal/telephony/ISmsEx;->copySmsToIccEfPrivate(I[B[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 479
    .end local v0    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copySmsToIccPrivate(), indexOnIcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 480
    return v1

    .line 476
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIccMultiMode(II)Z
    .locals 5
    .param p1, "messageIndex"    # I
    .param p2, "smsformat"    # I

    .prologue
    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMessageFromIccMultiMode(), messageIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMessageFromIccMultiMode(), smsformat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 517
    const/4 v2, 0x0

    .line 519
    .local v2, "success":Z
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 520
    const/16 v3, 0xfd

    new-array v1, v3, [B

    .line 524
    .local v1, "pdu":[B
    :goto_0
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 527
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 528
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 529
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v1, p2}, Lcom/lge/internal/telephony/ISmsEx;->updateMessageOnIccEfMultiMode(II[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 534
    .end local v0    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMessageFromIccMultiMode(), success = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 535
    return v2

    .line 522
    .end local v1    # "pdu":[B
    :cond_1
    const/16 v3, 0xaf

    new-array v1, v3, [B

    .restart local v1    # "pdu":[B
    goto :goto_0

    .line 531
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public deleteMessageFromIccMultiModeForSubscriber(IIJ)Z
    .locals 9
    .param p1, "messageIndex"    # I
    .param p2, "smsformat"    # I
    .param p3, "subId"    # J

    .prologue
    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessageFromIccMultiModeForSubscriber(), messageIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessageFromIccMultiModeForSubscriber(), smsformat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1122
    const/4 v8, 0x0

    .line 1124
    .local v8, "success":Z
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 1125
    const/16 v2, 0xfd

    new-array v4, v2, [B

    .line 1129
    .local v4, "pdu":[B
    :goto_0
    const/4 v2, -0x1

    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 1132
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 1133
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 1134
    const/4 v3, 0x0

    move v2, p1

    move v5, p2

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/lge/internal/telephony/ISmsEx;->updateMessageOnIccEfMultiModeForSubscriber(II[BIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1139
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessageFromIccMultiModeForSubscriber(), success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1140
    return v8

    .line 1127
    .end local v4    # "pdu":[B
    :cond_1
    const/16 v2, 0xaf

    new-array v4, v2, [B

    .restart local v4    # "pdu":[B
    goto :goto_0

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "deleteMessageFromIccMultiModeForSubscriber(), RemoteException"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public disableGsmBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 74
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0, p1, p2}, Lcom/lge/internal/telephony/ISmsEx;->disableGsmBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    .end local v0    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_1
    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v2

    goto :goto_0
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
    .line 985
    invoke-static {p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->fragmentTextEx(Ljava/lang/String;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableAutoDCDisconnect(I)V
    .locals 2
    .param p1, "timeOut"    # I

    .prologue
    .line 637
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 638
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 639
    const-string v1, "enableAutoDCDisconnect(), enableAutoDCDisconnect"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 640
    invoke-interface {v0, p1}, Lcom/lge/internal/telephony/ISmsEx;->enableAutoDCDisconnect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    .end local v0    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public enableGsmBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 55
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0, p1, p2}, Lcom/lge/internal/telephony/ISmsEx;->enableGsmBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 62
    .end local v0    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_1
    :goto_0
    return v1

    .line 58
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getIsSimFull()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1167
    const/4 v1, 0x0

    .line 1168
    .local v1, "simFull":Z
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 1169
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 1170
    invoke-interface {v0}, Lcom/lge/internal/telephony/ISmsEx;->getIsSimFull()Z

    move-result v1

    .line 1172
    :cond_0
    return v1
.end method

.method public getMaxEfSms()I
    .locals 5

    .prologue
    .line 575
    const/4 v2, -0x1

    .line 578
    .local v2, "maxSms":I
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 579
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 580
    invoke-interface {v1}, Lcom/lge/internal/telephony/ISmsEx;->getMaxEfSms()I

    move-result v2

    .line 581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaxEfSms(), maxSms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return v2

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaxEfSmsForSubscriber(J)I
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 1031
    const/4 v2, -0x1

    .line 1034
    .local v2, "maxSms":I
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 1035
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 1036
    invoke-interface {v1, p1, p2}, Lcom/lge/internal/telephony/ISmsEx;->getMaxEfSmsForSubscriber(J)I

    move-result v2

    .line 1037
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaxEfSmsForSubscriber(), maxSms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return v2

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaxEfSmsMultiModeForSubscriber(IJ)I
    .locals 6
    .param p1, "sms_format"    # I
    .param p2, "subId"    # J

    .prologue
    .line 1047
    const/4 v2, -0x1

    .line 1050
    .local v2, "maxSms":I
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 1051
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 1052
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/internal/telephony/ISmsEx;->getMaxEfSmsMultiModeForSubscriber(IJ)I

    move-result v2

    .line 1053
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaxEfSmsMultiModeForSubscriber(), maxSms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return v2

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 542
    const-string v2, ""

    .line 544
    .local v2, "scaddr":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 545
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 546
    invoke-interface {v1}, Lcom/lge/internal/telephony/ISmsEx;->getSmscenterAddress()Ljava/lang/String;

    move-result-object v2

    .line 547
    const-string v3, "getServiceCenterAddress(), SmsManager --> IccSmsInterfaceManager"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return-object v2

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "getServiceCenterAddress(), RemoteException"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSmsCenterAddressForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 1077
    const-string v2, ""

    .line 1079
    .local v2, "scaddr":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 1080
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 1081
    invoke-interface {v1, p1, p2}, Lcom/lge/internal/telephony/ISmsEx;->getSmscenterAddressForSubscriber(J)Ljava/lang/String;

    move-result-object v2

    .line 1082
    const-string v3, "getServiceCenterAddress(), SmsManager --> IccSmsInterfaceManager"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return-object v2

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "getServiceCenterAddress(), RemoteException"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUiccType()I
    .locals 4

    .prologue
    .line 499
    const/4 v1, -0x1

    .line 500
    .local v1, "uiccType":I
    const-string v2, "getUiccType(), start"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 502
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 503
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 504
    invoke-interface {v0}, Lcom/lge/internal/telephony/ISmsEx;->getUiccType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 509
    .end local v0    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUiccType(), uiccType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 510
    return v1

    .line 506
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public insertDBForLGMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "destUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 699
    const/4 v2, 0x0

    .line 701
    .local v2, "insertedUri":Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 702
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 703
    const-string v3, "insertDBForLGMessage(),SmsManager"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 704
    invoke-interface {v1, p1, p2}, Lcom/lge/internal/telephony/ISmsEx;->insertDBForLGMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 709
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return-object v2

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "insertDBForLGMessage(), RemoteException"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isBlockSendMessage(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 733
    .local p1, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v2, 0x0

    .line 734
    .local v2, "retResult":Z
    const-string v3, "[LGSmsManagerImpl] isBlockSendMessage()"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 736
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 737
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 738
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ISmsEx;->isBlockSendMessage(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 743
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return v2

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "[LGSmsManagerImpl] isBlockSendMessage(), RemoteException"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFdnEnabled()Z
    .locals 3

    .prologue
    .line 653
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 654
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 655
    const-string v2, "isFdnEnabled(), SmsManager --> IccSmsInterfaceManager"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->f(Ljava/lang/String;)I

    .line 656
    invoke-interface {v1}, Lcom/lge/internal/telephony/ISmsEx;->isFdnEnabled()Z

    move-result v2

    .line 662
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :goto_0
    return v2

    .line 658
    .restart local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    const-string v2, "isFdnEnabled() function called. iccISmsEx is NULL"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "isFdnEnabled(), RemoteException"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isFdnEnabledOnSubscription(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 1107
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 1108
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 1109
    const-string v2, "isFdnEnabledOnSubscription(), SmsManager --> IccSmsInterfaceManager"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->f(Ljava/lang/String;)I

    .line 1110
    invoke-interface {v1, p1, p2}, Lcom/lge/internal/telephony/ISmsEx;->isFdnEnabledOnSubscription(J)Z

    move-result v2

    .line 1116
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :goto_0
    return v2

    .line 1112
    .restart local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    const-string v2, "isFdnEnabledOnSubscription() function called. iccISmsEx is NULL"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "isFdnEnabledOnSubscription(), RemoteException"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public makeSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)[B
    .locals 13
    .param p1, "sca"    # Ljava/lang/String;
    .param p2, "oa"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;
    .param p4, "statusReport"    # Z
    .param p5, "time"    # J
    .param p7, "smsHeader"    # [B
    .param p8, "smsformat"    # I

    .prologue
    .line 886
    const/4 v3, 0x0

    const-string v4, "use_update_for_copy2sim"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 887
    move-object v2, p1

    .line 891
    .local v2, "smscAddr":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeSimDeliverPdu(), smscAddr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeSimDeliverPdu(), address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 893
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeSimDeliverPdu(), message body = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeSimDeliverPdu(), smsformat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 895
    invoke-static {}, Landroid/telephony/SmsMessage;->getEncodingType()I

    move-result v9

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v10}, Landroid/telephony/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BII)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v12

    .line 904
    .local v12, "pdus":Landroid/telephony/SmsMessage$DeliverPdu;
    if-eqz v12, :cond_1

    .line 905
    const-string v3, "makeSimDeliverPdu(), SmsMessage.DeliverPdu pdus is NOT NULL"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 906
    iget-object v11, v12, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    .line 911
    :goto_1
    return-object v11

    .line 889
    .end local v2    # "smscAddr":Ljava/lang/String;
    .end local v12    # "pdus":Landroid/telephony/SmsMessage$DeliverPdu;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "smscAddr":Ljava/lang/String;
    goto :goto_0

    .line 908
    .restart local v12    # "pdus":Landroid/telephony/SmsMessage$DeliverPdu;
    :cond_1
    const-string v3, "makeSimDeliverPdu(), SmsMessage.DeliverPdu pdus is NULL"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 909
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public makeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJII[B)[B
    .locals 3
    .param p1, "sca"    # Ljava/lang/String;
    .param p2, "oa"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "statusReport"    # Z
    .param p5, "time"    # J
    .param p7, "pid"    # I
    .param p8, "dcs"    # I
    .param p9, "smsHeader"    # [B

    .prologue
    .line 869
    invoke-static/range {p1 .. p9}, Landroid/telephony/SmsMessage;->getStaticDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJII[B)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v0

    .line 872
    .local v0, "pdus":Landroid/telephony/SmsMessage$DeliverPdu;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    if-nez v1, :cond_1

    .line 873
    :cond_0
    const-string v1, "makeSimPdu(), pdus = null"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 874
    const/4 v1, 0x0

    .line 876
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    goto :goto_0
.end method

.method public makeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[B)[B
    .locals 11
    .param p1, "sca"    # Ljava/lang/String;
    .param p2, "oa"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;
    .param p4, "statusReport"    # Z
    .param p5, "time"    # J
    .param p7, "smsHeader"    # [B

    .prologue
    .line 824
    const/4 v1, 0x0

    const-string v2, "use_update_for_copy2sim"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    move-object v0, p1

    .line 829
    .local v0, "smscAddr":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/telephony/SmsMessage;->getEncodingType()I

    move-result v7

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v7}, Landroid/telephony/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v9

    .line 837
    .local v9, "pdus":Landroid/telephony/SmsMessage$DeliverPdu;
    if-eqz v9, :cond_5

    .line 838
    if-nez v0, :cond_2

    .line 839
    iget-object v8, v9, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    .line 855
    :cond_0
    :goto_1
    return-object v8

    .line 827
    .end local v0    # "smscAddr":Ljava/lang/String;
    .end local v9    # "pdus":Landroid/telephony/SmsMessage$DeliverPdu;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "smscAddr":Ljava/lang/String;
    goto :goto_0

    .line 841
    .restart local v9    # "pdus":Landroid/telephony/SmsMessage$DeliverPdu;
    :cond_2
    iget-object v1, v9, Landroid/telephony/SmsMessage$DeliverPdu;->encodedScAddress:[B

    if-eqz v1, :cond_3

    iget-object v1, v9, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    if-nez v1, :cond_4

    .line 843
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 845
    :cond_4
    iget-object v1, v9, Landroid/telephony/SmsMessage$DeliverPdu;->encodedScAddress:[B

    iget-object v2, v9, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    invoke-direct {p0, v1, v2}, Landroid/telephony/LGSmsManagerImpl;->combineScaMsg([B[B)[B

    move-result-object v8

    .line 846
    .local v8, "encodedPduWithSca":[B
    if-nez v8, :cond_0

    .line 847
    const-string v1, "makeSimPdu(), encodedPduWithSca is null"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 848
    const/4 v8, 0x0

    goto :goto_1

    .line 853
    .end local v8    # "encodedPduWithSca":[B
    :cond_5
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public makeSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)[B
    .locals 9
    .param p1, "sca"    # Ljava/lang/String;
    .param p2, "da"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;
    .param p4, "statusReport"    # Z
    .param p5, "time"    # J
    .param p7, "smsHeader"    # [B
    .param p8, "smsformat"    # I

    .prologue
    .line 918
    const/4 v2, 0x0

    const-string v3, "use_update_for_copy2sim"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 919
    move-object v1, p1

    .line 923
    .local v1, "smscAddr":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeSimSubmitPdu(), smscAddr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeSimSubmitPdu(), address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeSimSubmitPdu(), message body = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeSimSubmitPdu(), smsformat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p7

    move/from16 v6, p8

    .line 927
    invoke-static/range {v1 .. v6}, Landroid/telephony/SmsMessage;->uiccGetSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 934
    .local v8, "pdus":Landroid/telephony/SmsMessage$SubmitPdu;
    if-eqz v8, :cond_1

    .line 935
    const-string v2, "makeSimSubmitPdu(), SmsMessage.SubmitPdu pdus is NOT NULL"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 936
    iget-object v7, v8, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 941
    :goto_1
    return-object v7

    .line 921
    .end local v1    # "smscAddr":Ljava/lang/String;
    .end local v8    # "pdus":Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "smscAddr":Ljava/lang/String;
    goto :goto_0

    .line 938
    .restart local v8    # "pdus":Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_1
    const-string v2, "makeSimSubmitPdu(), SmsMessage.SubmitPdu pdus is NULL"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 939
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public notSendBeforeOtaService()V
    .locals 4

    .prologue
    .line 811
    const-string v0, ""

    .line 812
    .local v0, "msisdn":Ljava/lang/String;
    const-string v1, "msisdn"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 814
    :cond_0
    const-string v1, "Not send , before ota service"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 815
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Before OTA Service, Can not send sms."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 817
    :cond_1
    return-void
.end method

.method public notSendMsgInCall()V
    .locals 2

    .prologue
    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notSendMsgInCall() | [KDDI], CALL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 802
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    const-string v0, "notSendMsgInCall() | [KDDI], not send msg : LGE_MODEL_KDDI_NOT_SEND_IN_CALL"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NOW CALL Using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_0
    return-void
.end method

.method public sendEmailoverMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "mSubmitPriority"    # I
    .param p7, "mSubmitIsRoaming"    # Z
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
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 425
    const-string v3, "sendEmailoverMultipartTextMessage(), Block Sending SMS in SMSManagerLGE5 by LGMDM"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 432
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_4

    .line 435
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid message body"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 438
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 440
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v2

    .line 441
    .local v2, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v2, :cond_0

    .line 442
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {p0, v0, v1}, Landroid/telephony/LGSmsManagerImpl;->setOptionsBeforeSend(IZ)V

    .line 444
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/lge/internal/telephony/ISmsEx;->sendEmailoverMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    .end local v2    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 451
    :cond_5
    const/4 v7, 0x0

    .line 452
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    const/4 v8, 0x0

    .line 453
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 454
    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 456
    .restart local v7    # "sentIntent":Landroid/app/PendingIntent;
    :cond_6
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 457
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 459
    .restart local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Landroid/telephony/LGSmsManagerImpl;->sendEmailoverTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZ)V

    goto :goto_0
.end method

.method public sendEmailoverTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZ)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "mSubmitPriority"    # I
    .param p7, "mSubmitIsRoaming"    # Z

    .prologue
    .line 174
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    const-string v1, "sendEmailoverTextMessage(), Block Sending SMS in SMSManager1 by LGMDM"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 191
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0, p6, p7}, Landroid/telephony/LGSmsManagerImpl;->setOptionsBeforeSend(IZ)V

    .line 193
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/lge/internal/telephony/ISmsEx;->sendEmailoverText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v0    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendExceptionbySentIntent(Landroid/app/PendingIntent;I)V
    .locals 3
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;
    .param p2, "failureCause"    # I

    .prologue
    .line 955
    const/4 v1, 0x0

    const-string v2, "SendIntentFailure"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 956
    const-string v1, "sendExceptionbySentIntent(), start"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 958
    if-eqz p1, :cond_1

    .line 959
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    const-string v1, "sendExceptionbySentIntent(), sentIntent null"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "sendExceptionbySentIntent(), CanceledException"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendExceptionbySentIntent(Ljava/util/ArrayList;I)V
    .locals 2
    .param p2, "failureCause"    # I
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
    .line 947
    .local p1, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v0, 0x0

    .line 948
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 949
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v0, Landroid/app/PendingIntent;

    .line 951
    .restart local v0    # "sentIntent":Landroid/app/PendingIntent;
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/telephony/LGSmsManagerImpl;->sendExceptionbySentIntent(Landroid/app/PendingIntent;I)V

    .line 952
    return-void
.end method

.method public sendMultipartTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IIIZ)V
    .locals 14
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "replyAddress"    # Ljava/lang/String;
    .param p7, "confirmRead"    # I
    .param p8, "replyOption"    # I
    .param p9, "protocolId"    # I
    .param p10, "isExpectMore"    # Z
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
            "IIIZ)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v2, v3, v0}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    const-string v2, "sendMultipartTextMessageLge(), Block Sending SMS in SMSManagerMultiLGE by LGMDM"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    .line 257
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    :cond_3
    const/4 v2, 0x0

    const-string v3, "MakePartsSendConcatMessage"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Landroid/telephony/LGSmsManagerImpl;->makeParts(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p3

    .line 266
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 268
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 269
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_5

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartTextMessageLge(), sendMultipartTextMessageLge > sendMultipartTextLge(isExpectMore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 271
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v1 .. v12}, Lcom/lge/internal/telephony/ISmsEx;->sendMultipartTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :catch_0
    move-exception v13

    .line 281
    .local v13, "ex":Landroid/os/RemoteException;
    const-string v2, "sendMultipartTextMessageLge(), RemoteException"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 275
    .end local v13    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_5
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v2}, Landroid/telephony/LGSmsManagerImpl;->sendExceptionbySentIntent(Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 287
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_6
    const/4 v6, 0x0

    .line 288
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 289
    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 290
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 292
    .restart local v6    # "sentIntent":Landroid/app/PendingIntent;
    :cond_7
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 293
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 295
    .restart local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_8
    const-string v2, "sendMultipartTextMessageLge(), sendMultipartTextMessageLge > sendTextMessageLge"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 296
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Landroid/telephony/LGSmsManagerImpl;->sendTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IIIZ)V

    goto/16 :goto_0
.end method

.method public sendMultipartTextMessageWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IZ)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "cbAddress"    # Ljava/lang/String;
    .param p7, "mSubmitPriority"    # I
    .param p8, "mSubmitIsRoaming"    # Z
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
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v3, v4, v0}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 312
    const-string v3, "SendMultipartTextMessage(), Block Sending SMS in SMSManager2-2 by LGMDM"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 320
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_4

    .line 321
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid message body"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 323
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 325
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v2

    .line 326
    .local v2, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v2, :cond_0

    .line 327
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Landroid/telephony/LGSmsManagerImpl;->setOptionsBeforeSend(IZ)V

    .line 329
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Lcom/lge/internal/telephony/ISmsEx;->sendMultipartTextWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v2    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 336
    :cond_5
    const/4 v7, 0x0

    .line 337
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    const/4 v8, 0x0

    .line 338
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 339
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 341
    .restart local v7    # "sentIntent":Landroid/app/PendingIntent;
    :cond_6
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 342
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 344
    .restart local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Landroid/telephony/LGSmsManagerImpl;->sendTextMessageWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public sendMultipartTextMessageWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IZLjava/util/ArrayList;)V
    .locals 23
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "cbAddress"    # Ljava/lang/String;
    .param p7, "mSubmitPriority"    # I
    .param p8, "mSubmitIsRoaming"    # Z
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
            "IZ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p9, "readReceiptIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-interface {v5, v6, v0}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 360
    const-string v5, "sendMultipartTextMessageWithMsgOption(), Block Sending SMS in SMSManager2-2 by LGMDM"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 366
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid destinationAddress"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 368
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_4

    .line 369
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid message body"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 372
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_8

    .line 374
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v4

    .line 375
    .local v4, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v4, :cond_0

    .line 378
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v11, "msgOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/internal/telephony/LGSendingSMSOption;>;"
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v20

    if-ge v0, v5, :cond_7

    .line 381
    if-eqz p9, :cond_5

    move-object/from16 v0, p9

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    move-object/from16 v22, v5

    .line 382
    .local v22, "tempReadReceiptIntent":Landroid/app/PendingIntent;
    :goto_2
    new-instance v6, Lcom/lge/internal/telephony/LGSendingSMSOption;

    if-eqz p8, :cond_6

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p6

    move/from16 v1, p7

    move-object/from16 v2, v22

    invoke-direct {v6, v0, v1, v2, v5}, Lcom/lge/internal/telephony/LGSendingSMSOption;-><init>(Ljava/lang/String;ILandroid/app/PendingIntent;I)V

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 381
    .end local v22    # "tempReadReceiptIntent":Landroid/app/PendingIntent;
    :cond_5
    const/16 v22, 0x0

    goto :goto_2

    .line 382
    .restart local v22    # "tempReadReceiptIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 385
    .end local v22    # "tempReadReceiptIntent":Landroid/app/PendingIntent;
    :cond_7
    const-string v5, "sendMultipartTextMessageWithMsgOption() multipart test"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 386
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-interface/range {v4 .. v11}, Lcom/lge/internal/telephony/ISmsEx;->sendMultipartTextWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    .end local v4    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    .end local v11    # "msgOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/internal/telephony/LGSendingSMSOption;>;"
    .end local v20    # "i":I
    :catch_0
    move-exception v19

    .line 392
    .local v19, "ex":Landroid/os/RemoteException;
    const-string v5, "sendMultipartTextMessageWithMsgOption() RemoteException"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 395
    .end local v19    # "ex":Landroid/os/RemoteException;
    :cond_8
    const/16 v18, 0x0

    .line 396
    .local v18, "msgOption":Lcom/lge/internal/telephony/LGSendingSMSOption;
    const/16 v16, 0x0

    .line 397
    .local v16, "sentIntent":Landroid/app/PendingIntent;
    const/16 v17, 0x0

    .line 398
    .local v17, "deliveryIntent":Landroid/app/PendingIntent;
    const/16 v21, 0x0

    .line 399
    .local v21, "readReceiptIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_9

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 400
    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v16, Landroid/app/PendingIntent;

    .line 402
    .restart local v16    # "sentIntent":Landroid/app/PendingIntent;
    :cond_9
    if-eqz p5, :cond_a

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 403
    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v17, Landroid/app/PendingIntent;

    .line 405
    .restart local v17    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_a
    if-eqz p9, :cond_b

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 406
    const/4 v5, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "readReceiptIntent":Landroid/app/PendingIntent;
    check-cast v21, Landroid/app/PendingIntent;

    .line 408
    .restart local v21    # "readReceiptIntent":Landroid/app/PendingIntent;
    :cond_b
    const-string v5, "sendMultipartTextMessageWithMsgOption() single test"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 409
    new-instance v18, Lcom/lge/internal/telephony/LGSendingSMSOption;

    .end local v18    # "msgOption":Lcom/lge/internal/telephony/LGSendingSMSOption;
    if-eqz p8, :cond_c

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lge/internal/telephony/LGSendingSMSOption;-><init>(Ljava/lang/String;ILandroid/app/PendingIntent;I)V

    .line 410
    .restart local v18    # "msgOption":Lcom/lge/internal/telephony/LGSendingSMSOption;
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual/range {v12 .. v18}, Landroid/telephony/LGSmsManagerImpl;->sendTextMessageWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/lge/internal/telephony/LGSendingSMSOption;)V

    goto/16 :goto_0

    .line 409
    .end local v18    # "msgOption":Lcom/lge/internal/telephony/LGSendingSMSOption;
    :cond_c
    const/4 v5, 0x0

    goto :goto_4
.end method

.method public sendReadReceipt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "MessageId"    # I

    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 157
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 158
    const-string v2, "sendReadReceipt()"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 159
    invoke-interface {v1, p1, p2}, Lcom/lge/internal/telephony/ISmsEx;->sendReadReceipt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "sendReadReceipt() RemoteException"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IIIZ)V
    .locals 14
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "replyAddr"    # Ljava/lang/String;
    .param p7, "confirmRead"    # I
    .param p8, "replyOption"    # I
    .param p9, "protocolId"    # I
    .param p10, "isExpectMore"    # Z

    .prologue
    .line 209
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v2, v3, v0}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    const-string v2, "sendTextMessageLge(), Block Sending SMS in SMSManagerLGE by LGMDM"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 225
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_3

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextMessageLge(), sendTextMessageLge > sendTextLge(isExpectMore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 227
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v1 .. v12}, Lcom/lge/internal/telephony/ISmsEx;->sendTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :catch_0
    move-exception v13

    .line 237
    .local v13, "ex":Landroid/os/RemoteException;
    const-string v2, "sendTextMessageLge(), RemoteException"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 231
    .end local v13    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_3
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v2}, Landroid/telephony/LGSmsManagerImpl;->sendExceptionbySentIntent(Landroid/app/PendingIntent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendTextMessageWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "cbAddress"    # Ljava/lang/String;
    .param p7, "mSubmitPriority"    # I
    .param p8, "mSubmitIsRoaming"    # Z

    .prologue
    .line 90
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    const-string v3, "SendTextMessage(), Block Sending SMS in SMSManager1-1 by LGMDM"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid message body"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v2

    .line 106
    .local v2, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v2, :cond_0

    .line 107
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Landroid/telephony/LGSmsManagerImpl;->setOptionsBeforeSend(IZ)V

    .line 109
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Lcom/lge/internal/telephony/ISmsEx;->sendTextWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v2    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public sendTextMessageWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/lge/internal/telephony/LGSendingSMSOption;)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "msgOption"    # Lcom/lge/internal/telephony/LGSendingSMSOption;

    .prologue
    const/4 v1, 0x1

    .line 124
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, p4}, Lcom/lge/cappuccino/IMdm;->isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    const-string v1, "sendTextMessageWithMsgOption(), Block Sending SMS in SMSManager1-1 by LGMDM"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 140
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 141
    iget v2, p6, Lcom/lge/internal/telephony/LGSendingSMSOption;->mPriority:I

    iget v3, p6, Lcom/lge/internal/telephony/LGSendingSMSOption;->mIsRoaming:I

    if-ne v3, v1, :cond_4

    :goto_1
    invoke-virtual {p0, v2, v1}, Landroid/telephony/LGSmsManagerImpl;->setOptionsBeforeSend(IZ)V

    .line 142
    const-string v1, "sendTextMessageWithMsgOption()"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 144
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/lge/internal/telephony/ISmsEx;->sendTextWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/lge/internal/telephony/LGSendingSMSOption;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v0    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :catch_0
    move-exception v8

    .line 148
    .local v8, "ex":Landroid/os/RemoteException;
    const-string v1, "sendTextMessageWithMsgOption() RemoteException"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v8    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setIsSimFull(Z)V
    .locals 1
    .param p1, "mSimFull"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1160
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 1161
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 1162
    invoke-interface {v0, p1}, Lcom/lge/internal/telephony/ISmsEx;->setIsSimFull(Z)V

    .line 1164
    :cond_0
    return-void
.end method

.method public setMultipartTextValidityPeriod(I)V
    .locals 1
    .param p1, "vp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 754
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 755
    if-lez p1, :cond_0

    .line 756
    invoke-interface {v0, p1}, Lcom/lge/internal/telephony/ISmsEx;->setMultipartTextValidityPeriod(I)V

    .line 760
    :cond_0
    return-void
.end method

.method public setMultipartTextValidityPeriodForSubscriber(IJ)V
    .locals 4
    .param p1, "validityperiod"    # I
    .param p2, "subId"    # J

    .prologue
    .line 1148
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 1149
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 1150
    const-string v2, "setMultipartTextValidityPeriodForSubscriber(), SmsManager --> IccSmsInterfaceManager"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->f(Ljava/lang/String;)I

    .line 1151
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/internal/telephony/ISmsEx;->setMultipartTextValidityPeriodForSubscriber(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return-void

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "setMultipartTextValidityPeriodForSubscriber(), RemoteException"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOptionsBeforeSend(IIZ)V
    .locals 0
    .param p1, "vp"    # I
    .param p2, "mSubmitPriority"    # I
    .param p3, "mSubmitIsRoaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 778
    invoke-virtual {p0, p1}, Landroid/telephony/LGSmsManagerImpl;->setMultipartTextValidityPeriod(I)V

    .line 781
    invoke-virtual {p0, p2, p3}, Landroid/telephony/LGSmsManagerImpl;->setOptionsBeforeSend(IZ)V

    .line 783
    return-void
.end method

.method public setOptionsBeforeSend(IZ)V
    .locals 2
    .param p1, "mSubmitPriority"    # I
    .param p2, "mSubmitIsRoaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 786
    const-string v0, "cdma_priority_indicator"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0, p1}, Landroid/telephony/LGSmsManagerImpl;->setSmsPriority(I)V

    .line 792
    :cond_0
    const-string v0, "support_sprint_sms_roaming_guard"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    invoke-virtual {p0, p2}, Landroid/telephony/LGSmsManagerImpl;->setSmsIsRoaming(Z)V

    .line 796
    :cond_1
    return-void
.end method

.method public setServiceCenterAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "smsc"    # Ljava/lang/String;

    .prologue
    .line 558
    const/4 v2, 0x0

    .line 560
    .local v2, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 561
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 562
    const-string v3, "setServiceCenterAddress(), SmsManager --> IccSmsInterfaceManager"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 563
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ISmsEx;->setSmscenterAddress(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 568
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return v2

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "setServiceCenterAddress(), RemoteException"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmsCenterAddressForSubscriber(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "subId"    # J

    .prologue
    .line 1092
    const/4 v2, 0x0

    .line 1094
    .local v2, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 1095
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 1096
    const-string v3, "setServiceCenterAddress(), SmsManager --> IccSmsInterfaceManager"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1097
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/internal/telephony/ISmsEx;->setSmscenterAddressForSubscriber(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1102
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return v2

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "setServiceCenterAddress(), RemoteException"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmsIsRoaming(Z)V
    .locals 1
    .param p1, "mSubmitIsRoaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 770
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 771
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 772
    invoke-interface {v0, p1}, Lcom/lge/internal/telephony/ISmsEx;->setSmsIsRoaming(Z)V

    .line 774
    :cond_0
    return-void
.end method

.method public setSmsPriority(I)V
    .locals 1
    .param p1, "mSubmitPriority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 764
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 765
    invoke-interface {v0, p1}, Lcom/lge/internal/telephony/ISmsEx;->setSmsPriority(I)V

    .line 767
    :cond_0
    return-void
.end method

.method public setUiccType(I)V
    .locals 3
    .param p1, "uiccType"    # I

    .prologue
    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUiccType(), uiccType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 487
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v0

    .line 488
    .local v0, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v0, :cond_0

    .line 489
    invoke-interface {v0, p1}, Lcom/lge/internal/telephony/ISmsEx;->setUiccType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v0    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z
    .locals 5
    .param p1, "isOnOff"    # Ljava/lang/String;

    .prologue
    .line 716
    const/4 v2, 0x0

    .line 718
    .local v2, "retResult":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 719
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGSmsManagerImpl] smsReceptionBlockingforNIAPPolicy(), isOnOff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 721
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ISmsEx;->smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 726
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :cond_0
    :goto_0
    return v2

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "smsReceptionBlockingforNIAPPolicy(), RemoteException"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateSmsOnSimReadStatus(IZ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "read"    # Z

    .prologue
    .line 593
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 594
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 595
    const-string v2, "updateSmsOnSimReadStatus(), SmsManager --> IccSmsInterfaceManager"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 596
    invoke-interface {v1, p1, p2}, Lcom/lge/internal/telephony/ISmsEx;->updateSmsOnSimReadStatus(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 602
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :goto_0
    return v2

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "updateSmsOnSimReadStatus(), RemoteException"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 602
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateSmsOnSimReadStatusForSubscriber(IZJ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "read"    # Z
    .param p3, "subId"    # J

    .prologue
    .line 1064
    :try_start_0
    invoke-static {}, Landroid/telephony/LGSmsManagerImpl;->getSmsInterface()Lcom/lge/internal/telephony/ISmsEx;

    move-result-object v1

    .line 1065
    .local v1, "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    if-eqz v1, :cond_0

    .line 1066
    const-string v2, "updateSmsOnSimReadStatus(), SmsManager --> IccSmsInterfaceManager"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1067
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/internal/telephony/ISmsEx;->updateSmsOnSimReadStatusForSubscriber(IZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1073
    .end local v1    # "iccISmsEx":Lcom/lge/internal/telephony/ISmsEx;
    :goto_0
    return v2

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "updateSmsOnSimReadStatus(), RemoteException"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1073
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
