.class public Lcom/android/internal/telephony/soi/ImsPdu;
.super Ljava/lang/Object;
.source "ImsPdu.java"


# static fields
.field public static final MAX_ADDRESS_LEN:I = 0x30

.field public static final MAX_MSG_LEN:I = 0xff

.field private static final TAG:Ljava/lang/String; = "ImsPdu"


# instance fields
.field private address:Ljava/lang/String;

.field private data:[B

.field private smsFormat:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0xff

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/soi/ImsPdu;->data:[B

    .line 20
    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .locals 1
    .param p1, "smsFormat"    # I
    .param p2, "data"    # [B
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0xff

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/soi/ImsPdu;->data:[B

    .line 24
    iput p1, p0, Lcom/android/internal/telephony/soi/ImsPdu;->smsFormat:I

    .line 25
    iput-object p2, p0, Lcom/android/internal/telephony/soi/ImsPdu;->data:[B

    .line 26
    iput-object p3, p0, Lcom/android/internal/telephony/soi/ImsPdu;->address:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/soi/ImsPdu;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/soi/ImsPdu;->data:[B

    return-object v0
.end method

.method public getDataRpMti()B
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/soi/ImsPdu;->data:[B

    if-nez v0, :cond_0

    .line 55
    const-string v0, "ImsPdu"

    const-string v1, "getDataRpMti() error!!! data null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/16 v0, 0x38

    .line 58
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/soi/ImsPdu;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public getSmsFormat()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/internal/telephony/soi/ImsPdu;->smsFormat:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/soi/ImsPdu;->address:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/soi/ImsPdu;->data:[B

    .line 43
    return-void
.end method

.method public setSmsFormat(I)V
    .locals 0
    .param p1, "smsFormat"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/android/internal/telephony/soi/ImsPdu;->smsFormat:I

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/soi/ImsPdu;->smsFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/soi/ImsPdu;->data:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/soi/ImsPdu;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
