.class public Lcom/android/internal/telephony/soi/CdmaRelay;
.super Lcom/android/internal/telephony/soi/Relay;
.source "CdmaRelay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/Relay;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/soi/IRelayEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/telephony/soi/IRelayEventListener;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/Relay;-><init>(Lcom/android/internal/telephony/soi/IRelayEventListener;)V

    .line 23
    return-void
.end method


# virtual methods
.method public dataIndication(Ljava/lang/String;)V
    .locals 0
    .param p1, "rpdu"    # Ljava/lang/String;

    .prologue
    .line 32
    return-void
.end method

.method public dataRequest(Lcom/android/internal/telephony/soi/ImsPdu;)V
    .locals 1
    .param p1, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 27
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyMoSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    .line 28
    return-void
.end method

.method public memoryAvailableRequest(Lcom/android/internal/telephony/soi/ImsPdu;)V
    .locals 1
    .param p1, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 36
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyMoSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    .line 37
    return-void
.end method

.method public reportIndication(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 46
    return-void
.end method

.method public reportRequest(Lcom/android/internal/telephony/soi/ImsPdu;)V
    .locals 1
    .param p1, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 41
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyMoSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    .line 42
    return-void
.end method

.method public send(Lcom/android/internal/telephony/soi/RelayData;)V
    .locals 0
    .param p1, "data"    # Lcom/android/internal/telephony/soi/RelayData;

    .prologue
    .line 50
    return-void
.end method
