.class public Lcom/android/internal/telephony/soi/CdmaProtocolStore;
.super Lcom/android/internal/telephony/soi/ProtocolStore;
.source "CdmaProtocolStore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/ProtocolStore;-><init>()V

    return-void
.end method


# virtual methods
.method protected createProtocol()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/android/internal/telephony/soi/CdmaRelay;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/CdmaRelay;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/CdmaProtocolStore;->relay:Lcom/android/internal/telephony/soi/IRelay;

    .line 15
    new-instance v0, Lcom/android/internal/telephony/soi/CdmaTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/soi/CdmaProtocolStore;->relay:Lcom/android/internal/telephony/soi/IRelay;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/soi/CdmaTransport;-><init>(Lcom/android/internal/telephony/soi/IRelay;)V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/CdmaProtocolStore;->transport:Lcom/android/internal/telephony/soi/ITransport;

    .line 16
    return-void
.end method
