.class public Lcom/android/internal/telephony/soi/RelayData;
.super Ljava/lang/Object;
.source "RelayData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RelayData"


# instance fields
.field private mCause:I

.field private mCauseLength:I

.field private mDiagnostics:I

.field private mMessageId:I

.field private mMessageRef:I

.field private mMessageSet:I

.field private mRetryAfter:I

.field private mRpdu:[B

.field private mSmsc:Ljava/lang/String;

.field private mStatus:I

.field private mTpdu:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "messageSet"    # I
    .param p2, "status"    # I
    .param p3, "retryAfter"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageSet:I

    .line 43
    iput p2, p0, Lcom/android/internal/telephony/soi/RelayData;->mStatus:I

    .line 44
    iput p3, p0, Lcom/android/internal/telephony/soi/RelayData;->mRetryAfter:I

    .line 45
    const-string v0, "RelayData"

    const-string v1, "RelayData() 3"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2
    .param p1, "messageSet"    # I
    .param p2, "messageId"    # I
    .param p3, "messageRef"    # I
    .param p4, "smsc"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageSet:I

    .line 59
    iput p2, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageId:I

    .line 60
    iput p3, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageRef:I

    .line 61
    iput-object p4, p0, Lcom/android/internal/telephony/soi/RelayData;->mSmsc:Ljava/lang/String;

    .line 62
    const-string v0, "RelayData"

    const-string v1, "RelayData() 5"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;[B)V
    .locals 2
    .param p1, "messageSet"    # I
    .param p2, "messageId"    # I
    .param p3, "messageRef"    # I
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "tpdu"    # [B

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageSet:I

    .line 26
    iput p2, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageId:I

    .line 27
    iput p3, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageRef:I

    .line 28
    iput-object p4, p0, Lcom/android/internal/telephony/soi/RelayData;->mSmsc:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/android/internal/telephony/soi/RelayData;->mTpdu:[B

    .line 30
    const-string v0, "RelayData"

    const-string v1, "RelayData() 1"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;[BI)V
    .locals 2
    .param p1, "messageSet"    # I
    .param p2, "messageId"    # I
    .param p3, "messageRef"    # I
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "tpdu"    # [B
    .param p6, "cause"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageSet:I

    .line 68
    iput p2, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageId:I

    .line 69
    iput p3, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageRef:I

    .line 70
    iput-object p4, p0, Lcom/android/internal/telephony/soi/RelayData;->mSmsc:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/android/internal/telephony/soi/RelayData;->mTpdu:[B

    .line 72
    iput p6, p0, Lcom/android/internal/telephony/soi/RelayData;->mCause:I

    .line 73
    const-string v0, "RelayData"

    const-string v1, "RelayData() 6"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;[BIII)V
    .locals 2
    .param p1, "messageSet"    # I
    .param p2, "messageId"    # I
    .param p3, "messageRef"    # I
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "tpdu"    # [B
    .param p6, "causeLength"    # I
    .param p7, "cause"    # I
    .param p8, "diagnostics"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageSet:I

    .line 79
    iput p2, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageId:I

    .line 80
    iput p3, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageRef:I

    .line 81
    iput-object p4, p0, Lcom/android/internal/telephony/soi/RelayData;->mSmsc:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/android/internal/telephony/soi/RelayData;->mTpdu:[B

    .line 83
    iput p6, p0, Lcom/android/internal/telephony/soi/RelayData;->mCauseLength:I

    .line 84
    iput p7, p0, Lcom/android/internal/telephony/soi/RelayData;->mCause:I

    .line 85
    iput p8, p0, Lcom/android/internal/telephony/soi/RelayData;->mDiagnostics:I

    .line 86
    const-string v0, "RelayData"

    const-string v1, "RelayData() 7"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 2
    .param p1, "messageSet"    # I
    .param p2, "messageId"    # I
    .param p3, "messageRef"    # I
    .param p4, "dummy"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageSet:I

    .line 51
    iput p2, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageId:I

    .line 52
    iput p3, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageRef:I

    .line 53
    const-string v0, "RelayData"

    const-string v1, "RelayData() 4"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "messageSet"    # I
    .param p2, "rpdu"    # [B

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageSet:I

    .line 36
    iput-object p2, p0, Lcom/android/internal/telephony/soi/RelayData;->mRpdu:[B

    .line 37
    const-string v0, "RelayData"

    const-string v1, "RelayData() 2"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getCause()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/telephony/soi/RelayData;->mCause:I

    return v0
.end method

.method public getCauseLength()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/internal/telephony/soi/RelayData;->mCauseLength:I

    return v0
.end method

.method public getDiagnostics()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/internal/telephony/soi/RelayData;->mDiagnostics:I

    return v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageId:I

    return v0
.end method

.method public getMessageRef()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageRef:I

    return v0
.end method

.method public getMessageSet()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageSet:I

    return v0
.end method

.method public getRetryAfter()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/internal/telephony/soi/RelayData;->mRetryAfter:I

    return v0
.end method

.method public getRpdu()[B
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RelayData;->mRpdu:[B

    return-object v0
.end method

.method public getSmsc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RelayData;->mSmsc:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/internal/telephony/soi/RelayData;->mStatus:I

    return v0
.end method

.method public getTpdu()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RelayData;->mTpdu:[B

    return-object v0
.end method

.method public setCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mCause:I

    .line 143
    return-void
.end method

.method public setCauseLength(I)V
    .locals 0
    .param p1, "causeLength"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mCauseLength:I

    .line 149
    return-void
.end method

.method public setDiagnostics(I)V
    .locals 0
    .param p1, "diagnostics"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mDiagnostics:I

    .line 155
    return-void
.end method

.method public setMessageId(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageId:I

    .line 101
    return-void
.end method

.method public setMessageRef(I)V
    .locals 0
    .param p1, "messageRef"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageRef:I

    .line 107
    return-void
.end method

.method public setMessageSet(I)V
    .locals 0
    .param p1, "messageSet"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mMessageSet:I

    .line 95
    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0
    .param p1, "retryAfter"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mRetryAfter:I

    .line 137
    return-void
.end method

.method public setRpdu([B)V
    .locals 0
    .param p1, "rpdu"    # [B

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mRpdu:[B

    .line 125
    return-void
.end method

.method public setSmsc(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsc"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mSmsc:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mStatus:I

    .line 131
    return-void
.end method

.method public setTpdu([B)V
    .locals 0
    .param p1, "tpdu"    # [B

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/soi/RelayData;->mTpdu:[B

    .line 119
    return-void
.end method
