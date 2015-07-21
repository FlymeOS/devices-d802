.class Lcom/lge/wifi/impl/aggregation/HttpConnectionHelper;
.super Ljava/lang/Object;
.source "HttpConnectionHelper.java"


# static fields
.field public static final HTTP_REQUEST_GET:I = 0x0

.field public static final HTTP_REQUEST_MAX:I = 0x2

.field public static final HTTP_REQUEST_POST:I = 0x1

.field private static final HTTP_REQUEST_TIMEOUT_MS:I = 0x7530


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 296
    if-eqz p0, :cond_1

    .line 298
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 300
    .local v4, "writer":Ljava/io/Writer;
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 303
    .local v0, "buffer":[C
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 306
    .local v3, "reader":Ljava/io/Reader;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    .local v2, "n":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 308
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 311
    .end local v2    # "n":I
    .end local v3    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v1

    .line 313
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v5, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 327
    .end local v0    # "buffer":[C
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "writer":Ljava/io/Writer;
    :goto_1
    return-object v5

    .line 319
    .restart local v0    # "buffer":[C
    .restart local v2    # "n":I
    .restart local v3    # "reader":Ljava/io/Reader;
    .restart local v4    # "writer":Ljava/io/Writer;
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 323
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 317
    .end local v2    # "n":I
    .end local v3    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v5

    .line 319
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 321
    :goto_3
    throw v5

    .line 327
    .end local v0    # "buffer":[C
    .end local v4    # "writer":Ljava/io/Writer;
    :cond_1
    const-string v5, ""

    goto :goto_1

    .line 321
    .restart local v0    # "buffer":[C
    .restart local v2    # "n":I
    .restart local v3    # "reader":Ljava/io/Reader;
    .restart local v4    # "writer":Ljava/io/Writer;
    :catch_1
    move-exception v5

    goto :goto_2

    .end local v2    # "n":I
    .end local v3    # "reader":Ljava/io/Reader;
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_3
.end method

.method static httpRequest(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljavax/net/ssl/HostnameVerifier;)Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;
    .locals 16
    .param p0, "targetURL"    # Ljava/lang/String;
    .param p1, "httpRequestType"    # I
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "parameterName"    # [Ljava/lang/String;
    .param p4, "parameterValue"    # [Ljava/lang/String;
    .param p6, "verifier"    # Ljavax/net/ssl/HostnameVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/net/ssl/HostnameVerifier;",
            ")",
            "Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;"
        }
    .end annotation

    .prologue
    .line 44
    .local p5, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;

    invoke-direct {v11}, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;-><init>()V

    .line 45
    .local v11, "result":Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;
    const/4 v7, 0x0

    .line 46
    .local v7, "isHttpsConnection":Z
    const/4 v3, 0x0

    .line 47
    .local v3, "httpConnection":Ljava/net/URLConnection;
    const/4 v4, 0x0

    .line 48
    .local v4, "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v9, "query":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 52
    .local v10, "responseStream":Ljava/io/InputStream;
    const/4 v12, 0x2

    move/from16 v0, p1

    if-lt v0, v12, :cond_0

    .line 57
    :cond_0
    if-nez p0, :cond_1

    .line 62
    :cond_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    move-object/from16 v0, p3

    array-length v12, v0

    move-object/from16 v0, p4

    array-length v13, v0

    if-eq v12, v13, :cond_2

    .line 67
    :cond_2
    if-nez p2, :cond_3

    .line 69
    const-string p2, "UTF-8"

    .line 72
    :cond_3
    if-nez p6, :cond_4

    .line 74
    new-instance p6, Lcom/lge/wifi/impl/aggregation/VerizoneHostnameVerifier;

    .end local p6    # "verifier":Ljavax/net/ssl/HostnameVerifier;
    invoke-direct/range {p6 .. p6}, Lcom/lge/wifi/impl/aggregation/VerizoneHostnameVerifier;-><init>()V

    .line 77
    .restart local p6    # "verifier":Ljavax/net/ssl/HostnameVerifier;
    :cond_4
    if-eqz p0, :cond_5

    .line 78
    const-string v12, "https"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 80
    const/4 v7, 0x1

    .line 85
    :cond_5
    if-eqz p3, :cond_8

    .line 89
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v5, v12, :cond_8

    .line 91
    aget-object v12, p3, v5

    if-eqz v12, :cond_6

    .line 92
    const-string v12, "%s=%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v15, p3, v5

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aget-object v15, p4, v5

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    move-object/from16 v0, p3

    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_6

    .line 94
    const/16 v12, 0x26

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v2

    .line 100
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    sget v12, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_UNSUPPORTED_ENCODING:I

    iput v12, v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    .line 285
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "i":I
    :cond_7
    :goto_1
    return-object v11

    .line 105
    :cond_8
    if-nez v7, :cond_e

    .line 108
    if-nez p1, :cond_c

    .line 112
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_9

    .line 114
    new-instance v12, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 122
    :goto_2
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 123
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 125
    const-string v12, "Accept-Charset"

    move-object/from16 v0, p2

    invoke-virtual {v3, v12, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz p5, :cond_a

    .line 128
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, "cookie":Ljava/lang/String;
    const-string v12, "Cookie"

    const-string v13, ";"

    const/4 v14, 0x2

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v3, v12, v13}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 137
    .end local v1    # "cookie":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 139
    .local v2, "ex":Ljava/net/MalformedURLException;
    sget v12, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_INVALID_URL:I

    iput v12, v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto :goto_1

    .line 118
    .end local v2    # "ex":Ljava/net/MalformedURLException;
    :cond_9
    :try_start_2
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    goto :goto_2

    .line 134
    :cond_a
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 280
    :cond_b
    :goto_4
    sget v12, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_NORMAL:I

    iput v12, v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    .line 282
    if-eqz v10, :cond_7

    .line 283
    const-string v12, "UTF-8"

    invoke-static {v10, v12}, Lcom/lge/wifi/impl/aggregation/HttpConnectionHelper;->convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->responsePage:Ljava/lang/String;

    goto/16 :goto_1

    .line 142
    :catch_2
    move-exception v2

    .line 144
    .local v2, "ex":Ljava/io/IOException;
    sget v12, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_CANNOT_CONNECT_URL:I

    iput v12, v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_1

    .line 150
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_c
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_b

    .line 154
    const/4 v8, 0x0

    .line 156
    .local v8, "output":Ljava/io/OutputStream;
    :try_start_3
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 157
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 158
    const-string v12, "Accept-Charset"

    move-object/from16 v0, p2

    invoke-virtual {v3, v12, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eqz p5, :cond_d

    .line 161
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .restart local v1    # "cookie":Ljava/lang/String;
    const-string v12, "Cookie"

    const-string v13, ";"

    const/4 v14, 0x2

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v3, v12, v13}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_5

    .line 177
    .end local v1    # "cookie":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_3
    move-exception v2

    .line 179
    .local v2, "ex":Ljava/net/MalformedURLException;
    sget v12, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_INVALID_URL:I

    iput v12, v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_1

    .line 166
    .end local v2    # "ex":Ljava/net/MalformedURLException;
    :cond_d
    :try_start_4
    const-string v12, "Content-Type"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "application/x-www-form-urlencoded;charset="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 170
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 173
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 174
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write([B)V

    .line 175
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v10

    goto/16 :goto_4

    .line 182
    :catch_4
    move-exception v2

    .line 184
    .local v2, "ex":Ljava/io/IOException;
    sget v12, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_CANNOT_CONNECT_URL:I

    iput v12, v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_1

    .line 191
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v8    # "output":Ljava/io/OutputStream;
    :cond_e
    if-nez p6, :cond_f

    .line 193
    sget v12, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_NEED_VERIFIER:I

    iput v12, v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_1

    .line 198
    :cond_f
    if-nez p1, :cond_12

    .line 202
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_10

    .line 204
    new-instance v12, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    move-object v0, v12

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v4, v0

    .line 211
    :goto_6
    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 212
    const-string v12, "Accept-Charset"

    move-object/from16 v0, p2

    invoke-virtual {v4, v12, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-eqz p5, :cond_11

    .line 215
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    .restart local v1    # "cookie":Ljava/lang/String;
    const-string v12, "Cookie"

    const-string v13, ";"

    const/4 v14, 0x2

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v4, v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_7

    .line 227
    .end local v1    # "cookie":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_5
    move-exception v2

    .line 229
    .local v2, "ex":Ljava/net/MalformedURLException;
    sget v12, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_INVALID_URL:I

    iput v12, v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_1

    .line 208
    .end local v2    # "ex":Ljava/net/MalformedURLException;
    :cond_10
    :try_start_6
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    move-object v0, v12

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v4, v0

    goto :goto_6

    .line 222
    :cond_11
    const/16 v12, 0x7530

    invoke-virtual {v4, v12}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 223
    const/16 v12, 0x7530

    invoke-virtual {v4, v12}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 225
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v10

    goto/16 :goto_4

    .line 232
    :catch_6
    move-exception v2

    .line 234
    .local v2, "ex":Ljava/io/IOException;
    sget v12, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_CANNOT_CONNECT_URL:I

    iput v12, v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_1

    .line 239
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_12
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_b

    .line 243
    const/4 v8, 0x0

    .line 245
    .restart local v8    # "output":Ljava/io/OutputStream;
    :try_start_7
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    move-object v0, v12

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v4, v0

    .line 246
    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 247
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 248
    const-string v12, "POST"

    invoke-virtual {v4, v12}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 249
    const-string v12, "Accept-Charset"

    move-object/from16 v0, p2

    invoke-virtual {v4, v12, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    if-eqz p5, :cond_13

    .line 252
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    .restart local v1    # "cookie":Ljava/lang/String;
    const-string v12, "Cookie"

    const-string v13, ";"

    const/4 v14, 0x2

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v4, v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_8

    .line 267
    .end local v1    # "cookie":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_7
    move-exception v2

    .line 269
    .local v2, "ex":Ljava/net/MalformedURLException;
    sget v12, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_INVALID_URL:I

    iput v12, v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_1

    .line 257
    .end local v2    # "ex":Ljava/net/MalformedURLException;
    :cond_13
    :try_start_8
    const-string v12, "Content-Type"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "application/x-www-form-urlencoded;charset="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/16 v12, 0x7530

    invoke-virtual {v4, v12}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 261
    const/16 v12, 0x7530

    invoke-virtual {v4, v12}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 263
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 264
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write([B)V

    .line 265
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v10

    goto/16 :goto_4

    .line 272
    :catch_8
    move-exception v2

    .line 274
    .local v2, "ex":Ljava/io/IOException;
    sget v12, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_CANNOT_CONNECT_URL:I

    iput v12, v11, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_1
.end method
