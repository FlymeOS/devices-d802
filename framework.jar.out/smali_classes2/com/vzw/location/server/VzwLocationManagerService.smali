.class public Lcom/vzw/location/server/VzwLocationManagerService;
.super Lcom/vzw/location/IVzwLocationManager$Stub;
.source "VzwLocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/server/VzwLocationManagerService$1;,
        Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;,
        Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;,
        Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;,
        Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;,
        Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;,
        Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;,
        Lcom/vzw/location/server/VzwLocationManagerService$VzwSmsFilterServiceConnection;
    }
.end annotation


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final DEBUG:Z = true

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x1

.field private static SMS_FILTER_DOMAIN:Ljava/lang/String; = null

.field private static SMS_FILTER_SERVICE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VzwLocationManagerService"

.field private static final VERBOSE:Z = true

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "VzwLocationManagerService"

.field private static sProvidersLoaded:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

.field private final mGeoFencerPackageName:Ljava/lang/String;

.field private mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

.field private final mLock:Ljava/lang/Object;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingBroadcasts:I

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/location/VzwLocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vzw/location/VzwLocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitiesEntered:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityGpsStatusListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

.field private mProximityListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mVzwClient:Lcom/vzw/location/server/VzwClient;

.field private mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

.field private mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

.field private mVzwSmsReceiverServiceConn:Landroid/content/ServiceConnection;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vzw/location/server/VzwLocationManagerService;->sProvidersLoaded:Z

    .line 116
    const-string v0, "com.lge.vzwsmsfilter"

    sput-object v0, Lcom/vzw/location/server/VzwLocationManagerService;->SMS_FILTER_DOMAIN:Ljava/lang/String;

    .line 117
    const-string v0, "SmsFilterService"

    sput-object v0, Lcom/vzw/location/server/VzwLocationManagerService;->SMS_FILTER_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Lcom/vzw/location/IVzwLocationManager$Stub;-><init>()V

    .line 88
    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 103
    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    .line 155
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    .line 156
    const-string v0, "VzwLocationManagerService"

    const-string v1, "In VzwLocationManagerService class "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;-><init>(Landroid/content/Context;Lcom/vzw/location/IVzwLocationManager;)V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .line 159
    return-void
.end method

.method private _getAllProvidersLocked()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[_getAllProvidersLocked]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    .local v2, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 296
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationProviderInterface;

    .line 297
    .local v1, "pi":Lcom/vzw/location/VzwLocationProviderInterface;
    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 299
    .end local v1    # "pi":Lcom/vzw/location/VzwLocationProviderInterface;
    :cond_0
    return-object v2
.end method

.method private _getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 893
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationProviderInterface;

    .line 894
    .local v1, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-nez v1, :cond_0

    .line 895
    const/4 v0, 0x0

    .line 916
    :goto_0
    return-object v0

    .line 903
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->isProviderEnabled(Ljava/lang/String;)Z

    .line 905
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 906
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "network"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->requiresNetwork()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 907
    const-string v2, "satellite"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->requiresSatellite()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 908
    const-string v2, "cell"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->requiresCell()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 909
    const-string v2, "cost"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->hasMonetaryCost()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 910
    const-string v2, "altitude"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->supportsAltitude()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 911
    const-string/jumbo v2, "speed"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->supportsSpeed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 912
    const-string v2, "bearing"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->supportsBearing()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 913
    const-string v2, "power"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 914
    const-string v2, "accuracy"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->getAccuracy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private _getProvidersLocked(Z)Ljava/util/List;
    .locals 4
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 920
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 921
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 922
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwLocationProviderInterface;

    .line 923
    .local v2, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    invoke-interface {v2}, Lcom/vzw/location/VzwLocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 925
    .end local v2    # "p":Lcom/vzw/location/VzwLocationProviderInterface;
    :cond_0
    return-object v1
.end method

.method private _isProviderEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 754
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->checkCodeSignFromCaller()V

    .line 755
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderInterface;

    .line 756
    .local v0, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-nez v0, :cond_0

    .line 757
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :cond_0
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private _loadProvidersLocked()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;-><init>(Landroid/content/Context;Lcom/vzw/location/IVzwLocationManager;)V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-direct {p0, v0}, Lcom/vzw/location/server/VzwLocationManagerService;->addProvider(Lcom/vzw/location/VzwLocationProviderInterface;)V

    .line 219
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->getGeoFencerProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/vzw/location/geofence/VzwGeoFenceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    .line 228
    :goto_0
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->updateProvidersLocked()V

    .line 229
    return-void

    .line 223
    :cond_1
    const-string v0, "VzwLocationManagerService"

    const-string v1, "[_loadProvidersLocked] mGeoFencer = new CircleProximityAlerter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;)Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p1, "x1"    # Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProximityGpsStatusListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p1, "x1"    # Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProximityGpsStatusListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClient;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwClient;)Lcom/vzw/location/server/VzwClient;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p1, "x1"    # Lcom/vzw/location/server/VzwClient;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vzw/location/server/VzwLocationManagerService;Ljava/lang/String;Lcom/vzw/location/VzwCriteria;ZLcom/vzw/location/ILocationListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/vzw/location/ILocationListener;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vzw/location/server/VzwLocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;ZLcom/vzw/location/ILocationListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/geofence/VzwGeoFenceBase;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vzw/location/server/VzwLocationManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->incrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$1900(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->decrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$500(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClientManager;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProximityListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p1, "x1"    # Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProximityListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

    return-object p1
