.class public Lcom/android/internal/telephony/cdma/LGCdmaConnectionImpl;
.super Ljava/lang/Object;
.source "LGCdmaConnectionImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/cdma/ILGCdmaConnection;


# static fields
.field private static final LGT_DUAL_NUM_MARK:Ljava/lang/String; = "#"

.field static final LOG_TAG:Ljava/lang/String; = "LGCdmaConnectionImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 12
    const-string v0, "LGCdmaConnectionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void
.end method


# virtual methods
.method public isSupportSendBurstDtmf()Z
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x0

    const-string v1, "support_send_burst_dtmf"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUpdateStateCTC(Landroid/telephony/ServiceState;Lcom/android/internal/telephony/DriverCall$State;Z)Z
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;
    .param p2, "state"    # Lcom/android/internal/telephony/DriverCall$State;
    .param p3, "bReceivedLineCtrl"    # Z

    .prologue
    const/4 v0, 0x0

    .line 35
    const-string v1, "CTC"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne p2, v1, :cond_0

    if-nez p3, :cond_0

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateLguDualNumber(Lcom/android/internal/telephony/DriverCall;)V
    .locals 3
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v2, 0x0

    .line 53
    const-string v0, "Korea_CDNIP"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-boolean v0, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "#"

    iput-object v0, p1, Lcom/android/internal/telephony/DriverCall;->cdnipNumber:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iput-object v2, p1, Lcom/android/internal/telephony/DriverCall;->cdnipNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateStateKDDI(Landroid/telephony/ServiceState;Lcom/android/internal/telephony/DriverCall$State;Z)Lcom/android/internal/telephony/DriverCall$State;
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;
    .param p2, "state"    # Lcom/android/internal/telephony/DriverCall$State;
    .param p3, "bReceviedAocr"    # Z

    .prologue
    .line 21
    const-string v0, "KDDI"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-object p2

    .line 25
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 26
    sget-object p2, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0
.end method
