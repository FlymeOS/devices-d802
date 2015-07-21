.class public Lcom/android/server/ePDGNotifier;
.super Ljava/lang/Object;
.source "ePDGNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ePDGNotifier$1;,
        Lcom/android/server/ePDGNotifier$eRecord;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ePDGNotifier"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ePDGNotifier$eRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mePDGTracker:Lcom/android/server/ePDGTracker;

.field public myfeature:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ePDGTracker;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tracker"    # Lcom/android/server/ePDGTracker;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ePDGNotifier;->myfeature:I

    .line 73
    iput-object p1, p0, Lcom/android/server/ePDGNotifier;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    .line 75
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    iput v0, p0, Lcom/android/server/ePDGNotifier;->myfeature:I

    .line 84
    return-void
.end method

.method public static convertPDNState(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 599
    packed-switch p0, :pswitch_data_0

    .line 619
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 613
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 617
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 211
    .local v0, "b":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/ePDGNotifier;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 213
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 215
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 196
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 198
    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 199
    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ePDGNotifier$eRecord;

    iget-object v2, v2, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    monitor-exit v3

    .line 205
    :goto_1
    return-void

    .line 198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "recordCount":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public ePDGlisten(Landroid/net/IePDGStateListener;I)V
    .locals 13
    .param p1, "callback"    # Landroid/net/IePDGStateListener;
    .param p2, "events"    # I

    .prologue
    .line 90
    if-eqz p2, :cond_5

    .line 92
    iget-object v10, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    .line 94
    const/4 v6, 0x0

    .line 96
    .local v6, "r":Lcom/android/server/ePDGNotifier$eRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/net/IePDGStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 97
    .local v1, "b":Landroid/os/IBinder;
    iget-object v9, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 98
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v7, v6

    .end local v6    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    .local v7, "r":Lcom/android/server/ePDGNotifier$eRecord;
    :goto_0
    if-ge v3, v0, :cond_4

    .line 99
    :try_start_1
    iget-object v9, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ePDGNotifier$eRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .end local v7    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    .restart local v6    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    :try_start_2
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    if-ne v1, v9, :cond_3

    .line 110
    :goto_1
    iget v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->events:I

    xor-int/2addr v9, p2

    and-int v8, p2, v9

    .line 111
    .local v8, "send":I
    iput p2, v6, Lcom/android/server/ePDGNotifier$eRecord;->events:I

    .line 113
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_0

    .line 114
    const/4 v9, 0x2

    new-array v5, v9, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .local v5, "mystate":[I
    const/4 v9, 0x0

    const/4 v11, 0x0

    :try_start_3
    aput v11, v5, v9

    .line 117
    const/4 v9, 0x1

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v11, v11, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    aput v11, v5, v9

    .line 118
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v9, v5}, Landroid/net/IePDGStateListener;->onPDPStateChanged([I)V

    .line 119
    const/4 v9, 0x0

    const/4 v11, 0x1

    aput v11, v5, v9

    .line 120
    const/4 v9, 0x1

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v11, v11, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    aput v11, v5, v9

    .line 121
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v9, v5}, Landroid/net/IePDGStateListener;->onPDPStateChanged([I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    .end local v5    # "mystate":[I
    :cond_0
    :goto_2
    and-int/lit8 v9, p2, 0x4

    if-eqz v9, :cond_1

    .line 140
    :try_start_4
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-boolean v11, v11, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    invoke-interface {v9, v11}, Landroid/net/IePDGStateListener;->onWiFiStatusChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    :cond_1
    :goto_3
    and-int/lit8 v9, p2, 0x10

    if-eqz v9, :cond_2

    .line 171
    const/4 v9, 0x7

    :try_start_5
    new-array v4, v9, [Ljava/lang/String;

    .line 173
    .local v4, "myinfo":[Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v11, 0x0

    aput-object v11, v4, v9

    .line 174
    const/4 v9, 0x1

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v11, v11, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    aput-object v11, v4, v9

    .line 175
    const/4 v9, 0x2

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v11, v11, Lcom/android/server/ePDGTracker;->FQDNForEPDG:Ljava/lang/String;

    aput-object v11, v4, v9

    .line 176
    const/4 v9, 0x3

    iget-object v11, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v11, v11, Lcom/android/server/ePDGTracker;->ePDGAddrofThisnetwork:Ljava/lang/String;

    aput-object v11, v4, v9

    .line 177
    const/4 v9, 0x4

    const/4 v11, 0x0

    aput-object v11, v4, v9

    .line 178
    const/4 v9, 0x5

    const/4 v11, 0x0

    aput-object v11, v4, v9

    .line 179
    const/4 v9, 0x6

    const/4 v11, 0x0

    aput-object v11, v4, v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    :try_start_6
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v9, v4}, Landroid/net/IePDGStateListener;->onConnectionParamStatus([Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    .end local v4    # "myinfo":[Ljava/lang/String;
    :cond_2
    :goto_4
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 192
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v3    # "i":I
    .end local v6    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    .end local v8    # "send":I
    :goto_5
    return-void

    .line 98
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v3    # "i":I
    .restart local v6    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move-object v7, v6

    .end local v6    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    .restart local v7    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    goto/16 :goto_0

    .line 104
    :cond_4
    :try_start_8
    new-instance v6, Lcom/android/server/ePDGNotifier$eRecord;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/server/ePDGNotifier$eRecord;-><init>(Lcom/android/server/ePDGNotifier$1;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 105
    .end local v7    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    .restart local v6    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    :try_start_9
    iput-object v1, v6, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    .line 106
    iput-object p1, v6, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    .line 108
    iget-object v9, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 186
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v3    # "i":I
    :catchall_0
    move-exception v9

    :goto_6
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v9

    .line 133
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v3    # "i":I
    .restart local v5    # "mystate":[I
    .restart local v8    # "send":I
    :catch_0
    move-exception v2

    .line 134
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_a
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/ePDGNotifier;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 141
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v5    # "mystate":[I
    :catch_1
    move-exception v2

    .line 142
    .restart local v2    # "ex":Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/ePDGNotifier;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 182
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "myinfo":[Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 183
    .restart local v2    # "ex":Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/ePDGNotifier;->remove(Landroid/os/IBinder;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 189
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "myinfo":[Ljava/lang/String;
    .end local v6    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    .end local v8    # "send":I
    :cond_5
    invoke-interface {p1}, Landroid/net/IePDGStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/ePDGNotifier;->remove(Landroid/os/IBinder;)V

    goto :goto_5

    .line 186
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v3    # "i":I
    .restart local v7    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    .restart local v6    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    goto :goto_6
.end method

.method public getTypebyid(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 554
    if-nez p1, :cond_0

    .line 555
    const-string v0, "ims"

    .line 563
    :goto_0
    return-object v0

    .line 556
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 557
    const-string v0, "vzwapp"

    goto :goto_0

    .line 558
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 559
    const-string v0, "CF"

    goto :goto_0

    .line 560
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 561
    const-string v0, "Static"

    goto :goto_0

    .line 563
    :cond_3
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public notifyADDRChange(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x5

    .line 451
    if-le p1, v4, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const/4 v2, 0x0

    .line 463
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 467
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v3, v3, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v3, v3, p1

    if-nez v3, :cond_0

    .line 468
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    invoke-virtual {v3, p1}, Lcom/android/server/ePDGTracker;->getePDGLinkProp(I)Landroid/net/LinkProperties;

    move-result-object v2

    goto :goto_0

    .line 515
    :cond_2
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v3, v3, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v0, v3, p1

    .line 516
    .local v0, "currentstatus":I
    const/4 v1, 0x0

    .line 517
    .local v1, "currenttech":I
    if-ne v0, v4, :cond_3

    .line 519
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    invoke-virtual {v3, p1}, Lcom/android/server/ePDGTracker;->getePDGLinkProp(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 520
    const/16 v1, 0xd

    goto :goto_0

    .line 522
    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    .line 524
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    invoke-virtual {v3, p1}, Lcom/android/server/ePDGTracker;->getePDGLinkProp(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 525
    goto :goto_0
.end method

.method public notifyErrorStatus(I)V
    .locals 6
    .param p1, "mid"    # I

    .prologue
    .line 413
    if-nez p1, :cond_3

    .line 415
    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 417
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ePDGNotifier$eRecord;

    .line 418
    .local v2, "r":Lcom/android/server/ePDGNotifier$eRecord;
    iget v3, v2, Lcom/android/server/ePDGNotifier$eRecord;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 420
    :try_start_1
    iget-object v3, v2, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v5, v5, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    aget v5, v5, p1

    invoke-interface {v3, v5}, Landroid/net/IePDGStateListener;->onErrorStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 427
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 426
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ePDGNotifier;->handleRemoveListLocked()V

    .line 427
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 429
    :cond_3
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 431
    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 433
    :try_start_4
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ePDGNotifier$eRecord;

    .line 434
    .restart local v2    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    iget v3, v2, Lcom/android/server/ePDGNotifier$eRecord;->events:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    .line 436
    :try_start_5
    iget-object v3, v2, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v5, v5, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    aget v5, v5, p1

    invoke-interface {v3, v5}, Landroid/net/IePDGStateListener;->onCBSErrorStatusChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 437
    :catch_1
    move-exception v0

    .line 438
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_6
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 443
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 442
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/ePDGNotifier;->handleRemoveListLocked()V

    .line 443
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1
.end method

.method public notifyPDPState(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x1

    .line 237
    const/4 v5, 0x5

    if-le p1, v5, :cond_0

    .line 327
    :goto_0
    return-void

    .line 242
    :cond_0
    iget v5, p0, Lcom/android/server/ePDGNotifier;->myfeature:I

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/android/server/ePDGNotifier;->myfeature:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    .line 244
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGNotifier;->notifyTMUSPDPState(I)V

    goto :goto_0

    .line 248
    :cond_2
    const-string v5, "ePDG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifiy ststus : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    invoke-virtual {v7, p1}, Lcom/android/server/ePDGTracker;->getePDGstatuswithfid(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-ne p1, v8, :cond_3

    .line 257
    const/4 v2, 0x0

    .line 259
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v5, v5, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v5, v5, p1

    if-nez v5, :cond_3

    .line 260
    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    invoke-virtual {v5, p1}, Lcom/android/server/ePDGTracker;->getePDGLinkProp(I)Landroid/net/LinkProperties;

    .line 310
    .end local v2    # "linkProperties":Landroid/net/LinkProperties;
    :cond_3
    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 312
    const/4 v5, 0x2

    :try_start_0
    new-array v3, v5, [I

    .line 314
    .local v3, "mystate":[I
    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ePDGNotifier$eRecord;

    .line 315
    .local v4, "r":Lcom/android/server/ePDGNotifier$eRecord;
    iget v5, v4, Lcom/android/server/ePDGNotifier$eRecord;->events:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 316
    const/4 v5, 0x0

    aput p1, v3, v5

    .line 317
    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    invoke-virtual {v7, p1}, Lcom/android/server/ePDGTracker;->getePDGstatuswithfid(I)I

    move-result v7

    aput v7, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :try_start_1
    iget-object v5, v4, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v5, v3}, Landroid/net/IePDGStateListener;->onPDPStateChanged([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v4, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "mystate":[I
    .end local v4    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 325
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mystate":[I
    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ePDGNotifier;->handleRemoveListLocked()V

    .line 326
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyTMUSPDPState(I)V
    .locals 10
    .param p1, "id"    # I

    .prologue
    .line 334
    const/4 v4, 0x0

    .line 336
    .local v4, "linkProperties":Landroid/net/LinkProperties;
    iget-object v7, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v7, v7, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v0, v7, p1

    .line 337
    .local v0, "currentstatus":I
    const/4 v1, 0x0

    .line 338
    .local v1, "currenttech":I
    const/4 v7, 0x5

    if-ne v0, v7, :cond_2

    .line 340
    const/16 v1, 0xd

    .line 341
    iget-object v7, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    invoke-virtual {v7, p1}, Lcom/android/server/ePDGTracker;->getePDGLinkProp(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 369
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v8

    .line 371
    const/4 v7, 0x2

    :try_start_0
    new-array v5, v7, [I

    .line 373
    .local v5, "mystate":[I
    iget-object v7, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ePDGNotifier$eRecord;

    .line 374
    .local v6, "r":Lcom/android/server/ePDGNotifier$eRecord;
    iget v7, v6, Lcom/android/server/ePDGNotifier$eRecord;->events:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 375
    const/4 v7, 0x0

    aput p1, v5, v7

    .line 376
    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v9, v9, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v9, v9, p1

    aput v9, v5, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :try_start_1
    iget-object v7, v6, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v7, v5}, Landroid/net/IePDGStateListener;->onPDPStateChanged([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 379
    :catch_0
    move-exception v2

    .line 380
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v7, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    iget-object v9, v6, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 387
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "mystate":[I
    .end local v6    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 343
    :cond_2
    const/4 v7, 0x6

    if-ne v0, v7, :cond_0

    .line 345
    const/16 v1, 0x12

    .line 346
    iget-object v7, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    invoke-virtual {v7, p1}, Lcom/android/server/ePDGTracker;->getePDGLinkProp(I)Landroid/net/LinkProperties;

    move-result-object v4

    goto :goto_0

    .line 384
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "mystate":[I
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ePDGNotifier;->handleRemoveListLocked()V

    .line 387
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    return-void
.end method

.method public notifyWIFIStatus()V
    .locals 6

    .prologue
    .line 394
    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 396
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ePDGNotifier$eRecord;

    .line 397
    .local v2, "r":Lcom/android/server/ePDGNotifier$eRecord;
    iget v3, v2, Lcom/android/server/ePDGNotifier$eRecord;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 399
    :try_start_1
    iget-object v3, v2, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-boolean v5, v5, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    invoke-interface {v3, v5}, Landroid/net/IePDGStateListener;->onWiFiStatusChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 405
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ePDGNotifier;->handleRemoveListLocked()V

    .line 406
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 407
    return-void
.end method

.method public notifyonConnectionParam(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 571
    iget-object v5, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 573
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ePDGNotifier$eRecord;

    .line 574
    .local v3, "r":Lcom/android/server/ePDGNotifier$eRecord;
    iget v4, v3, Lcom/android/server/ePDGNotifier$eRecord;->events:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_0

    .line 577
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    .line 579
    .local v2, "myinfo":[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/ePDGNotifier;->getTypebyid(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 580
    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v6, v6, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    aput-object v6, v2, v4

    .line 581
    const/4 v4, 0x2

    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v6, v6, Lcom/android/server/ePDGTracker;->FQDNForEPDG:Ljava/lang/String;

    aput-object v6, v2, v4

    .line 582
    const/4 v4, 0x3

    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v6, v6, Lcom/android/server/ePDGTracker;->ePDGAddrofThisnetwork:Ljava/lang/String;

    aput-object v6, v2, v4

    .line 583
    const/4 v4, 0x4

    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v6, v6, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v2, v4

    .line 584
    const/4 v4, 0x5

    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v6, v6, Lcom/android/server/ePDGTracker;->iPsecIf:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v2, v4

    .line 585
    const/4 v4, 0x6

    iget-object v6, p0, Lcom/android/server/ePDGNotifier;->mePDGTracker:Lcom/android/server/ePDGTracker;

    iget-object v6, v6, Lcom/android/server/ePDGTracker;->iPsecGW:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :try_start_1
    iget-object v4, v3, Lcom/android/server/ePDGNotifier$eRecord;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v4, v2}, Landroid/net/IePDGStateListener;->onConnectionParamStatus([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/ePDGNotifier;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/ePDGNotifier$eRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "myinfo":[Ljava/lang/String;
    .end local v3    # "r":Lcom/android/server/ePDGNotifier$eRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 593
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ePDGNotifier;->handleRemoveListLocked()V

    .line 594
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 595
    return-void
.end method
