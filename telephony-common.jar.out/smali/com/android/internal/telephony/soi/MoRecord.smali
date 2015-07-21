.class public abstract Lcom/android/internal/telephony/soi/MoRecord;
.super Ljava/lang/Object;
.source "MoRecord.java"

# interfaces
.implements Lcom/android/internal/telephony/soi/ISmsRecord;


# instance fields
.field protected messageRef:I

.field protected result:Landroid/os/Message;

.field protected retry:I

.field protected retryCount:I

.field protected state:I

.field protected type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/android/internal/telephony/soi/MoRecord;->retry:I

    .line 15
    iput v0, p0, Lcom/android/internal/telephony/soi/MoRecord;->retryCount:I

    .line 20
    return-void
.end method

.method public constructor <init>(IIIIILandroid/os/Message;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "retryCount"    # I
    .param p4, "retry"    # I
    .param p5, "messageRef"    # I
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/internal/telephony/soi/MoRecord;-><init>(IIILandroid/os/Message;)V

    .line 24
    iput p3, p0, Lcom/android/internal/telephony/soi/MoRecord;->retryCount:I

    .line 25
    iput p4, p0, Lcom/android/internal/telephony/soi/MoRecord;->retry:I

    .line 26
    return-void
.end method

.method public constructor <init>(IIILandroid/os/Message;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/android/internal/telephony/soi/MoRecord;->retry:I

    .line 15
    iput v0, p0, Lcom/android/internal/telephony/soi/MoRecord;->retryCount:I

    .line 30
    iput p1, p0, Lcom/android/internal/telephony/soi/MoRecord;->type:I

    .line 31
    iput p2, p0, Lcom/android/internal/telephony/soi/MoRecord;->state:I

    .line 32
    iput p3, p0, Lcom/android/internal/telephony/soi/MoRecord;->messageRef:I

    .line 33
    iput-object p4, p0, Lcom/android/internal/telephony/soi/MoRecord;->result:Landroid/os/Message;

    .line 34
    return-void
.end method


# virtual methods
.method public getMessageRef()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/soi/MoRecord;->messageRef:I

    return v0
.end method

.method public getResult()Landroid/os/Message;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/soi/MoRecord;->result:Landroid/os/Message;

    return-object v0
.end method

.method public getRetry()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/telephony/soi/MoRecord;->retry:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/telephony/soi/MoRecord;->retryCount:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/telephony/soi/MoRecord;->state:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/internal/telephony/soi/MoRecord;->type:I

    return v0
.end method

.method public incrementRetryCount()V
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/telephony/soi/MoRecord;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/soi/MoRecord;->retryCount:I

    .line 62
    return-void
.end method

.method public setMessageRef(I)V
    .locals 0
    .param p1, "messageRef"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/internal/telephony/soi/MoRecord;->messageRef:I

    .line 86
    return-void
.end method

.method public setResult(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/soi/MoRecord;->result:Landroid/os/Message;

    .line 78
    return-void
.end method

.method public setRetry(I)V
    .locals 0
    .param p1, "retry"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/internal/telephony/soi/MoRecord;->retry:I

    .line 70
    return-void
.end method

.method public setRetryCount(I)V
    .locals 0
    .param p1, "retryCount"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/telephony/soi/MoRecord;->retryCount:I

    .line 58
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/telephony/soi/MoRecord;->state:I

    .line 50
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/internal/telephony/soi/MoRecord;->type:I

    .line 42
    return-void
.end method
