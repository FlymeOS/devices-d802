.class public Lcom/lge/telephony/LGServiceState;
.super Ljava/lang/Object;
.source "LGServiceState.java"


# static fields
.field public static final DOMESTIC_ROAMING:I = 0x3

.field public static final HOME:I = 0x1

.field public static final INTERNATIONAL_ROAMING:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "LGServiceState"

.field private static mRoamingType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/lge/telephony/LGServiceState;


# instance fields
.field private mServiceState:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    .line 47
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x7c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x7d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x7e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x9d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x9e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x9f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xc2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xc6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xe4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xe5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xe6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xe7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xe8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xe9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault(Landroid/telephony/ServiceState;)Lcom/lge/telephony/LGServiceState;
    .locals 3
    .param p0, "servicestate"    # Landroid/telephony/ServiceState;

    .prologue
    .line 86
    const-class v1, Lcom/lge/telephony/LGServiceState;

    monitor-enter v1

    :try_start_0
    const-string v0, "LGServiceState"

    const-string v2, "You are using ServiceState for LG API"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v0, Lcom/lge/telephony/LGServiceState;->sInstance:Lcom/lge/telephony/LGServiceState;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/lge/telephony/LGServiceState;

    invoke-direct {v0}, Lcom/lge/telephony/LGServiceState;-><init>()V

    sput-object v0, Lcom/lge/telephony/LGServiceState;->sInstance:Lcom/lge/telephony/LGServiceState;

    .line 92
    :cond_0
    sget-object v0, Lcom/lge/telephony/LGServiceState;->sInstance:Lcom/lge/telephony/LGServiceState;

    invoke-virtual {v0, p0}, Lcom/lge/telephony/LGServiceState;->setServiceState(Landroid/telephony/ServiceState;)V

    .line 94
    sget-object v0, Lcom/lge/telephony/LGServiceState;->sInstance:Lcom/lge/telephony/LGServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRoamingType(Landroid/telephony/ServiceState;)I
    .locals 5
    .param p0, "st"    # Landroid/telephony/ServiceState;

    .prologue
    .line 267
    const/4 v2, 0x1

    .line 268
    .local v2, "rvalue":I
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v1

    .line 271
    .local v1, "roamingIndcation":I
    :try_start_0
    sget-object v3, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 276
    :goto_0
    return v2

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public static isCdmaFormat(I)Z
    .locals 1
    .param p0, "radioTechnology"    # I

    .prologue
    .line 289
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDataSearching(Landroid/telephony/ServiceState;)Z
    .locals 1
    .param p0, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 254
    iget-object v0, p0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->isDataSearching()Z

    move-result v0

    return v0
.end method

.method public static isEhrpd(I)Z
    .locals 1
    .param p0, "radioTechnology"    # I

    .prologue
    .line 305
    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceSearching(Landroid/telephony/ServiceState;)Z
    .locals 1
    .param p0, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 245
    iget-object v0, p0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->isVoiceSearching()Z

    move-result v0

    return v0
.end method

.method public static setDataSearching(Landroid/telephony/ServiceState;Z)V
    .locals 1
    .param p0, "ss"    # Landroid/telephony/ServiceState;
    .param p1, "isDataSearching"    # Z

    .prologue
    .line 236
    iget-object v0, p0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setDataSearching(Z)V

    .line 237
    return-void
.end method

.method public static setVoiceSearching(Landroid/telephony/ServiceState;Z)V
    .locals 1
    .param p0, "ss"    # Landroid/telephony/ServiceState;
    .param p1, "isVoiceSearching"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setVoiceSearching(Z)V

    .line 228
    return-void
.end method


# virtual methods
.method public getCheck64QAM()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->getCheck64QAM()I

    move-result v0

    return v0
.end method

.method public getDataNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->getDataNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoaming()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->getDataRoaming()Z

    move-result v0

    return v0
.end method

.method public getRATDualCarrier()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->getRATDualCarrier()I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->getVoiceNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceRoaming()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->getVoiceRoaming()Z

    move-result v0

    return v0
.end method

.method public isDataSearching()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->isDataSearching()Z

    move-result v0

    return v0
.end method

.method public isVoiceSearching()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->isVoiceSearching()Z

    move-result v0

    return v0
.end method

.method public setCheck64QAM(I)V
    .locals 1
    .param p1, "Check64QAM"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setCheck64QAM(I)V

    .line 323
    return-void
.end method

.method public setDataNetworkName(Ljava/lang/String;)V
    .locals 1
    .param p1, "dataNetworkName"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setDataNetworkName(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setDataRoaming(Z)V
    .locals 1
    .param p1, "dataRoaming"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setDataRoaming(Z)V

    .line 117
    return-void
.end method

.method public setDataSearching(Z)V
    .locals 1
    .param p1, "isDataSearching"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setDataSearching(Z)V

    .line 200
    return-void
.end method

.method public setRATDualCarrier(I)V
    .locals 1
    .param p1, "isRATDualCarrier"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setRATDualCarrier(I)V

    .line 337
    return-void
.end method

.method public setServiceState(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "servicestate"    # Landroid/telephony/ServiceState;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    .line 75
    return-void
.end method

.method public setVoiceNetworkName(Ljava/lang/String;)V
    .locals 1
    .param p1, "voiceNetworkName"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setVoiceNetworkName(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setVoiceRoaming(Z)V
    .locals 1
    .param p1, "voiceRoaming"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setVoiceRoaming(Z)V

    .line 106
    return-void
.end method

.method public setVoiceSearching(Z)V
    .locals 1
    .param p1, "isVoiceSearching"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setVoiceSearching(Z)V

    .line 191
    return-void
.end method
