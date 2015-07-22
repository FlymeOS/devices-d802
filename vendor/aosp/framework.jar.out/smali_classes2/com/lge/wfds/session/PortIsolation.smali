.class public Lcom/lge/wfds/session/PortIsolation;
.super Ljava/lang/Object;
.source "PortIsolation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;,
        Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;,
        Lcom/lge/wfds/session/PortIsolation$PortIsolationList;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WfdsSession:PortIsolation"


# instance fields
.field private mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

.field private mSessionList:Lcom/lge/wfds/session/AspSessionList;


# direct methods
.method public constructor <init>(Lcom/lge/wfds/session/AspSessionList;)V
    .locals 1
    .param p1, "sessionList"    # Lcom/lge/wfds/session/AspSessionList;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/lge/wfds/session/PortIsolation;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    .line 14
    iput-object v0, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    .line 17
    iput-object p1, p0, Lcom/lge/wfds/session/PortIsolation;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    .line 18
    new-instance v0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    invoke-direct {v0, p0}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;-><init>(Lcom/lge/wfds/session/PortIsolation;)V

    iput-object v0, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    .line 19
    return-void
.end method


# virtual methods
.method public addPort(Ljava/lang/String;Ljava/lang/Integer;Lcom/lge/wfds/session/AspServicePort;)Z
    .locals 8
    .param p1, "sessionMac"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/Integer;
    .param p3, "servicePort"    # Lcom/lge/wfds/session/AspServicePort;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v6

    .line 84
    .local v6, "aspSession":Lcom/lge/wfds/session/AspSession;
    if-eqz v6, :cond_0

    .line 90
    iget-object v7, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    monitor-enter v7

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    iget-object v1, v6, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    iget v2, p3, Lcom/lge/wfds/session/AspServicePort;->port:I

    iget v3, p3, Lcom/lge/wfds/session/AspServicePort;->proto:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->addPortIsolation(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;)V

    .line 94
    monitor-exit v7

    .line 96
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_0
    const-string v0, "WfdsSession:PortIsolation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPort : aspSession is null for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable(Ljava/lang/String;)V
    .locals 2
    .param p1, "peerIpAddress"    # Ljava/lang/String;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->removePortIsolation(Ljava/lang/String;)V

    .line 66
    monitor-exit v1

    .line 70
    :goto_0
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 68
    :cond_0
    const-string v0, "WfdsSession:PortIsolation"

    const-string v1, "disable : peerIpAddress is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disable(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "sessionMac"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v1, p1, p2}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 44
    .local v0, "aspSession":Lcom/lge/wfds/session/AspSession;
    if-eqz v0, :cond_0

    .line 50
    iget-object v2, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    monitor-enter v2

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    iget-object v3, v0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {v1, v3, p1, p2}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->removePortIsolation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    monitor-exit v2

    .line 56
    :goto_0
    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_0
    const-string v1, "WfdsSession:PortIsolation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable : aspSession is null for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableAll()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    invoke-virtual {v0}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->removeAllPortIsolation()V

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 8
    .param p1, "sessionMac"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v6

    .line 23
    .local v6, "aspSession":Lcom/lge/wfds/session/AspSession;
    if-eqz v6, :cond_0

    .line 29
    iget-object v7, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    monitor-enter v7

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    iget-object v1, v6, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    const/16 v2, 0x1c43

    const/16 v3, 0x11

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->addPortIsolation(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;)V

    .line 33
    monitor-exit v7

    .line 35
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 38
    :cond_0
    const-string v0, "WfdsSession:PortIsolation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable : aspSession is null for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePort(Ljava/lang/String;Ljava/lang/Integer;Lcom/lge/wfds/session/AspServicePort;)V
    .locals 8
    .param p1, "sessionMac"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/Integer;
    .param p3, "servicePort"    # Lcom/lge/wfds/session/AspServicePort;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v6

    .line 105
    .local v6, "aspSession":Lcom/lge/wfds/session/AspSession;
    if-eqz v6, :cond_0

    .line 111
    iget-object v7, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    monitor-enter v7

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation;->mPortIsolationListValue:Lcom/lge/wfds/session/PortIsolation$PortIsolationList;

    iget-object v1, v6, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    iget v2, p3, Lcom/lge/wfds/session/AspServicePort;->port:I

    iget v3, p3, Lcom/lge/wfds/session/AspServicePort;->proto:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->removePortIsolation(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;)V

    .line 115
    monitor-exit v7

    .line 119
    :goto_0
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 117
    :cond_0
    const-string v0, "WfdsSession:PortIsolation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePort : aspSession is null for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
