.class public Lcom/lge/uicc/framework/ImsiHandler;
.super Lcom/lge/uicc/framework/IccHandler;
.source "ImsiHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/framework/ImsiHandler$1;,
        Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;,
        Lcom/lge/uicc/framework/ImsiHandler$MsisdnLoaded;,
        Lcom/lge/uicc/framework/ImsiHandler$ImsipLoaded;,
        Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/lge/uicc/framework/ImsiHandler;


# instance fields
.field private mImsi:Ljava/lang/String;

.field private mMessageQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mRequested:Z

.field private mSimNodeHandler:Lcom/lge/uicc/framework/SimNodeHandlerSPR;

.field private recordsToLoad:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccHandler;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/framework/SimNodeHandlerSPR;

    .line 86
    iput-boolean v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->mRequested:Z

    .line 87
    iput v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->recordsToLoad:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    .line 56
    iget-object v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/framework/SimNodeHandlerSPR;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/lge/uicc/framework/SimNodeHandlerSPR;

    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/uicc/framework/SimNodeHandlerSPR;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/framework/SimNodeHandlerSPR;

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic access$400(Lcom/lge/uicc/framework/ImsiHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/ImsiHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/uicc/framework/ImsiHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/ImsiHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lge/uicc/framework/ImsiHandler;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/ImsiHandler;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/lge/uicc/framework/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private fetchRecordsForImsi()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 90
    iget-boolean v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->mRequested:Z

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iput-boolean v2, p0, Lcom/lge/uicc/framework/ImsiHandler;->mRequested:Z

    .line 95
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "SKT"

    aput-object v3, v0, v1

    const-string v3, "KT"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-string v0, "fetch EF_IMSI_P, EF_MSISDN"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->recordsToLoad:I

    .line 98
    const/16 v0, 0x2f24

    new-instance v3, Lcom/lge/uicc/framework/ImsiHandler$ImsipLoaded;

    invoke-direct {v3, p0, v6}, Lcom/lge/uicc/framework/ImsiHandler$ImsipLoaded;-><init>(Lcom/lge/uicc/framework/ImsiHandler;Lcom/lge/uicc/framework/ImsiHandler$1;)V

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/ImsiHandler;->obtainMessage(Lcom/lge/uicc/framework/IccHandler$RecordLoaded;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/lge/uicc/framework/ImsiHandler;->loadEFTransparent(IIILandroid/os/Message;)V

    .line 99
    const/16 v3, 0x6f40

    new-instance v0, Lcom/lge/uicc/framework/ImsiHandler$MsisdnLoaded;

    invoke-direct {v0, p0, v6}, Lcom/lge/uicc/framework/ImsiHandler$MsisdnLoaded;-><init>(Lcom/lge/uicc/framework/ImsiHandler;Lcom/lge/uicc/framework/ImsiHandler$1;)V

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/ImsiHandler;->obtainMessage(Lcom/lge/uicc/framework/IccHandler$RecordLoaded;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/uicc/framework/ImsiHandler;->loadEFLinearFixed(IIIILandroid/os/Message;)V

    .line 111
    :cond_2
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "VZW"

    aput-object v3, v0, v1

    const-string v3, "USC"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "fetch EF_HPLMNWACT"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->recordsToLoad:I

    .line 114
    const/16 v0, 0x6f62

    new-instance v3, Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;

    invoke-direct {v3, p0, v6}, Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;-><init>(Lcom/lge/uicc/framework/ImsiHandler;Lcom/lge/uicc/framework/ImsiHandler$1;)V

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/ImsiHandler;->obtainMessage(Lcom/lge/uicc/framework/IccHandler$RecordLoaded;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/lge/uicc/framework/ImsiHandler;->loadEFTransparent(IIILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static handleGetImsiForApp(Ljava/lang/String;Landroid/os/Message;)Landroid/os/Message;
    .locals 4
    .param p0, "aid"    # Ljava/lang/String;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    sget-object v0, Lcom/lge/uicc/framework/ImsiHandler;->mInstance:Lcom/lge/uicc/framework/ImsiHandler;

    if-nez v0, :cond_0

    .line 70
    .end local p1    # "msg":Landroid/os/Message;
    :goto_0
    return-object p1

    .line 65
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_0
    sget-object v0, Lcom/lge/uicc/framework/ImsiHandler;->mInstance:Lcom/lge/uicc/framework/ImsiHandler;

    iget-object v0, v0, Lcom/lge/uicc/framework/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/lge/uicc/framework/ImsiHandler;->mInstance:Lcom/lge/uicc/framework/ImsiHandler;

    const-string v1, "start loading records for IMSI"

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/lge/uicc/framework/ImsiHandler;->mInstance:Lcom/lge/uicc/framework/ImsiHandler;

    invoke-direct {v0}, Lcom/lge/uicc/framework/ImsiHandler;->fetchRecordsForImsi()V

    .line 69
    sget-object v0, Lcom/lge/uicc/framework/ImsiHandler;->mInstance:Lcom/lge/uicc/framework/ImsiHandler;

    iget v1, v0, Lcom/lge/uicc/framework/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lge/uicc/framework/ImsiHandler;->recordsToLoad:I

    .line 70
    sget-object v0, Lcom/lge/uicc/framework/ImsiHandler;->mInstance:Lcom/lge/uicc/framework/ImsiHandler;

    new-instance v1, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;

    sget-object v2, Lcom/lge/uicc/framework/ImsiHandler;->mInstance:Lcom/lge/uicc/framework/ImsiHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;-><init>(Lcom/lge/uicc/framework/ImsiHandler;Lcom/lge/uicc/framework/ImsiHandler$1;)V

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/ImsiHandler;->obtainMessage(Lcom/lge/uicc/framework/IccHandler$RecordLoaded;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0
.end method

.method private isUsaOperatorExceptSPR(Ljava/lang/String;)Z
    .locals 5
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 380
    const-string v2, "card_provisioned"

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    const-string v2, "card_operator"

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "card_operator":Ljava/lang/String;
    const-string v2, "VZW3G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VZW4G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USC3G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USC4G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MPCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x136

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x13c

    if-gt v2, v3, :cond_1

    :cond_0
    const-string v2, "SPR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUsaOperatorExceptSPR returns true with card_operator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 392
    const/4 v1, 0x1

    .line 396
    .end local v0    # "card_operator":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/lge/uicc/framework/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 84
    :goto_0
    return-void

    .line 76
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 77
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p2

    .line 78
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send saved messages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/uicc/framework/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/lge/uicc/framework/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 80
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v1, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 81
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 83
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/lge/uicc/framework/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private setCardOperator(Ljava/lang/String;)V
    .locals 10
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 294
    const-string v3, "UNKNOWN"

    .line 296
    .local v3, "op":Ljava/lang/String;
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    .line 297
    .local v2, "mnclen":I
    add-int/lit8 v5, v2, 0x3

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 299
    .local v1, "mccmnc":I
    sparse-switch v1, :sswitch_data_0

    .line 346
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "001"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "KT"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "00211"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    :cond_0
    const-string v3, "TEST"

    .line 352
    :cond_1
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "USC"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 353
    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "31158"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 354
    const-string v3, "USC4G"

    .line 362
    :cond_2
    :goto_0
    const-string v5, "card_provisioned"

    invoke-static {v5}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 363
    const-string v5, "card_provisioned"

    const-string v6, "yes"

    invoke-static {v5, v6}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    :cond_3
    const-string v5, "card_operator"

    invoke-static {v5}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 366
    const-string v5, "card_operator"

    invoke-static {v5, v3}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    :cond_4
    const-string v5, "card_operator"

    invoke-static {v5}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "card_operator":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set to property ril.card_operator : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 370
    const-string v5, "ril.card_operator"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v5, "card_provisioned"

    invoke-static {v5}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "provisioned":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set to property ril.card_provisioned : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 374
    const-string v5, "ril.card_provisioned"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void

    .line 301
    .end local v0    # "card_operator":Ljava/lang/String;
    .end local v4    # "provisioned":Ljava/lang/String;
    :sswitch_0
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "SPR"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 302
    const-string v3, "SPR"

    goto :goto_0

    .line 306
    :sswitch_1
    const-string v3, "SKT"

    .line 307
    goto :goto_0

    .line 310
    :sswitch_2
    const-string v3, "KT"

    .line 311
    goto :goto_0

    .line 313
    :sswitch_3
    const-string v3, "LGU"

    .line 315
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "LGU"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-ne v5, v6, :cond_2

    .line 316
    const-string v5, "card_provisioned"

    const-string v6, "no"

    invoke-static {v5, v6}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    const-string v5, "non-provisioned UICC for LGU+"

    invoke-virtual {p0, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    :sswitch_4
    const-string v3, "VZW3G"

    .line 323
    goto/16 :goto_0

    .line 325
    :sswitch_5
    const-string v3, "VZW4G"

    .line 326
    goto/16 :goto_0

    .line 328
    :sswitch_6
    const-string v3, "USC3G"

    .line 329
    goto/16 :goto_0

    .line 331
    :sswitch_7
    const-string v3, "USC4G"

    .line 332
    goto/16 :goto_0

    .line 336
    :sswitch_8
    const-string v3, "MPCS"

    .line 337
    goto/16 :goto_0

    .line 339
    :sswitch_9
    const-string v3, "DCM"

    .line 340
    goto/16 :goto_0

    .line 342
    :sswitch_a
    const-string v3, "SPR"

    .line 343
    goto/16 :goto_0

    .line 355
    :cond_5
    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "31122"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 356
    const-string v3, "USC3G"

    goto/16 :goto_0

    .line 299
    nop

    :sswitch_data_0
    .sparse-switch
        0x4fb4 -> :sswitch_4
        0xabea -> :sswitch_9
        0xafc8 -> :sswitch_0
        0xafca -> :sswitch_2
        0xafcd -> :sswitch_1
        0xafce -> :sswitch_3
        0xafd0 -> :sswitch_2
        0xafd3 -> :sswitch_1
        0x1b274 -> :sswitch_8
        0x3fac0 -> :sswitch_8
        0x4bb68 -> :sswitch_a
        0x4bfb9 -> :sswitch_6
        0x4c0b8 -> :sswitch_5
        0x4c11c -> :sswitch_7
        0x4c16c -> :sswitch_8
    .end sparse-switch
.end method

.method private setImsiLockForSPR(Ljava/lang/String;)V
    .locals 6
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 401
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "SPR"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v3, p0, Lcom/lge/uicc/framework/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/framework/SimNodeHandlerSPR;

    const/16 v4, 0x12d

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/SimNodeHandlerSPR;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "SIMLock":Ljava/lang/String;
    const-string v3, "card_operator"

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "card_operator":Ljava/lang/String;
    const/4 v2, 0x0

    .line 413
    .local v2, "mIsGlobalRoaming":Z
    if-nez v0, :cond_1

    .line 414
    const-string v3, "exit because of null pointer exception"

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/ImsiHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_1
    const-string v3, "ro.telephony.default_network"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 421
    const/4 v2, 0x1

    .line 424
    :cond_2
    const-string v3, "SPR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "TEST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 425
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". allow an UICC to be used"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_4
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 430
    const-string v3, "0. SIMLock by sim type"

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 452
    :goto_1
    const-string v3, "spr.omadm_lock"

    const-string v4, "yes"

    invoke-static {v3, v4}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 432
    :cond_5
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 433
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/ImsiHandler;->isUsaOperatorExceptSPR(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 434
    const-string v3, "1. do not allow non-SPR USA UICC"

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/ImsiHandler;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 437
    :cond_6
    const-string v3, "1. allow international UICC"

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. this device\'s type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_7

    const-string v3, "global"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "domestic"

    goto :goto_2

    .line 442
    :cond_8
    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 443
    const-string v3, "2. allow an UICC"

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 447
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allow an UICC by invalid sim lock mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static setup()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/lge/uicc/framework/ImsiHandler;->mInstance:Lcom/lge/uicc/framework/ImsiHandler;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/lge/uicc/framework/ImsiHandler;

    invoke-direct {v0}, Lcom/lge/uicc/framework/ImsiHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/ImsiHandler;->mInstance:Lcom/lge/uicc/framework/ImsiHandler;

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method protected onRecordLoaded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 277
    iget v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->recordsToLoad:I

    .line 278
    iget v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 279
    iput-boolean v1, p0, Lcom/lge/uicc/framework/ImsiHandler;->mRequested:Z

    .line 283
    iget-object v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/uicc/framework/ImsiHandler;->setCardOperator(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/uicc/framework/ImsiHandler;->setImsiLockForSPR(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/uicc/framework/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget v0, p0, Lcom/lge/uicc/framework/ImsiHandler;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 287
    const-string v0, "recordsForImsi < 0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 288
    iput-boolean v1, p0, Lcom/lge/uicc/framework/ImsiHandler;->mRequested:Z

    .line 289
    iput v1, p0, Lcom/lge/uicc/framework/ImsiHandler;->recordsToLoad:I

    goto :goto_0
.end method
