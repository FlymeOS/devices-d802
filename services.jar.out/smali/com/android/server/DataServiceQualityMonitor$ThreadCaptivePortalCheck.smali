.class public Lcom/android/server/DataServiceQualityMonitor$ThreadCaptivePortalCheck;
.super Ljava/lang/Thread;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataServiceQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadCaptivePortalCheck"
.end annotation


# static fields
.field private static final DEFAULT_SERVER:Ljava/lang/String; = "clients3.google.com"

.field private static final SOCKET_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private result:Z

.field final synthetic this$0:Lcom/android/server/DataServiceQualityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/DataServiceQualityMonitor;)V
    .locals 1

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadCaptivePortalCheck;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadCaptivePortalCheck;->result:Z

    .line 965
    return-void
.end method


# virtual methods
.method public getCheckResult()Z
    .locals 1

    .prologue
    .line 969
    iget-boolean v0, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadCaptivePortalCheck;->result:Z

    return v0
.end method

.method public run()V
    .locals 22

    .prologue
    .line 973
    const-wide/16 v14, -0x1

    .line 974
    .local v14, "startTimestamp":J
    const-wide/16 v4, -0x1

    .line 975
    .local v4, "endTimestamp":J
    const/16 v16, 0x0

    .line 976
    .local v16, "urlConnection":Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DataServiceQualityMonitor$ThreadCaptivePortalCheck;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    move-object/from16 v17, v0

    const-string v18, "clients3.google.com"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    invoke-static/range {v17 .. v18}, Lcom/android/server/DataServiceQualityMonitor;->access$8000(Lcom/android/server/DataServiceQualityMonitor;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 977
    .local v12, "server":Ljava/net/InetAddress;
    if-nez v12, :cond_1

    .line 978
    const-string v17, "ThreadCaptivePortalCheck DNS fail internet is not possible"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 979
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DataServiceQualityMonitor$ThreadCaptivePortalCheck;->result:Z

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "http://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/generate_204"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 983
    .local v7, "mUrl":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Checking "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 986
    :try_start_0
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 987
    .local v13, "url":Ljava/net/URL;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 988
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ThreadCaptivePortalCheck URL connection start at"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 989
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v16, v0

    .line 990
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 991
    const/16 v17, 0xbb8

    invoke-virtual/range {v16 .. v17}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 992
    const/16 v17, 0xbb8

    invoke-virtual/range {v16 .. v17}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 993
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 997
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1001
    .local v8, "responseTimestamp":J
    const-string v17, "ThreadCaptivePortalCheck internet is possible"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1002
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DataServiceQualityMonitor$ThreadCaptivePortalCheck;->result:Z
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    if-eqz v16, :cond_0

    .line 1047
    const-string v17, "ThreadCaptivePortalCheck urlConnection.disconnect"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1004
    .end local v8    # "responseTimestamp":J
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 1005
    .local v3, "e":Ljava/net/ProtocolException;
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ThreadCaptivePortalCheck ProtocolException internet maybe possible"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1006
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DataServiceQualityMonitor$ThreadCaptivePortalCheck;->result:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    if-eqz v16, :cond_0

    .line 1047
    const-string v17, "ThreadCaptivePortalCheck urlConnection.disconnect"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1008
    .end local v3    # "e":Ljava/net/ProtocolException;
    :catch_1
    move-exception v3

    .line 1009
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1010
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ThreadCaptivePortalCheck ioexception"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1011
    sub-long v18, v4, v14

    const-wide/16 v20, 0xbb8

    cmp-long v17, v18, v20

    if-gez v17, :cond_5

    .line 1012
    const-string v17, "ThreadCaptivePortalCheck ioexception occured before 3sec this may be internet OK state."

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1013
    const/4 v10, 0x0

    .line 1015
    .local v10, "s":Ljava/net/Socket;
    :try_start_3
    new-instance v11, Ljava/net/Socket;

    invoke-direct {v11}, Ljava/net/Socket;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1016
    .end local v10    # "s":Ljava/net/Socket;
    .local v11, "s":Ljava/net/Socket;
    :try_start_4
    new-instance v2, Ljava/net/InetSocketAddress;

    const/16 v17, 0x50

    move/from16 v0, v17

    invoke-direct {v2, v12, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1017
    .local v2, "addr":Ljava/net/SocketAddress;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "TCPConnectionCheck connect try to"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1019
    if-eqz v11, :cond_2

    .line 1020
    const/16 v17, 0xbb8

    move/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 1023
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DataServiceQualityMonitor$ThreadCaptivePortalCheck;->result:Z

    .line 1025
    if-eqz v11, :cond_3

    .line 1026
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move-object v10, v11

    .line 1046
    .end local v2    # "addr":Ljava/net/SocketAddress;
    .end local v11    # "s":Ljava/net/Socket;
    :cond_4
    :goto_1
    if-eqz v16, :cond_0

    .line 1047
    const-string v17, "ThreadCaptivePortalCheck urlConnection.disconnect"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1028
    .restart local v10    # "s":Ljava/net/Socket;
    :catch_2
    move-exception v6

    .line 1029
    .local v6, "ie":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v17, "TCPConnectionCheck conn fail internet is not possible"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1030
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DataServiceQualityMonitor$ThreadCaptivePortalCheck;->result:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1032
    if-eqz v10, :cond_4

    .line 1034
    :try_start_6
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1035
    :catch_3
    move-exception v17

    goto :goto_1

    .line 1041
    .end local v6    # "ie":Ljava/io/IOException;
    .end local v10    # "s":Ljava/net/Socket;
    :cond_5
    :try_start_7
    const-string v17, "ThreadCaptivePortalCheck sock conn fail internet is not possible"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1042
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DataServiceQualityMonitor$ThreadCaptivePortalCheck;->result:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 1046
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    if-eqz v16, :cond_6

    .line 1047
    const-string v18, "ThreadCaptivePortalCheck urlConnection.disconnect"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v17

    .line 1028
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v11    # "s":Ljava/net/Socket;
    :catch_4
    move-exception v6

    move-object v10, v11

    .end local v11    # "s":Ljava/net/Socket;
    .restart local v10    # "s":Ljava/net/Socket;
    goto :goto_2
.end method
