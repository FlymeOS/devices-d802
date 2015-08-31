.class Lcom/lge/wapservice/prov/security/OmaSigner$UserPinMacOmaSigner;
.super Lcom/lge/wapservice/prov/security/OmaSigner;
.source "OmaSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wapservice/prov/security/OmaSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserPinMacOmaSigner"
.end annotation


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "document"    # [B
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/wapservice/prov/security/OmaSigner;-><init>([BLjava/lang/String;Lcom/lge/wapservice/prov/security/OmaSigner$1;)V

    .line 179
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
    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDocumentValid(Ljava/lang/String;[B)Z
    .locals 10
    .param p1, "userSuppliedPin"    # Ljava/lang/String;
    .param p2, "mac"    # [B

    .prologue
    const/4 v7, 0x0

    .line 195
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    .line 196
    .local v6, "sectionLength":I
    const/4 v8, 0x5

    if-ge v6, v8, :cond_0

    .line 209
    .end local v6    # "sectionLength":I
    :goto_0
    return v7

    .line 199
    .restart local v6    # "sectionLength":I
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "randomSection":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "macDerivedSection":Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/wapservice/prov/security/OmaSigner$UserPinMacOmaSigner;->mDocument:[B

    const-string v9, "US-ASCII"

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/lge/wapservice/prov/security/OmaSigner$UserPinMacOmaSigner;->sign([B[B)[B

    move-result-object v0

    .line 203
    .local v0, "digest":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v4, "ourDerivedSection":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 205
    aget-byte v8, v0, v2

    and-int/lit16 v8, v8, 0xff

    rem-int/lit8 v8, v8, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 208
    .end local v0    # "digest":[B
    .end local v2    # "i":I
    .end local v3    # "macDerivedSection":Ljava/lang/String;
    .end local v4    # "ourDerivedSection":Ljava/lang/StringBuffer;
    .end local v5    # "randomSection":Ljava/lang/String;
    .end local v6    # "sectionLength":I
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
