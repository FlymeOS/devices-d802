.class public Lcom/android/server/net/NetworkStatsServiceEx;
.super Lcom/android/server/net/NetworkStatsService;
.source "NetworkStatsServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsServiceEx$1;,
        Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;
    }
.end annotation


# instance fields
.field private mBinderInternal:Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/IAlarmManager;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V

    .line 17
    iput-object v1, p0, Lcom/android/server/net/NetworkStatsServiceEx;->mBinderInternal:Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;

    .line 40
    new-instance v0, Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/net/NetworkStatsServiceEx;Lcom/android/server/net/NetworkStatsServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsServiceEx;->mBinderInternal:Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkStatsServiceEx;Landroid/net/NetworkTemplate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsServiceEx;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsServiceEx;->clearUsageByTemplate(Landroid/net/NetworkTemplate;)Z

    move-result v0

    return v0
.end method

.method private clearUsageByTemplate(Landroid/net/NetworkTemplate;)Z
    .locals 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v13, 0x0

    .line 61
    new-array v11, v13, [I

    .line 62
    .local v11, "uids":[I
    new-array v7, v13, [I

    .line 64
    .local v7, "taguids":[I
    const/4 v1, 0x0

    .line 65
    .local v1, "UidCollection":Lcom/android/server/net/NetworkStatsCollectionEx;
    const/4 v2, 0x0

    .line 67
    .local v2, "UidTagCollection":Lcom/android/server/net/NetworkStatsCollectionEx;
    iget-object v14, p0, Lcom/android/server/net/NetworkStatsServiceEx;->mStatsLock:Ljava/lang/Object;

    monitor-enter v14

    .line 68
    :try_start_0
    iget-object v13, p0, Lcom/android/server/net/NetworkStatsServiceEx;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/android/server/net/NetworkStatsCollectionEx;

    move-object v1, v0

    .line 69
    iget-object v13, p0, Lcom/android/server/net/NetworkStatsServiceEx;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/android/server/net/NetworkStatsCollectionEx;

    move-object v2, v0

    .line 70
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsCollectionEx;->getUids(Landroid/net/NetworkTemplate;)[I

    move-result-object v11

    .line 74
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsCollectionEx;->getUids(Landroid/net/NetworkTemplate;)[I

    move-result-object v7

    .line 77
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsServiceEx;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    check-cast v9, Lcom/android/server/net/NetworkStatsRecorderEx;

    .line 78
    .local v9, "uidRecorder":Lcom/android/server/net/NetworkStatsRecorderEx;
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsServiceEx;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    check-cast v10, Lcom/android/server/net/NetworkStatsRecorderEx;

    .line 79
    .local v10, "uidTagRecorder":Lcom/android/server/net/NetworkStatsRecorderEx;
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsServiceEx;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    check-cast v4, Lcom/android/server/net/NetworkStatsRecorderEx;

    .line 80
    .local v4, "devRecorder":Lcom/android/server/net/NetworkStatsRecorderEx;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsServiceEx;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    check-cast v12, Lcom/android/server/net/NetworkStatsRecorderEx;

    .line 82
    .local v12, "xtRecorder":Lcom/android/server/net/NetworkStatsRecorderEx;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/server/net/NetworkStatsRecorderEx;->clearUsageByTemplateLocked(Landroid/net/NetworkTemplate;)V

    .line 83
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/android/server/net/NetworkStatsRecorderEx;->clearUsageByTemplateLocked(Landroid/net/NetworkTemplate;)V

    .line 84
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkStatsRecorderEx;->clearUsageByTemplateLocked(Landroid/net/NetworkTemplate;)V

    .line 85
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsRecorderEx;->clearUsageByTemplateLocked(Landroid/net/NetworkTemplate;)V

    .line 88
    move-object v3, v11

    .local v3, "arr$":[I
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget v8, v3, v5

    .line 89
    .local v8, "uid":I
    invoke-static {v8}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 88
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "arr$":[I
    .end local v4    # "devRecorder":Lcom/android/server/net/NetworkStatsRecorderEx;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "uid":I
    .end local v9    # "uidRecorder":Lcom/android/server/net/NetworkStatsRecorderEx;
    .end local v10    # "uidTagRecorder":Lcom/android/server/net/NetworkStatsRecorderEx;
    .end local v12    # "xtRecorder":Lcom/android/server/net/NetworkStatsRecorderEx;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 91
    .restart local v3    # "arr$":[I
    .restart local v4    # "devRecorder":Lcom/android/server/net/NetworkStatsRecorderEx;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v9    # "uidRecorder":Lcom/android/server/net/NetworkStatsRecorderEx;
    .restart local v10    # "uidTagRecorder":Lcom/android/server/net/NetworkStatsRecorderEx;
    .restart local v12    # "xtRecorder":Lcom/android/server/net/NetworkStatsRecorderEx;
    :cond_0
    move-object v3, v7

    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget v8, v3, v5

    .line 92
    .restart local v8    # "uid":I
    invoke-static {v8}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 95
    .end local v8    # "uid":I
    :cond_1
    const/4 v13, 0x1

    return v13
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsServiceEx;->mBinderInternal:Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsServiceEx;->mBinderInternal:Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 56
    :goto_0
    return v1

    .line 54
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method
