.class public Lcom/lge/uicc/LGUiccCard;
.super Ljava/lang/Object;
.source "LGUiccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/LGUiccCard$PinState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LGUiccCard"


# instance fields
.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/LGUiccCard;->mSlotId:I

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "slot"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/lge/uicc/LGUiccCard;->mSlotId:I

    .line 46
    return-void
.end method

.method private getPinData(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "pintype"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v1, "proxy.app_type"

    iget v2, p0, Lcom/lge/uicc/LGUiccCard;->mSlotId:I

    const-string v3, "USIM"

    invoke-static {v1, v2, v3}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "app":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/lge/uicc/LGUiccCard;->mSlotId:I

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getFdnRecordCount()I
    .locals 3

    .prologue
    .line 161
    const-string v0, "fdn_rec_num"

    iget v1, p0, Lcom/lge/uicc/LGUiccCard;->mSlotId:I

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFdnRecordSize()I
    .locals 3

    .prologue
    .line 172
    const-string v0, "fdn_name_max"

    iget v1, p0, Lcom/lge/uicc/LGUiccCard;->mSlotId:I

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    const-string v0, "gid1"

    iget v1, p0, Lcom/lge/uicc/LGUiccCard;->mSlotId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsiM()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    const-string v0, "imsi_m"

    iget v1, p0, Lcom/lge/uicc/LGUiccCard;->mSlotId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    const-string v0, "mdn"

    iget v1, p0, Lcom/lge/uicc/LGUiccCard;->mSlotId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPin1RetryCount()I
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 56
    const-string v2, "pin1"

    invoke-direct {p0, v2}, Lcom/lge/uicc/LGUiccCard;->getPinData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "pinData":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ne v2, v1, :cond_0

    .line 58
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 60
    :cond_0
    const-string v2, "LGUiccCard"

    const-string v3, "getPin1RetryCount: use dummy"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPin1State()Lcom/lge/uicc/LGUiccCard$PinState;
    .locals 5

    .prologue
    .line 121
    :try_start_0
    const-string v2, "pin1"

    invoke-direct {p0, v2}, Lcom/lge/uicc/LGUiccCard;->getPinData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "pinData":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/lge/uicc/LGUiccCard$PinState;->valueOf(Ljava/lang/String;)Lcom/lge/uicc/LGUiccCard$PinState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 126
    .end local v1    # "pinData":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LGUiccCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPin1State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v2, Lcom/lge/uicc/LGUiccCard$PinState;->UNKNOWN:Lcom/lge/uicc/LGUiccCard$PinState;

    goto :goto_0
.end method

.method public getPin2RetryCount()I
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 72
    const-string v2, "pin2"

    invoke-direct {p0, v2}, Lcom/lge/uicc/LGUiccCard;->getPinData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "pinData":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ne v2, v1, :cond_0

    .line 74
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 77
    :goto_0
    return v1

    .line 76
    :cond_0
    const-string v2, "LGUiccCard"

    const-string v3, "getPin2RetryCount: use dummy"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPin2State()Lcom/lge/uicc/LGUiccCard$PinState;
    .locals 5

    .prologue
    .line 138
    :try_start_0
    const-string v2, "pin2"

    invoke-direct {p0, v2}, Lcom/lge/uicc/LGUiccCard;->getPinData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "pinData":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/lge/uicc/LGUiccCard$PinState;->valueOf(Ljava/lang/String;)Lcom/lge/uicc/LGUiccCard$PinState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 143
    .end local v1    # "pinData":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LGUiccCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPin2State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v2, Lcom/lge/uicc/LGUiccCard$PinState;->UNKNOWN:Lcom/lge/uicc/LGUiccCard$PinState;

    goto :goto_0
.end method

.method public getPuk1RetryCount()I
    .locals 3

    .prologue
    .line 88
    const-string v1, "pin1"

    invoke-direct {p0, v1}, Lcom/lge/uicc/LGUiccCard;->getPinData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "pinData":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 90
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 93
    :goto_0
    return v1

    .line 92
    :cond_0
    const-string v1, "LGUiccCard"

    const-string v2, "getPuk1RetryCount: use dummy"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public getPuk2RetryCount()I
    .locals 3

    .prologue
    .line 104
    const-string v1, "pin2"

    invoke-direct {p0, v1}, Lcom/lge/uicc/LGUiccCard;->getPinData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "pinData":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 106
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 108
    :cond_0
    const-string v1, "LGUiccCard"

    const-string v2, "getPuk2RetryCount: use dummy"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public showSimPinView()V
    .locals 3

    .prologue
    .line 242
    const-string v0, "show_sim_pin_view"

    iget v1, p0, Lcom/lge/uicc/LGUiccCard;->mSlotId:I

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/lge/uicc/LGUiccManager;->setProperty(Ljava/lang/String;ILjava/lang/String;)Z

    .line 243
    return-void
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lge/uicc/LGUiccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 224
    .local v0, "p":Landroid/os/Parcel;
    iget v3, p0, Lcom/lge/uicc/LGUiccCard;->mSlotId:I

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    const-string v3, "SUPPLY_PINPUK"

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/uicc/LGUiccManager;->genericIO(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 229
    .local v1, "result":[B
    if-eqz v1, :cond_0

    aget-byte v3, v1, v2

    if-nez v3, :cond_1

    .line 230
    :cond_0
    const-string v3, "LGUiccCard"

    const-string v4, "supplyPinPuk: PIN incorrect or fail"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    return v2

    .line 233
    :cond_1
    const-string v2, "LGUiccCard"

    const-string v3, "supplyPinPuk: OK"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v2, 0x1

    goto :goto_0
.end method
