.class Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;
.super Ljava/lang/Object;
.source "PortIsolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/session/PortIsolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundPortInfo"
.end annotation


# instance fields
.field private mPortNumber:I

.field private mSessionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wfds/session/AspSession;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/wfds/session/PortIsolation;


# direct methods
.method constructor <init>(Lcom/lge/wfds/session/PortIsolation;IILjava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p2, "portNumber"    # I
    .param p3, "protocolNum"    # I
    .param p4, "sessionMac"    # Ljava/lang/String;
    .param p5, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->this$0:Lcom/lge/wfds/session/PortIsolation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput p2, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mPortNumber:I

    .line 323
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mSessionList:Ljava/util/Map;

    .line 324
    new-instance v0, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p4, v1}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 325
    .local v0, "aspSession":Lcom/lge/wfds/session/AspSession;
    invoke-virtual {v0, p2, p3}, Lcom/lge/wfds/session/AspSession;->addPort(II)V

    .line 326
    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mSessionList:Ljava/util/Map;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p3, p4, v2}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getMapIndex(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    return-void
.end method

.method private getMapIndex(ILjava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "protocolNum"    # I
    .param p2, "sessionMac"    # Ljava/lang/String;
    .param p3, "sessionId"    # I

    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getPortNumber()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mPortNumber:I

    return v0
.end method

.method getSessionList()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/lge/wfds/session/AspSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method getSessionSize()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method putSession(IILjava/lang/String;Ljava/lang/Integer;)Z
    .locals 3
    .param p1, "portNumber"    # I
    .param p2, "protocolNum"    # I
    .param p3, "sessionMac"    # Ljava/lang/String;
    .param p4, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 354
    iget v1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mPortNumber:I

    if-ne v1, p1, :cond_0

    .line 355
    new-instance v0, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p3, v1}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 356
    .local v0, "aspSession":Lcom/lge/wfds/session/AspSession;
    invoke-virtual {v0, p1, p2}, Lcom/lge/wfds/session/AspSession;->addPort(II)V

    .line 357
    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mSessionList:Ljava/util/Map;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p2, p3, v2}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getMapIndex(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const/4 v1, 0x1

    .line 360
    .end local v0    # "aspSession":Lcom/lge/wfds/session/AspSession;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method putSession(Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;)Z
    .locals 8
    .param p1, "boudnPortInfo"    # Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    .prologue
    const/4 v3, 0x0

    .line 338
    iget v4, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mPortNumber:I

    invoke-virtual {p1}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getPortNumber()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getSessionList()Ljava/util/Iterator;

    move-result-object v2

    .line 340
    .local v2, "sessionAllList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 342
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspServicePort;

    .line 343
    .local v0, "servicePort":Lcom/lge/wfds/session/AspServicePort;
    invoke-virtual {p1}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getPortNumber()I

    move-result v4

    iget v5, v0, Lcom/lge/wfds/session/AspServicePort;->proto:I

    iget-object v6, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v7, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->putSession(IILjava/lang/String;Ljava/lang/Integer;)Z

    goto :goto_0

    .line 348
    .end local v0    # "servicePort":Lcom/lge/wfds/session/AspServicePort;
    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_0
    const/4 v3, 0x1

    .line 350
    .end local v2    # "sessionAllList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :cond_1
    return v3
.end method

.method removeAllSession()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 400
    return-void
.end method

.method removeSession(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "protocolNum"    # I
    .param p2, "sessionMac"    # Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mSessionList:Ljava/util/Map;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getMapIndex(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    return-void
.end method

.method removeSession(Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V
    .locals 6
    .param p1, "boudnPortInfo"    # Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    .prologue
    .line 364
    iget v3, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mPortNumber:I

    invoke-virtual {p1}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getPortNumber()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getSessionList()Ljava/util/Iterator;

    move-result-object v2

    .line 366
    .local v2, "sessionAllList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 368
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspServicePort;

    .line 369
    .local v0, "servicePort":Lcom/lge/wfds/session/AspServicePort;
    iget v3, v0, Lcom/lge/wfds/session/AspServicePort;->proto:I

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->removeSession(ILjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 374
    .end local v0    # "servicePort":Lcom/lge/wfds/session/AspServicePort;
    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    .end local v2    # "sessionAllList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :cond_0
    return-void
.end method

.method removeSession(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 7
    .param p1, "sessionMac"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "bFindSession":Z
    invoke-virtual {p0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getSessionList()Ljava/util/Iterator;

    move-result-object v3

    .line 383
    .local v3, "sessionAllList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 384
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wfds/session/AspSession;

    .line 385
    .local v2, "session":Lcom/lge/wfds/session/AspSession;
    iget-object v4, v2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v2, Lcom/lge/wfds/session/AspSession;->session_id:I

    if-ne v4, v5, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 388
    iget-object v4, v2, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/session/AspServicePort;

    .line 389
    .local v1, "servicePort":Lcom/lge/wfds/session/AspServicePort;
    iget v4, v1, Lcom/lge/wfds/session/AspServicePort;->proto:I

    iget-object v5, v2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v6, v2, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->removeSession(ILjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 395
    .end local v1    # "servicePort":Lcom/lge/wfds/session/AspServicePort;
    .end local v2    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_1
    return v0
.end method

.method setPortNumber(I)V
    .locals 0
    .param p1, "portNumber"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->mPortNumber:I

    .line 331
    return-void
.end method
