.class public Lcom/android/internal/telephony/soi/GsmMtRecord;
.super Lcom/android/internal/telephony/soi/MtRecord;
.source "GsmMtRecord.java"


# instance fields
.field protected pdu:Ljava/lang/String;

.field protected scAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/MtRecord;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getPdu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmMtRecord;->pdu:Ljava/lang/String;

    return-object v0
.end method

.method public getScAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmMtRecord;->scAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setPdu(Ljava/lang/String;)V
    .locals 0
    .param p1, "pdu"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/internal/telephony/soi/GsmMtRecord;->pdu:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setScAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/internal/telephony/soi/GsmMtRecord;->scAddress:Ljava/lang/String;

    .line 29
    return-void
.end method
