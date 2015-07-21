.class public Lcom/vzw/location/server/VzwCodeSignChecker;
.super Ljava/lang/Object;
.source "VzwCodeSignChecker.java"


# static fields
.field private static final BKSFilePath:Ljava/lang/String; = "/system/etc/security/vzwagpscert.bks"

.field private static final TAG:Ljava/lang/String; = "VzwCodeSignChecker"

.field private static final expiryLimitDate:J = 0x337f9800L

.field private static final originalAlias:Ljava/lang/String; = "vzwagpscertori"

.field private static final secondAlias:Ljava/lang/String; = "vzwagpscertsecond"


# instance fields
.field private DEBUG:Z

.field private mInitialzed:Z

.field stream:Ljava/io/FileInputStream;

.field private vzwCertOriginal:Ljava/security/cert/Certificate;

.field private vzwCertSecond:Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    .line 47
    iput-boolean v0, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->mInitialzed:Z

    .line 53
    iput-object v1, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->vzwCertOriginal:Ljava/security/cert/Certificate;

    .line 54
    iput-object v1, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->vzwCertSecond:Ljava/security/cert/Certificate;

    .line 55
    iput-object v1, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->stream:Ljava/io/FileInputStream;

    .line 58
    iput-boolean v0, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->mInitialzed:Z

    .line 59
    invoke-direct {p0}, Lcom/vzw/location/server/VzwCodeSignChecker;->init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->mInitialzed:Z

    .line 60
    return-void
.end method

