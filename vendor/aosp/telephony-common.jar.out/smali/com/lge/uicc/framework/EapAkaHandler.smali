.class public Lcom/lge/uicc/framework/EapAkaHandler;
.super Ljava/lang/Object;
.source "EapAkaHandler.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EapAkaHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logd(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EapAkaHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EapAkaHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logp(Ljava/lang/String;)V

    .line 124
    return-void
.end method


# virtual methods
.method protected authenticate([B)[B
    .locals 22
    .param p1, "data"    # [B

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    const-string v3, "no inputs"

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->loge(Ljava/lang/String;)V

    .line 32
    const/4 v3, 0x0

    .line 111
    :goto_0
    return-object v3

    .line 35
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    .line 36
    .local v15, "p":Landroid/os/Parcel;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v3, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 37
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    invoke-virtual {v15}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 41
    .local v16, "rand":[B
    if-nez v16, :cond_1

    .line 42
    const-string v3, "invalid rand"

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->loge(Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x0

    goto :goto_0

    .line 45
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rand_length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    array-length v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->logd(Ljava/lang/String;)V

    .line 46
    invoke-static/range {v16 .. v16}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "rand_s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rand: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->logp(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v15}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 50
    .local v12, "autn":[B
    if-nez v12, :cond_2

    .line 51
    const-string v3, "invalid autn"

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->loge(Ljava/lang/String;)V

    .line 52
    const/4 v3, 0x0

    goto :goto_0

    .line 54
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autn_length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v12

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->logd(Ljava/lang/String;)V

    .line 55
    invoke-static {v12}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "autn_s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autn: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->logp(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 59
    .local v18, "slotId":I
    if-gez v18, :cond_3

    .line 60
    const/16 v18, 0x0

    .line 62
    :cond_3
    invoke-virtual {v15}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-lez v3, :cond_4

    .line 63
    const-string v3, "invalid input"

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->loge(Ljava/lang/String;)V

    .line 64
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 67
    :cond_4
    invoke-static/range {v18 .. v18}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v2

    .line 68
    .local v2, "ril":Lcom/android/internal/telephony/RIL;
    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-static {v0, v3}, Lcom/lge/uicc/framework/IccTools;->getApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v13

    .line 69
    .local v13, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_5

    if-nez v13, :cond_6

    .line 70
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slot="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", ril="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", cardApp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->loge(Ljava/lang/String;)V

    .line 71
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 74
    :cond_6
    new-instance v14, Lcom/lge/uicc/framework/AsyncResultFetcher;

    invoke-direct {v14}, Lcom/lge/uicc/framework/AsyncResultFetcher;-><init>()V

    .line 75
    .local v14, "fetcher":Lcom/lge/uicc/framework/AsyncResultFetcher;
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    array-length v5, v0

    array-length v7, v12

    invoke-virtual {v14}, Lcom/lge/uicc/framework/AsyncResultFetcher;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/RIL;->getUsimAuthentication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V

    .line 78
    const-wide/16 v20, 0xbb8

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Lcom/lge/uicc/framework/AsyncResultFetcher;->waitResponse(J)Z

    .line 79
    invoke-virtual {v14}, Lcom/lge/uicc/framework/AsyncResultFetcher;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Parcel;

    .line 81
    .local v10, "authResult":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v17

    .line 82
    .local v17, "reply":Landroid/os/Parcel;
    if-nez v10, :cond_8

    .line 83
    const-string v3, "auth timeout"

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->logd(Ljava/lang/String;)V

    .line 84
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "LGU"

    aput-object v7, v3, v5

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 85
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    goto/16 :goto_0

    .line 87
    :cond_7
    const/16 v3, 0x9

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 93
    :cond_8
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 94
    .local v11, "authRet":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 95
    .local v9, "authData":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authRet: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->logd(Ljava/lang/String;)V

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authData: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->logp(Ljava/lang/String;)V

    .line 98
    if-nez v11, :cond_9

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth success : return data size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v9

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->logd(Ljava/lang/String;)V

    .line 100
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 111
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    goto/16 :goto_0

    .line 103
    :cond_9
    const-string v3, "not correct SW1 SW2"

    invoke-static {v3}, Lcom/lge/uicc/framework/EapAkaHandler;->logd(Ljava/lang/String;)V

    .line 104
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "LGU"

    aput-object v7, v3, v5

    invoke-static {v3}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 105
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 107
    :cond_a
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
