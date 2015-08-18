.class public Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;
.super Ljava/lang/Object;
.source "WifiHostapdNative.java"


# static fields
.field private static final DBG:Z = true

.field public static UDBG:Z

.field private static final VDBG:Z

.field private static final mLocalLog:Landroid/util/LocalLog;

.field static final mLock:Ljava/lang/Object;


# instance fields
.field private mCmdId:I

.field public final mInterfaceName:Ljava/lang/String;

.field private final mTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->UDBG:Z

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mLocalLog:Landroid/util/LocalLog;

    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mInterfaceName:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiHostapdNative-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static native HostapRemoveMacInList(ILjava/lang/String;)Z
.end method

.method public static native HostapSendCommand(Ljava/lang/String;)Z
.end method

.method public static native closeHostapdConnection()V
.end method

.method public static native connectToHostapd()Z
.end method

.method private doBooleanCommand(Ljava/lang/String;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doBoolean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->getNewCmdIdLocked()I

    move-result v0

    .line 60
    .local v0, "cmdId":I
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v1

    .line 62
    .local v1, "result":Z
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    monitor-exit v3

    return v1

    .line 64
    .end local v0    # "cmdId":I
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private native doBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method private doIntCommand(Ljava/lang/String;)I
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->getNewCmdIdLocked()I

    move-result v0

    .line 72
    .local v0, "cmdId":I
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doIntCommandNative(Ljava/lang/String;)I

    move-result v1

    .line 74
    .local v1, "result":I
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    monitor-exit v3

    return v1

    .line 76
    .end local v0    # "cmdId":I
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private native doIntCommandNative(Ljava/lang/String;)I
.end method

.method private doStringCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->getNewCmdIdLocked()I

    move-result v0

    .line 84
    .local v0, "cmdId":I
    invoke-static {p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    monitor-exit v3

    return-object v1

    .line 88
    .end local v0    # "cmdId":I
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static native doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    invoke-static {p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doWpsNfcBooleanCommand(Ljava/lang/String;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WPS: doWpsNfcBooleanCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->getNewCmdIdLocked()I

    move-result v0

    .line 102
    .local v0, "cmdId":I
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcBooleanCommandNative(Ljava/lang/String;)Z

    move-result v1

    .line 104
    .local v1, "result":Z
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WPS:    returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    monitor-exit v3

    return v1

    .line 106
    .end local v0    # "cmdId":I
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private native doWpsNfcBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method private doWpsNfcIntCommand(Ljava/lang/String;)I
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WPS: doWpsNfcIntCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->getNewCmdIdLocked()I

    move-result v0

    .line 113
    .local v0, "cmdId":I
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcIntCommandNative(Ljava/lang/String;)I

    move-result v1

    .line 115
    .local v1, "result":I
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WPS:    returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit v3

    return v1

    .line 117
    .end local v0    # "cmdId":I
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private native doWpsNfcIntCommandNative(Ljava/lang/String;)I
.end method

.method private doWpsNfcStringCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WPS: doWpsNfcStringCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->getNewCmdIdLocked()I

    move-result v0

    .line 124
    .local v0, "cmdId":I
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "result":Ljava/lang/String;
    sget-boolean v2, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->UDBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WPS:    returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    monitor-exit v3

    return-object v1

    .line 128
    .end local v0    # "cmdId":I
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private native doWpsNfcStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getAccessControlLists(I)Ljava/lang/String;
.end method

.method public static native getAllSta()Ljava/lang/String;
.end method

.method private getNewCmdIdLocked()I
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mCmdId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mCmdId:I

    return v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public static native setAccessControlLists(I[Ljava/lang/String;)Z
.end method

.method public static native setTxPower(I)I
.end method

.method private native waitForEventNative()Ljava/lang/String;
.end method

.method public static native waitForHostapdEvent()Ljava/lang/String;
.end method


# virtual methods
.method public getLocalLog()Landroid/util/LocalLog;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method public getWpsNfcConfTokenFromAP(II)Ljava/lang/String;
    .locals 4
    .param p1, "isEnabled"    # I
    .param p2, "isNDEF"    # I

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, "confTokenString":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    const-string v2, "WPS: getWpsNfcConfTokenFromAP()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-nez p1, :cond_0

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPS: token Str  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-object v0

    .line 260
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 261
    const-string v1, "WPS_NFC_CONFIG_TOKEN NDEF"

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_1
    const-string v1, "WPS_NFC_CONFIG_TOKEN WPS"

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWpsNfcHandoverSelect(I)Ljava/lang/String;
    .locals 4
    .param p1, "isNDEF"    # I

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, "hsSelString":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    const-string v2, "WPS: getWpsNfcHandoverSelect()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 276
    const-string v1, "NFC_GET_HANDOVER_SEL NDEF WPS-CR"

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_0
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPS: HS select str  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-object v0

    .line 278
    :cond_0
    const-string v1, "NFC_GET_HANDOVER_SEL WPS WPS-CR"

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setApDiassoc(Ljava/lang/String;)I
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISASSOCIATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setApIsolation(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apIsolation"    # Ljava/lang/String;

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET ap_isolate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMacaddracl(Ljava/lang/String;)I
    .locals 2
    .param p1, "macaddr_acl"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET macaddr_acl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setMaxClients(Ljava/lang/String;)I
    .locals 2
    .param p1, "maxcient"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET max_num_sta "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setWpsCancel()I
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    const-string v1, "WPS: setWpsCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v0, "WPS_CANCEL"

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setWpsNfcPwToken(Ljava/lang/String;II)I
    .locals 6
    .param p1, "NDEF"    # Ljava/lang/String;
    .param p2, "isEnabled"    # I
    .param p3, "isNDEF"    # I

    .prologue
    .line 222
    const/4 v1, -0x1

    .line 225
    .local v1, "result":I
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    const-string v4, "WPS: setWpsNfcPwToken()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-nez p2, :cond_0

    .line 229
    const-string v3, "WPS_NFC_TOKEN disable"

    invoke-direct {p0, v3}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcIntCommand(Ljava/lang/String;)I

    move-result v1

    :goto_0
    move v2, v1

    .line 249
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_1
    return v2

    .line 231
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_2

    .line 232
    const-string v3, "WPS_NFC_TOKEN NDEF"

    invoke-direct {p0, v3}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "pwTokenString":Ljava/lang/String;
    sget-boolean v3, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->UDBG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WPS: NDEF is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    :goto_2
    const-string v3, "WPS_NFC_TOKEN enable"

    invoke-direct {p0, v3}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcIntCommand(Ljava/lang/String;)I

    move-result v1

    .line 239
    if-gez v1, :cond_3

    .line 240
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    const-string v4, "WPS: WPS_NFC_TOKEN enable failed !!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 242
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_1

    .line 235
    .end local v0    # "pwTokenString":Ljava/lang/String;
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_2
    const-string v3, "WPS_NFC_TOKEN WPS"

    invoke-direct {p0, v3}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .restart local v0    # "pwTokenString":Ljava/lang/String;
    sget-boolean v3, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->UDBG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WPS: WPS is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 244
    :cond_3
    sget-boolean v3, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->UDBG:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WPS: WPS NFC from peer is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WPS_NFC_TAG_READ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcIntCommand(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0
.end method

.method public setWpsNfcReportHandover(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "reqNDEF"    # Ljava/lang/String;
    .param p2, "selNDEF"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, -0x1

    .line 289
    .local v0, "result":I
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    const-string v2, "WPS: setWpsNfcReportHandover()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPS: HS report reqstr  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPS: HS report selstr  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NFC_REPORT_HANDOVER RESP WPS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doWpsNfcIntCommand(Ljava/lang/String;)I

    move-result v0

    .line 293
    return v0
.end method

.method public setWpsPbc()I
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    const-string v1, "WPS: setWpsPbc()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, "WPS_PBC"

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setWpsPin(Ljava/lang/String;I)I
    .locals 2
    .param p1, "PinNum"    # Ljava/lang/String;
    .param p2, "expirationTime"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    const-string v1, "WPS: setWpsPin()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-nez p2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    const-string v1, "expirationtime time value is set to 0, indicates noexpiration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    if-eqz p2, :cond_1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_PIN any "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    .line 200
    :goto_0
    return v0

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_PIN any "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->mTAG:Ljava/lang/String;

    const-string v1, " PIN NUMBER do NOT set, This parameter must be set !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, -0x1

    goto :goto_0
.end method
