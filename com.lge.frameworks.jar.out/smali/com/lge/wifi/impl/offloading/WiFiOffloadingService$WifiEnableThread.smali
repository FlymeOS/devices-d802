.class Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;
.super Ljava/lang/Thread;
.source "WiFiOffloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiEnableThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$500(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$200(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    # setter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1, v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$502(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$500(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 346
    const-string v0, "WiFiOffloadingService"

    const-string v1, "WifiEnableThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method
