.class Lcom/lge/wifi/impl/WifiServerServiceExt$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiServerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;->initWifiServerSerivceExt(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiConfigStoreProxy;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0

    .prologue
    .line 948
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$3;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 951
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.lge.wifi.WIFI_SETTINGS_STATUS_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 952
    const-string v3, "wifi_setting_status"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 953
    .local v2, "wifiSettingStatus":I
    if-ne v2, v6, :cond_1

    .line 954
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnection:Z
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$3;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 956
    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnectionDelayed:Z
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$202(Z)Z

    .line 957
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$3;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$3;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x20414

    invoke-static {v4, v5, v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 961
    :cond_0
    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnection:Z
    invoke-static {v8}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$102(Z)Z

    .line 964
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$3;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.kt.wifiapi.OEMExtension.MANUAL_CONN_ENABLE_QUERY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 973
    .end local v2    # "wifiSettingStatus":I
    :cond_1
    :goto_0
    return-void

    .line 968
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.lge.wifi.WIFI_MANUAL_CONNECTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 969
    const-string v3, "manual_connection_cmd"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 970
    .local v0, "cmd":I
    const-string v3, "manual_connection_value"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 971
    .local v1, "enable":Z
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$3;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-virtual {v3, v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setManualConneciton(IZ)Z

    goto :goto_0
.end method
