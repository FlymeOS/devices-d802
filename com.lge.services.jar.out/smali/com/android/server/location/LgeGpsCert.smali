.class public Lcom/android/server/location/LgeGpsCert;
.super Ljava/lang/Object;
.source "LgeGpsCert.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LgeGpsCert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I
    .locals 4
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 139
    .local v0, "digest":[B
    const/4 v2, 0x0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v3}, Lcom/android/server/location/LgeGpsCert;->peekInt([BILjava/nio/ByteOrder;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 140
    .end local v0    # "digest":[B
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 102
    const-string v1, "MD5"

    invoke-static {p1, v1}, Lcom/android/server/location/LgeGpsCert;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "hash":I
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/android/server/location/LgeGpsCert;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static intToHexString(IZI)Ljava/lang/String;
    .locals 8
    .param p0, "i"    # I
    .param p1, "upperCase"    # Z
    .param p2, "minWidth"    # I

    .prologue
    const/16 v6, 0x24

    .line 107
    const/16 v3, 0x8

    .line 108
    .local v3, "bufLen":I
    new-array v2, v3, [C

    .line 109
    .local v2, "buf":[C
    move v4, v3

    .line 114
    .local v4, "cursor":I
    new-array v0, v6, [C

    fill-array-data v0, :array_0

    .line 121
    .local v0, "DIGITS":[C
    new-array v1, v6, [C

    fill-array-data v1, :array_1

    .line 128
    .local v1, "UPPER_CASE_DIGITS":[C
    if-eqz p1, :cond_1

    move-object v5, v1

    .line 130
    .local v5, "digits":[C
    :cond_0
    :goto_0
    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v6, p0, 0xf

    aget-char v6, v5, v6

    aput-char v6, v2, v4

    .line 131
    ushr-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    sub-int v6, v3, v4

    if-lt v6, p2, :cond_0

    .line 133
    new-instance v6, Ljava/lang/String;

    sub-int v7, v3, v4

    invoke-direct {v6, v2, v4, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    .end local v5    # "digits":[C
    :cond_1
    move-object v5, v0

    .line 128
    goto :goto_0

    .line 114
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 121
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method private static peekInt([BILjava/nio/ByteOrder;)I
    .locals 3
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 146
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v1, :cond_0

    .line 147
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    move p1, v0

    .line 152
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    move p1, v0

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method private readCert(Ljava/lang/String;)[B
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v3, 0x0

    .line 161
    .local v3, "certData":[B
    const/4 v0, 0x0

    .line 165
    .local v0, "caInput":Ljava/io/InputStream;
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 166
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v0    # "caInput":Ljava/io/InputStream;
    .local v1, "caInput":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 169
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    .line 170
    const-string v7, "LgeGpsCert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cert size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_1

    array-length v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    if-eqz v1, :cond_3

    .line 179
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 186
    .end local v1    # "caInput":Ljava/io/InputStream;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v0    # "caInput":Ljava/io/InputStream;
    :cond_0
    :goto_1
    return-object v3

    .line 170
    .end local v0    # "caInput":Ljava/io/InputStream;
    .restart local v1    # "caInput":Ljava/io/InputStream;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "cf":Ljava/security/cert/CertificateFactory;
    :cond_1
    :try_start_3
    const-string v6, "null"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 180
    :catch_0
    move-exception v5

    .line 181
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "LgeGpsCert"

    const-string v7, "cert stream close Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 182
    .end local v1    # "caInput":Ljava/io/InputStream;
    .restart local v0    # "caInput":Ljava/io/InputStream;
    goto :goto_1

    .line 174
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 175
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    if-eqz v0, :cond_0

    .line 179
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 180
    :catch_2
    move-exception v5

    .line 181
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "LgeGpsCert"

    const-string v7, "cert stream close Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_2

    .line 179
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 182
    :cond_2
    :goto_4
    throw v6

    .line 180
    :catch_3
    move-exception v5

    .line 181
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v7, "LgeGpsCert"

    const-string v8, "cert stream close Fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 177
    .end local v0    # "caInput":Ljava/io/InputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "caInput":Ljava/io/InputStream;
    .restart local v4    # "cf":Ljava/security/cert/CertificateFactory;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "caInput":Ljava/io/InputStream;
    .restart local v0    # "caInput":Ljava/io/InputStream;
    goto :goto_3

    .line 174
    .end local v0    # "caInput":Ljava/io/InputStream;
    .restart local v1    # "caInput":Ljava/io/InputStream;
    :catch_4
    move-exception v5

    move-object v0, v1

    .end local v1    # "caInput":Ljava/io/InputStream;
    .restart local v0    # "caInput":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "caInput":Ljava/io/InputStream;
    .restart local v1    # "caInput":Ljava/io/InputStream;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_3
    move-object v0, v1

    .end local v1    # "caInput":Ljava/io/InputStream;
    .restart local v0    # "caInput":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private writeCert([BLjava/lang/String;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/test/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "filePath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 193
    .local v0, "caOut":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v0    # "caOut":Ljava/io/FileOutputStream;
    .local v1, "caOut":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 195
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 205
    .end local v1    # "caOut":Ljava/io/FileOutputStream;
    .restart local v0    # "caOut":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 201
    .end local v0    # "caOut":Ljava/io/FileOutputStream;
    .restart local v1    # "caOut":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 204
    .end local v1    # "caOut":Ljava/io/FileOutputStream;
    .restart local v0    # "caOut":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 196
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 197
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 201
    :catch_2
    move-exception v2

    .line 202
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 200
    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 203
    :cond_2
    :goto_3
    throw v4

    .line 201
    :catch_3
    move-exception v2

    .line 202
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 199
    .end local v0    # "caOut":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "caOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "caOut":Ljava/io/FileOutputStream;
    .restart local v0    # "caOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 196
    .end local v0    # "caOut":Ljava/io/FileOutputStream;
    .restart local v1    # "caOut":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "caOut":Ljava/io/FileOutputStream;
    .restart local v0    # "caOut":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public getCertFromAndroid(Ljava/lang/String;I)[B
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "certData":[B
    const/4 v11, 0x0

    .line 49
    .local v11, "socket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v10

    .line 50
    .local v10, "sf":Ljavax/net/SocketFactory;
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v11, v0

    .line 52
    if-nez v11, :cond_1

    .line 53
    const-string v13, "LgeGpsCert"

    const-string v14, "failed to create socket"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const/4 v13, 0x0

    .line 90
    if-eqz v11, :cond_0

    .line 91
    :try_start_1
    invoke-virtual {v11}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .end local v10    # "sf":Ljavax/net/SocketFactory;
    :cond_0
    :goto_0
    return-object v13

    .line 93
    .restart local v10    # "sf":Ljavax/net/SocketFactory;
    :catch_0
    move-exception v12

    .line 94
    .local v12, "x":Ljava/lang/Exception;
    const-string v14, "LgeGpsCert"

    const-string v15, "exception while socket close"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v12    # "x":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 58
    .local v6, "hv":Ljavax/net/ssl/HostnameVerifier;
    invoke-virtual {v11}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v9

    .line 61
    .local v9, "s":Ljavax/net/ssl/SSLSession;
    move-object/from16 v0, p1

    invoke-interface {v6, v0, v9}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 62
    new-instance v13, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " found "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .end local v6    # "hv":Ljavax/net/ssl/HostnameVerifier;
    .end local v9    # "s":Ljavax/net/ssl/SSLSession;
    .end local v10    # "sf":Ljavax/net/SocketFactory;
    :catch_1
    move-exception v5

    .line 87
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    if-eqz v11, :cond_2

    .line 91
    :try_start_4
    invoke-virtual {v11}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    move-object v13, v2

    .line 98
    goto :goto_0

    .line 70
    .restart local v6    # "hv":Ljavax/net/ssl/HostnameVerifier;
    .restart local v9    # "s":Ljavax/net/ssl/SSLSession;
    .restart local v10    # "sf":Ljavax/net/SocketFactory;
    :cond_3
    :try_start_5
    invoke-virtual {v11}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v13

    invoke-interface {v13}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v8

    .line 73
    .local v8, "peerCertificates":[Ljavax/security/cert/X509Certificate;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v13, v8

    if-ge v7, v13, :cond_4

    .line 74
    const-string v13, "LgeGpsCert"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SubjectDN="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v8, v7

    invoke-virtual {v15}, Ljavax/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v13, "LgeGpsCert"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "issuerDN="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v8, v7

    invoke-virtual {v15}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v13, "LgeGpsCert"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hash="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljavax/security/auth/x500/X500Principal;

    aget-object v16, v8, v7

    invoke-virtual/range {v16 .. v16}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/location/LgeGpsCert;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 79
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljavax/security/auth/x500/X500Principal;

    array-length v15, v8

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v8, v15

    invoke-virtual {v15}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v15

    invoke-interface {v15}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/location/LgeGpsCert;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "certName":Ljava/lang/String;
    const-string v13, "LgeGpsCert"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cert="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/system/etc/security/cacerts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "certPath":Ljava/lang/String;
    const-string v13, "LgeGpsCert"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fullpath"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/location/LgeGpsCert;->readCert(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 90
    if-eqz v11, :cond_2

    .line 91
    :try_start_6
    invoke-virtual {v11}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 93
    :catch_2
    move-exception v12

    .line 94
    .restart local v12    # "x":Ljava/lang/Exception;
    const-string v13, "LgeGpsCert"

    const-string v14, "exception while socket close"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 93
    .end local v3    # "certName":Ljava/lang/String;
    .end local v4    # "certPath":Ljava/lang/String;
    .end local v6    # "hv":Ljavax/net/ssl/HostnameVerifier;
    .end local v7    # "i":I
    .end local v8    # "peerCertificates":[Ljavax/security/cert/X509Certificate;
    .end local v9    # "s":Ljavax/net/ssl/SSLSession;
    .end local v10    # "sf":Ljavax/net/SocketFactory;
    .end local v12    # "x":Ljava/lang/Exception;
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v12

    .line 94
    .restart local v12    # "x":Ljava/lang/Exception;
    const-string v13, "LgeGpsCert"

    const-string v14, "exception while socket close"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 89
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v12    # "x":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 90
    if-eqz v11, :cond_5

    .line 91
    :try_start_7
    invoke-virtual {v11}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 95
    :cond_5
    :goto_3
    throw v13

    .line 93
    :catch_4
    move-exception v12

    .line 94
    .restart local v12    # "x":Ljava/lang/Exception;
    const-string v14, "LgeGpsCert"

    const-string v15, "exception while socket close"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
