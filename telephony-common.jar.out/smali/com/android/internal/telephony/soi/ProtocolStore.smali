.class public abstract Lcom/android/internal/telephony/soi/ProtocolStore;
.super Ljava/lang/Object;
.source "ProtocolStore.java"

# interfaces
.implements Lcom/android/internal/telephony/soi/IProtocolStore;


# instance fields
.field protected relay:Lcom/android/internal/telephony/soi/IRelay;

.field protected transport:Lcom/android/internal/telephony/soi/ITransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/ProtocolStore;->createProtocol()V

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract createProtocol()V
.end method

.method public sendToRelay(Lcom/android/internal/telephony/soi/RelayData;)V
    .locals 1
    .param p1, "data"    # Lcom/android/internal/telephony/soi/RelayData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/soi/exception/BaseSoiException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/soi/ProtocolStore;->relay:Lcom/android/internal/telephony/soi/IRelay;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/soi/IRelay;->send(Lcom/android/internal/telephony/soi/RelayData;)V

    .line 41
    return-void
.end method

.method public sendToTransport(Lcom/android/internal/telephony/soi/TransportData;)V
    .locals 1
    .param p1, "data"    # Lcom/android/internal/telephony/soi/TransportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/soi/exception/BaseSoiException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/soi/ProtocolStore;->transport:Lcom/android/internal/telephony/soi/ITransport;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/soi/ITransport;->send(Lcom/android/internal/telephony/soi/TransportData;)V

    .line 36
    return-void
.end method
