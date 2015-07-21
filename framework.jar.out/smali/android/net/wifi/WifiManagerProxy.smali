.class public Landroid/net/wifi/WifiManagerProxy;
.super Ljava/lang/Object;
.source "WifiManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiManagerProxy"

.field private static setVZWWifiApEnabledMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/net/wifi/WifiConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 30
    .local v0, "setVZWWifiApEnabledParamType":[Ljava/lang/Class;
    :try_start_0
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string/jumbo v2, "setVZWWifiApEnabled"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/net/wifi/WifiManagerProxy;->setVZWWifiApEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_0

    .line 44
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 45
    const-string v0, "WifiManagerProxy"

    const-string v1, "WifiManagerProxy is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "WifiManagerProxy"

    const-string v1, "WifiManagerProxy is created - fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public setVZWWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 6
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 62
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setVZWWifiApEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 63
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v3

    .line 67
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setVZWWifiApEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 83
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return v3

    .line 68
    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v3, v4

    .line 78
    goto :goto_0

    .line 70
    :catch_1
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 74
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 75
    check-cast v1, Landroid/os/RemoteException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    throw v1

    .line 82
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string/jumbo v5, "setVZWWifiApEnabled method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 83
    goto :goto_0
.end method

.method public setWifiApEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 95
    :cond_0
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 106
    :cond_0
    return-void
.end method

.method public startScan()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
