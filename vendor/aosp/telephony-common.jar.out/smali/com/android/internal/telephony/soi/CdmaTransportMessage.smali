.class public Lcom/android/internal/telephony/soi/CdmaTransportMessage;
.super Ljava/lang/Object;
.source "CdmaTransportMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;,
        Lcom/android/internal/telephony/soi/CdmaTransportMessage$CodingException;
    }
.end annotation


# static fields
.field public static final MAX_PDU_LEN:I = 0xff

.field public static final POS_DIGIT_MODE:I = 0x7

.field public static final POS_NUMBER_MODE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CdmaTransportMessage"


# instance fields
.field private mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field private mCdmaSmsSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

.field private mDestSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

.field private mEncodedBearerDatalength:I

.field mEnv:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private mIsMo:Z

.field private mPduLen:I

.field private mServicePresent:I

.field private mSubaddr_nbr_of_digits:I

.field private mTransportMask:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mServicePresent:I

    .line 29
    iput v1, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mSubaddr_nbr_of_digits:I

    .line 30
    iput v1, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mEncodedBearerDatalength:I

    .line 31
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mEnv:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mDestSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaSmsSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 35
    iput v1, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mPduLen:I

    .line 36
    iput v1, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    .line 37
    iput-boolean v1, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mIsMo:Z

    .line 454
    return-void
.end method

