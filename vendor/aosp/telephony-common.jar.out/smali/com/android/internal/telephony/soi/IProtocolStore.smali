.class public interface abstract Lcom/android/internal/telephony/soi/IProtocolStore;
.super Ljava/lang/Object;
.source "IProtocolStore.java"


# virtual methods
.method public abstract sendToRelay(Lcom/android/internal/telephony/soi/RelayData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/soi/exception/BaseSoiException;
        }
    .end annotation
.end method

.method public abstract sendToTransport(Lcom/android/internal/telephony/soi/TransportData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/soi/exception/BaseSoiException;
        }
    .end annotation
.end method
