.class public Lcom/android/internal/telephony/LGSrvccCallContext;
.super Ljava/lang/Object;
.source "LGSrvccCallContext.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mCallState:I

.field private mCallSubState:I

.field private mCallType:I

.field private mDirection:I

.field private mInstanceId:I

.field private mIsMptyCall:Z


# direct methods
.method public constructor <init>(IIIIZILjava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # I
    .param p2, "callType"    # I
    .param p3, "callState"    # I
    .param p4, "callSubState"    # I
    .param p5, "isMptyCall"    # Z
    .param p6, "direction"    # I
    .param p7, "address"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mInstanceId:I

    .line 22
    iput p2, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mCallType:I

    .line 23
    iput p3, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mCallState:I

    .line 24
    iput p4, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mCallSubState:I

    .line 25
    iput-boolean p5, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mIsMptyCall:Z

    .line 26
    iput p6, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mDirection:I

    .line 27
    iput-object p7, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mAddress:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mCallState:I

    return v0
.end method

.method public getCallSubState()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mCallSubState:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mCallType:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mDirection:I

    return v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mInstanceId:I

    return v0
.end method

.method public isMptyCall()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mIsMptyCall:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mAddress:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mCallState:I

    .line 39
    return-void
.end method

.method public setCallSubState(I)V
    .locals 0
    .param p1, "callSubState"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mCallSubState:I

    .line 42
    return-void
.end method

.method public setCallType(I)V
    .locals 0
    .param p1, "callType"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mCallType:I

    .line 36
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mDirection:I

    .line 48
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0
    .param p1, "instanceId"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mInstanceId:I

    .line 33
    return-void
.end method

.method public setIsMptyCall(Z)V
    .locals 0
    .param p1, "isMptyCall"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/telephony/LGSrvccCallContext;->mIsMptyCall:Z

    .line 45
    return-void
.end method
