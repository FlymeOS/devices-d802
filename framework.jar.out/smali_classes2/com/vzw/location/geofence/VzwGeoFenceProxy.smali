.class public Lcom/vzw/location/geofence/VzwGeoFenceProxy;
.super Lcom/vzw/location/geofence/VzwGeoFenceBase;
.source "VzwGeoFenceProxy.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwGeoFenceProxy"

.field private static mGeoFencerProxy:Lcom/vzw/location/geofence/VzwGeoFenceProxy;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGeoFence:Lcom/vzw/location/geofence/IVzwGeoFence;

.field private final mIntent:Landroid/content/Intent;

.field private final mListener:Lcom/vzw/location/geofence/IVzwGeoFenceListener$Stub;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/vzw/location/geofence/VzwGeoFenceBase;-><init>()V

    .line 29
    new-instance v0, Lcom/vzw/location/geofence/VzwGeoFenceProxy$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/geofence/VzwGeoFenceProxy$1;-><init>(Lcom/vzw/location/geofence/VzwGeoFenceProxy;)V

    iput-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 45
    new-instance v0, Lcom/vzw/location/geofence/VzwGeoFenceProxy$2;

    invoke-direct {v0, p0}, Lcom/vzw/location/geofence/VzwGeoFenceProxy$2;-><init>(Lcom/vzw/location/geofence/VzwGeoFenceProxy;)V

    iput-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mListener:Lcom/vzw/location/geofence/IVzwGeoFenceListener$Stub;

    .line 64
    iput-object p1, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mIntent:Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 69
    return-void
.end method

.method static synthetic access$002(Lcom/vzw/location/geofence/VzwGeoFenceProxy;Lcom/vzw/location/geofence/IVzwGeoFence;)Lcom/vzw/location/geofence/IVzwGeoFence;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/geofence/VzwGeoFenceProxy;
    .param p1, "x1"    # Lcom/vzw/location/geofence/IVzwGeoFence;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mGeoFence:Lcom/vzw/location/geofence/IVzwGeoFence;

    return-object p1
.end method

.method private ensureGeoFencer()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mGeoFence:Lcom/vzw/location/geofence/IVzwGeoFence;

    if-nez v2, :cond_0

    .line 83
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :try_start_1
    const-string v2, "VzwGeoFenceProxy"

    const-string v4, "[ensureGeoFencer] waiting..."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 86
    const-string v2, "VzwGeoFenceProxy"

    const-string v4, "[ensureGeoFencer] woke up!!!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mGeoFence:Lcom/vzw/location/geofence/IVzwGeoFence;

    if-nez v2, :cond_0

    .line 94
    const-string v2, "VzwGeoFenceProxy"

    const-string v3, "[ensureGeoFencer] Timed out. No GeoFencer connection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return v1

    .line 87
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ie":Ljava/lang/InterruptedException;
    const-string v2, "VzwGeoFenceProxy"

    const-string v3, "[ensureGeoFencer] Interrupted while waiting for GeoFencer"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getGeoFencerProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/vzw/location/geofence/VzwGeoFenceProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mGeoFencerProxy:Lcom/vzw/location/geofence/VzwGeoFenceProxy;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "VzwGeoFenceProxy"

    const-string v1, "[getGeoFencerProxy] mGeoFencerProxy is null. ==> Create new VzwGeoFenceProxy object."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;

    invoke-direct {v0, p0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mGeoFencerProxy:Lcom/vzw/location/geofence/VzwGeoFenceProxy;

    .line 60
    :cond_0
    sget-object v0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mGeoFencerProxy:Lcom/vzw/location/geofence/VzwGeoFenceProxy;

    return-object v0
.end method


# virtual methods
.method public removeCaller(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->removeCaller(I)V

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mGeoFence:Lcom/vzw/location/geofence/IVzwGeoFence;

    invoke-interface {v1, p1}, Lcom/vzw/location/geofence/IVzwGeoFence;->clearGeoFenceUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected start(Lcom/vzw/location/geofence/VzwGeoFenceParams;)Z
    .locals 3
    .param p1, "geofence"    # Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->ensureGeoFencer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mGeoFence:Lcom/vzw/location/geofence/IVzwGeoFence;

    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mListener:Lcom/vzw/location/geofence/IVzwGeoFenceListener$Stub;

    invoke-interface {v1, v2, p1}, Lcom/vzw/location/geofence/IVzwGeoFence;->setGeoFence(Landroid/os/IBinder;Lcom/vzw/location/geofence/VzwGeoFenceParams;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 109
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected stop(Landroid/app/PendingIntent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->ensureGeoFencer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mGeoFence:Lcom/vzw/location/geofence/IVzwGeoFence;

    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mListener:Lcom/vzw/location/geofence/IVzwGeoFenceListener$Stub;

    invoke-interface {v1, v2, p1}, Lcom/vzw/location/geofence/IVzwGeoFence;->clearGeoFence(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v1, 0x1

    .line 121
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 121
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
