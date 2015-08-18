.class Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;
.super Ljava/lang/Object;
.source "WiFiOffloadingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiDialogRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;


# direct methods
.method private constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    .param p2, "x1"    # Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiOffloadingDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "only_access_points"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    const-string v1, "wifi_status"

    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisWifiOn()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    const-string v1, "Wifi"

    const-string v2, "start wifioffloading activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$200(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