.method private checkSelfExpiryDateValidity(Ljava/security/cert/Certificate;)Z
    .locals 12
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v6, 0x0

    .line 171
    move-object v1, p1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 173
    .local v1, "mAppX509":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_0

    .line 174
    const-string v7, "VzwCodeSignChecker"

    const-string v8, "[checkSelfExpiryDateValidity] Object null."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return v6

    .line 179
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 181
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 182
    .local v2, "mNotAfter":J
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 183
    .local v4, "mNotBefore":J
    iget-boolean v7, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 184
    const-string v7, "VzwCodeSignChecker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkSelfExpiryDateValidity] Certificate is valid from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    sub-long v8, v2, v4

    const-wide/32 v10, 0x337f9800

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 188
    const-string v7, "VzwCodeSignChecker"

    const-string v8, "[checkSelfExpiryDateValidity] Valid expiry date."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v6, 0x1

    goto :goto_0

    .line 191
    :cond_2
    const-string v7, "VzwCodeSignChecker"

    const-string v8, "[checkSelfExpiryDateValidity] Invalid expiry date."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 195
    .end local v2    # "mNotAfter":J
    .end local v4    # "mNotBefore":J
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    const-string v7, "VzwCodeSignChecker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkSelfExpiryDateValidity] CertificateExpiredException ouccured. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/security/cert/CertificateNotYetValidException;
    const-string v7, "VzwCodeSignChecker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkSelfExpiryDateValidity] CertificateNotYetValidException ouccured. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkSignatureValidity(Ljava/security/cert/Certificate;Ljava/security/cert/Certificate;)Z
    .locals 5
    .param p1, "cert1"    # Ljava/security/cert/Certificate;
    .param p2, "cert2"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v1, 0x0

    .line 206
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 210
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    .line 211
    const-string v2, "VzwCodeSignChecker"

    const-string v3, "[checkSignatureValidity] Application public key is matched."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_4

    .line 212
    const/4 v1, 0x1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v2, "VzwCodeSignChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkSignatureValidity] InvalidKeyException ouccured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v2, "VzwCodeSignChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkSignatureValidity] CertificateException ouccured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v0

    .line 220
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "VzwCodeSignChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkSignatureValidity] NoSuchAlgorithmException ouccured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v0

    .line 223
    .local v0, "e":Ljava/security/NoSuchProviderException;
    const-string v2, "VzwCodeSignChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkSignatureValidity] NoSuchProviderException ouccured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 225
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_4
    move-exception v0

    .line 226
    .local v0, "e":Ljava/security/SignatureException;
    const-string v2, "VzwCodeSignChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkSignatureValidity] SignatureException ouccured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private init()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "VzwCodeSignChecker"

    const-string v6, "[init] start."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    :try_start_0
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "VzwCodeSignChecker"

    const-string v6, "[init] Load stream."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/system/etc/security/vzwagpscert.bks"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->stream:Ljava/io/FileInputStream;

    .line 67
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "VzwCodeSignChecker"

    const-string v6, "[init] Load stream DONE."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_2
    const-string/jumbo v5, "vzwgps"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 74
    .local v3, "passphrase":[C
    :try_start_1
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "VzwCodeSignChecker"

    const-string v6, "[init] KeyStore.getInstance."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_3
    const-string v5, "BKS"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 77
    .local v2, "keystore":Ljava/security/KeyStore;
    :try_start_2
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "VzwCodeSignChecker"

    const-string v6, "[init] keystore.load."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_4
    iget-object v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v2, v5, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 79
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "VzwCodeSignChecker"

    const-string v6, "[init] keystore.load DONE."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_5
    const-string/jumbo v5, "vzwagpscertori"

    invoke-virtual {v2, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    iput-object v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->vzwCertOriginal:Ljava/security/cert/Certificate;

    .line 81
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "VzwCodeSignChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[init] keystore.getCertificate(originalAlias): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->vzwCertOriginal:Ljava/security/cert/Certificate;

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_6
    const-string/jumbo v5, "vzwagpscertsecond"

    invoke-virtual {v2, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    iput-object v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->vzwCertSecond:Ljava/security/cert/Certificate;

    .line 83
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "VzwCodeSignChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[init] keystore.getCertificate(secondAlias: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->vzwCertSecond:Ljava/security/cert/Certificate;

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_7
    iget-object v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2

    .line 100
    iget-object v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->vzwCertOriginal:Ljava/security/cert/Certificate;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->vzwCertSecond:Ljava/security/cert/Certificate;

    if-eqz v5, :cond_a

    .line 101
    iget-boolean v4, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "VzwCodeSignChecker"

    const-string v5, "[init] end."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_8
    const/4 v4, 0x1

    .line 106
    .end local v2    # "keystore":Ljava/security/KeyStore;
    .end local v3    # "passphrase":[C
    :cond_9
    :goto_0
    return v4

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e1":Ljava/io/FileNotFoundException;
    const-string v5, "VzwCodeSignChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[init] FileNotFoundException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    .restart local v2    # "keystore":Ljava/security/KeyStore;
    .restart local v3    # "passphrase":[C
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_3
    const-string v5, "VzwCodeSignChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[init] NoSuchAlgorithmException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "keystore":Ljava/security/KeyStore;
    :catch_2
    move-exception v0

    .line 96
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v5, "VzwCodeSignChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[init] KeyStoreException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .restart local v2    # "keystore":Ljava/security/KeyStore;
    :catch_3
    move-exception v0

    .line 89
    .local v0, "e":Ljava/security/cert/CertificateException;
    :try_start_4
    const-string v5, "VzwCodeSignChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[init] CertificateException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "VzwCodeSignChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[init] IOException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "VzwCodeSignChecker"

    const-string v6, "[init] Init Failed. Invalid Certification created."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public isAppSignedWithValid(Landroid/content/pm/PackageManager;I)Z
    .locals 15
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "uid"    # I

    .prologue
    .line 112
    iget-boolean v12, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v12, :cond_0

    .line 113
    const-string v12, "VzwCodeSignChecker"

    const-string v13, "[isAppSignedWithValid] start."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v12, "VzwCodeSignChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[isAppSignedWithValid] PackageManager: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v12, "VzwCodeSignChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[isAppSignedWithValid] uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-boolean v12, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->mInitialzed:Z

    if-nez v12, :cond_1

    .line 118
    const-string v12, "VzwCodeSignChecker"

    const-string v13, "[isAppSignedWithValid] Init failed."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v12, 0x0

    .line 166
    :goto_0
    return v12

    .line 121
    :cond_1
    move-object/from16 v10, p1

    .line 122
    .local v10, "mPm":Landroid/content/pm/PackageManager;
    move/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, "mPackageName":[Ljava/lang/String;
    iget-boolean v12, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v12, :cond_2

    const-string v12, "VzwCodeSignChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[isAppSignedWithValid] mPackageName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    const/4 v8, 0x0

    .line 125
    .local v8, "mPackageInfo":Landroid/content/pm/PackageInfo;
    const/16 v5, 0x40

    .line 128
    .local v5, "flags":I
    const/4 v12, 0x0

    :try_start_0
    aget-object v12, v9, v12

    invoke-virtual {v10, v12, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 129
    iget-boolean v12, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "VzwCodeSignChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[isAppSignedWithValid] mPm.getPackageInfo: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/content/pm/PackageInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_3
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 135
    .local v11, "signatures":[Landroid/content/pm/Signature;
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 136
    .local v1, "cert":[B
    iget-boolean v12, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v12, :cond_4

    const-string v12, "VzwCodeSignChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[isAppSignedWithValid] cert: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_4
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 139
    .local v6, "input":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 141
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string v12, "X.509"

    invoke-static {v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 142
    invoke-virtual {v2, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    .line 144
    .local v7, "mAppCertificate":Ljava/security/cert/Certificate;
    iget-object v12, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->vzwCertOriginal:Ljava/security/cert/Certificate;

    invoke-direct {p0, v12, v7}, Lcom/vzw/location/server/VzwCodeSignChecker;->checkSignatureValidity(Ljava/security/cert/Certificate;Ljava/security/cert/Certificate;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 145
    iget-boolean v12, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "VzwCodeSignChecker"

    const-string v13, "App signature validated with vzw original cert."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :cond_5
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 130
    .end local v1    # "cert":[B
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "mAppCertificate":Ljava/security/cert/Certificate;
    .end local v11    # "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v4

    .line 131
    .local v4, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "VzwCodeSignChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[isAppSignedWithValid] NameNotFoundException occured. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 149
    .end local v4    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "cert":[B
    .restart local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v7    # "mAppCertificate":Ljava/security/cert/Certificate;
    .restart local v11    # "signatures":[Landroid/content/pm/Signature;
    :cond_6
    :try_start_2
    iget-object v12, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->vzwCertSecond:Ljava/security/cert/Certificate;

    invoke-direct {p0, v12, v7}, Lcom/vzw/location/server/VzwCodeSignChecker;->checkSignatureValidity(Ljava/security/cert/Certificate;Ljava/security/cert/Certificate;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 150
    iget-boolean v12, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v12, :cond_7

    const-string v12, "VzwCodeSignChecker"

    const-string v13, "App signature validated with vzw secondary cert."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_7
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 154
    :cond_8
    invoke-direct {p0, v7}, Lcom/vzw/location/server/VzwCodeSignChecker;->checkSelfExpiryDateValidity(Ljava/security/cert/Certificate;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 155
    iget-boolean v12, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v12, :cond_9

    const-string v12, "VzwCodeSignChecker"

    const-string v13, "App signature self validated with temp expiry date."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    :cond_9
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 159
    .end local v7    # "mAppCertificate":Ljava/security/cert/Certificate;
    :catch_1
    move-exception v3

    .line 160
    .local v3, "e":Ljava/security/cert/CertificateException;
    const-string v12, "VzwCodeSignChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[isAppSignedWithValid] CertificateException ouccured. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 165
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    .restart local v7    # "mAppCertificate":Ljava/security/cert/Certificate;
    :cond_a
    iget-boolean v12, p0, Lcom/vzw/location/server/VzwCodeSignChecker;->DEBUG:Z

    if-eqz v12, :cond_b

    const-string v12, "VzwCodeSignChecker"

    const-string v13, "No exception, but validation failed."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_0
.end method
