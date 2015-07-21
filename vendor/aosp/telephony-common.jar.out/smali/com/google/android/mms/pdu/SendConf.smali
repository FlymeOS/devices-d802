.class public Lcom/google/android/mms/pdu/SendConf;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "SendConf.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 39
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendConf;->setMessageType(I)V

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getMessageId()[B
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getResponseStatus()I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getResponseText()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x93

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 68
    return-void
.end method

.method public setResponseStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x92

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 87
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 106
    return-void
.end method
