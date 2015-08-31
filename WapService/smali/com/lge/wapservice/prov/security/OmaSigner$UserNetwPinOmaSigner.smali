.class Lcom/lge/wapservice/prov/security/OmaSigner$UserNetwPinOmaSigner;
.super Lcom/lge/wapservice/prov/security/OmaSigner;
.source "OmaSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wapservice/prov/security/OmaSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserNetwPinOmaSigner"
.end annotation


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "document"    # [B
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/wapservice/prov/security/OmaSigner;-><init>([BLjava/lang/String;Lcom/lge/wapservice/prov/security/OmaSigner$1;)V

    .line 159
    return-void
.end method


# virtual methods
.method getSigningPin(Ljava/lang/String;)[B
    .locals 2
    .param p1, "userSuppliedPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    .local v0, "pin":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/lge/wapservice/prov/security/OmaSigner$UserNetwPinOmaSigner;->mImsi:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/wapservice/prov/security/OmaSigner$UserNetwPinOmaSigner;->nibbleSwapAndAddParityToImsi(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 170
    const-string v1, "US-ASCII"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 171
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
