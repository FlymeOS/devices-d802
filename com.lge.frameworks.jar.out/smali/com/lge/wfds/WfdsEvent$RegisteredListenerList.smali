.class Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;
.super Ljava/lang/Object;
.source "WfdsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisteredListenerList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;
    }
.end annotation


# instance fields
.field private mEventListenerId:I

.field private mRegListenerIdC:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;

.field private mRegisteredListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/wfds/WfdsEvent$RegisteredListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/wfds/WfdsEvent;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsEvent;)V
    .locals 2

    .prologue
    .line 277
    iput-object p1, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->this$0:Lcom/lge/wfds/WfdsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mEventListenerId:I

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    .line 280
    new-instance v0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;-><init>(Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;Lcom/lge/wfds/WfdsEvent$1;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegListenerIdC:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;

    .line 281
    return-void
.end method

.method private getEventListenerId()I
    .locals 2

    .prologue
    .line 293
    const/4 v0, -0x1

    .line 294
    .local v0, "eventListenerId":I
    iget v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mEventListenerId:I

    .end local v0    # "eventListenerId":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mEventListenerId:I

    .line 295
    .restart local v0    # "eventListenerId":I
    return v0
.end method

.method private trimEventListenerId()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mEventListenerId:I

    .line 290
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegListenerIdC:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 288
    iget-object v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    iget v0, v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mEventListenerId:I

    goto :goto_0
.end method


# virtual methods
.method add(Lcom/lge/wfds/WfdsEvent$RegisteredListener;)I
    .locals 2
    .param p1, "wfdsListener"    # Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    .prologue
    .line 299
    iget-object v1, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v1

    .line 300
    :try_start_0
    invoke-direct {p0}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->getEventListenerId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->setlistenerId(I)V

    .line 301
    iget-object v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget v0, p1, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    return v0

    .line 302
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method containsId(I)Lcom/lge/wfds/IWfdsEventListener;
    .locals 4
    .param p1, "listenerId"    # I

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v3, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-object v2

    .line 331
    :cond_1
    iget-object v3, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 332
    .local v1, "regListenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/WfdsEvent$RegisteredListener;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    .line 334
    .local v0, "regListener":Lcom/lge/wfds/WfdsEvent$RegisteredListener;
    iget v3, v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    if-ne v3, p1, :cond_2

    .line 335
    iget-object v2, v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->eventListener:Lcom/lge/wfds/IWfdsEventListener;

    goto :goto_0
.end method

.method containsListener(Lcom/lge/wfds/IWfdsEventListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/lge/wfds/IWfdsEventListener;

    .prologue
    const/4 v2, -0x1

    .line 343
    iget-object v3, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v2

    .line 347
    :cond_1
    iget-object v3, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 348
    .local v1, "regListenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/WfdsEvent$RegisteredListener;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    .line 350
    .local v0, "regListener":Lcom/lge/wfds/WfdsEvent$RegisteredListener;
    iget-object v3, v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->eventListenerBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/lge/wfds/IWfdsEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    iget v2, v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    goto :goto_0
.end method

.method remove(I)V
    .locals 4
    .param p1, "listenerId"    # I

    .prologue
    .line 307
    iget-object v3, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v3

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 309
    monitor-exit v3

    .line 323
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v2, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 313
    .local v1, "regListenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/WfdsEvent$RegisteredListener;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    .line 315
    .local v0, "regListener":Lcom/lge/wfds/WfdsEvent$RegisteredListener;
    iget v2, v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    if-ne v2, p1, :cond_1

    .line 316
    iget-object v2, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 321
    .end local v0    # "regListener":Lcom/lge/wfds/WfdsEvent$RegisteredListener;
    :cond_2
    invoke-direct {p0}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->trimEventListenerId()V

    .line 322
    monitor-exit v3

    goto :goto_0

    .end local v1    # "regListenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/WfdsEvent$RegisteredListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
