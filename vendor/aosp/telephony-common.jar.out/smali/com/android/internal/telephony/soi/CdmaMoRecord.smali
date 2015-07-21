.class public Lcom/android/internal/telephony/soi/CdmaMoRecord;
.super Lcom/android/internal/telephony/soi/MoRecord;
.source "CdmaMoRecord.java"


# instance fields
.field private mOtaPdu:[B

.field private mPdu:[B

.field private mSmsc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/MoRecord;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getOtaPdu()[B
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/soi/CdmaMoRecord;->mOtaPdu:[B

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/telephony/soi/CdmaMoRecord;->mPdu:[B

    return-object v0
.end method

.method public getSmsc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/telephony/soi/CdmaMoRecord;->mSmsc:Ljava/lang/String;

    return-object v0
.end method

.method public setOtaPdu([B)V
    .locals 0
    .param p1, "otaPdu"    # [B

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/soi/CdmaMoRecord;->mOtaPdu:[B

    .line 38
    return-void
.end method

.method public setPdu([B)V
    .locals 0
    .param p1, "pdu"    # [B

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/soi/CdmaMoRecord;->mPdu:[B

    .line 30
    return-void
.end method

.method public setSmsc(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsc"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/internal/telephony/soi/CdmaMoRecord;->mSmsc:Ljava/lang/String;

    .line 22
    return-void
.end method