.end method

.method private addProvider(Lcom/vzw/location/VzwLocationProviderInterface;)V
    .locals 2
    .param p1, "pi"    # Lcom/vzw/location/VzwLocationProviderInterface;

    .prologue
    .line 285
    const-string v0, "VzwLocationManagerService"

    const-string v1, "[addProvider]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/vzw/location/VzwLocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    return-void
.end method

.method private addProximityAlertLocked(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V
    .locals 3
    .param p1, "params"    # Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .prologue
    .line 839
    const-string v0, "VzwLocationManagerService"

    const-string v1, "[addProximityAlertLocked] Entering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p1, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/vzw/location/server/VzwLocationManagerService;->checkPackageName(ILjava/lang/String;)V

    .line 843
    const-string v0, "gps"

    invoke-direct {p0, v0}, Lcom/vzw/location/server/VzwLocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "network"

    invoke-direct {p0, v0}, Lcom/vzw/location/server/VzwLocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 845
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_1
    const-string v0, "VzwLocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addProximityAlertLocked] Number of GeoFences before add = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    invoke-virtual {v2}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->getNumbOfGeoFences()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-string v0, "VzwLocationManagerService"

    const-string v1, "[addProximityAlertLocked] Add new GeoFence"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    invoke-virtual {v0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->add(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V

    .line 850
    const-string v0, "VzwLocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addProximityAlertLocked] Number of GeoFences after add = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    invoke-virtual {v2}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->getNumbOfGeoFences()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void
.end method

.method private bindToSmsFilterService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 135
    iput-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    .line 138
    :cond_0
    new-instance v1, Lcom/vzw/location/server/VzwLocationManagerService$VzwSmsFilterServiceConnection;

    invoke-direct {v1, p0, v3}, Lcom/vzw/location/server/VzwLocationManagerService$VzwSmsFilterServiceConnection;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V

    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverServiceConn:Landroid/content/ServiceConnection;

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/vzw/location/server/VzwLocationManagerService;->SMS_FILTER_DOMAIN:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/vzw/location/server/VzwLocationManagerService;->SMS_FILTER_DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vzw/location/server/VzwLocationManagerService;->SMS_FILTER_SERVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    const-string v1, "VzwLocationManagerService"

    const-string v2, "[bindToSmsFilterService] Binding failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string v1, "VzwLocationManagerService"

    const-string v2, "[bindToSmsFilterService] Bound to SmsFilterService. Waiting for Service Connection."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkCodeSignFromCaller()V
    .locals 6

    .prologue
    .line 388
    new-instance v0, Lcom/vzw/location/server/VzwCodeSignChecker;

    invoke-direct {v0}, Lcom/vzw/location/server/VzwCodeSignChecker;-><init>()V

    .line 389
    .local v0, "mCodeChk":Lcom/vzw/location/server/VzwCodeSignChecker;
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 390
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 392
    .local v2, "uid":I
    const-string v3, "VzwLocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkCodeSignFromCaller] PackageManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/server/VzwCodeSignChecker;->isAppSignedWithValid(Landroid/content/pm/PackageManager;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[checkCodeSignFromCaller] Code signature granted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void

    .line 397
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Vzw Code Signature Verification Failed."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private checkPackageName(ILjava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 806
    if-nez p2, :cond_0

    .line 807
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "packageName cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 810
    :cond_0
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 811
    .local v3, "packages":[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 812
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 815
    :cond_1
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 816
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 815
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 819
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "invalid package name"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private decrementPendingBroadcasts()V
    .locals 4

    .prologue
    .line 1023
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1024
    :try_start_0
    iget v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1027
    :try_start_1
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1029
    const-string v1, "VzwLocationManagerService"

    const-string v3, "[decrementPendingBroadcasts] Released wakelock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1039
    return-void

    .line 1031
    :cond_1
    :try_start_3
    const-string v1, "VzwLocationManagerService"

    const-string v3, "[decrementPendingBroadcasts] Can\'t release wakelock again!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1033
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "VzwLocationManagerService"

    const-string v3, "[decrementPendingBroadcasts] exception in releaseWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1038
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private incrementPendingBroadcasts()V
    .locals 4

    .prologue
    .line 1009
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1010
    :try_start_0
    iget v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1012
    :try_start_1
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1013
    const-string v1, "VzwLocationManagerService"

    const-string v3, "[incrementPendingBroadcasts] Acquired wakelock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1020
    return-void

    .line 1014
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VzwLocationManagerService"

    const-string v3, "[incrementPendingBroadcasts] exception in acquireWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1019
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initialize()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 169
    const-string v1, "VzwLocationManagerService"

    const-string v3, "Initialize of VzwLocationManagerService."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 171
    .local v6, "powerManager":Landroid/os/PowerManager;
    const-string v1, "VzwLocationManagerService"

    invoke-virtual {v6, v10, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 172
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 173
    new-instance v1, Lcom/vzw/location/server/VzwClientManager;

    invoke-direct {v1, p0}, Lcom/vzw/location/server/VzwClientManager;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;)V

    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    .line 174
    const-string v1, "VzwLocationManagerService"

    const-string v3, "VzwClientManager is created."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->loadProviders()V

    .line 178
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->bindToSmsFilterService()V

    .line 180
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "location_providers_allowed"

    aput-object v9, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 186
    .local v7, "settingsCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v7, v3, v10, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 188
    new-instance v8, Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;

    invoke-direct {v8, p0, v2}, Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V

    .line 189
    .local v8, "settingsObserver":Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v8}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 191
    return-void

    .line 190
    .end local v8    # "settingsObserver":Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method private isAllowedBySettingsLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 403
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "VzwLocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isAllowedBySettingsLocked] Setting Locked? result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isAllowedProviderSafe(Ljava/lang/String;)Z
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 542
    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "passive"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    :cond_1
    :goto_0
    return v0

    .line 549
    :cond_2
    const-string v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 557
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadProviders()V
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    sget-boolean v0, Lcom/vzw/location/server/VzwLocationManagerService;->sProvidersLoaded:Z

    if-eqz v0, :cond_0

    .line 196
    monitor-exit v1

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->loadProvidersLocked()V

    .line 199
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vzw/location/server/VzwLocationManagerService;->sProvidersLoaded:Z

    .line 200
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadProvidersLocked()V
    .locals 4

    .prologue
    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->_loadProvidersLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VzwLocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load Providers. message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerToSmsPrefixTable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fqan"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 598
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v1

    .line 602
    :cond_1
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    if-nez v2, :cond_2

    .line 603
    const-string v2, "VzwLocationManagerService"

    const-string v3, "SMS Filter Service is not running..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 607
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "prefix"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v2, "fqan"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    const-string/jumbo v3, "transaction_on_database"

    invoke-interface {v2, v3, v0}, Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;->sendTransactionCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 611
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 870
    const-string v0, "VzwLocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeProximityAlertLocked] Entering. Current number of GeoFences = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    invoke-virtual {v2}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->getNumbOfGeoFences()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string v0, "VzwLocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeProximityAlertLocked] Remove a GeoFence with intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    invoke-virtual {v0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->remove(Landroid/app/PendingIntent;)V

    .line 873
    const-string v0, "VzwLocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeProximityAlertLocked] Number of GeoFences after removal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    invoke-virtual {v2}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->getNumbOfGeoFences()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void
.end method

.method private requestLocationUpdatesLocked(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;ZLcom/vzw/location/ILocationListener;)V
    .locals 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "criteria"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "isSingleShot"    # Z
    .param p4, "listener"    # Lcom/vzw/location/ILocationListener;

    .prologue
    .line 304
    const-string v8, "VzwLocationManagerService"

    const-string v9, "[requestLocationUpdatesLocked] Inside of requestLocationUpdatesLocked()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v8, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vzw/location/VzwLocationProviderInterface;

    .line 309
    .local v7, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-nez v7, :cond_0

    .line 310
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "provider="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 313
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 314
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 315
    .local v0, "callingPid":I
    const-string v8, "VzwLocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[requestLocationUpdatesLocked] CALLING UID: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v8, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v8, v0, v1}, Lcom/vzw/location/server/VzwClientManager;->getVzwClient(II)Lcom/vzw/location/server/VzwClient;

    move-result-object v2

    .line 319
    .local v2, "client":Lcom/vzw/location/server/VzwClient;
    invoke-virtual {v2, p2}, Lcom/vzw/location/server/VzwClient;->setVzwCriteria(Lcom/vzw/location/VzwCriteria;)V

    .line 320
    iput-boolean p3, v2, Lcom/vzw/location/server/VzwClient;->isSingleShot:Z

    .line 323
    :try_start_0
    invoke-virtual {v2, p4}, Lcom/vzw/location/server/VzwClient;->addVzwGpsLocationListener(Lcom/vzw/location/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 330
    .local v4, "identity":J
    :try_start_1
    const-string v8, "VzwLocationManagerService"

    const-string v9, "[requestLocationUpdatesLocked] Check location settings and start."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v6

    .line 335
    .local v6, "isProviderEnabled":Z
    if-nez v6, :cond_1

    .line 337
    const-string v8, "VzwLocationManagerService"

    const-string v9, "[requestLocationUpdatesLocked] Setting is off. TURN ON SETTING TO CONTINUE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v2}, Lcom/vzw/location/server/VzwClient;->getVzwGpsLocationListener()Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->callProviderEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    :goto_1
    return-void

    .line 324
    .end local v4    # "identity":J
    .end local v6    # "isProviderEnabled":Z
    :catch_0
    move-exception v3

    .line 325
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "VzwLocationManagerService"

    const-string v9, "[requestLocationUpdatesLocked] Error while adding location listener binder."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v4    # "identity":J
    .restart local v6    # "isProviderEnabled":Z
    :cond_1
    if-nez p3, :cond_2

    :try_start_2
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 350
    const-string v8, "VzwLocationManagerService"

    const-string v9, "[requestLocationUpdatesLocked] MS-A only allows singleFix."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/16 v8, 0x14

    invoke-virtual {v2, v8}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :try_start_3
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "GPS_EVENT_SET_FIX_RATE_FAIL"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    :catch_1
    move-exception v3

    .line 355
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "VzwLocationManagerService"

    const-string v9, "[requestLocationUpdatesLocked] GPS_EVENT_SET_FIX_RATE_FAIL."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 362
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 359
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_5
    iget-object v8, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v8, v2}, Lcom/vzw/location/server/VzwClientManager;->startClient(Lcom/vzw/location/server/VzwClient;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 362
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v6    # "isProviderEnabled":Z
    :catchall_0
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 258
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[updateProviderListenersLocked] Start.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwLocationProviderInterface;

    .line 260
    .local v2, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-nez v2, :cond_0

    .line 261
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[updateProviderListenersLocked] provider is Not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    iget-object v3, v3, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 266
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .line 268
    .local v0, "client":Lcom/vzw/location/server/VzwClient;
    iget-object v3, v0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    if-nez v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v3, v0}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    goto :goto_1

    .line 271
    :cond_1
    iget-object v3, v0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    invoke-virtual {v3, p1, p2}, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 274
    .end local v0    # "client":Lcom/vzw/location/server/VzwClient;
    :cond_2
    if-eqz p2, :cond_3

    .line 275
    const-string v3, "VzwLocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateProviderListenersLocked] enabling the provider["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/vzw/location/VzwLocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-interface {v2}, Lcom/vzw/location/VzwLocationProviderInterface;->enable()V

    goto :goto_0

    .line 278
    :cond_3
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[updateProviderListenersLocked] disableLocationTracking"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-interface {v2, v5, v5}, Lcom/vzw/location/VzwLocationProviderInterface;->enableLocationTracking(ZI)V

    .line 280
    invoke-interface {v2}, Lcom/vzw/location/VzwLocationProviderInterface;->disable()V

    goto :goto_0
.end method

.method private updateProvidersLocked()V
    .locals 8

    .prologue
    .line 233
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 234
    const-string v5, "VzwLocationManagerService"

    const-string v6, "Providers are null, panic!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-void

    .line 237
    :cond_1
    const-string v5, "VzwLocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total number of available providers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 240
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwLocationProviderInterface;

    .line 241
    .local v3, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    invoke-interface {v3}, Lcom/vzw/location/VzwLocationProviderInterface;->isEnabled()Z

    move-result v1

    .line 242
    .local v1, "isEnabled":Z
    invoke-interface {v3}, Lcom/vzw/location/VzwLocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/vzw/location/server/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    .line 245
    .local v4, "shouldBeEnabled":Z
    const-string v5, "VzwLocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "****provider number["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] - with name ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] - shoud be enabled? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz v1, :cond_3

    if-nez v4, :cond_3

    .line 248
    const-string v5, "VzwLocationManagerService"

    const-string v6, "Provider is enabled, but Location Setting is disabled."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/vzw/location/server/VzwLocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 239
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 250
    :cond_3
    if-nez v1, :cond_2

    if-eqz v4, :cond_2

    .line 251
    const-string v5, "VzwLocationManagerService"

    const-string v6, "Provider is not enabled and we force to enable it."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lcom/vzw/location/server/VzwLocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method public addProximityAlert(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V
    .locals 4
    .param p1, "params"    # Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .prologue
    .line 824
    const-string v1, "VzwLocationManagerService"

    const-string v2, "[addProximityAlert] Entering"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-string/jumbo v1, "vzw_lbs"

    invoke-virtual {p0, v1}, Lcom/vzw/location/server/VzwLocationManagerService;->isProviderEnabled(Ljava/lang/String;)Z

    .line 829
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :try_start_1
    const-string v1, "VzwLocationManagerService"

    const-string v3, "[addProximityAlert] Calling addProximityAlertLocked()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->addProximityAlertLocked(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V

    .line 832
    monitor-exit v2

    .line 836
    :goto_0
    return-void

    .line 832
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z
    .locals 8
    .param p1, "listener"    # Lcom/vzw/location/IVzwGpsStatusListener;

    .prologue
    .line 699
    const-string v3, "VzwLocationManagerService"

    const-string v6, "[addVzwGpsStatusListener] Entering."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v6, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 702
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 703
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 704
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 707
    .local v4, "identity":J
    :try_start_1
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v3, v0, v1}, Lcom/vzw/location/server/VzwClientManager;->getVzwClient(II)Lcom/vzw/location/server/VzwClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/vzw/location/server/VzwClient;->addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 712
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 715
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 708
    :catch_0
    move-exception v2

    .line 709
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "VzwLocationManagerService"

    const-string v7, "addVzwGpsStatusListener"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 710
    const/4 v3, 0x0

    .line 712
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    goto :goto_0

    .line 714
    .end local v0    # "callingPid":I
    .end local v1    # "callingUid":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "identity":J
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 712
    .restart local v0    # "callingPid":I
    .restart local v1    # "callingUid":I
    .restart local v4    # "identity":J
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 562
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    :try_start_1
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->_getAllProvidersLocked()Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 569
    :goto_0
    return-object v2

    .line 564
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 565
    :catch_0
    move-exception v1

    .line 566
    .local v1, "se":Ljava/lang/SecurityException;
    throw v1

    .line 567
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwLocationManagerService"

    const-string v3, "getAllProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Z)Ljava/lang/String;
    .locals 4
    .param p1, "enabledOnly"    # Z

    .prologue
    const/4 v0, 0x0

    .line 789
    const-string v1, "VzwLocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBestProvider] enabledOnly = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 792
    const-string/jumbo v1, "vzw_lbs"

    invoke-virtual {p0, v1}, Lcom/vzw/location/server/VzwLocationManagerService;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    const-string v0, "VzwLocationManagerService"

    const-string v1, "[getBestProvider] return vzw_lbs."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string/jumbo v0, "vzw_lbs"

    .line 801
    :cond_0
    :goto_0
    return-object v0

    .line 797
    :cond_1
    const-string v1, "VzwLocationManagerService"

    const-string v2, "[getBestProvider] mVzwLocationProvider = null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 878
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 879
    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->_getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v4

    .line 887
    :goto_0
    return-object v3

    .line 880
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 881
    :catch_0
    move-exception v2

    .line 882
    .local v2, "se":Ljava/lang/SecurityException;
    throw v2

    .line 883
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 884
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 885
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 886
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VzwLocationManagerService"

    const-string v4, "_getProviderInfo got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 887
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getProviderStatus(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1001
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderInterface;

    .line 1004
    .local v0, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/vzw/location/VzwLocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v1

    return v1

    .line 1005
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 4
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 930
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 931
    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->_getProvidersLocked(Z)Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 937
    :goto_0
    return-object v2

    .line 932
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 933
    :catch_0
    move-exception v1

    .line 934
    .local v1, "se":Ljava/lang/SecurityException;
    throw v1

    .line 935
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwLocationManagerService"

    const-string v3, "getProviders exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStatusUpdateTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 993
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderInterface;

    .line 996
    .local v0, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vzw/location/VzwLocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v2

    return-wide v2

    .line 997
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 736
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 737
    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->_isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    monitor-exit v4

    .line 745
    :goto_0
    return v3

    .line 738
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 739
    :catch_0
    move-exception v2

    .line 740
    .local v2, "se":Ljava/lang/SecurityException;
    throw v2

    .line 741
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 742
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 743
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[isProviderEnabled] Caught an exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 854
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[removeProximityAlert] Entering"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 857
    :try_start_1
    const-string v3, "VzwLocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[removeProximityAlert] Calling removeProximityAlertLocked("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    .line 859
    monitor-exit v4

    .line 867
    :goto_0
    return-void

    .line 859
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 860
    :catch_0
    move-exception v2

    .line 861
    .local v2, "se":Ljava/lang/SecurityException;
    throw v2

    .line 862
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 863
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 864
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 865
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[removeProximityAlert] Exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdates(Lcom/vzw/location/ILocationListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/vzw/location/ILocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 575
    iget-object v8, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 576
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 577
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 579
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 581
    .local v2, "identity":J
    :try_start_1
    iget-object v7, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v7, v6, v4}, Lcom/vzw/location/server/VzwClientManager;->removeLocationListener(II)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    :goto_0
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 592
    return-void

    .line 582
    :catch_0
    move-exception v5

    .line 583
    .local v5, "se":Ljava/lang/SecurityException;
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 589
    .end local v5    # "se":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v7

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 591
    .end local v2    # "identity":J
    .end local v4    # "pid":I
    .end local v6    # "uid":I
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 584
    .restart local v2    # "identity":J
    .restart local v4    # "pid":I
    .restart local v6    # "uid":I
    :catch_1
    move-exception v1

    .line 585
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_5
    throw v1

    .line 586
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "VzwLocationManagerService"

    const-string v9, "removeUpdates got exception:"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 589
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/vzw/location/IVzwGpsStatusListener;

    .prologue
    .line 719
    iget-object v6, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 720
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 721
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 722
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 725
    .local v4, "identity":J
    :try_start_1
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v3, v1, v0, p1}, Lcom/vzw/location/server/VzwClientManager;->removeStatusListener(IILcom/vzw/location/IVzwGpsStatusListener;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 729
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 732
    return-void

    .line 726
    :catch_0
    move-exception v2

    .line 727
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "VzwLocationManagerService"

    const-string v7, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 729
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 731
    .end local v0    # "callingPid":I
    .end local v1    # "callingUid":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "identity":J
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 729
    .restart local v0    # "callingPid":I
    .restart local v1    # "callingUid":I
    .restart local v4    # "identity":J
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public reportAllVzwGpsStatusChanged(I)V
    .locals 6
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    iget-object v5, v5, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 519
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    const/4 v2, 0x0

    .line 521
    .local v2, "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 522
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .line 524
    .local v0, "client":Lcom/vzw/location/server/VzwClient;
    invoke-virtual {v0, p1}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 525
    if-nez v2, :cond_1

    .line 526
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .restart local v2    # "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 531
    .end local v0    # "client":Lcom/vzw/location/server/VzwClient;
    :cond_2
    if-eqz v2, :cond_3

    .line 532
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 533
    .local v3, "deadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 534
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/server/VzwClient;

    .line 535
    .local v1, "deadClient":Lcom/vzw/location/server/VzwClient;
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v5, v1}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    goto :goto_1

    .line 538
    .end local v1    # "deadClient":Lcom/vzw/location/server/VzwClient;
    .end local v3    # "deadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :cond_3
    return-void
.end method

.method public reportGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 6
    .param p1, "deviceStatus"    # Lcom/vzw/location/VzwGpsDeviceStatus;

    .prologue
    .line 493
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    iget-object v5, v5, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 494
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    const/4 v2, 0x0

    .line 496
    .local v2, "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 497
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .line 499
    .local v0, "client":Lcom/vzw/location/server/VzwClient;
    invoke-virtual {v0, p1}, Lcom/vzw/location/server/VzwClient;->reportOnGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 500
    if-nez v2, :cond_1

    .line 501
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .restart local v2    # "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 507
    .end local v0    # "client":Lcom/vzw/location/server/VzwClient;
    :cond_2
    if-eqz v2, :cond_3

    .line 508
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 509
    .local v3, "deadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 510
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/server/VzwClient;

    .line 511
    .local v1, "deadClient":Lcom/vzw/location/server/VzwClient;
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v5, v1}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    goto :goto_1

    .line 514
    .end local v1    # "deadClient":Lcom/vzw/location/server/VzwClient;
    .end local v3    # "deadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :cond_3
    return-void
.end method

.method public reportLocation(Landroid/location/Location;I)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 456
    const-string v1, "VzwLocationManagerService"

    const-string v2, "[reportLocation] sending the message. MESSAGE_LOCATION_CHANGED(1)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v3, p1}, Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 459
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    invoke-static {v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 460
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 461
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 463
    return-void
.end method

.method public reportSvStatusChanged(II[I[I[F[F[F)V
    .locals 12
    .param p1, "svCount"    # I
    .param p2, "svInViewCount"    # I
    .param p3, "prn"    # [I
    .param p4, "prnInView"    # [I
    .param p5, "elevInView"    # [F
    .param p6, "azimInView"    # [F
    .param p7, "snrInView"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 469
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    iget-object v1, v1, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 470
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    const/4 v9, 0x0

    .line 472
    .local v9, "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 473
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .local v0, "client":Lcom/vzw/location/server/VzwClient;
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 475
    invoke-virtual/range {v0 .. v7}, Lcom/vzw/location/server/VzwClient;->reportOnGpsSvStatusChanged(II[I[I[F[F[F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    if-nez v9, :cond_1

    .line 477
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .restart local v9    # "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    :cond_1
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 483
    .end local v0    # "client":Lcom/vzw/location/server/VzwClient;
    :cond_2
    if-eqz v9, :cond_3

    .line 484
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 485
    .local v10, "deadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 486
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vzw/location/server/VzwClient;

    .line 487
    .local v8, "deadClient":Lcom/vzw/location/server/VzwClient;
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v1, v8}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    goto :goto_1

    .line 490
    .end local v8    # "deadClient":Lcom/vzw/location/server/VzwClient;
    .end local v10    # "deadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :cond_3
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/ILocationListener;Z)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "criteria"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "listener"    # Lcom/vzw/location/ILocationListener;
    .param p4, "isSingleShot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 767
    invoke-virtual {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->isProviderEnabled(Ljava/lang/String;)Z

    .line 770
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 772
    :try_start_1
    const-string v3, "VzwLocationManagerService"

    const-string v5, "[requestLocationUpdates] Let\'s requestLocationUpdates. Passed criteria."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string v3, "VzwLocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestLocationUpdates] provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v3, "VzwLocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestLocationUpdates] VzwCriteria = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v3, "VzwLocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestLocationUpdates] isSingleShot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/vzw/location/server/VzwLocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;ZLcom/vzw/location/ILocationListener;)V

    .line 778
    monitor-exit v4

    .line 786
    :goto_0
    return-void

    .line 778
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 779
    :catch_0
    move-exception v2

    .line 780
    .local v2, "se":Ljava/lang/SecurityException;
    throw v2

    .line 781
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 782
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 783
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VzwLocationManagerService"

    const-string v4, "requestUpdates got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestStartNavigating(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/VzwGpsConfigInit;ZI)Z
    .locals 14
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "criteria"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "config"    # Lcom/vzw/location/VzwGpsConfigInit;
    .param p4, "isFinalFix"    # Z
    .param p5, "sessionId"    # I

    .prologue
    .line 942
    const-string v11, "VzwLocationManagerService"

    const-string v12, "[requestStartNavigating] Entering."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v11, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vzw/location/VzwLocationProviderInterface;

    .line 944
    .local v6, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    const/4 v9, 0x0

    .line 945
    .local v9, "result_setServer":Z
    const/4 v8, 0x0

    .line 947
    .local v8, "result_setCriteria":Z
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 948
    .local v3, "extra":Landroid/os/Bundle;
    const-string v11, "VzwLocationManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[requestStartNavigating] criteria = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/vzw/location/VzwCriteria;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string v11, "criteria"

    move-object/from16 v0, p2

    invoke-virtual {v3, v11, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 950
    const-string v12, "is_finalFix"

    if-eqz p4, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {v3, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 951
    const-string v11, "VzwLocationManagerService"

    const-string v12, "[requestStartNavigating] sendExtraCommand with set_provider_with_criteria"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    if-eqz v6, :cond_1

    const-string/jumbo v11, "set_provider_with_criteria"

    invoke-interface {v6, v11, v3}, Lcom/vzw/location/VzwLocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v8

    .line 958
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 959
    .local v2, "dataBundle":Landroid/os/Bundle;
    const-string v11, "configInit"

    move-object/from16 v0, p3

    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 961
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 962
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 963
    .local v10, "uid":I
    const-string v11, "VzwLocationManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[requestStartNavigating] PDI="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " | UID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 966
    .local v4, "identity":J
    const-string v11, "pid"

    invoke-virtual {v2, v11, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 967
    const-string/jumbo v11, "uid"

    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 969
    const-string/jumbo v11, "set_up_server_info"

    invoke-interface {v6, v11, v2}, Lcom/vzw/location/VzwLocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v9

    .line 972
    if-eqz v9, :cond_2

    if-eqz v8, :cond_2

    .line 973
    const/4 v11, 0x1

    move/from16 v0, p5

    invoke-interface {v6, v11, v0}, Lcom/vzw/location/VzwLocationProviderInterface;->enableLocationTracking(ZI)V

    .line 978
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 980
    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    const/4 v11, 0x1

    :goto_2
    return v11

    .line 950
    .end local v2    # "dataBundle":Landroid/os/Bundle;
    .end local v4    # "identity":J
    .end local v7    # "pid":I
    .end local v10    # "uid":I
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 956
    :cond_1
    new-instance v11, Ljava/lang/NullPointerException;

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v11

    .line 976
    .restart local v2    # "dataBundle":Landroid/os/Bundle;
    .restart local v4    # "identity":J
    .restart local v7    # "pid":I
    .restart local v10    # "uid":I
    :cond_2
    const-string v11, "VzwLocationManagerService"

    const-string v12, "[requestStartNavigating] Error ouccred while trying to enable LocationTracking"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 980
    :cond_3
    const/4 v11, 0x0

    goto :goto_2
.end method

.method public requestStopNavigating()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 984
    const-string v1, "VzwLocationManagerService"

    const-string v2, "[requestStopNavigating] Start."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v2, "vzw_lbs"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderInterface;

    .line 988
    .local v0, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, v3, v3}, Lcom/vzw/location/VzwLocationProviderInterface;->enableLocationTracking(ZI)V

    .line 990
    return-void

    .line 989
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 408
    const-string v0, "VzwLocationManagerService"

    const-string v1, "Inside thread call - run()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 411
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->initialize()V

    .line 415
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 416
    return-void
.end method

.method public setVzwGpsConfigInit(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)Z
    .locals 18
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "configInit"    # Lcom/vzw/location/VzwGpsConfigInit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 620
    const/4 v3, 0x0

    .line 622
    .local v3, "isSet":Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 623
    :cond_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "setVzeGpsConfigInt-params"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 626
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 627
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 628
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 630
    .local v4, "identity":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v15, v12, v14}, Lcom/vzw/location/server/VzwClientManager;->getVzwClient(II)Lcom/vzw/location/server/VzwClient;

    move-result-object v6

    .line 631
    .local v6, "mClient":Lcom/vzw/location/server/VzwClient;
    move-object/from16 v7, p2

    .line 633
    .local v7, "mConfigInit":Lcom/vzw/location/VzwGpsConfigInit;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vzw/location/server/VzwLocationManagerService;->vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget v15, v15, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 635
    invoke-virtual/range {p2 .. p2}, Lcom/vzw/location/VzwGpsConfigInit;->getSmsPrefixInfo()Ljava/lang/String;

    move-result-object v13

    .line 636
    .local v13, "smsPrefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/vzw/location/VzwGpsConfigInit;->getFullyQualifiedAppName()Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, "fqan":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/vzw/location/server/VzwLocationManagerService;->registerToSmsPrefixTable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 639
    const-string v15, "VzwLocationManagerService"

    const-string v16, "[setVzwGpsConfigInit] SMS filter registration successfully done."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v3, 0x1

    .line 648
    :goto_0
    const-string v15, "VzwLocationManagerService"

    const-string v16, "[setVzwGpsConfigInit] Network authorization start"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v10, 0x0

    .line 651
    .local v10, "modeOperator":Lcom/vzw/location/server/VzwModeOperator;
    const/4 v8, 0x0

    .line 652
    .local v8, "mNetworkInfo":Lcom/vzw/location/server/VzwModeNetworkInfo;
    const/4 v9, 0x0

    .line 653
    .local v9, "mNetworkPermission":Z
    new-instance v11, Lcom/vzw/location/server/VzwModeDeterminer;

    move-object/from16 v0, p1

    invoke-direct {v11, v7, v0}, Lcom/vzw/location/server/VzwModeDeterminer;-><init>(Lcom/vzw/location/VzwGpsConfigInit;Ljava/lang/String;)V

    .line 655
    .local v11, "modeSelector":Lcom/vzw/location/server/VzwModeDeterminer;
    invoke-virtual {v11}, Lcom/vzw/location/server/VzwModeDeterminer;->convertMode()Lcom/vzw/location/server/VzwModeOperator;

    move-result-object v10

    .line 656
    if-nez v10, :cond_3

    .line 657
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Before converting, init error."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 642
    .end local v8    # "mNetworkInfo":Lcom/vzw/location/server/VzwModeNetworkInfo;
    .end local v9    # "mNetworkPermission":Z
    .end local v10    # "modeOperator":Lcom/vzw/location/server/VzwModeOperator;
    .end local v11    # "modeSelector":Lcom/vzw/location/server/VzwModeDeterminer;
    :cond_2
    const-string v15, "VzwLocationManagerService"

    const-string v16, "[setVzwGpsConfigInit] SMS filter registration failed."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v3, 0x0

    .line 644
    const/16 v15, 0x1a

    invoke-virtual {v6, v15}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z

    goto :goto_0

    .line 659
    .restart local v8    # "mNetworkInfo":Lcom/vzw/location/server/VzwModeNetworkInfo;
    .restart local v9    # "mNetworkPermission":Z
    .restart local v10    # "modeOperator":Lcom/vzw/location/server/VzwModeOperator;
    .restart local v11    # "modeSelector":Lcom/vzw/location/server/VzwModeDeterminer;
    :cond_3
    invoke-virtual {v10}, Lcom/vzw/location/server/VzwModeOperator;->verifyModeAccesibility()Z

    move-result v9

    .line 661
    const-string v15, "VzwLocationManagerService"

    const-string v16, "[setVzwGpsConfigInit] Network authorization end"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    if-nez v9, :cond_4

    .line 663
    const/4 v15, 0x3

    invoke-virtual {v6, v15}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z

    .line 664
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Network authorization failed."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 667
    :cond_4
    invoke-virtual {v10}, Lcom/vzw/location/server/VzwModeOperator;->getNetworkInfo()Lcom/vzw/location/server/VzwModeNetworkInfo;

    move-result-object v8

    .line 668
    iget-object v15, v8, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHost:Ljava/net/InetAddress;

    iget v0, v8, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHostPort:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/vzw/location/VzwGpsConfigInit;->setMpc(Ljava/net/InetAddress;I)V

    .line 672
    const-string v15, "VzwLocationManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[setVzwGpsConfigInit] Provider:["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v2    # "fqan":Ljava/lang/String;
    .end local v8    # "mNetworkInfo":Lcom/vzw/location/server/VzwModeNetworkInfo;
    .end local v9    # "mNetworkPermission":Z
    .end local v10    # "modeOperator":Lcom/vzw/location/server/VzwModeOperator;
    .end local v11    # "modeSelector":Lcom/vzw/location/server/VzwModeDeterminer;
    .end local v13    # "smsPrefix":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual {v6, v7}, Lcom/vzw/location/server/VzwClient;->setVzwGpsConfigInit(Lcom/vzw/location/VzwGpsConfigInit;)V

    .line 687
    if-eqz v3, :cond_7

    .line 688
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z

    .line 693
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    return v3

    .line 674
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vzw/location/server/VzwLocationManagerService;->vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget v15, v15, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 676
    const-string v15, "VzwLocationManagerService"

    const-string v16, "[setVzwGpsConfigInit] TYPE SUPL "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual/range {p2 .. p2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/vzw/location/VzwGpsConfigInit;->setLocSrv(Ljava/net/InetAddress;I)V

    .line 680
    const-string v15, "VzwLocationManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[setVzwGpsConfigInit] Config Info:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Lcom/vzw/location/VzwGpsConfigInit;->log()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v3, 0x1

    goto :goto_1

    .line 691
    :cond_7
    const/4 v15, 0x7

    invoke-virtual {v6, v15}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z

    goto :goto_2
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 163
    const-string v1, "VzwLocationManagerService"

    const-string v2, "In SystemReady of VzwLocationManagerService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "VzwLocationManagerService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 165
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method
