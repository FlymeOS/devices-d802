.class public Lcom/lge/wifi/impl/aggregation/WifiAggregation;
.super Ljava/lang/Object;
.source "WifiAggregation.java"

# interfaces
.implements Lcom/lge/wifi/extension/IWifiAggregation;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiAggregation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public processingAggregation()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->getInstance()Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "WifiAggregation"

    const-string v1, "processinAggregation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->getInstance()Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->processingAggregation()V

    goto :goto_0
.end method

.method public startService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 30
    .local v1, "wifiAggregationService":Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
    const-string v3, "WifiAggregation"

    const-string v4, "startService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :try_start_0
    new-instance v2, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;

    invoke-direct {v2, p1}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1    # "wifiAggregationService":Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
    .local v2, "wifiAggregationService":Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
    :try_start_1
    const-string v3, "wifiAggregationService"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 39
    .end local v2    # "wifiAggregationService":Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
    .restart local v1    # "wifiAggregationService":Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v3, "WifiAggregation"

    const-string v4, "Failure starting WiFi Aggregation Service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 35
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "wifiAggregationService":Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
    .restart local v2    # "wifiAggregationService":Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "wifiAggregationService":Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
    .restart local v1    # "wifiAggregationService":Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
    goto :goto_1
.end method
