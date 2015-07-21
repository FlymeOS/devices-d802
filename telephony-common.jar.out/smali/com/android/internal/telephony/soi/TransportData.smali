.class public Lcom/android/internal/telephony/soi/TransportData;
.super Ljava/lang/Object;
.source "TransportData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransportData"


# instance fields
.field private mAckPdu:Ljava/lang/String;

.field private mAvailable:Z

.field private mCause:I

.field private mCauseLength:I

.field private mError_status:I

.field private mMessageRef:I

.field private mResult:Landroid/os/Message;

.field mRetry:I

.field private mRetryAfter:I

.field private mRpCause:I

.field private mScAddress:Ljava/lang/String;

.field private mSmi:I

.field private mSmsc:Ljava/lang/String;

.field private mSuccess:Z

.field private mTpdu:[B

.field private mType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "retryAfter"    # I
    .param p3, "error_status"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mType:I

    .line 111
    iput p2, p0, Lcom/android/internal/telephony/soi/TransportData;->mRetryAfter:I

    .line 112
    iput p3, p0, Lcom/android/internal/telephony/soi/TransportData;->mError_status:I

    .line 113
    const-string v0, "TransportData"

    const-string v1, "TransportData() 7"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BIIIII)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "tpdu"    # [B
    .param p4, "messageRef"    # I
    .param p5, "smi"    # I
    .param p6, "retryAfter"    # I
    .param p7, "error_status"    # I
    .param p8, "cause"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mType:I

    .line 89
    iput-object p2, p0, Lcom/android/internal/telephony/soi/TransportData;->mScAddress:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/android/internal/telephony/soi/TransportData;->mTpdu:[B

    .line 91
    iput p4, p0, Lcom/android/internal/telephony/soi/TransportData;->mMessageRef:I

    .line 92
    iput p5, p0, Lcom/android/internal/telephony/soi/TransportData;->mSmi:I

    .line 93
    iput p6, p0, Lcom/android/internal/telephony/soi/TransportData;->mRetryAfter:I

    .line 94
    iput p7, p0, Lcom/android/internal/telephony/soi/TransportData;->mError_status:I

    .line 95
    iput p8, p0, Lcom/android/internal/telephony/soi/TransportData;->mCause:I

    .line 96
    const-string v0, "TransportData"

    const-string v1, "TransportData() 5"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BIILandroid/os/Message;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "tpdu"    # [B
    .param p4, "retry"    # I
    .param p5, "messageRef"    # I
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mType:I

    .line 77
    iput-object p2, p0, Lcom/android/internal/telephony/soi/TransportData;->mSmsc:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/android/internal/telephony/soi/TransportData;->mTpdu:[B

    .line 79
    iput p4, p0, Lcom/android/internal/telephony/soi/TransportData;->mRetry:I

    .line 80
    iput p5, p0, Lcom/android/internal/telephony/soi/TransportData;->mMessageRef:I

    .line 81
    iput-object p6, p0, Lcom/android/internal/telephony/soi/TransportData;->mResult:Landroid/os/Message;

    .line 82
    const-string v0, "TransportData"

    const-string v1, "TransportData() 4"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(IZIILandroid/os/Message;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .param p4, "causeLength"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mType:I

    .line 50
    iput-boolean p2, p0, Lcom/android/internal/telephony/soi/TransportData;->mSuccess:Z

    .line 51
    iput p3, p0, Lcom/android/internal/telephony/soi/TransportData;->mCause:I

    .line 52
    iput p4, p0, Lcom/android/internal/telephony/soi/TransportData;->mCauseLength:I

    .line 53
    iput-object p5, p0, Lcom/android/internal/telephony/soi/TransportData;->mResult:Landroid/os/Message;

    .line 54
    const-string v0, "TransportData"

    const-string v1, "TransportData() 1"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(IZLandroid/os/Message;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "available"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mType:I

    .line 69
    iput-boolean p2, p0, Lcom/android/internal/telephony/soi/TransportData;->mAvailable:Z

    .line 70
    iput-object p3, p0, Lcom/android/internal/telephony/soi/TransportData;->mResult:Landroid/os/Message;

    .line 71
    const-string v0, "TransportData"

    const-string v1, "TransportData() 3"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "success"    # Z
    .param p3, "ackPdu"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mType:I

    .line 60
    iput-boolean p2, p0, Lcom/android/internal/telephony/soi/TransportData;->mSuccess:Z

    .line 61
    iput-object p3, p0, Lcom/android/internal/telephony/soi/TransportData;->mAckPdu:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/android/internal/telephony/soi/TransportData;->mResult:Landroid/os/Message;

    .line 63
    const-string v0, "TransportData"

    const-string v1, "TransportData() 2"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "tpdu"    # [B

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mType:I

    .line 103
    iput-object p2, p0, Lcom/android/internal/telephony/soi/TransportData;->mTpdu:[B

    .line 105
    const-string v0, "TransportData"

    const-string v1, "TransportData() 6"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method


# virtual methods
.method public getAckPdu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mAckPdu:Ljava/lang/String;

    return-object v0
.end method

.method public getCause()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mCause:I

    return v0
.end method

.method public getCauseLength()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mCauseLength:I

    return v0
.end method

.method public getError_status()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mError_status:I

    return v0
.end method

.method public getMessageRef()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mMessageRef:I

    return v0
.end method

.method public getResult()Landroid/os/Message;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mResult:Landroid/os/Message;

    return-object v0
.end method

.method public getRetry()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mRetry:I

    return v0
.end method

.method public getRetryAfter()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mRetryAfter:I

    return v0
.end method

.method public getRpCause()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mRpCause:I

    return v0
.end method

.method public getScAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mScAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSmi()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mSmi:I

    return v0
.end method

.method public getSmsc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mSmsc:Ljava/lang/String;

    return-object v0
.end method

.method public getTpdu()[B
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mTpdu:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mType:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mAvailable:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/internal/telephony/soi/TransportData;->mSuccess:Z

    return v0
.end method

.method public setAckPdu(Ljava/lang/String;)V
    .locals 0
    .param p1, "ackPdu"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mAckPdu:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mAvailable:Z

    .line 256
    return-void
.end method

.method public setCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mCause:I

    .line 232
    return-void
.end method

.method public setCauseLength(I)V
    .locals 0
    .param p1, "causeLength"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mCauseLength:I

    .line 240
    return-void
.end method

.method public setError_status(I)V
    .locals 0
    .param p1, "error_status"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mError_status:I

    .line 184
    return-void
.end method

.method public setMessageRef(I)V
    .locals 0
    .param p1, "messageRef"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mMessageRef:I

    .line 168
    return-void
.end method

.method public setResult(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mResult:Landroid/os/Message;

    .line 144
    return-void
.end method

.method public setRetry(I)V
    .locals 0
    .param p1, "retry"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mRetry:I

    .line 224
    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0
    .param p1, "retryAfter"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mRetryAfter:I

    .line 200
    return-void
.end method

.method public setRpCause(I)V
    .locals 0
    .param p1, "rpCause"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mRpCause:I

    .line 192
    return-void
.end method

.method public setScAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mScAddress:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setSmi(I)V
    .locals 0
    .param p1, "smi"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mSmi:I

    .line 176
    return-void
.end method

.method public setSmsc(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsc"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mSmsc:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mSuccess:Z

    .line 152
    return-void
.end method

.method public setTpdu([B)V
    .locals 0
    .param p1, "tpdu"    # [B

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mTpdu:[B

    .line 160
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/telephony/soi/TransportData;->mType:I

    .line 136
    return-void
.end method
