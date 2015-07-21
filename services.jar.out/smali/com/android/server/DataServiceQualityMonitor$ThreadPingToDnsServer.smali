.class public Lcom/android/server/DataServiceQualityMonitor$ThreadPingToDnsServer;
.super Ljava/lang/Thread;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataServiceQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadPingToDnsServer"
.end annotation


# static fields
.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"


# instance fields
.field final synthetic this$0:Lcom/android/server/DataServiceQualityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/DataServiceQualityMonitor;)V
    .locals 0

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadPingToDnsServer;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 868
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 873
    const-string v5, "kkk ThreadPingToDnsServer for iface : "

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 878
    const-string v3, "ping -w 2 -c 1 "

    .line 882
    .local v3, "pingCmd":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadPingToDnsServer;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "8.8.8.8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/android/server/DataServiceQualityMonitor;->access$7900(Lcom/android/server/DataServiceQualityMonitor;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 883
    .local v2, "line":Ljava/lang/String;
    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 884
    if-eqz v2, :cond_0

    const-string v5, "100% packet loss"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 885
    const-string v5, "ping to google server fail"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 886
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.net.L3_DATA_SERVICE_QUALITY"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "resultStatus"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 888
    const-string v5, "dataEnabled"

    sget-boolean v6, Lcom/android/server/DataServiceQualityMonitor;->mDataEnabled:Z

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L3_DATA_SERVICE_QUALITY STATUS 0 ping to google server fail DataEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/DataServiceQualityMonitor;->mDataEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 891
    :try_start_1
    iget-object v5, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadPingToDnsServer;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    iget-object v5, v5, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 905
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "line":Ljava/lang/String;
    :goto_0
    return-void

    .line 892
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 893
    .local v4, "se":Ljava/lang/SecurityException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendIntentBroadcast() SecurityException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 902
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 900
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/DataServiceQualityMonitor;->SocketConnFailNotiEnabled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
