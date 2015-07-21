.class Lcom/android/server/wifi/WifiServiceImplEx$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImplEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImplEx;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImplEx;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImplEx;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImplEx$3;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 200
    const-string v1, "wlan.lge.gons.scan.scanonly"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "WifiServiceImplEx"

    const-string v2, "GONS, go back to legacy mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v1, "wlan.lge.gons.scan.scanonly"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "wlan.lge.gons.scan.completed"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$3;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImplEx;->access$200(Lcom/android/server/wifi/WifiServiceImplEx;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_frequency_band"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 209
    .local v0, "band":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$3;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    .line 212
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$3;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v2, 0x26007

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 214
    .end local v0    # "band":I
    :cond_0
    return-void
.end method
