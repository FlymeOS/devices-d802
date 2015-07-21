.class public Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;
.super Ljava/lang/Thread;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataServiceQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadTCPConnectionCheck"
.end annotation


# static fields
.field private static final DEFAULT_SERVER:Ljava/lang/String; = "clients3.google.com"

.field private static final SOCKET_TIMEOUT_MS:I = 0x1388


# instance fields
.field private result:Z

.field final synthetic this$0:Lcom/android/server/DataServiceQualityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/DataServiceQualityMonitor;)V
    .locals 1

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;->result:Z

    .line 1065
    return-void
.end method


# virtual methods
.method public getCheckResult()Z
    .locals 1

    .prologue
    .line 1069
    iget-boolean v0, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;->result:Z

    return v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1073
    const-wide/16 v8, -0x1

    .line 1074
    .local v8, "startTimestamp":J
    const-wide/16 v2, -0x1

    .line 1075
    .local v2, "endTimestamp":J
    const/4 v7, 0x0

    .line 1076
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    iget-object v10, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    const-string v11, "clients3.google.com"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    invoke-static {v10, v11}, Lcom/android/server/DataServiceQualityMonitor;->access$8000(Lcom/android/server/DataServiceQualityMonitor;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 1077
    .local v6, "server":Ljava/net/InetAddress;
    if-nez v6, :cond_1

    .line 1078
    const-string v10, "ThreadTCPConnectionCheck DNS fail internet is not possible"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1079
    iput-boolean v12, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;->result:Z

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    const/4 v4, 0x0

    .line 1085
    .local v4, "s":Ljava/net/Socket;
    :try_start_0
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1086
    .end local v4    # "s":Ljava/net/Socket;
    .local v5, "s":Ljava/net/Socket;
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v10, 0x50

    invoke-direct {v0, v6, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1087
    .local v0, "addr":Ljava/net/SocketAddress;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ThreadTCPConnectionCheck connect try to"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1089
    if-eqz v5, :cond_2

    .line 1090
    const/16 v10, 0x1388

    invoke-virtual {v5, v0, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 1093
    :cond_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;->result:Z

    .line 1095
    if-eqz v5, :cond_0

    .line 1096
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1100
    .end local v0    # "addr":Ljava/net/SocketAddress;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 1101
    .end local v5    # "s":Ljava/net/Socket;
    .local v1, "ie":Ljava/io/IOException;
    .restart local v4    # "s":Ljava/net/Socket;
    :goto_1
    const-string v10, "ThreadTCPConnectionCheck conn fail internet is not possible"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 1102
    iput-boolean v12, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;->result:Z

    .line 1104
    if-eqz v4, :cond_0

    .line 1106
    :try_start_2
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1107
    :catch_1
    move-exception v10

    goto :goto_0

    .line 1100
    .end local v1    # "ie":Ljava/io/IOException;
    :catch_2
    move-exception v1

    goto :goto_1
.end method
