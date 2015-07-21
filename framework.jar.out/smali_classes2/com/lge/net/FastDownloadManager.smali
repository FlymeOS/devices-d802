.class public Lcom/lge/net/FastDownloadManager;
.super Ljava/lang/Object;
.source "FastDownloadManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FastDownloadManager"

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_WIFI:I = 0x1


# instance fields
.field private final mService:Lcom/lge/net/IFastDownloadManager;


# direct methods
.method public constructor <init>(Lcom/lge/net/IFastDownloadManager;)V
    .locals 1
    .param p1, "service"    # Lcom/lge/net/IFastDownloadManager;

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const-string v0, "missing IFastDownloadManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/net/IFastDownloadManager;

    iput-object v0, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    .line 234
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/lge/net/FastDownloadManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    const-string v0, "fast_download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/net/FastDownloadManager;

    return-object v0
.end method


# virtual methods
.method public getAccumulatedMobileBandwidth()D
    .locals 4

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1}, Lcom/lge/net/IFastDownloadManager;->getAccumulatedMobileBandwidth()D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 120
    :goto_0
    return-wide v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public getAccumulatedWifiBandwidth()D
    .locals 4

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1}, Lcom/lge/net/IFastDownloadManager;->getAccumulatedWifiBandwidth()D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 111
    :goto_0
    return-wide v2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public getAverageBandwidthCache()[D
    .locals 2

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1}, Lcom/lge/net/IFastDownloadManager;->getAverageBandwidthCache()[D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFDSEnabled(JLjava/lang/String;)I
    .locals 3
    .param p1, "contentLength"    # J
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/net/IFastDownloadManager;->getFDSEnabled(JLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 66
    :goto_0
    return v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFDSLogEnabled()Z
    .locals 2

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1}, Lcom/lge/net/IFastDownloadManager;->getFDSLogEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFDSUsageList(III)J
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "threadid"    # I

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/net/IFastDownloadManager;->getFDSUsageList(III)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 147
    :goto_0
    return-wide v2

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getMobileBandwidth()D
    .locals 4

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1}, Lcom/lge/net/IFastDownloadManager;->getMobileBandwidth()D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 102
    :goto_0
    return-wide v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public getMobileConnectionStatus()Z
    .locals 2

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1}, Lcom/lge/net/IFastDownloadManager;->getMobileConnectionStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileLocalAddress()[B
    .locals 2

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1}, Lcom/lge/net/IFastDownloadManager;->getMobileLocalAddress()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPeakBandwidthCache()[D
    .locals 2

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1}, Lcom/lge/net/IFastDownloadManager;->getPeakBandwidthCache()[D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    :goto_0
    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiBandwidth()D
    .locals 4

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1}, Lcom/lge/net/IFastDownloadManager;->getWifiBandwidth()D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 93
    :goto_0
    return-wide v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public getWifiConnectionStatus()Z
    .locals 2

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1}, Lcom/lge/net/IFastDownloadManager;->getWifiConnectionStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 84
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiLocalAddress()[B
    .locals 2

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1}, Lcom/lge/net/IFastDownloadManager;->getWifiLocalAddress()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerFDCallback(Lcom/lge/net/IFDCallback;)Z
    .locals 2
    .param p1, "cb"    # Lcom/lge/net/IFDCallback;

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1, p1}, Lcom/lge/net/IFastDownloadManager;->registerFDCallback(Lcom/lge/net/IFDCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 218
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLocalAddress(ILandroid/net/LinkAddress;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "addr"    # Landroid/net/LinkAddress;

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v0, p1, p2}, Lcom/lge/net/IFastDownloadManager;->setLocalAddress(ILandroid/net/LinkAddress;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startFDS(I)Z
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1, p1}, Lcom/lge/net/IFastDownloadManager;->startFDS(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 199
    :goto_0
    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopFDS(I)Z
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1, p1}, Lcom/lge/net/IFastDownloadManager;->stopFDS(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 208
    :goto_0
    return v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterFDCallback(Lcom/lge/net/IFDCallback;)Z
    .locals 2
    .param p1, "cb"    # Lcom/lge/net/IFDCallback;

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v1, p1}, Lcom/lge/net/IFastDownloadManager;->unregisterFDCallback(Lcom/lge/net/IFDCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 227
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateFDSUsage(IZ)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/lge/net/FastDownloadManager;->mService:Lcom/lge/net/IFastDownloadManager;

    invoke-interface {v0, p1, p2}, Lcom/lge/net/IFastDownloadManager;->updateFDSUsage(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method
