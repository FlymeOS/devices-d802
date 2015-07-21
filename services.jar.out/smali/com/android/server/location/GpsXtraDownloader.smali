.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "count":I
    const-string v7, "XTRA_SERVER_1"

    invoke-virtual {p2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "server1":Ljava/lang/String;
    const-string v7, "XTRA_SERVER_2"

    invoke-virtual {p2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "server2":Ljava/lang/String;
    const-string v7, "XTRA_SERVER_3"

    invoke-virtual {p2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "server3":Ljava/lang/String;
    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 69
    :cond_0
    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 70
    :cond_1
    if-eqz v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 73
    :cond_2
    const-string v7, "XTRA_USER_AGENT"

    invoke-virtual {p2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 75
    const-string v7, "Android"

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    .line 80
    :goto_0
    if-nez v1, :cond_4

    .line 81
    const-string v7, "GpsXtraDownloader"

    const-string v8, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 95
    :goto_1
    return-void

    .line 77
    :cond_3
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_4
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    .line 87
    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v4, v7, v1

    .line 88
    :goto_2
    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v5, v7, v2

    move v2, v1

    .line 89
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_5
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v6, v7, v2

    .line 92
    :goto_3
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 93
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_1

    .end local v1    # "count":I
    .end local v3    # "random":Ljava/util/Random;
    .restart local v2    # "count":I
    :cond_6
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_3

    :cond_7
    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_2
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B
    .locals 20
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isProxySet"    # Z
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I

    .prologue
    .line 126
    sget-boolean v16, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v16, :cond_0

    const-string v16, "GpsXtraDownloader"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Downloading XTRA data from "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    const/4 v4, 0x0

    .line 131
    .local v4, "client":Landroid/net/http/AndroidHttpClient;
    const/4 v9, 0x0

    .line 132
    .local v9, "lgeConst":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 134
    .local v15, "userAgent":Ljava/lang/String;
    :try_start_0
    const-string v16, "com.android.server.location.LgeGpsConstants"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 135
    .local v3, "c":Ljava/lang/Class;
    if-eqz v3, :cond_1

    .line 136
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 137
    .local v5, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v5, :cond_1

    .line 138
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 140
    const-string v16, "getXTRAUserAgent"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 141
    .local v10, "m":Ljava/lang/reflect/Method;
    if-eqz v10, :cond_1

    .line 142
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 143
    sget-boolean v16, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v16, :cond_1

    const-string v16, "GpsXtraDownloader"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "userAgent= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 152
    .end local v3    # "c":Ljava/lang/Class;
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v9    # "lgeConst":Ljava/lang/Object;
    .end local v10    # "m":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    :try_start_1
    sget-boolean v16, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v16, :cond_2

    const-string v16, "GpsXtraDownloader"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XTRA user agent: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2
    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    .line 155
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 157
    .local v12, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p2, :cond_3

    .line 158
    new-instance v11, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v11, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 159
    .local v11, "proxy":Lorg/apache/http/HttpHost;
    invoke-interface {v12}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 162
    .end local v11    # "proxy":Lorg/apache/http/HttpHost;
    :cond_3
    const-string v16, "Accept"

    const-string v17, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v16, "x-wap-profile"

    const-string v17, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v4, v12}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 171
    .local v13, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    .line 172
    .local v14, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    .line 173
    sget-boolean v16, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v16, :cond_4

    const-string v16, "GpsXtraDownloader"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "HTTP error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 174
    :cond_4
    const/4 v2, 0x0

    .line 204
    if-eqz v4, :cond_5

    .line 205
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 208
    .end local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "status":Lorg/apache/http/StatusLine;
    :cond_5
    :goto_2
    return-object v2

    .line 148
    :catch_0
    move-exception v7

    .line 149
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v16, "GpsXtraDownloader"

    const-string v17, "Error while loading LgeGpsConstants."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/4 v9, 0x0

    .restart local v9    # "lgeConst":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "lgeConst":Ljava/lang/Object;
    :cond_6
    move-object/from16 v16, v15

    .line 153
    goto/16 :goto_1

    .line 177
    .restart local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "status":Lorg/apache/http/StatusLine;
    :cond_7
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 178
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    const/4 v2, 0x0

    .line 179
    .local v2, "body":[B
    if-eqz v8, :cond_9

    .line 181
    :try_start_3
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_8

    .line 182
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 183
    new-instance v6, Ljava/io/DataInputStream;

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    .local v6, "dis":Ljava/io/DataInputStream;
    :try_start_4
    invoke-virtual {v6, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    :try_start_5
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    .end local v6    # "dis":Ljava/io/DataInputStream;
    :cond_8
    :goto_3
    if-eqz v8, :cond_9

    .line 196
    :try_start_6
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 204
    :cond_9
    if-eqz v4, :cond_5

    .line 205
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_2

    .line 189
    .restart local v6    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v7

    .line 190
    .local v7, "e":Ljava/io/IOException;
    :try_start_7
    const-string v16, "GpsXtraDownloader"

    const-string v17, "Unexpected IOException."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 195
    .end local v6    # "dis":Ljava/io/DataInputStream;
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    if-eqz v8, :cond_a

    .line 196
    :try_start_8
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_a
    throw v16
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 201
    .end local v2    # "body":[B
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "status":Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v7

    .line 202
    .local v7, "e":Ljava/lang/Exception;
    :try_start_9
    sget-boolean v16, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v16, :cond_b

    const-string v16, "GpsXtraDownloader"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 204
    :cond_b
    if-eqz v4, :cond_c

    .line 205
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 208
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 187
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "body":[B
    .restart local v6    # "dis":Ljava/io/DataInputStream;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "status":Lorg/apache/http/StatusLine;
    :catchall_1
    move-exception v16

    .line 188
    :try_start_a
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 191
    :goto_4
    :try_start_b
    throw v16

    .line 189
    :catch_3
    move-exception v7

    .line 190
    .local v7, "e":Ljava/io/IOException;
    const-string v17, "GpsXtraDownloader"

    const-string v18, "Unexpected IOException."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 204
    .end local v2    # "body":[B
    .end local v6    # "dis":Ljava/io/DataInputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "status":Lorg/apache/http/StatusLine;
    :catchall_2
    move-exception v16

    if-eqz v4, :cond_d

    .line 205
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_d
    throw v16
.end method

.method downloadXtraData()[B
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 98
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "proxyHost":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 100
    .local v1, "proxyPort":I
    if-eqz v0, :cond_0

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    const/4 v4, 0x1

    .line 101
    .local v4, "useProxy":Z
    :goto_0
    const/4 v2, 0x0

    .line 102
    .local v2, "result":[B
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 104
    .local v3, "startIndex":I
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 105
    const/4 v5, 0x0

    .line 121
    :goto_1
    return-object v5

    .end local v2    # "result":[B
    .end local v3    # "startIndex":I
    .end local v4    # "useProxy":Z
    :cond_0
    move v4, v5

    .line 100
    goto :goto_0

    .line 109
    .restart local v2    # "result":[B
    .restart local v3    # "startIndex":I
    .restart local v4    # "useProxy":Z
    :cond_1
    if-nez v2, :cond_3

    .line 110
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v6, v6, v7

    invoke-virtual {p0, v6, v4, v0, v1}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B

    move-result-object v2

    .line 113
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 114
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v7, v7

    if-ne v6, v7, :cond_2

    .line 115
    iput v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 118
    :cond_2
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v6, v3, :cond_1

    :cond_3
    move-object v5, v2

    .line 121
    goto :goto_1
.end method
