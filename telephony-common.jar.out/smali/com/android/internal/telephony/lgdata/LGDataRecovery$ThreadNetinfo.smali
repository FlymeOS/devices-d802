.class public Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;
.super Ljava/lang/Thread;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadNetinfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V
    .locals 0

    .prologue
    .line 2015
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2020
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v4, "********** DUMP NETWORK INFO **********"

    const-string v5, "netinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$900(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v4, "<----- proc/net/route(ipv6_route), converted address ----->"

    const-string v5, "netinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$900(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->loggingRouteInfos()V
    invoke-static {v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$1000(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    .line 2037
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v4, "<----- netcfg ----->"

    const-string v5, "netinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$900(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v4, "netcfg"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$1100(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2039
    .local v2, "line":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v4, "netinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v2, v4, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$1200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2042
    .end local v2    # "line":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->findDefaultConnInfo()Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    move-result-object v0

    .line 2043
    .local v0, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    if-eqz v0, :cond_1

    .line 2044
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<----- proc/net/xt_quota/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ----->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "netinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$900(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proc/net/xt_quota/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2046
    .restart local v2    # "line":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v4, "netinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v2, v4, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$1200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 2050
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v4, "<----- proc/net/dev ----->"

    const-string v5, "netinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$900(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v4, "proc/net/dev"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2052
    .restart local v2    # "line":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v4, "netinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v2, v4, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$1200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 2054
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v4, "\n"

    const-string v5, "netinfo.log"

    # invokes: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$1200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2055
    return-void
.end method
