.class public Lcom/lge/internal/telephony/ConnectivityManagerProxy;
.super Ljava/lang/Object;
.source "ConnectivityManagerProxy.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ConnectivityManagerProxy"

.field private static requestRemRouteToHostAddressMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mConnectManager:Landroid/net/IConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-class v4, Ljava/net/InetAddress;

    aput-object v4, v1, v3

    .line 30
    .local v1, "requestRemRouteToHostParamType":[Ljava/lang/Class;
    :try_start_0
    const-class v3, Landroid/net/IConnectivityManager;

    const-string v4, "requestRemRouteToHostAddress"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/lge/internal/telephony/ConnectivityManagerProxy;->requestRemRouteToHostAddressMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "ConnectivityManagerProxy"

    const-string v4, "Unable to connect to connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 35
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "ConnectivityManagerProxy"

    const-string v4, "Unable to connect to connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/telephony/ConnectivityManagerProxy;->mConnectManager:Landroid/net/IConnectivityManager;

    .line 42
    iget-object v0, p0, Lcom/lge/internal/telephony/ConnectivityManagerProxy;->mConnectManager:Landroid/net/IConnectivityManager;

    if-nez v0, :cond_0

    .line 43
    const-string v0, "ConnectivityManagerProxy"

    const-string v1, "Unable to connect to connectivity manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public requestRemRouteToHostAddress(ILjava/net/InetAddress;)Z
    .locals 5
    .param p1, "networkType"    # I
    .param p2, "hostAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 58
    sget-object v2, Lcom/lge/internal/telephony/ConnectivityManagerProxy;->requestRemRouteToHostAddressMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 59
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 62
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/lge/internal/telephony/ConnectivityManagerProxy;->requestRemRouteToHostAddressMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/lge/internal/telephony/ConnectivityManagerProxy;->mConnectManager:Landroid/net/IConnectivityManager;

    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 76
    :goto_0
    return v2

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    move v2, v3

    .line 76
    goto :goto_0

    .line 66
    :catch_1
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 68
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 73
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method
