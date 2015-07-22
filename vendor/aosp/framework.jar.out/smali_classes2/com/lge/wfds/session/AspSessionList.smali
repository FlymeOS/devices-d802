.class public Lcom/lge/wfds/session/AspSessionList;
.super Ljava/lang/Object;
.source "AspSessionList.java"


# static fields
.field private static DBG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mSessions:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "AspSessionList"

    sput-object v0, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wfds/session/AspSessionList;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    .line 22
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    .line 25
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "debug"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    .line 28
    if-eqz p1, :cond_0

    .line 29
    sput-object p1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    .line 32
    :cond_0
    sput-boolean p2, Lcom/lge/wfds/session/AspSessionList;->DBG:Z

    .line 34
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    .line 37
    :cond_1
    return-void
.end method

.method private checkSessionPort(Ljava/lang/Integer;)Z
    .locals 6
    .param p1, "_port"    # Ljava/lang/Integer;

    .prologue
    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, "port_used":Z
    iget-object v4, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 223
    .local v3, "session_index":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 224
    iget-object v4, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wfds/session/AspSession;

    .line 225
    .local v2, "session":Lcom/lge/wfds/session/AspSession;
    iget-object v4, v2, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 226
    const/4 v1, 0x0

    .line 237
    .end local v1    # "port_used":Z
    .end local v2    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_1
    return v1

    .line 228
    .restart local v1    # "port_used":Z
    .restart local v2    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_2
    iget-object v4, v2, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 229
    .local v0, "port":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspServicePort;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/wfds/session/AspServicePort;

    iget v4, v4, Lcom/lge/wfds/session/AspServicePort;->port:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 231
    const/4 v1, 0x1

    .line 232
    goto :goto_0
.end method

.method private getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "session_mac"    # Ljava/lang/String;
    .param p2, "session_id"    # I

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSessionIpAddress(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .param p1, "session_mac"    # Ljava/lang/String;
    .param p2, "session_id"    # Ljava/lang/Integer;

    .prologue
    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 177
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, v0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 180
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSession(Lcom/lge/wfds/session/AspSession;)Z
    .locals 5
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    const/4 v1, 0x0

    .line 46
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    iget-object v2, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v3, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 52
    .local v0, "s":Lcom/lge/wfds/session/AspSession;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v3, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    iget-object v2, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v3, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-direct {p0, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-boolean v1, Lcom/lge/wfds/session/AspSessionList;->DBG:Z

    if-eqz v1, :cond_3

    .line 55
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AspSession added to Map : idx - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v4, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-direct {p0, v3, v4}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    const-string v2, "------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/wfds/session/AspSession;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    const-string v2, "------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 61
    :cond_4
    sget-object v2, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    const-string v3, "This Session is already added"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addSessionPort(Ljava/lang/String;Ljava/lang/Integer;Lcom/lge/wfds/session/AspServicePort;)Z
    .locals 5
    .param p1, "session_mac"    # Ljava/lang/String;
    .param p2, "session_id"    # Ljava/lang/Integer;
    .param p3, "port"    # Lcom/lge/wfds/session/AspServicePort;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 187
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v0, :cond_1

    iget v1, p3, Lcom/lge/wfds/session/AspServicePort;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/wfds/session/AspSessionList;->checkSessionPort(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    invoke-virtual {v0, p3}, Lcom/lge/wfds/session/AspSession;->addPort(Lcom/lge/wfds/session/AspServicePort;)V

    .line 189
    iget-object v1, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    iget-object v2, v0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v3, v0, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-direct {p0, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-boolean v1, Lcom/lge/wfds/session/AspSessionList;->DBG:Z

    if-eqz v1, :cond_0

    .line 191
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AspSession addSessionPort to Map : idx - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v4, v0, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-direct {p0, v3, v4}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    const-string v2, "------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/lge/wfds/session/AspSession;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    const-string v2, "------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    const/4 v1, 0x1

    .line 202
    .end local v0    # "session":Lcom/lge/wfds/session/AspSession;
    :goto_0
    return v1

    .line 198
    .restart local v0    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_1
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This Session is not in Session Map : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;
    .locals 2
    .param p1, "session_mac"    # Ljava/lang/String;
    .param p2, "session_id"    # Ljava/lang/Integer;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspSession;

    goto :goto_0
.end method

.method public getSession(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .param p1, "service_mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/lge/wfds/session/AspSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v2, "sessionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wfds/session/AspSession;>;"
    iget-object v3, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/lge/wfds/session/AspSessionList;->getSessionList()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    .local v1, "sessionAllList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspSession;

    .line 131
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v0    # "session":Lcom/lge/wfds/session/AspSession;
    .end local v1    # "sessionAllList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    return-object v3
.end method

.method public getSessionIpAddress(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;
    .locals 2
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v1, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/wfds/session/AspSessionList;->getSessionIpAddress(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSessionList()Ljava/util/Iterator;
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
    .line 141
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getSessionPort(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Iterator;
    .locals 3
    .param p1, "session_mac"    # Ljava/lang/String;
    .param p2, "session_id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/lge/wfds/session/AspServicePort;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "portList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wfds/session/AspServicePort;>;"
    iget-object v2, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    .line 210
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 211
    iget-object v0, v1, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 215
    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public getSessionSize()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public initSession()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 43
    :cond_0
    return-void
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "service_mac"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v2, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 108
    :cond_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 104
    .local v1, "sessionList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspSession;

    .line 106
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    iget-object v2, v0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v3, v0, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {p0, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->removeSession(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public removeSession(Ljava/lang/String;I)V
    .locals 2
    .param p1, "session_mac"    # Ljava/lang/String;
    .param p2, "session_id"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSessionIpAddress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "session_mac"    # Ljava/lang/String;
    .param p2, "session_id"    # I
    .param p3, "ip_address"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 160
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 161
    :cond_0
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This Session is not in Session Map : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {v0, p3}, Lcom/lge/wfds/session/AspSession;->setIpAddress(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    iget-object v2, v0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v3, v0, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-direct {p0, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSessionState(Ljava/lang/String;II)V
    .locals 4
    .param p1, "session_mac"    # Ljava/lang/String;
    .param p2, "session_id"    # I
    .param p3, "state"    # I

    .prologue
    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 150
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    if-nez v0, :cond_0

    .line 151
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This Session is not in Session Map : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {v0, p3}, Lcom/lge/wfds/session/AspSession;->setState(I)V

    .line 155
    iget-object v1, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    iget-object v2, v0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v3, v0, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-direct {p0, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateSession(Lcom/lge/wfds/session/AspSession;)Z
    .locals 5
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    const/4 v1, 0x0

    .line 69
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    iget-object v2, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v3, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 75
    .local v0, "s":Lcom/lge/wfds/session/AspSession;
    if-nez v0, :cond_3

    .line 76
    iget-object v1, p0, Lcom/lge/wfds/session/AspSessionList;->mSessions:Ljava/util/Map;

    iget-object v2, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v3, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-direct {p0, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-boolean v1, Lcom/lge/wfds/session/AspSessionList;->DBG:Z

    if-eqz v1, :cond_2

    .line 78
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AspSession updated to Map : idx - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v4, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-direct {p0, v3, v4}, Lcom/lge/wfds/session/AspSessionList;->getSessionIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    const-string v2, "------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/wfds/session/AspSession;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v1, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    const-string v2, "------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 84
    :cond_3
    sget-object v2, Lcom/lge/wfds/session/AspSessionList;->TAG:Ljava/lang/String;

    const-string v3, "This Session is not in Session Map"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
