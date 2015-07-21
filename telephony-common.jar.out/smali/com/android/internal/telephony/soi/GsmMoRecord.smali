.class public Lcom/android/internal/telephony/soi/GsmMoRecord;
.super Lcom/android/internal/telephony/soi/MoRecord;
.source "GsmMoRecord.java"


# instance fields
.field private pdu:[B

.field private smsc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/MoRecord;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;[BIILandroid/os/Message;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "retryCount"    # I
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "pdu"    # [B
    .param p6, "retry"    # I
    .param p7, "messageRef"    # I
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 19
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/MoRecord;-><init>(IIIIILandroid/os/Message;)V

    .line 20
    iput-object p4, p0, Lcom/android/internal/telephony/soi/GsmMoRecord;->smsc:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/android/internal/telephony/soi/GsmMoRecord;->pdu:[B

    .line 22
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;[BILandroid/os/Message;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "smsc"    # Ljava/lang/String;
    .param p4, "pdu"    # [B
    .param p5, "messageRef"    # I
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/internal/telephony/soi/MoRecord;-><init>(IIILandroid/os/Message;)V

    .line 26
    iput-object p3, p0, Lcom/android/internal/telephony/soi/GsmMoRecord;->smsc:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/android/internal/telephony/soi/GsmMoRecord;->pdu:[B

    .line 28
    return-void
.end method


# virtual methods
.method public getPdu()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmMoRecord;->pdu:[B

    return-object v0
.end method

.method public getSmsc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmMoRecord;->smsc:Ljava/lang/String;

    return-object v0
.end method

.method public setPdu([B)V
    .locals 0
    .param p1, "pdu"    # [B

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/soi/GsmMoRecord;->pdu:[B

    .line 44
    return-void
.end method

.method public setSmsc(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsc"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/soi/GsmMoRecord;->smsc:Ljava/lang/String;

    .line 36
    return-void
.end method
