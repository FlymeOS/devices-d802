.class public Lcom/vzw/location/server/VzwClientManager;
.super Ljava/lang/Object;
.source "VzwClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/server/VzwClientManager$1;,
        Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwClientManager"

.field private static final provider:Ljava/lang/String; = "vzw_lbs"


# instance fields
.field private DEBUG:Z

.field private final mRequestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vzw/location/server/VzwClient;",
            ">;"
        }
    .end annotation
.end field

.field mTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vzw/location/server/VzwClient;",
            "Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;",
            ">;"
        }
    .end annotation
.end field

.field public final mVzwClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vzw/location/server/VzwClient;",
            ">;"
        }
    .end annotation
.end field

.field private mVzwLocSrv:Lcom/vzw/location/server/VzwLocationManagerService;


# direct methods
.method public constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/server/VzwClientManager;->DEBUG:Z

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwClientManager;->mRequestQueue:Ljava/util/LinkedList;

    .line 49
    iput-object p1, p0, Lcom/vzw/location/server/VzwClientManager;->mVzwLocSrv:Lcom/vzw/location/server/VzwLocationManagerService;

    .line 50
    return-void
.end method

.method static synthetic access$1000(Lcom/vzw/location/server/VzwClientManager;)Lcom/vzw/location/server/VzwLocationManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClientManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager;->mVzwLocSrv:Lcom/vzw/location/server/VzwLocationManagerService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vzw/location/server/VzwClientManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClientManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vzw/location/server/VzwClientManager;Lcom/vzw/location/server/VzwClient;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClientManager;
    .param p1, "x1"    # Lcom/vzw/location/server/VzwClient;
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/vzw/location/server/VzwClientManager;->scheduleNextenQueue(Lcom/vzw/location/server/VzwClient;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/vzw/location/server/VzwClientManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClientManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vzw/location/server/VzwClientManager;->requestStart()V

    return-void
.end method

.method private printAllLists(Ljava/lang/String;)V
    .locals 3
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/vzw/location/server/VzwClientManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "VzwClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START PRINT LISTS FROM ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/vzw/location/server/VzwClientManager;->printVzwClients()V

    .line 84
    invoke-virtual {p0}, Lcom/vzw/location/server/VzwClientManager;->printVzwClientSchedules()V

    .line 85
    invoke-virtual {p0}, Lcom/vzw/location/server/VzwClientManager;->printRequestQueue()V

    .line 86
    const-string v0, "VzwClientManager"

    const-string v1, "END PRINT LISTS----------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.method private removeClientFromQueue(Lcom/vzw/location/server/VzwClient;)V
    .locals 6
    .param p1, "client"    # Lcom/vzw/location/server/VzwClient;

    .prologue
    .line 105
    iget-object v3, p0, Lcom/vzw/location/server/VzwClientManager;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 106
    :try_start_0
    const-string v2, "VzwClientManager"

    const-string v4, "[removeClientFromQueue] Searching if same client exists from queue."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 108
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/server/VzwClient;

    .line 110
    .local v1, "temp_Client":Lcom/vzw/location/server/VzwClient;
    invoke-virtual {v1}, Lcom/vzw/location/server/VzwClient;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/vzw/location/server/VzwClient;->getUid()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 111
    const-string v2, "VzwClientManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[removeClientFromQueue] Found client. remove it from queue. uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/vzw/location/server/VzwClient;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 116
    .end local v1    # "temp_Client":Lcom/vzw/location/server/VzwClient;
    :cond_1
    monitor-exit v3

    .line 117
    return-void

    .line 116
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private declared-synchronized requestStart()V
    .locals 7

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    const-string v4, "VzwClientManager"

    const-string v5, "[requestStart] Start.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    :cond_0
    const-string v4, "VzwClientManager"

    const-string v5, "[requestStart] There is nothing to request."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-boolean v4, p0, Lcom/vzw/location/server/VzwClientManager;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 144
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    const-string v4, "VzwClientManager"

    const-string v5, "[requestStart] mRequestQueue is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    const-string v4, "VzwClientManager"

    const-string v5, "[requestStart] mTracker is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 153
    :cond_3
    const/4 v2, 0x1

    .line 154
    .local v2, "providerAvailable":Z
    :try_start_1
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 155
    .local v0, "mPrvoiderHolder":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .line 157
    .local v3, "temp_schduler":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    iget-boolean v4, v3, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mProviderHolder:Z

    if-eqz v4, :cond_4

    .line 158
    const-string v4, "VzwClientManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestStart] There is providerHolder. uId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v3}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->access$000(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)Lcom/vzw/location/server/VzwClient;

    move-result-object v6

    iget v6, v6, Lcom/vzw/location/server/VzwClient;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v2, 0x0

    goto :goto_1

    .line 162
    .end local v3    # "temp_schduler":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    :cond_5
    if-eqz v2, :cond_2

    .line 164
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/vzw/location/server/VzwClientManager;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .line 166
    .local v1, "nextScheduler":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    if-eqz v1, :cond_6

    .line 167
    const-string v4, "VzwClientManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestStart] Start scheduler. uId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v1}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->access$000(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)Lcom/vzw/location/server/VzwClient;

    move-result-object v6

    iget v6, v6, Lcom/vzw/location/server/VzwClient;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    # invokes: Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->start()V
    invoke-static {v1}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->access$100(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    .end local v0    # "mPrvoiderHolder":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;>;"
    .end local v1    # "nextScheduler":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    .end local v2    # "providerAvailable":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 170
    .restart local v0    # "mPrvoiderHolder":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;>;"
    .restart local v1    # "nextScheduler":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    .restart local v2    # "providerAvailable":Z
    :cond_6
    :try_start_2
    const-string v4, "VzwClientManager"

    const-string v5, "[requestStart] nextScheduler is null. Do not start scheduler."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private scheduleNextenQueue(Lcom/vzw/location/server/VzwClient;Z)V
    .locals 3
    .param p1, "client"    # Lcom/vzw/location/server/VzwClient;
    .param p2, "isSingle"    # Z

    .prologue
    .line 120
    const-string v0, "VzwClientManager"

    const-string v1, "[scheduleNextenQueue] Start scheduleNextenQueue.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwClientManager;->removeClientFromQueue(Lcom/vzw/location/server/VzwClient;)V

    .line 124
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 125
    if-eqz p2, :cond_0

    .line 126
    :try_start_0
    const-string v0, "VzwClientManager"

    const-string v2, "[scheduleNextenQueue] It is SingShot. Add at First."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 133
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-direct {p0}, Lcom/vzw/location/server/VzwClientManager;->requestStart()V

    .line 135
    return-void

    .line 130
    :cond_0
    :try_start_1
    const-string v0, "VzwClientManager"

    const-string v2, "[scheduleNextenQueue] It is Tracking. Add at Last."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z
    .locals 4
    .param p1, "client"    # Lcom/vzw/location/server/VzwClient;

    .prologue
    .line 223
    const-string v1, "VzwClientManager"

    const-string v2, "[disposeIfClientDead] disposeIfClientDead called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v1, "Manager disposeIfClientDead start"

    invoke-direct {p0, v1}, Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lcom/vzw/location/server/VzwClient;->isDead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    const-string v1, "VzwClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[disposeIfClientDead] The client was DEAD! destroyClient. uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vzw/location/server/VzwClient;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    iget v2, p1, Lcom/vzw/location/server/VzwClient;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .line 229
    .local v0, "deadSchedule":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    if-eqz v0, :cond_0

    .line 230
    const-string v1, "VzwClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[disposeIfClientDead] Scheduler for client is still ALIVE. uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vzw/location/server/VzwClient;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->finish()V

    .line 233
    :cond_0
    const-string v1, "Manager disposeIfClientDead end good"

    invoke-direct {p0, v1}, Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x1

    .line 237
    .end local v0    # "deadSchedule":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    :goto_0
    return v1

    .line 236
    :cond_1
    const-string v1, "Manager disposeIfClientDead end bad"

    invoke-direct {p0, v1}, Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V

    .line 237
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVzwClient(II)Lcom/vzw/location/server/VzwClient;
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 91
    const-string v1, "VzwClientManager"

    const-string v2, "[getVzwClient] Getting client."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .line 94
    .local v0, "mClient":Lcom/vzw/location/server/VzwClient;
    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/vzw/location/server/VzwClient;

    .end local v0    # "mClient":Lcom/vzw/location/server/VzwClient;
    invoke-direct {v0, p1, p2}, Lcom/vzw/location/server/VzwClient;-><init>(II)V

    .line 96
    .restart local v0    # "mClient":Lcom/vzw/location/server/VzwClient;
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "VzwClientManager"

    const-string v2, "[getVzwClient] There is no Client in set. Create new & add."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    const-string v1, "VzwClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getVzwClient] Client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vzw/location/server/VzwClient;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v0
.end method

.method public killSchedule(Lcom/vzw/location/server/VzwClient;)V
    .locals 5
    .param p1, "client"    # Lcom/vzw/location/server/VzwClient;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwClientManager;->removeClientFromQueue(Lcom/vzw/location/server/VzwClient;)V

    .line 244
    const-string v2, "VzwClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[killSchedule] killSchdule called & client is removed from tracker list.uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vzw/location/server/VzwClient;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .line 246
    .local v1, "tempScheduler":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    if-eqz v1, :cond_0

    .line 248
    const-string v2, "VzwClientManager"

    const-string v3, "[killSchedule] remove runnable that was schduled before."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    # getter for: Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;
    invoke-static {v1}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->access$500(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    move-result-object v2

    # getter for: Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->access$400(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    const-string v2, "VzwClientManager"

    const-string v3, "[killSchedule] Removed tracker was last one, stop navigating."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager;->mVzwLocSrv:Lcom/vzw/location/server/VzwLocationManagerService;

    invoke-virtual {v2}, Lcom/vzw/location/server/VzwLocationManagerService;->requestStopNavigating()V

    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager;->mVzwLocSrv:Lcom/vzw/location/server/VzwLocationManagerService;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/vzw/location/server/VzwLocationManagerService;->reportAllVzwGpsStatusChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "VzwClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[killSchedule] Error caused with reportAllVzwGpsStatusChanged. msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLocationFixReceived(Lcom/vzw/location/VzwLocation;I)V
    .locals 5
    .param p1, "loc"    # Lcom/vzw/location/VzwLocation;
    .param p2, "sessionId"    # I

    .prologue
    .line 200
    const-string v2, "VzwClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onLocationFixReceived] Fix Received. sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v2, "Manager onLocationFixReceived"

    invoke-direct {p0, v2}, Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .line 203
    .local v0, "client":Lcom/vzw/location/server/VzwClient;
    if-eqz v0, :cond_1

    .line 204
    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .line 205
    .local v1, "s":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    if-eqz v1, :cond_0

    .line 206
    # invokes: Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->handleFix(Lcom/vzw/location/VzwLocation;)V
    invoke-static {v1, p1}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->access$300(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;Lcom/vzw/location/VzwLocation;)V

    .line 220
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    .line 211
    const-string v2, "VzwClientManager"

    const-string v3, "[onLocationFixReceived] There is no ClientScheduler for this fix. Discard reporting."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .end local v1    # "s":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method public printRequestQueue()V
    .locals 5

    .prologue
    .line 73
    const-string/jumbo v0, "|"

    .line 74
    .local v0, "print":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/server/VzwClient;

    iget v2, v2, Lcom/vzw/location/server/VzwClient;->mUid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    const-string v2, "VzwClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRequestQueue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public printVzwClientSchedules()V
    .locals 6

    .prologue
    .line 63
    iget-object v3, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    const-string/jumbo v2, "|"

    .line 65
    .local v2, "print":Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .line 67
    .local v0, "client":Lcom/vzw/location/server/VzwClient;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/vzw/location/server/VzwClient;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    goto :goto_0

    .line 69
    .end local v0    # "client":Lcom/vzw/location/server/VzwClient;
    :cond_0
    const-string v3, "VzwClientManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTracker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public printVzwClients()V
    .locals 6

    .prologue
    .line 53
    iget-object v3, p0, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string/jumbo v1, "|"

    .line 55
    .local v1, "print":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 57
    .local v2, "uid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    goto :goto_0

    .line 59
    .end local v2    # "uid":I
    :cond_0
    const-string v3, "VzwClientManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVzwClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public removeLocationListener(II)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 265
    const-string v1, "Manager removeLocationListener start"

    invoke-direct {p0, v1}, Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .line 268
    .local v0, "client":Lcom/vzw/location/server/VzwClient;
    if-nez v0, :cond_0

    .line 269
    const-string v1, "VzwClientManager"

    const-string v2, "[removeLocationListener] removing location listener from non existing client"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v1, "Manager removeLocationListener wtf"

    invoke-direct {p0, v1}, Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V

    .line 271
    const/4 v1, 0x0

    .line 280
    :goto_0
    return v1

    .line 274
    :cond_0
    const-string v1, "VzwClientManager"

    const-string v2, "[removeLocationListener] remove locationlistener from client."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0}, Lcom/vzw/location/server/VzwClient;->removeVzwGpsLocationListener()Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    .line 276
    const-string v1, "VzwClientManager"

    const-string v2, "[removeLocationListener] disposeClient if dead."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0, v0}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    .line 279
    const-string v1, "Manager removeLocationListener end"

    invoke-direct {p0, v1}, Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V

    .line 280
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeStatusListener(IILcom/vzw/location/IVzwGpsStatusListener;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "listener"    # Lcom/vzw/location/IVzwGpsStatusListener;

    .prologue
    .line 284
    const-string v1, "Manager removeStatusListener"

    invoke-direct {p0, v1}, Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .line 287
    .local v0, "client":Lcom/vzw/location/server/VzwClient;
    if-nez v0, :cond_0

    .line 288
    const-string v1, "VzwClientManager"

    const-string v2, "[removeStatusListener] removing status listener from non existing client"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v1, 0x0

    .line 296
    :goto_0
    return v1

    .line 291
    :cond_0
    const-string v1, "VzwClientManager"

    const-string v2, "[removeStatusListener] removing status listener from client"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v0, p3}, Lcom/vzw/location/server/VzwClient;->removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V

    .line 293
    const-string v1, "VzwClientManager"

    const-string v2, "[removeLocationListener] disposeClient if dead."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0, v0}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    .line 296
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public startClient(Lcom/vzw/location/server/VzwClient;)V
    .locals 4
    .param p1, "client"    # Lcom/vzw/location/server/VzwClient;

    .prologue
    .line 176
    const-string v1, "VzwClientManager"

    const-string v2, "[startClient] Start location fix request. Set schedular."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v1, "Manager startClient start"

    invoke-direct {p0, v1}, Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V

    .line 179
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .line 183
    .local v0, "scheduler":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    if-eqz v0, :cond_2

    .line 184
    const-string v1, "VzwClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[startClient] There is previous request. Finish it and re-schdule. uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->access$000(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)Lcom/vzw/location/server/VzwClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vzw/location/server/VzwClient;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->finish()V

    .line 188
    :cond_2
    new-instance v0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .end local v0    # "scheduler":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    invoke-direct {v0, p0, p1}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;-><init>(Lcom/vzw/location/server/VzwClientManager;Lcom/vzw/location/server/VzwClient;)V

    .line 189
    .restart local v0    # "scheduler":Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    invoke-virtual {p1, v0}, Lcom/vzw/location/server/VzwClient;->setCurrScheduler(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V

    .line 190
    const-string v1, "VzwClientManager"

    const-string v2, "[startClient] Add client & clientSchedular to TrackerList."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    if-eqz v0, :cond_3

    # invokes: Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->schedule()V
    invoke-static {v0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->access$200(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V

    .line 196
    const-string v1, "Manager startClient end"

    invoke-direct {p0, v1}, Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V

    .line 197
    return-void

    .line 195
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method
