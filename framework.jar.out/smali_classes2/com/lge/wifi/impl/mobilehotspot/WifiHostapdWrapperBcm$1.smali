.class Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiHostapdWrapperBcm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 73
    .local v2, "notivalue":I
    const-string v3, "com.lge.wifi.sap.ENABLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_ENABLED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 78
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_READY:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    .line 80
    if-eqz v2, :cond_0

    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;->sendP2PNotificaiton(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v3, "com.lge.wifi.sap.DISABLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_DISABLED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 93
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STOP:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    .line 95
    if-eqz v2, :cond_0

    .line 96
    :try_start_1
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;->sendP2PNotificaiton(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 98
    :catch_1
    move-exception v1

    .line 99
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_STATION_ASSOC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_STATION_ASSOC_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 111
    :cond_3
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_STATION_DISASSOC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_STATION_DISASSOC_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STA_DISASSOC:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    .line 118
    if-eqz v2, :cond_0

    .line 119
    :try_start_2
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;->sendP2PNotificaiton(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 121
    :catch_2
    move-exception v1

    .line 122
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_DHCP_INFO_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 127
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_DHCP_INFO_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 132
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_CREATE_LINK_COMPLETE:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    .line 134
    if-eqz v2, :cond_0

    .line 135
    :try_start_3
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;->sendP2PNotificaiton(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 137
    :catch_3
    move-exception v1

    .line 138
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 141
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_HOSTAPD_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 143
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_HOSTAPD_CONNECTED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 146
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_HOSTAPD_CONNECTED:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    .line 148
    if-eqz v2, :cond_0

    .line 149
    :try_start_4
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;->sendP2PNotificaiton(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 151
    :catch_4
    move-exception v1

    .line 152
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 155
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_MAX_REACHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 157
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_MAX_REACHED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 160
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STA_DISASSOC:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    .line 162
    if-eqz v2, :cond_0

    .line 163
    :try_start_5
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;->sendP2PNotificaiton(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 165
    :catch_5
    move-exception v1

    .line 166
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 171
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadcastReceiver : unknown Intent ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
