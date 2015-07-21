.class public Lcom/android/internal/telephony/soi/RlTransaction;
.super Ljava/lang/Object;
.source "RlTransaction.java"


# instance fields
.field private mr:I

.field private retrans:Z

.field private saveTime:J

.field private scAddress:Ljava/lang/String;

.field private smmaTransaction:Z

.field private smsType:I

.field private state:I

.field private tpduMr:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(IIIIZLjava/lang/String;)V
    .locals 2
    .param p1, "mr"    # I
    .param p2, "tpduMr"    # I
    .param p3, "smsType"    # I
    .param p4, "state"    # I
    .param p5, "smmaTransaction"    # Z
    .param p6, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p4, p0, Lcom/android/internal/telephony/soi/RlTransaction;->state:I

    .line 25
    iput-boolean p5, p0, Lcom/android/internal/telephony/soi/RlTransaction;->smmaTransaction:Z

    .line 26
    iput p1, p0, Lcom/android/internal/telephony/soi/RlTransaction;->mr:I

    .line 27
    iput p2, p0, Lcom/android/internal/telephony/soi/RlTransaction;->tpduMr:I

    .line 28
    iput p3, p0, Lcom/android/internal/telephony/soi/RlTransaction;->smsType:I

    .line 29
    iput-object p6, p0, Lcom/android/internal/telephony/soi/RlTransaction;->scAddress:Ljava/lang/String;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/soi/RlTransaction;->saveTime:J

    .line 31
    return-void
.end method


# virtual methods
.method public getMr()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/soi/RlTransaction;->mr:I

    return v0
.end method

.method public getSaveTime()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/android/internal/telephony/soi/RlTransaction;->saveTime:J

    return-wide v0
.end method

.method public getScAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RlTransaction;->scAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsType()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/android/internal/telephony/soi/RlTransaction;->smsType:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/telephony/soi/RlTransaction;->state:I

    return v0
.end method

.method public getTpduMr()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/telephony/soi/RlTransaction;->tpduMr:I

    return v0
.end method

.method public isRetrans()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/telephony/soi/RlTransaction;->retrans:Z

    return v0
.end method

.method public isSmmaTransaction()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/telephony/soi/RlTransaction;->smmaTransaction:Z

    return v0
.end method

.method public setRetrans(Z)V
    .locals 0
    .param p1, "retrans"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/internal/telephony/soi/RlTransaction;->retrans:Z

    .line 63
    return-void
.end method

.method public setSaveTime(J)V
    .locals 1
    .param p1, "saveTime"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/internal/telephony/soi/RlTransaction;->saveTime:J

    .line 75
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "rlState"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/internal/telephony/soi/RlTransaction;->state:I

    .line 55
    return-void
.end method
