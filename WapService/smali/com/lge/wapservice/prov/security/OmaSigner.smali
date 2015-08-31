.class public abstract Lcom/lge/wapservice/prov/security/OmaSigner;
.super Ljava/lang/Object;
.source "OmaSigner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wapservice/prov/security/OmaSigner$1;,
        Lcom/lge/wapservice/prov/security/OmaSigner$UserPinMacOmaSigner;,
        Lcom/lge/wapservice/prov/security/OmaSigner$UserNetwPinOmaSigner;,
        Lcom/lge/wapservice/prov/security/OmaSigner$NetwPinOmaSigner;,
        Lcom/lge/wapservice/prov/security/OmaSigner$UserPinOmaSigner;
    }
.end annotation


# instance fields
.field mDocument:[B

.field mImsi:Ljava/lang/String;


# direct methods
.method private constructor <init>([BLjava/lang/String;)V
    .locals 0
    .param p1, "document"    # [B
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/lge/wapservice/prov/security/OmaSigner;->mDocument:[B

    .line 51
    iput-object p2, p0, Lcom/lge/wapservice/prov/security/OmaSigner;->mImsi:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>([BLjava/lang/String;Lcom/lge/wapservice/prov/security/OmaSigner$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/lge/wapservice/prov/security/OmaSigner$1;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/lge/wapservice/prov/security/OmaSigner;-><init>([BLjava/lang/String;)V

    return-void
.end method

.method static hexAsciiToByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 111
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bad HEXASCII - odd number of digits"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 115
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 114
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method static nibbleSwapAndAddParityToImsi(Ljava/lang/String;)[B
    .locals 5
    .param p0, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "9"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/wapservice/prov/security/OmaSigner;->hexAsciiToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 98
    .local v0, "bytes":[B
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 99
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v2, v3, 0x4

    .line 100
    .local v2, "upper":I
    aget-byte v3, v0, v1

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 101
    aget-byte v3, v0, v1

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    .end local v2    # "upper":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "F"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/wapservice/prov/security/OmaSigner;->hexAsciiToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 104
    .restart local v0    # "bytes":[B
    .restart local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static signerFor(I[BLjava/lang/String;)Lcom/lge/wapservice/prov/security/OmaSigner;
    .locals 3
    .param p0, "securityType"    # I
    .param p1, "document"    # [B
    .param p2, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMSI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    packed-switch p0, :pswitch_data_0

    .line 89
    new-instance v0, Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not recognise security mechanism "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    new-instance v0, Lcom/lge/wapservice/prov/security/OmaSigner$NetwPinOmaSigner;

    invoke-direct {v0, p1, p2}, Lcom/lge/wapservice/prov/security/OmaSigner$NetwPinOmaSigner;-><init>([BLjava/lang/String;)V

    .line 87
    :goto_0
    return-object v0

    .line 83
    :pswitch_1
    new-instance v0, Lcom/lge/wapservice/prov/security/OmaSigner$UserPinOmaSigner;

    invoke-direct {v0, p1, p2}, Lcom/lge/wapservice/prov/security/OmaSigner$UserPinOmaSigner;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_2
    new-instance v0, Lcom/lge/wapservice/prov/security/OmaSigner$UserNetwPinOmaSigner;

    invoke-direct {v0, p1, p2}, Lcom/lge/wapservice/prov/security/OmaSigner$UserNetwPinOmaSigner;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_3
    new-instance v0, Lcom/lge/wapservice/prov/security/OmaSigner$UserPinMacOmaSigner;

    invoke-direct {v0, p1, p2}, Lcom/lge/wapservice/prov/security/OmaSigner$UserPinMacOmaSigner;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method abstract getSigningPin(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isDocumentValid(Ljava/lang/String;[B)Z
    .locals 3
    .param p1, "userSuppliedPin"    # Ljava/lang/String;
    .param p2, "mac"    # [B

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lge/wapservice/prov/security/OmaSigner;->getSigningPin(Ljava/lang/String;)[B

    move-result-object v1

    .line 58
    .local v1, "pin":[B
    iget-object v2, p0, Lcom/lge/wapservice/prov/security/OmaSigner;->mDocument:[B

    invoke-virtual {p0, v2, v1}, Lcom/lge/wapservice/prov/security/OmaSigner;->sign([B[B)[B

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 60
    .end local v1    # "pin":[B
    :goto_0
    return v2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sign([B[B)[B
    .locals 5
    .param p1, "document"    # [B
    .param p2, "pin"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 68
    const-string v2, "HmacSHA1"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 69
    .local v0, "hmacSha1":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p2, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 70
    .local v1, "key":Ljava/security/Key;
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 71
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method
