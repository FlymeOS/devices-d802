.class Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;
.super Landroid/os/Handler;
.source "WifiSapService.java"

# interfaces
.implements Lcom/lge/wifi/impl/wifiSap/WifiSapTypes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/wifiSap/WifiSapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSapHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/wifiSap/WifiSapService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    .line 151
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 156
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 159
    :pswitch_0
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_AP_ENABLED]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v22

    const-string v23, "CMCC"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v22

    const-string v23, "CMO"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 166
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$100(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/telephony/TelephonyManager;

    move-result-object v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$100(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v22

    if-nez v22, :cond_2

    .line 168
    const-string v22, "WifiSapService"

    const-string v23, "Enable Mobile Data"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$100(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/telephony/TelephonyManager;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_2
    :goto_1
    new-instance v10, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.ENABLED"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v10, "intentApEnabled":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 172
    .end local v10    # "intentApEnabled":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 173
    .local v6, "e":Ljava/lang/Exception;
    const-string v22, "WifiSapService"

    const-string v23, "Enable Mobile Data Exception"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_AP_DISABLED]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v9, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.DISABLED"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v9, "intentApDisabled":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 194
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useCommonHotspotAPI()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 195
    const-string v22, "WifiSapService"

    const-string v23, "[LG Common UI] mStations.clear()"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$200(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 206
    :cond_3
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v22

    const-string v23, "VZW"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->doesSupportHotspotList()Z

    move-result v22

    if-eqz v22, :cond_0

    :cond_4
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v22

    const-string v23, "US"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$200(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 218
    .end local v9    # "intentApDisabled":Landroid/content/Intent;
    :pswitch_2
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_STA_ASSOCIATED]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->doesSupportHotspotList()Z

    move-result v22

    if-nez v22, :cond_5

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useCommonHotspotAPI()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 224
    :cond_5
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useCommonHotspotAPI()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 225
    const-string v22, "WifiSapService"

    const-string v23, "[LG Common UI] handleMessage [MESSAGE_STA_ASSOCIATED]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->updateApClientList()Z

    .line 229
    new-instance v17, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.WIFI_SAP_STATION_ASSOC"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v17, "intentStaAss":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 237
    .end local v17    # "intentStaAss":Landroid/content/Intent;
    :pswitch_3
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_STA_DISASSOCIATED]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->doesSupportHotspotList()Z

    move-result v22

    if-nez v22, :cond_7

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useCommonHotspotAPI()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 243
    :cond_7
    const/16 v22, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiApState:I
    invoke-static/range {v23 .. v23}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$300(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->updateApClientList()Z

    .line 247
    :cond_8
    new-instance v18, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.WIFI_SAP_STATION_DISASSOC"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v18, "intentStaDisass":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 255
    .end local v18    # "intentStaDisass":Landroid/content/Intent;
    :pswitch_4
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_SAP_STA_MAX_REACHED]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->doesSupportHotspotList()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->updateApClientList()Z

    .line 261
    new-instance v19, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.WIFI_SAP_MAX_REACHED"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v19, "intentStaMaxReached":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 268
    .end local v19    # "intentStaMaxReached":Landroid/content/Intent;
    :pswitch_5
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_SAP_HOSTAPD_CONNECTED]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v22

    const-string v23, "TMO"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v22

    const-string v23, "MPCS"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    :cond_9
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v22

    const-string v23, "US"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "wifi_ap_broadcast_channel"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 274
    .local v5, "defaultChannel":I
    new-instance v7, Landroid/content/IntentFilter;

    const-string v22, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 275
    .local v7, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 276
    .local v3, "BatteryState":Landroid/content/Intent;
    const-string v22, "status"

    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 277
    .local v4, "chargeState":I
    const-string v22, "WifiSapService"

    const-string v23, "[txPowerMode] Charging : 2 FULL : 5"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v22, "WifiSapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[txPowerMode] Current State : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    packed-switch v4, :pswitch_data_1

    .line 291
    :pswitch_6
    const-string v22, "WifiSapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[txPowerMode] Current State : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "wifi_ap_power_mode_high"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 295
    .local v21, "txPowerMode":I
    :goto_2
    const-string v22, "WifiSapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[txPowerMode] : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    move/from16 v0, v21

    invoke-static {v0, v5}, Lcom/lge/wifi/config/LgeWifiConfig;->getTxPowerValue(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setTxPower(I)I

    .line 299
    .end local v3    # "BatteryState":Landroid/content/Intent;
    .end local v4    # "chargeState":I
    .end local v5    # "defaultChannel":I
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v21    # "txPowerMode":I
    :cond_a
    new-instance v15, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.WIFI_SAP_HOSTAPD_CONNECTED"

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v15, "intentHostapdConnected":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 283
    .end local v15    # "intentHostapdConnected":Landroid/content/Intent;
    .restart local v3    # "BatteryState":Landroid/content/Intent;
    .restart local v4    # "chargeState":I
    .restart local v5    # "defaultChannel":I
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    :pswitch_7
    const-string v22, "WifiSapService"

    const-string v23, "[txPowerMode]Charging : 2 FULL : 5"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "wifi_ap_power_mode_high_with_usb"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 285
    .restart local v21    # "txPowerMode":I
    goto :goto_2

    .line 306
    .end local v3    # "BatteryState":Landroid/content/Intent;
    .end local v4    # "chargeState":I
    .end local v5    # "defaultChannel":I
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v21    # "txPowerMode":I
    :pswitch_8
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_SAP_HOSTAPD_WPS_PBC_ACTIVE]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v20, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.WIFI_SAP_WPS_PBC_ACTIVE"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v20, "intentpbcActive":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 313
    .end local v20    # "intentpbcActive":Landroid/content/Intent;
    :pswitch_9
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_SAP_HOSTAPD_WPS_EVENT_DISABLE]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v11, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_DISABLE"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v11, "intentEventDisable":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 320
    .end local v11    # "intentEventDisable":Landroid/content/Intent;
    :pswitch_a
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_SAP_HOSTAPD_WPS_EVENT_TIMEOUT]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v14, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_TIMEOUT"

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v14, "intentEventTimeout":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 327
    .end local v14    # "intentEventTimeout":Landroid/content/Intent;
    :pswitch_b
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_SAP_HOSTAPD_WPS_EVENT_SUCCESS]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v13, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_SUCCESS"

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v13, "intentEventSuccess":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 334
    .end local v13    # "intentEventSuccess":Landroid/content/Intent;
    :pswitch_c
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_SAP_HOSTAPD_WPS_EVENT_FAIL]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v12, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_FAIL"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v12, "intentEventFail":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 341
    .end local v12    # "intentEventFail":Landroid/content/Intent;
    :pswitch_d
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_SAP_HOSTAPD_WPS_EVENT_REG_SUCCESS]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v16, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_REG_SUCCES"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v16, "intentRegSuccess":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 350
    .end local v16    # "intentRegSuccess":Landroid/content/Intent;
    :pswitch_e
    const-string v22, "WifiSapService"

    const-string v23, "handleMessage [MESSAGE_SAP_DRIVER_HUNG_EVENT]"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v8, Landroid/content/Intent;

    const-string v22, "com.lge.wifi.sap.WIFI_SAP_DRIVER_HUNG_EVENT"

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v8, "hangEvent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$000(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 280
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
