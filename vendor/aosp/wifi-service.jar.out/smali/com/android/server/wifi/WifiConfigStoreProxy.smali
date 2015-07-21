.class public Lcom/android/server/wifi/WifiConfigStoreProxy;
.super Ljava/lang/Object;
.source "WifiConfigStoreProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConfigStoreProxy"


# instance fields
.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 0
    .param p1, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 39
    return-void
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, -0x1

    .line 46
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v0

    goto :goto_0
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v0

    return v0
.end method

.method public disableNetwork(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 58
    const-string v0, "WifiConfigStoreProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableNetwork "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(I)Z

    move-result v0

    return v0
.end method

.method public disableNetwork(II)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 63
    const-string v0, "WifiConfigStoreProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableNetwork "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    return v0
.end method

.method public enableNetwork(IZ)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 53
    const-string v0, "WifiConfigStoreProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableNetwork "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v0

    return v0
.end method

.method public forgetNetwork(I)Z
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v0

    return v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public loadConfiguredNetworks()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 105
    return-void
.end method

.method public saveConfig()Z
    .locals 3

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v1

    .line 71
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 73
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 75
    .local v0, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    const-string v2, "com.android.providers.settings"

    invoke-interface {v0, v2}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_0
    :goto_0
    return v1

    .line 78
    .restart local v0    # "ibm":Landroid/app/backup/IBackupManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public saveNetwork(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v0

    return-object v0
.end method

.method public updateSimpleNetworkNative(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->updateSimpleNetworkNative(Landroid/net/wifi/WifiConfiguration;)V

    .line 109
    return-void
.end method