.method private static constructCdmaSendSms(Z[B)Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    .locals 12
    .param p0, "isMo"    # Z
    .param p1, "pdu"    # [B

    .prologue
    .line 633
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 634
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 636
    .local v4, "dis":Ljava/io/DataInputStream;
    new-instance v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;-><init>()V

    .line 637
    .local v3, "ctm":Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    iput-boolean p0, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mIsMo:Z

    .line 639
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() pdu: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    int-to-short v10, v10

    iput v10, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 642
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    int-to-byte v9, v9

    iput v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mServicePresent:I

    .line 643
    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 644
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 645
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 646
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 647
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 648
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v9

    int-to-byte v0, v9

    .line 649
    .local v0, "address_nbr_of_digits":I
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 650
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    new-array v10, v0, [B

    iput-object v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 652
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() ctm.getEnv().teleService: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() mServicePresent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mServicePresent:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() ctm.getEnv().serviceCategory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() mCdmaAddress.digitMode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() ct.mCdmaAddress.numberMode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() ct.mCdmaAddress.ton : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() ct.mCdmaAddress.numberPlan : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() ct.mCdmaAddress.numberOfDigits : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 662
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    aput-byte v10, v9, v6

    .line 661
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 666
    :cond_0
    const/4 v9, 0x1

    if-ne p0, v9, :cond_1

    .line 667
    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v9

    iget-object v10, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v10, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 672
    :goto_1
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() ct.mCdmaAddress.origBytes : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaSmsSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 675
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaSmsSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v10

    int-to-byte v10, v10

    iput-byte v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 676
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v9

    int-to-byte v8, v9

    .line 677
    .local v8, "subaddr_nbr_of_digits":I
    iput v8, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mSubaddr_nbr_of_digits:I

    .line 678
    if-lez v8, :cond_2

    .line 679
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() ct.mCdmaSmsSubaddress.type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaSmsSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() ct.mCdmaSmsSubaddress.odd : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaSmsSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-byte v11, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v9, "CdmaTransportMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructCdmaSendSms() ct.mSubaddr_nbr_of_digits : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaSmsSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    new-array v10, v8, [B

    iput-object v10, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 684
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_2

    .line 685
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaSmsSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    aput-byte v10, v9, v6

    .line 684
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 669
    .end local v8    # "subaddr_nbr_of_digits":I
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v9

    iget-object v10, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v10, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 696
    .end local v0    # "address_nbr_of_digits":I
    .end local v6    # "i":I
    :catch_0
    move-exception v5

    .line 697
    .local v5, "e":Ljava/io/EOFException;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/EOFException;->printStackTrace()V

    .line 698
    const-string v9, "CdmaTransportMessage"

    const-string v10, "constructCdmaSendSms EOFException"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    new-instance v9, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v9}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    .end local v5    # "e":Ljava/io/EOFException;
    :catchall_0
    move-exception v9

    .line 711
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 712
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 715
    :goto_3
    throw v9

    .line 688
    .restart local v0    # "address_nbr_of_digits":I
    .restart local v6    # "i":I
    .restart local v8    # "subaddr_nbr_of_digits":I
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v9

    int-to-byte v2, v9

    .line 689
    .local v2, "bearerDataLength":I
    iput v2, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mEncodedBearerDatalength:I

    .line 690
    if-lez v2, :cond_3

    .line 691
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mEnv:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    new-array v10, v2, [B

    iput-object v10, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 692
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_3

    .line 693
    iget-object v9, v3, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mEnv:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    aput-byte v10, v9, v6
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 692
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 711
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 712
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 717
    :goto_5
    return-object v3

    .line 713
    :catch_1
    move-exception v7

    .line 714
    .local v7, "ignored":Ljava/io/IOException;
    const-string v9, "CdmaTransportMessage"

    const-string v10, "constructCdmaSendSms bais.close || dis.close fail ~~!!  IOException"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 700
    .end local v0    # "address_nbr_of_digits":I
    .end local v2    # "bearerDataLength":I
    .end local v6    # "i":I
    .end local v7    # "ignored":Ljava/io/IOException;
    .end local v8    # "subaddr_nbr_of_digits":I
    :catch_2
    move-exception v5

    .line 702
    .local v5, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 703
    const-string v9, "CdmaTransportMessage"

    const-string v10, "constructCdmaSendSms IOException"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    new-instance v9, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v9}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v9

    .line 705
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 706
    .local v5, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 707
    const-string v9, "CdmaTransportMessage"

    const-string v10, "constructCdmaSendSms NullPointerException"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    new-instance v9, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v9}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 713
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v7

    .line 714
    .restart local v7    # "ignored":Ljava/io/IOException;
    const-string v10, "CdmaTransportMessage"

    const-string v11, "constructCdmaSendSms bais.close || dis.close fail ~~!!  IOException"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static createFromRawPdu([B)Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    .locals 2
    .param p0, "pdu"    # [B

    .prologue
    .line 126
    new-instance v0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;-><init>()V

    .line 127
    .local v0, "msg":Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    array-length v1, p0

    iput v1, v0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mPduLen:I

    .line 128
    invoke-direct {v0, p0, v0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->parseCdmaRawPdu([BLcom/android/internal/telephony/soi/CdmaTransportMessage;)V

    .line 129
    return-object v0
.end method

.method private static encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 11
    .param p0, "address"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/soi/CdmaTransportMessage$CodingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 553
    if-nez p0, :cond_0

    .line 554
    new-instance v7, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CodingException;

    const-string v8, "CdmaSmsAddress null"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 556
    :cond_0
    move-object v0, p0

    .line 557
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/16 v4, 0xa

    .line 558
    .local v4, "paramBits":I
    const/4 v1, 0x0

    .line 559
    .local v1, "dataBits":I
    const/4 v6, 0x0

    .line 560
    .local v6, "sizeChari":I
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v7, v8, :cond_3

    .line 561
    add-int/lit8 v4, v4, 0x3

    .line 562
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v7, :cond_1

    .line 563
    add-int/lit8 v4, v4, 0x4

    .line 565
    :cond_1
    const/16 v6, 0x8

    .line 566
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int v1, v7, v6

    .line 571
    :goto_0
    add-int/2addr v4, v1

    .line 572
    add-int/lit8 v7, v4, 0x7

    div-int/lit8 v5, v7, 0x8

    .line 573
    .local v5, "paramBytes":I
    mul-int/lit8 v7, v5, 0x8

    sub-int v3, v7, v4

    .line 574
    .local v3, "paddingBits":I
    invoke-virtual {p1, v9, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 575
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v8, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 576
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {p1, v8, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 577
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v7, v8, :cond_2

    .line 578
    const/4 v7, 0x3

    iget v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 579
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v7, :cond_2

    .line 580
    const/4 v7, 0x4

    iget v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 583
    :cond_2
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    if-eqz v7, :cond_4

    .line 584
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v9, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 585
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v2, v7, :cond_5

    .line 586
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    aget-byte v7, v7, v2

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 585
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 568
    .end local v2    # "i":I
    .end local v3    # "paddingBits":I
    .end local v5    # "paramBytes":I
    :cond_3
    const/4 v6, 0x4

    .line 569
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int v1, v7, v6

    goto :goto_0

    .line 589
    .restart local v3    # "paddingBits":I
    .restart local v5    # "paramBytes":I
    :cond_4
    invoke-virtual {p1, v9, v10}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 591
    :cond_5
    if-lez v3, :cond_6

    .line 592
    invoke-virtual {p1, v3, v10}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 594
    :cond_6
    return-void
.end method

.method private static encodeCdmaSmsSubAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .param p0, "address"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/soi/CdmaTransportMessage$CodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 599
    if-nez p0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    const/16 v5, 0x8

    .line 603
    .local v5, "sizeChari":I
    move-object v0, p0

    .line 604
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    const/16 v3, 0xc

    .line 605
    .local v3, "paramBits":I
    const/4 v1, 0x0

    .line 606
    .local v1, "dataBits":I
    iget-object v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    if-eqz v6, :cond_2

    .line 607
    iget-object v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v6, v6

    mul-int v1, v6, v5

    .line 609
    :cond_2
    add-int/2addr v3, v1

    .line 610
    add-int/lit8 v3, v3, 0x4

    .line 611
    div-int/lit8 v4, v3, 0x8

    .line 612
    .local v4, "paramBytes":I
    const/4 v2, 0x4

    .line 614
    .local v2, "paddingBits":I
    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 615
    const/4 v6, 0x3

    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 616
    const/4 v6, 0x1

    iget-byte v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 617
    iget-object v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    if-eqz v6, :cond_3

    .line 618
    iget-object v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v6, v6

    invoke-virtual {p1, v8, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 619
    iget-object v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    invoke-virtual {p1, v1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 623
    :goto_1
    if-lez v2, :cond_0

    .line 624
    invoke-virtual {p1, v2, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_0

    .line 621
    :cond_3
    invoke-virtual {p1, v8, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1
.end method

.method public static generateCdmaOta(Z[B)Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;
    .locals 4
    .param p0, "isMo"    # Z
    .param p1, "pdu"    # [B

    .prologue
    .line 460
    new-instance v0, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;-><init>()V

    .line 461
    .local v0, "cdmaOta":Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;
    const-string v2, "CdmaTransportMessage"

    const-string v3, "generateCdmaOta~~!!"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {p0, p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->constructCdmaSendSms(Z[B)Lcom/android/internal/telephony/soi/CdmaTransportMessage;

    move-result-object v1

    .line 463
    .local v1, "ctm":Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    if-nez v1, :cond_0

    .line 464
    const-string v2, "CdmaTransportMessage"

    const-string v3, "generateCdmaOta ctm null~!!! throw SoiException"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v2, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v2}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v2

    .line 467
    :cond_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getCdmaOta(ZLcom/android/internal/telephony/soi/CdmaTransportMessage;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;->mOtaPdu:[B

    .line 468
    invoke-static {p0, v1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getAddressCdma(ZLcom/android/internal/telephony/soi/CdmaTransportMessage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;->mSmsc:Ljava/lang/String;

    .line 470
    return-object v0
.end method

.method private static getAddressCdma(ZLcom/android/internal/telephony/soi/CdmaTransportMessage;)Ljava/lang/String;
    .locals 8
    .param p0, "isMo"    # Z
    .param p1, "ctm"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;

    .prologue
    .line 484
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-nez v6, :cond_1

    .line 485
    :cond_0
    const-string v6, "CdmaTransportMessage"

    const-string v7, "getAddressCdma ctm null || ctm.mCdmaAddress null ~~!!! throw SoiException"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v6, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v6}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v6

    .line 488
    :cond_1
    const/4 v0, 0x0

    .line 489
    .local v0, "addressStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v6, 0x20

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 491
    .local v4, "strBuf":Ljava/lang/StringBuffer;
    iget-object v6, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .local v1, "arr$":[B
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-byte v5, v1, v2

    .line 492
    .local v5, "value":B
    invoke-static {v5}, Lcom/android/internal/telephony/soi/SmsUtils;->convertDtmfToCharNum(B)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    .end local v5    # "value":B
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    return-object v0
.end method

.method public static getCdmaOta(ZLcom/android/internal/telephony/soi/CdmaTransportMessage;)[B
    .locals 3
    .param p0, "isMo"    # Z
    .param p1, "ctm"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;

    .prologue
    .line 474
    const/16 v1, 0xff

    new-array v0, v1, [B

    .line 475
    .local v0, "ota":[B
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v1

    if-nez v1, :cond_1

    .line 476
    :cond_0
    const-string v1, "CdmaTransportMessage"

    const-string v2, "getCdmaOta ctm null || ctm.getEnv() null ~~!!! throw SoiException"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    new-instance v1, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v1}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v1

    .line 479
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEncodeCdmaOta(ZLcom/android/internal/telephony/soi/CdmaTransportMessage;)[B

    move-result-object v0

    .line 480
    return-object v0
.end method

.method private static getEncodeCdmaOta(ZLcom/android/internal/telephony/soi/CdmaTransportMessage;)[B
    .locals 7
    .param p0, "isMo"    # Z
    .param p1, "ctm"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;

    .prologue
    const/4 v6, 0x1

    .line 504
    :try_start_0
    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 505
    .local v2, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 507
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 508
    const/16 v3, 0x8

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 509
    const/16 v3, 0x10

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getTeleserviceId()I

    move-result v4

    int-to-short v4, v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/SmsUtils;->shortToByteArray(SLjava/nio/ByteOrder;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 511
    if-ne p0, v6, :cond_1

    .line 512
    const/16 v3, 0x8

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 516
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getCdmaAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 518
    const-string v3, "CdmaTransportMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEncodeCdmaOta() mSubaddr_nbr_of_digits : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mSubaddr_nbr_of_digits:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget v3, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mSubaddr_nbr_of_digits:I

    if-lez v3, :cond_0

    .line 520
    const-string v3, "CdmaTransportMessage"

    const-string v4, "getEncodeCdmaOta() Subaddress "

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    if-ne p0, v6, :cond_2

    .line 522
    const/16 v3, 0x8

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 526
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getCdmaSmsSubAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->encodeCdmaSmsSubAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 530
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getBearerData()[B

    move-result-object v3

    if-nez v3, :cond_3

    .line 531
    const-string v3, "CdmaTransportMessage"

    const-string v4, "getEncodeCdmaOta() BD ignored~!! BD is null!!"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 514
    :cond_1
    const/16 v3, 0x8

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/soi/CdmaTransportMessage$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 540
    .end local v2    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v1

    .line 541
    .local v1, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v3, "CdmaTransportMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEncodeCdmaOta encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v3, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v3}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v3

    .line 524
    .end local v1    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .restart local v2    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :cond_2
    const/16 v3, 0x8

    const/4 v4, 0x3

    :try_start_1
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/soi/CdmaTransportMessage$CodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 543
    .end local v2    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_1
    move-exception v1

    .line 544
    .local v1, "ex":Lcom/android/internal/telephony/soi/CdmaTransportMessage$CodingException;
    const-string v3, "CdmaTransportMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEncodeCdmaOta encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    new-instance v3, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v3}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v3

    .line 534
    .end local v1    # "ex":Lcom/android/internal/telephony/soi/CdmaTransportMessage$CodingException;
    .restart local v2    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getBearerDataLength()I

    move-result v3

    mul-int/lit8 v0, v3, 0x8

    .line 535
    .local v0, "bearerDataBits":I
    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 536
    const/16 v3, 0x8

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getBearerDataLength()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 537
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getBearerData()[B

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/soi/CdmaTransportMessage$CodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method private parseAddress(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 5
    .param p1, "msg"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    .param p2, "parameterId"    # I
    .param p3, "parameterData"    # [B
    .param p4, "parameterLen"    # I
    .param p5, "dis"    # Ljava/io/DataInputStream;
    .param p6, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 257
    const/4 v0, -0x1

    .line 258
    .local v0, "readLen":I
    iget v1, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v3, :cond_1

    .line 259
    invoke-virtual {p5, p3, v2, p4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 260
    const-string v1, "CdmaTransportMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discard param.Duplicate~~!! parameterId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", readLen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-ne v0, v4, :cond_0

    .line 262
    const-string v1, "CdmaTransportMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error occured~!!! parameterId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", readLen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget v1, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    .line 267
    if-ne p2, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mIsMo:Z

    .line 268
    invoke-virtual {p5, p3, v2, p4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 269
    if-ne v0, v4, :cond_3

    .line 270
    const-string v1, "CdmaTransportMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error occured~!!! parameterId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", readLen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 267
    goto :goto_1

    .line 273
    :cond_3
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->parseCdmaAddress(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    goto :goto_0
.end method

.method private parseBearerData(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 5
    .param p1, "msg"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    .param p2, "parameterId"    # I
    .param p3, "parameterData"    # [B
    .param p4, "parameterLen"    # I
    .param p5, "dis"    # Ljava/io/DataInputStream;
    .param p6, "env"    # Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 426
    const/4 v0, -0x1

    .line 427
    .local v0, "readLen":I
    iget v1, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_1

    .line 428
    invoke-virtual {p5, p3, v3, p4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 429
    const-string v1, "CdmaTransportMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discard BEARER_DATA param.Duplicate~~!! parameterId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", readLen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    if-ne v0, v4, :cond_0

    .line 431
    const-string v1, "CdmaTransportMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error occured~!!! BEARER_DATA parameterId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", readLen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget v1, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    .line 436
    invoke-virtual {p5, p3, v3, p4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 437
    if-ne v0, v4, :cond_2

    .line 438
    const-string v1, "CdmaTransportMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error occured~!!! BEARER_DATA parameterId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", readLen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_2
    iput-object p3, p6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 442
    iput p4, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mEncodedBearerDatalength:I

    goto :goto_0
.end method

.method private parseBearerReplyOption(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 6
    .param p1, "msg"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    .param p2, "parameterId"    # I
    .param p3, "parameterData"    # [B
    .param p4, "parameterLen"    # I
    .param p5, "dis"    # Ljava/io/DataInputStream;
    .param p6, "env"    # Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 382
    const/4 v0, -0x1

    .line 383
    .local v0, "readLen":I
    iget v2, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    .line 384
    invoke-virtual {p5, p3, v4, p4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 385
    const-string v2, "CdmaTransportMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discard BEARER_REPLY_OPTION param.Duplicate~~!! parameterId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", readLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    if-ne v0, v5, :cond_0

    .line 387
    const-string v2, "CdmaTransportMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error occured~!!! BEARER_REPLY_OPTION parameterId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", readLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget v2, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    .line 392
    invoke-virtual {p5, p3, v4, p4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 393
    if-ne v0, v5, :cond_2

    .line 394
    const-string v2, "CdmaTransportMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error occured~!!! BEARER_REPLY_OPTION parameterId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", readLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_2
    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v1, p3}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 398
    .local v1, "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    goto :goto_0
.end method

.method private parseCauseCodes(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 6
    .param p1, "msg"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    .param p2, "parameterId"    # I
    .param p3, "parameterData"    # [B
    .param p4, "parameterLen"    # I
    .param p5, "dis"    # Ljava/io/DataInputStream;
    .param p6, "env"    # Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 402
    const/4 v1, -0x1

    .line 403
    .local v1, "readLen":I
    iget v2, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1

    .line 404
    invoke-virtual {p5, p3, v4, p4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    .line 405
    const-string v2, "CdmaTransportMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discard CAUSE_CODES param.Duplicate~~!! parameterId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", readLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    if-ne v1, v5, :cond_0

    .line 407
    const-string v2, "CdmaTransportMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error occured~!!! CAUSE_CODES parameterId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", readLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget v2, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    .line 412
    invoke-virtual {p5, p3, v4, p4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    .line 413
    if-ne v1, v5, :cond_2

    .line 414
    const-string v2, "CdmaTransportMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error occured~!!! CAUSE_CODES parameterId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", readLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_2
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v0, p3}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 418
    .local v0, "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    aget-byte v2, v2, v4

    iput-byte v2, p6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 419
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    aget-byte v2, v2, v4

    iput-byte v2, p6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 420
    iget-byte v2, p6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    if-eqz v2, :cond_0

    .line 421
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    aget-byte v2, v2, v4

    iput-byte v2, p6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    goto :goto_0
.end method

.method private parseCdmaAddress(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 9
    .param p1, "msg"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    .param p2, "parameterId"    # I
    .param p3, "parameterData"    # [B
    .param p4, "parameterLen"    # I
    .param p5, "dis"    # Ljava/io/DataInputStream;
    .param p6, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v5, 0x0

    .line 278
    .local v5, "sizeChari":I
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v0, p3}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 279
    .local v0, "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    iput v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 280
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    iput v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 281
    const-string v6, "CdmaTransportMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parameterId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " digitMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " numberMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v4, 0x0

    .line 284
    .local v4, "numberType":I
    iget v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 285
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 286
    iput v4, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 288
    iget v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v6, :cond_0

    .line 289
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    iput v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 293
    :cond_0
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    iput v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 294
    iget v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v2, v6, [B

    .line 295
    .local v2, "data":[B
    const/4 v1, 0x0

    .line 297
    .local v1, "b":B
    iget v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v6, :cond_1

    .line 298
    const/4 v5, 0x4

    .line 300
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v3, v6, :cond_3

    .line 301
    invoke-virtual {v0, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    int-to-byte v1, v6

    .line 304
    aput-byte v1, v2, v3

    .line 300
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    .end local v3    # "index":I
    :cond_1
    iget v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 307
    const/16 v5, 0x8

    .line 308
    iget v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v6, :cond_4

    .line 309
    const/4 v3, 0x0

    .restart local v3    # "index":I
    :goto_1
    iget v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v3, v6, :cond_2

    .line 310
    invoke-virtual {v0, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v1, v6

    .line 311
    aput-byte v1, v2, v3

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 313
    :cond_2
    const-string v6, "CdmaTransportMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NUMBER_MODE_NOT_DATA_NETWORK: address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v3    # "index":I
    :cond_3
    :goto_2
    iput-object v2, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 337
    const-string v6, "CdmaTransportMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Originating Addr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p6}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void

    .line 314
    :cond_4
    iget v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 317
    const-string v6, "CdmaTransportMessage"

    const-string v7, "parseCdmaRawPdu(), addr.numberMode= NUMBER_MODE_DATA_NETWORK"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 320
    const-string v6, "CdmaTransportMessage"

    const-string v7, "parseCdmaRawPdu(), addr.ton: Originating Addr is email id"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v3, 0x0

    .restart local v3    # "index":I
    :goto_3
    iget v6, p6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v3, v6, :cond_3

    .line 322
    invoke-virtual {v0, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v1, v6

    .line 323
    aput-byte v1, v2, v3

    .line 324
    const-string v6, "CdmaTransportMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseCdmaRawPdu(), index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " b = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "data["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 328
    .end local v3    # "index":I
    :cond_5
    const-string v6, "CdmaTransportMessage"

    const-string v7, "TODO: Originating Addr is data network address"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 331
    :cond_6
    const-string v6, "CdmaTransportMessage"

    const-string v7, "Originating Addr is of incorrect type"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 334
    :cond_7
    const-string v6, "CdmaTransportMessage"

    const-string v7, "Incorrect Digit mode"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private parseCdmaRawPdu([BLcom/android/internal/telephony/soi/CdmaTransportMessage;)V
    .locals 11
    .param p1, "pdu"    # [B
    .param p2, "msg"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;

    .prologue
    const/4 v10, 0x0

    .line 133
    const-string v0, "CdmaTransportMessage"

    const-string v1, "parseCdmaRawPdu"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 135
    :cond_0
    const-string v0, "CdmaTransportMessage"

    const-string v1, "parseCdmaRawPdu pdu null || msg null ~!!! throw SoiException"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v0

    .line 138
    :cond_1
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCdmaRawPdu: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 140
    .local v6, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    .local v2, "dis":Ljava/io/DataInputStream;
    iget-object v3, p2, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mEnv:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 142
    .local v3, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v4, p2, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 143
    .local v4, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iget-object v5, p2, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaSmsSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 146
    .local v5, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 147
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_4

    move-object v0, p0

    move-object v1, p2

    .line 148
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->parseParameterId(Lcom/android/internal/telephony/soi/CdmaTransportMessage;Ljava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v7

    .line 151
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCdmaRawPdu: conversion from pdu to CdmaTransportMessage failed"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 156
    if-eqz v6, :cond_2

    .line 157
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V

    .line 159
    :cond_2
    if-eqz v2, :cond_3

    .line 160
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 164
    :cond_3
    :goto_1
    throw v0

    .line 156
    :cond_4
    if-eqz v6, :cond_5

    .line 157
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V

    .line 159
    :cond_5
    if-eqz v2, :cond_6

    .line 160
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 169
    :cond_6
    :goto_2
    iget-boolean v0, p2, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mIsMo:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 170
    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 171
    iput-object v10, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 172
    iput-object v5, p2, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mDestSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 173
    iput-object v10, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 181
    :goto_3
    return-void

    .line 162
    :catch_1
    move-exception v8

    .line 163
    .local v8, "ignored":Ljava/io/IOException;
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCdmaRawPdu: bais.close || dis.close failed"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 162
    .end local v8    # "ignored":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 163
    .restart local v8    # "ignored":Ljava/io/IOException;
    const-string v1, "CdmaTransportMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseCdmaRawPdu: bais.close || dis.close failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 175
    .end local v8    # "ignored":Ljava/io/IOException;
    :cond_7
    iput-object v10, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 176
    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 177
    iput-object v10, p2, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mDestSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 178
    iput-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    goto :goto_3
.end method

.method private parseCdmaSubAddress(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;)V
    .locals 14
    .param p1, "msg"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    .param p2, "parameterId"    # I
    .param p3, "parameterData"    # [B
    .param p4, "parameterLen"    # I
    .param p5, "dis"    # Ljava/io/DataInputStream;
    .param p6, "subAddr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v5, -0x1

    .line 343
    .local v5, "readLen":I
    iget v11, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    and-int/lit8 v11, v11, 0x8

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    .line 344
    const/4 v11, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v11, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    .line 345
    const-string v11, "CdmaTransportMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Discard param.Duplicate~~!! parameterId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", readLen: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v11, -0x1

    if-ne v5, v11, :cond_0

    .line 347
    const-string v11, "CdmaTransportMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error occured~!!! parameterId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", readLen: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget v11, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    and-int/lit8 v11, v11, 0x4

    const/4 v12, 0x4

    if-eq v11, v12, :cond_2

    .line 352
    const/4 v11, 0x5

    move/from16 v0, p2

    if-ne v0, v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mIsMo:Z

    .line 354
    :cond_2
    const/4 v6, 0x4

    .line 355
    .local v6, "sizeBCDChari":I
    iget v11, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    or-int/lit8 v11, v11, 0x8

    iput v11, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    .line 357
    const/4 v11, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v11, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    .line 358
    const/4 v11, -0x1

    if-ne v5, v11, :cond_4

    .line 359
    const-string v11, "CdmaTransportMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error occured~!!! parameterId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", readLen: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    .end local v6    # "sizeBCDChari":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 362
    .restart local v6    # "sizeBCDChari":I
    :cond_4
    new-instance v7, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 363
    .local v7, "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/4 v11, 0x3

    invoke-virtual {v7, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    move-object/from16 v0, p6

    iput v11, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 364
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    move-object/from16 v0, p6

    iput-byte v11, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 365
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    .line 366
    .local v9, "subAddrNumField":I
    mul-int/lit8 v8, v9, 0x2

    .line 367
    .local v8, "subAddrLen":I
    move-object/from16 v0, p6

    iget-byte v11, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 368
    add-int/lit8 v8, v8, -0x1

    .line 370
    :cond_5
    new-array v10, v8, [B

    .line 371
    .local v10, "subdata":[B
    const/4 v3, 0x0

    .line 372
    .local v3, "b":B
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_2
    if-ge v4, v8, :cond_6

    .line 373
    invoke-virtual {v7, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    and-int/lit8 v11, v11, 0xf

    int-to-byte v3, v11

    .line 375
    aput-byte v3, v10, v4

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 377
    :cond_6
    move-object/from16 v0, p6

    iput-object v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 378
    iput v8, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mSubaddr_nbr_of_digits:I

    goto/16 :goto_0
.end method

.method private parseDummyData(I[BILjava/io/DataInputStream;)V
    .locals 4
    .param p1, "parameterId"    # I
    .param p2, "parameterData"    # [B
    .param p3, "parameterLen"    # I
    .param p4, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, -0x1

    .line 447
    .local v0, "readLen":I
    const/4 v1, 0x0

    invoke-virtual {p4, p2, v1, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 448
    const-string v1, "CdmaTransportMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discard unknown param!!! parameterId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", readLen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 450
    const-string v1, "CdmaTransportMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error occured~!!! unknown parameterId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", readLen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method private parseParameterId(Lcom/android/internal/telephony/soi/CdmaTransportMessage;Ljava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;)V
    .locals 10
    .param p1, "msg"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    .param p2, "dis"    # Ljava/io/DataInputStream;
    .param p3, "env"    # Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .param p4, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .param p5, "subAddr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 187
    .local v2, "parameterId":I
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 188
    .local v8, "paramLen":B
    shr-int/lit8 v0, v8, 0x4

    and-int/lit8 v7, v0, 0xf

    .line 189
    .local v7, "firstNumber":I
    and-int/lit8 v9, v8, 0xf

    .line 190
    .local v9, "secondNumber":I
    mul-int/lit8 v0, v7, 0x10

    add-int v4, v0, v9

    .line 192
    .local v4, "parameterLen":I
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseCdmaRawPdu(), parameterId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "parameterLen = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-array v3, v4, [B

    .line 196
    .local v3, "parameterData":[B
    packed-switch v2, :pswitch_data_0

    .line 221
    invoke-direct {p0, v2, v3, v4, p2}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->parseDummyData(I[BILjava/io/DataInputStream;)V

    .line 224
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 198
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->parseTeleserviceId(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 201
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->parseServiceCategory(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p4

    .line 205
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->parseAddress(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p5

    .line 209
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->parseCdmaSubAddress(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;)V

    goto :goto_0

    :pswitch_4
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 212
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->parseBearerReplyOption(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    goto :goto_0

    :pswitch_5
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 215
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->parseCauseCodes(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    goto :goto_0

    :pswitch_6
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 218
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->parseBearerData(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private parseServiceCategory(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 3
    .param p1, "msg"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    .param p2, "parameterId"    # I
    .param p3, "parameterData"    # [B
    .param p4, "parameterLen"    # I
    .param p5, "dis"    # Ljava/io/DataInputStream;
    .param p6, "env"    # Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget v0, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 244
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discard param.Duplicate~~!! parameterId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    .line 253
    invoke-virtual {p5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    goto :goto_0
.end method

.method private parseTeleserviceId(Lcom/android/internal/telephony/soi/CdmaTransportMessage;I[BILjava/io/DataInputStream;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 3
    .param p1, "msg"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    .param p2, "parameterId"    # I
    .param p3, "parameterData"    # [B
    .param p4, "parameterLen"    # I
    .param p5, "dis"    # Ljava/io/DataInputStream;
    .param p6, "env"    # Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    iget v0, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 228
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discard param.Duplicate~~!! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    .line 238
    invoke-virtual {p5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 239
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "teleservice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getBearerData()[B
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-nez v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 74
    :cond_1
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBearerData() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    goto :goto_0
.end method

.method public getBearerDataLength()I
    .locals 3

    .prologue
    .line 66
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBearerDataLength() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mEncodedBearerDatalength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mEncodedBearerDatalength:I

    return v0
.end method

.method public getCdmaAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    return-object v0
.end method

.method public getCdmaSmsSubAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .locals 3

    .prologue
    .line 100
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCdmaSmsSubAddress() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaSmsSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mCdmaSmsSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    return-object v0
.end method

.method public getDestAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    return-object v0
.end method

.method public getDestSubaddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mDestSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    return-object v0
.end method

.method public getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mEnv:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    return-object v0
.end method

.method public getOrigSubaddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    return-object v0
.end method

.method public getOriginAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    return-object v0
.end method

.method public getPduLen()I
    .locals 3

    .prologue
    .line 105
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPduLen() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mPduLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mPduLen:I

    return v0
.end method

.method public getServiceCategory()I
    .locals 3

    .prologue
    .line 61
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceCategory() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method public getServicePresent()I
    .locals 3

    .prologue
    .line 56
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServicePresent() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mServicePresent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mServicePresent:I

    return v0
.end method

.method public getTeleserviceId()I
    .locals 3

    .prologue
    .line 51
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTeleserviceId() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getEnv()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public getTransportMask()I
    .locals 3

    .prologue
    .line 110
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTransportMask() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mTransportMask:I

    return v0
.end method

.method public isMo()Z
    .locals 3

    .prologue
    .line 115
    const-string v0, "CdmaTransportMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMo() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mIsMo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->mIsMo:Z

    return v0
.end method
