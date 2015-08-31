.class Lcom/lge/wapservice/prov/security/OmaSigner$NetwPinOmaSigner;
.super Lcom/lge/wapservice/prov/security/OmaSigner;
.source "OmaSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wapservice/prov/security/OmaSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetwPinOmaSigner"
.end annotation


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "document"    # [B
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/wapservice/prov/security/OmaSigner;-><init>([BLjava/lang/String;Lcom/lge/wapservice/prov/security/OmaSigner$1;)V

    .line 142
    return-void
.end method


# virtual methods
.method getSigningPin(Ljava/lang/String;)[B
    .locals 1
    .param p1, "userSuppliedPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lge/wapservice/prov/security/OmaSigner$NetwPinOmaSigner;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/wapservice/prov/security/OmaSigner$NetwPinOmaSigner;->nibbleSwapAndAddParityToImsi(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
