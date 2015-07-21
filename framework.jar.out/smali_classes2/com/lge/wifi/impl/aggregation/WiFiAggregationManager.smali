.class public Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;
.super Ljava/lang/Object;
.source "WiFiAggregationManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "wifiAggregationService"

.field private static final TAG:Ljava/lang/String; = "WiFiAggregation"

.field private static deathBinderNotificator:Landroid/os/IBinder$DeathRecipient;

.field private static mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

.field private static mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    .line 37
    sput-object v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    .line 89
    new-instance v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->deathBinderNotificator:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private constructor <init>(Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;)V
    .locals 0
    .param p1, "service"    # Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sput-object p1, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    .line 55
    return-void
.end method

.method public static getInstance()Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;
    .locals 6

    .prologue
    .line 59
    sget-object v3, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    if-nez v3, :cond_1

    .line 61
    const-string/jumbo v3, "wifiAggregationService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/wifi/impl/aggregation/IWiFiAggregation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    move-result-object v2

    .line 71
    .local v2, "service":Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;
    if-eqz v2, :cond_0

    .line 72
    :try_start_0
    invoke-interface {v2}, Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v4, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->deathBinderNotificator:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    new-instance v3, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    invoke-direct {v3, v2}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;-><init>(Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;)V

    sput-object v3, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    .line 80
    const-string v3, "WiFiAggregation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get a service instance in WiFiAggregationManager() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    sget-object v3, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    return-object v3

    .line 74
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public processingAggregation()V
    .locals 4

    .prologue
    .line 99
    const-string v1, "WiFiAggregation"

    const-string v2, "processingAggregation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v1, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    if-nez v1, :cond_0

    .line 102
    const-string v1, "WiFiAggregation"

    const-string v2, "null == mWiFiAggregationService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    sput-object v1, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    .line 104
    invoke-static {}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->getInstance()Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    move-result-object v1

    sput-object v1, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    .line 105
    const-string v1, "WiFiAggregation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recheck mWiFiAggregationService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v1, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    if-nez v1, :cond_0

    .line 107
    const-string v1, "WiFiAggregation"

    const-string v2, "null == mWiFiAggregationService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    sget-object v1, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    invoke-interface {v1}, Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;->init()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :try_start_1
    sget-object v1, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    invoke-interface {v1}, Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;->enable()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WiFiAggregation"

    const-string v2, "Could not start aggregation in processingAggregation()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 115
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "WiFiAggregation"

    const-string v2, "Could not init aggregation in processingAggregation()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
