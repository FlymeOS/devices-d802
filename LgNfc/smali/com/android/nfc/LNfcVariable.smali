.class public Lcom/android/nfc/LNfcVariable;
.super Ljava/lang/Object;
.source "LNfcVariable.java"


# static fields
.field private static DBG:Z

.field private static INSTANCE:Lcom/android/nfc/LNfcVariable;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBootComplete:Z

.field private mCardOn:Z

.field private mCardState:I

.field private mDiscoveryOn:Z

.field private mDiscoveryState:I

.field private mIsWirelessChargingEnabled:Z

.field private mP2pOn:Z

.field private mP2pState:I

.field private mSysState:I

.field private mWirelessChargingState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "LNfcVariable"

    sput-object v0, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    .line 16
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    .line 18
    new-instance v0, Lcom/android/nfc/LNfcVariable;

    invoke-direct {v0}, Lcom/android/nfc/LNfcVariable;-><init>()V

    sput-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/LNfcVariable;->mBootComplete:Z

    .line 36
    const/16 v0, 0x29

    iput v0, p0, Lcom/android/nfc/LNfcVariable;->mSysState:I

    .line 37
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/nfc/LNfcVariable;->mCardState:I

    .line 38
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/nfc/LNfcVariable;->mDiscoveryState:I

    .line 39
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/nfc/LNfcVariable;->mP2pState:I

    .line 40
    const/16 v0, 0x33

    iput v0, p0, Lcom/android/nfc/LNfcVariable;->mWirelessChargingState:I

    .line 41
    return-void
.end method

.method public static getBootComplete()Z
    .locals 4

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootComplete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcVariable;->mBootComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcVariable;->mBootComplete:Z

    return v0
.end method

.method public static getCardEnable()Z
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mCardState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCardOn()Z
    .locals 4

    .prologue
    .line 139
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCardOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcVariable;->mCardOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcVariable;->mCardOn:Z

    return v0
.end method

.method public static getCardState()I
    .locals 4

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCardState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v3, v3, Lcom/android/nfc/LNfcVariable;->mCardState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mCardState:I

    return v0
.end method

.method public static getDiscoveryEnable()Z
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mDiscoveryState:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDiscoveryOn()Z
    .locals 4

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDiscoveryOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcVariable;->mDiscoveryOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcVariable;->mDiscoveryOn:Z

    return v0
.end method

.method public static getDiscoveryState()I
    .locals 4

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDiscoveryState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v3, v3, Lcom/android/nfc/LNfcVariable;->mDiscoveryState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mDiscoveryState:I

    return v0
.end method

.method public static getInstance()Lcom/android/nfc/LNfcVariable;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    return-object v0
.end method

.method public static getP2pEnable()Z
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mP2pState:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getP2pOn()Z
    .locals 4

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mP2pOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcVariable;->mP2pOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcVariable;->mP2pOn:Z

    return v0
.end method

.method public static getP2pState()I
    .locals 4

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mP2pState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v3, v3, Lcom/android/nfc/LNfcVariable;->mP2pState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mP2pState:I

    return v0
.end method

.method public static getSysEnable()Z
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mSysState:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSysState()I
    .locals 4

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSysState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v3, v3, Lcom/android/nfc/LNfcVariable;->mSysState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mSysState:I

    return v0
.end method

.method public static getWirelessChargingEnable()Z
    .locals 4

    .prologue
    .line 98
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsWirelessChargingEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcVariable;->mIsWirelessChargingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcVariable;->mIsWirelessChargingEnabled:Z

    return v0
.end method

.method public static getWirelessChargingState()I
    .locals 4

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWirelessChargingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v3, v3, Lcom/android/nfc/LNfcVariable;->mWirelessChargingState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mWirelessChargingState:I

    return v0
.end method

.method public static setBootComplete()V
    .locals 3

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    const-string v2, "setBootComplete is true"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/nfc/LNfcVariable;->mBootComplete:Z

    .line 136
    return-void
.end method

.method public static setCardOn(Z)Z
    .locals 5
    .param p0, "isEnable"    # Z

    .prologue
    .line 108
    sget-boolean v1, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v2, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCardOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v4, v4, Lcom/android/nfc/LNfcVariable;->mCardOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcVariable;->mCardOn:Z

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 110
    .local v0, "ret":Z
    :goto_0
    sget-object v1, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput-boolean p0, v1, Lcom/android/nfc/LNfcVariable;->mCardOn:Z

    .line 111
    return v0

    .line 109
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCardState(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCardState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput p0, v0, Lcom/android/nfc/LNfcVariable;->mCardState:I

    .line 50
    return-void
.end method

.method public static setDiscoveryOn(Z)Z
    .locals 5
    .param p0, "isEnable"    # Z

    .prologue
    .line 115
    sget-boolean v1, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v2, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDiscoveryOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v4, v4, Lcom/android/nfc/LNfcVariable;->mDiscoveryOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcVariable;->mDiscoveryOn:Z

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 117
    .local v0, "ret":Z
    :goto_0
    sget-object v1, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput-boolean p0, v1, Lcom/android/nfc/LNfcVariable;->mDiscoveryOn:Z

    .line 118
    return v0

    .line 116
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDiscoveryState(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDiscoveryState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput p0, v0, Lcom/android/nfc/LNfcVariable;->mDiscoveryState:I

    .line 54
    return-void
.end method

.method public static setP2pOn(Z)Z
    .locals 5
    .param p0, "isEnable"    # Z

    .prologue
    .line 122
    sget-boolean v1, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v2, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setP2pOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v4, v4, Lcom/android/nfc/LNfcVariable;->mP2pOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcVariable;->mP2pOn:Z

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 124
    .local v0, "ret":Z
    :goto_0
    sget-object v1, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput-boolean p0, v1, Lcom/android/nfc/LNfcVariable;->mP2pOn:Z

    .line 125
    return v0

    .line 123
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setP2pState(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mP2pState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput p0, v0, Lcom/android/nfc/LNfcVariable;->mP2pState:I

    .line 58
    return-void
.end method

.method public static setSysState(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSysState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput p0, v0, Lcom/android/nfc/LNfcVariable;->mSysState:I

    .line 46
    return-void
.end method

.method public static setWirelessChargingEnable(Z)V
    .locals 4
    .param p0, "isEnable"    # Z

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsWirelessChargingEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput-boolean p0, v0, Lcom/android/nfc/LNfcVariable;->mIsWirelessChargingEnabled:Z

    .line 131
    return-void
.end method

.method public static setWirelessChargingState(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWirelessChargingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput p0, v0, Lcom/android/nfc/LNfcVariable;->mWirelessChargingState:I

    .line 62
    return-void
.end method
