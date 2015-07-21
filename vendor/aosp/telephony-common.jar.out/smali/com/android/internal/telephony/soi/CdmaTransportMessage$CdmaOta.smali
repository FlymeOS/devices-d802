.class Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;
.super Ljava/lang/Object;
.source "CdmaTransportMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/soi/CdmaTransportMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CdmaOta"
.end annotation


# instance fields
.field mOtaPdu:[B

.field mSmsc:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;->mOtaPdu:[B

    .line 456
    iput-object v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;->mSmsc:Ljava/lang/String;

    return-void
.end method
