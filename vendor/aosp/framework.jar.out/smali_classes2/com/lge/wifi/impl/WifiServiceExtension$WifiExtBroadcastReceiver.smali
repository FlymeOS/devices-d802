.class Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiServiceExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiExtBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServiceExtension;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/WifiServiceExtension;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServiceExtension;

    .line 534
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 535
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 540
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.lge.wifi.WIFI_UPDATE_WIFI_EXTINFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServiceExtension;

    const-string/jumbo v1, "wifi_extinfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/impl/WifiExtInfo;

    # setter for: Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;
    invoke-static {v2, v1}, Lcom/lge/wifi/impl/WifiServiceExtension;->access$002(Lcom/lge/wifi/impl/WifiServiceExtension;Lcom/lge/wifi/impl/WifiExtInfo;)Lcom/lge/wifi/impl/WifiExtInfo;

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    const-string v1, "com.lge.hotspotprovision.hotspot.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    const-string v1, "WifiServiceExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HotspotProvision.STATE_CHANGED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v1, "result"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 556
    const-string v1, "WifiServiceExtension"

    const-string v2, "4G MOBILE HOTSPOT PROVISION OK."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v1, v5}, Lcom/lge/wifi/impl/WifiServiceExtension;->setProvisioned(Z)V

    goto :goto_0

    .line 559
    :cond_2
    const-string v1, "WifiServiceExtension"

    const-string v2, "4G MOBILE HOTSPOT PROVISION FAIL."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v1, v4}, Lcom/lge/wifi/impl/WifiServiceExtension;->setProvisioned(Z)V

    goto :goto_0
.end method
