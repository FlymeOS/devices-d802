.class public Lcom/lge/uicc/framework/MultiSimHandler;
.super Landroid/os/Handler;
.source "MultiSimHandler.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 35
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MultiSimHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logd(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MultiSimHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 88
    const-string v1, "ERROR: unknown event received!"

    invoke-static {v1}, Lcom/lge/uicc/framework/MultiSimHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "exc":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in MultiSimHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/framework/MultiSimHandler;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendCommand([B)[B
    .locals 9
    .param p1, "command"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 39
    const-string v6, "no inputs"

    invoke-static {v6}, Lcom/lge/uicc/framework/MultiSimHandler;->loge(Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    return-object v4

    .line 43
    :cond_1
    invoke-static {v8}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v5

    .line 44
    .local v5, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v5, :cond_2

    .line 45
    const-string v6, "RIL==null"

    invoke-static {v6}, Lcom/lge/uicc/framework/MultiSimHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    new-instance v1, Lcom/lge/uicc/framework/AsyncResultFetcher;

    invoke-direct {v1}, Lcom/lge/uicc/framework/AsyncResultFetcher;-><init>()V

    .line 51
    .local v1, "fetcher":Lcom/lge/uicc/framework/AsyncResultFetcher;
    const/4 v4, 0x0

    .line 52
    .local v4, "return_bytes":[B
    const/4 v3, 0x0

    .line 53
    .local v3, "resultSrting":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 54
    .local v0, "cmd":I
    const-string v2, "persist.radio.multisim.config"

    .line 56
    .local v2, "key":Ljava/lang/String;
    aget-byte v6, p1, v8

    add-int/lit16 v0, v6, 0x1000

    .line 57
    invoke-virtual {v1}, Lcom/lge/uicc/framework/AsyncResultFetcher;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/android/internal/telephony/RIL;->uiccInternalRequest(ILandroid/os/Message;)V

    .line 59
    const-wide/16 v6, 0xbb8

    invoke-virtual {v1, v6, v7}, Lcom/lge/uicc/framework/AsyncResultFetcher;->waitResponse(J)Z

    .line 60
    invoke-virtual {v1}, Lcom/lge/uicc/framework/AsyncResultFetcher;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MultiSim : sendCommand "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/uicc/framework/MultiSimHandler;->logd(Ljava/lang/String;)V

    .line 65
    aget-byte v6, p1, v8

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MultiSim : result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/uicc/framework/MultiSimHandler;->logd(Ljava/lang/String;)V

    .line 68
    aget-object v6, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    .line 69
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_0

    .line 71
    :cond_3
    aget-byte v6, p1, v8

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    .line 73
    const-string v6, "dsds"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_4
    aget-byte v6, p1, v8

    const/4 v7, 0x7

    if-ne v6, v7, :cond_0

    .line 77
    const-string v6, ""

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
