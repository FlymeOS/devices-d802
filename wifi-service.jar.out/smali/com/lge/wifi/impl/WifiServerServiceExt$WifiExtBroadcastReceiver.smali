.class Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiServerServiceExt.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiExtBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0

    .prologue
    .line 6436
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    .line 6437
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6438
    return-void
.end method

.method private checkMTSGID()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 7195
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7196
    .local v1, "sim_value":Ljava/lang/String;
    new-instance v3, Lcom/lge/uicc/LGUiccCard;

    invoke-direct {v3}, Lcom/lge/uicc/LGUiccCard;-><init>()V

    invoke-virtual {v3}, Lcom/lge/uicc/LGUiccCard;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 7197
    .local v0, "gid":Ljava/lang/String;
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " gid value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7199
    const-string v3, "302660"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "302370"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7201
    :cond_0
    const-string v3, "2c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "aa"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7202
    :cond_1
    const-string v2, "WifiServerServiceExt"

    const-string v3, "MTS inserted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7203
    const/4 v2, 0x1

    .line 7209
    :cond_2
    :goto_0
    return v2

    .line 7205
    :cond_3
    const-string v3, "WifiServerServiceExt"

    const-string v4, " TELUS/Koodo SIM inserted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkRgsOperator()Z
    .locals 3

    .prologue
    .line 7214
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7215
    .local v0, "sim_value":Ljava/lang/String;
    const-string v1, "302720"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "302370"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "302660"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7216
    :cond_0
    const-string v1, "WifiServerServiceExt"

    const-string v2, " RGS SIM inserted."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7217
    const/4 v1, 0x1

    .line 7219
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confDeleteCaOperatorCheck()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 7224
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BELL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7228
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private confDeleteforCA(Ljava/lang/String;)V
    .locals 7
    .param p1, "stateExtra"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 7233
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->confDeleteCaOperatorCheck()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7234
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ssid_update_completed"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_9

    .line 7235
    const-string v3, "LOADED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7237
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7238
    .local v2, "sim_value":Ljava/lang/String;
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BELL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 7239
    const-string v3, "302610"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "302780"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "20404"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7240
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/misc/wifi/wpa_supplicant.conf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7242
    .local v0, "mWpaProfileFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7243
    .local v1, "profileFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 7244
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 7245
    const-string v3, "WifiServerServiceExt"

    const-string v4, "SSID DB is cleared and it will be reset depend on SIM CARD Information"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7247
    :cond_1
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 7248
    const-string v3, "WifiServerServiceExt"

    const-string v4, "SCAN ONLY MODE AND SUPPLICANT RESTART"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7249
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 7250
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 7292
    .end local v0    # "mWpaProfileFile":Ljava/lang/String;
    .end local v1    # "profileFile":Ljava/io/File;
    .end local v2    # "sim_value":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 7253
    .restart local v2    # "sim_value":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TLS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_6

    .line 7254
    const-string v3, "302220"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "302221"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7255
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/misc/wifi/wpa_supplicant.conf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7257
    .restart local v0    # "mWpaProfileFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7258
    .restart local v1    # "profileFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, v5, :cond_5

    .line 7259
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 7260
    const-string v3, "WifiServerServiceExt"

    const-string v4, "SSID DB is cleared and it will be reset depend on SIM CARD Information"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7262
    :cond_5
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 7263
    const-string v3, "WifiServerServiceExt"

    const-string v4, "SCAN ONLY MODE AND SUPPLICANT RESTART"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7264
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 7265
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto :goto_0

    .line 7268
    .end local v0    # "mWpaProfileFile":Ljava/lang/String;
    .end local v1    # "profileFile":Ljava/io/File;
    :cond_6
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 7269
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->checkMTSGID()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/misc/wifi/wpa_supplicant.conf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7272
    .restart local v0    # "mWpaProfileFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7273
    .restart local v1    # "profileFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, v5, :cond_7

    .line 7274
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 7275
    const-string v3, "WifiServerServiceExt"

    const-string v4, "SSID DB is cleared and it will be reset depend on SIM CARD Information"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7277
    :cond_7
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 7278
    const-string v3, "WifiServerServiceExt"

    const-string v4, "SCAN ONLY MODE AND SUPPLICANT RESTART"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7279
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 7280
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto/16 :goto_0

    .line 7282
    .end local v0    # "mWpaProfileFile":Ljava/lang/String;
    .end local v1    # "profileFile":Ljava/io/File;
    :cond_8
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->checkRgsOperator()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7283
    const-string v3, "WifiServerServiceExt"

    const-string v4, "rgs SIM inserted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7284
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ssid_update_completed"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 7289
    .end local v2    # "sim_value":Ljava/lang/String;
    :cond_9
    const-string v3, "WifiServerServiceExt"

    const-string v4, "SSID DB is already set."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getOperatorHotSpotID()I
    .locals 1

    .prologue
    .line 7370
    const/4 v0, -0x1

    return v0
.end method

.method private updateSimState(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 7295
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 7296
    .local v0, "mSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7298
    .local v1, "stateExtra":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 7299
    const-string v2, "WifiServerServiceExt"

    const-string v3, "updateSimState(), stateExtra is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7367
    :cond_0
    :goto_0
    return-void

    .line 7303
    :cond_1
    const-string v2, "WifiServerServiceExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter updateSimState(), State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7304
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7305
    const-string v2, "WifiServerServiceExt"

    const-string v3, "No USIM detected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7306
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 7307
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mSimAbsent:Z
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7308
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mSimAbsent:Z
    invoke-static {v2, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7702(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 7333
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_9

    .line 7336
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->setSimAkaProfiles(Z)V
    invoke-static {v2, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8200(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)V

    .line 7341
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ORG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7343
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->updateORGWifiSleepPolicy()V
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8300(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 7349
    :cond_3
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "454"

    const-string v4, "19"

    invoke-static {v2, v3, v4}, Lcom/lge/wifi/config/LgeWifiConfig;->checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "454"

    const-string v4, "16"

    invoke-static {v2, v3, v4}, Lcom/lge/wifi/config/LgeWifiConfig;->checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7350
    :cond_4
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->setWifiPasspointFeature()V
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8400(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    goto :goto_0

    .line 7310
    :cond_5
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7311
    const-string v2, "WifiServerServiceExt"

    const-string v3, "USIM loaded and prepare ready state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7312
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mSimInserted:Z
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 7313
    const-string v2, "WifiServerServiceExt"

    const-string v3, "SIM loaded retry the phone number from SIM"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7315
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v2

    if-gt v2, v5, :cond_6

    .line 7316
    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->confDeleteforCA(Ljava/lang/String;)V

    .line 7319
    :cond_6
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mSimInserted:Z
    invoke-static {v2, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7802(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 7320
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->checkUpdatePhoneNumber()V
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7900(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 7322
    :cond_7
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mSoftapConfIsFirst:Z
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v2

    if-ne v2, v5, :cond_8

    .line 7323
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->setSoftApRenameToPhoneNumber()V
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8100(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 7325
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_1

    .line 7353
    :cond_9
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_0

    .line 7356
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    const/4 v3, 0x0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->setSimAkaProfiles(Z)V
    invoke-static {v2, v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8200(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 11
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    const/4 v6, -0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 7376
    const/4 v0, 0x0

    .line 7378
    .local v0, "connectedDevice":I
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 7379
    .local v3, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget v4, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v4, :cond_0

    .line 7380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7383
    .end local v3    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    if-lez v0, :cond_3

    .line 7384
    sput-boolean v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2pConneted:Z

    .line 7390
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2pMonitorStared:Z
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7392
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P2p time out is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayTimeOut:I
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6000(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7393
    const-string v4, "WifiServerServiceExt"

    const-string v5, "Start monitoring for p2p off delay"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7394
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Group Interface = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7395
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;->setInterface(Ljava/lang/String;)V

    .line 7396
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;->startMonitoring()V

    .line 7397
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 7398
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2pMonitorStared:Z
    invoke-static {v4, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8502(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 7399
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I
    invoke-static {v4, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6102(Lcom/lge/wifi/impl/WifiServerServiceExt;I)I

    .line 7400
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v10, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 7424
    :cond_2
    :goto_1
    return-void

    .line 7404
    :cond_3
    const-string v4, "WifiServerServiceExt"

    const-string v5, "No p2p device connected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7406
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mDelayChangeP2pDeviceName:Z
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7409
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7410
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lg_device_name"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 7415
    .local v1, "device_name":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 7416
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change P2P device Name to delayed device name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7417
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mDelayChangeP2pDeviceName:Z
    invoke-static {v4, v10}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6502(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 7420
    .end local v1    # "device_name":Ljava/lang/String;
    :cond_4
    sput-boolean v10, Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2pConneted:Z

    .line 7421
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2pMonitorStared:Z
    invoke-static {v4, v10}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$8502(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 7422
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 7412
    :cond_5
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lg_device_name"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "device_name":Ljava/lang/String;
    goto :goto_2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 52
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6443
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 6448
    .local v7, "action":Ljava/lang/String;
    const-string v45, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2

    .line 6449
    const-string v45, "WifiServerServiceExt"

    const-string v46, "ACTION_BOOT_COMPLETED"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mBootCompleted:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1902(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 6453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->registerPhoneStateListener()V
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2000(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 6457
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "TMO"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "MPCS"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v45

    const-string v46, "US"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1

    .line 6458
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 6459
    .local v15, "cr":Landroid/content/ContentResolver;
    const-string v45, "upsell_check_ongoing"

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7192
    .end local v15    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    .line 6464
    :cond_2
    const-string v45, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_13

    .line 6465
    const-string v45, "wifi_state"

    const/16 v46, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    .line 6467
    .local v34, "newWifiState":I
    const-string v45, "WifiServerServiceExt"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "WIFI_STATE_CHANGED_ACTION ["

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "]"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6468
    const/16 v45, 0x3

    move/from16 v0, v45

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 6469
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useOpProfile()Z

    move-result v45

    if-eqz v45, :cond_3

    const-string v45, "BELL"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_3

    .line 6470
    const-string v45, "TLS"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_3

    .line 6471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->addDefaultProfile()V
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2100(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 6474
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->getDlnaEnabled()Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    if-eqz v45, :cond_4

    .line 6475
    const/16 v45, 0x0

    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setDynamicBeaconWakeup(Z)Z

    move-result v45

    if-nez v45, :cond_4

    .line 6476
    const-string v45, "WifiServerServiceExt"

    const-string v46, "setDynamicBeaconWakeup is failed"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6480
    :cond_4
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "TMO"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_5

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "MPCS"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_9

    :cond_5
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v45

    const-string v46, "US"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_9

    .line 6481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    const-string v46, "connectivity"

    invoke-virtual/range {v45 .. v46}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 6482
    .local v11, "cm":Landroid/net/ConnectivityManager;
    if-eqz v11, :cond_9

    .line 6483
    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v41

    .line 6484
    .local v41, "tethered":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v27

    .line 6485
    .local v27, "mUsbRegexs":[Ljava/lang/String;
    const/16 v44, 0x0

    .line 6486
    .local v44, "usbTethered":Z
    move-object/from16 v8, v41

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    move/from16 v22, v21

    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v21    # "i$":I
    .end local v25    # "len$":I
    .local v22, "i$":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    aget-object v39, v8, v22

    .line 6487
    .local v39, "s":Ljava/lang/String;
    move-object/from16 v9, v27

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v21, 0x0

    .end local v22    # "i$":I
    .restart local v21    # "i$":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    aget-object v37, v9, v21

    .line 6488
    .local v37, "regex":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_6

    .line 6489
    const/16 v44, 0x1

    .line 6487
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 6486
    .end local v37    # "regex":Ljava/lang/String;
    :cond_7
    add-int/lit8 v21, v22, 0x1

    move/from16 v22, v21

    .end local v21    # "i$":I
    .restart local v22    # "i$":I
    goto :goto_1

    .line 6493
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v26    # "len$":I
    .end local v39    # "s":Ljava/lang/String;
    :cond_8
    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_9

    .line 6494
    const-string v45, "WifiServerServiceExt"

    const-string v46, "USB Tethering is enabled -> disable!!"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6495
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v11, v0}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 6500
    .end local v11    # "cm":Landroid/net/ConnectivityManager;
    .end local v22    # "i$":I
    .end local v27    # "mUsbRegexs":[Ljava/lang/String;
    .end local v41    # "tethered":[Ljava/lang/String;
    .end local v44    # "usbTethered":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mThisIsFirstEnableing:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2302(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 6502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->sendProhibitConnectAP()V
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2400(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 6503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendWifiDualbandAPConnection()V

    .line 6505
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->WLAN_LGE_PASSPOINT_DEFAULT:Z
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2500()Z

    move-result v45

    if-eqz v45, :cond_a

    .line 6506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendWifiPasspointEnabled()V

    .line 6510
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v46

    const/16 v47, 0x3

    const/16 v48, 0x3

    const/16 v49, 0x0

    invoke-static/range {v46 .. v49}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->sendOperatorProfileValidityCmd()V
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2700(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 6522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->sendDisconnectRssiLvl()V
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1200(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 6531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    if-eqz v45, :cond_b

    .line 6532
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnection:Z
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$100()Z

    move-result v45

    if-eqz v45, :cond_e

    .line 6533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/16 v47, 0x1

    invoke-virtual/range {v45 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setManualConneciton(IZ)Z

    .line 6543
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->sendAutoJoinStatus()V
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2900(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 6549
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "CMCC"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_c

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "CMO"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_d

    .line 6551
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "wifi_connect_select"

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->ASK_ON_CONNECTION:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3000()I

    move-result v47

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 6553
    .local v20, "how_to_connect":I
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->MANUAL_CONNECT:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3100()I

    move-result v45

    move/from16 v0, v20

    move/from16 v1, v45

    if-ne v0, v1, :cond_d

    .line 6554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v45

    const/16 v46, 0x9

    invoke-virtual/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->removeMessages(I)V

    .line 6555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v45

    const/16 v46, 0x9

    const-wide/16 v48, 0x1388

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 6564
    .end local v20    # "how_to_connect":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->setNetworkPreference()V
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3200(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 6565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mFirstWiFiOn:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3302(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    goto/16 :goto_0

    .line 6535
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const/16 v47, 0x1

    invoke-virtual/range {v45 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setManualConneciton(IZ)Z

    goto/16 :goto_3

    .line 6566
    :cond_f
    const/16 v45, 0x1

    move/from16 v0, v45

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    .line 6567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mSetResetWifiConf:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    if-eqz v45, :cond_10

    .line 6568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mSetResetWifiConf:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3402(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 6569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->resetWpaSupplicant()V

    .line 6571
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    invoke-virtual/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setShowKTPayPopup(Z)V

    .line 6572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v46

    const/16 v47, 0x3

    const/16 v48, 0x1

    const/16 v49, 0x0

    invoke-static/range {v46 .. v49}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mGWSScanResults:Ljava/util/List;
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3502(Lcom/lge/wifi/impl/WifiServerServiceExt;Ljava/util/List;)Ljava/util/List;

    .line 6580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    if-eqz v45, :cond_11

    .line 6581
    new-instance v19, Landroid/content/Intent;

    const-string v45, "com.lge.wifi.WIFI_GWS_SCAN_RESULT"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6582
    .local v19, "gws_intent":Landroid/content/Intent;
    const/high16 v45, 0x4000000

    move-object/from16 v0, v19

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6583
    const-string v46, "gws_scan_result"

    const/16 v45, 0x0

    check-cast v45, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    sget-object v46, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6591
    .end local v19    # "gws_intent":Landroid/content/Intent;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRtspPlay:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3602(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    goto/16 :goto_0

    .line 6592
    :cond_12
    const/16 v45, 0x4

    move/from16 v0, v45

    move/from16 v1, v34

    if-ne v0, v1, :cond_1

    .line 6593
    const-string v45, "WifiServerServiceExt"

    const-string v46, "WifiManager.WIFI_STATE_UNKNOWN"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6598
    .end local v34    # "newWifiState":I
    :cond_13
    const-string v45, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_18

    .line 6599
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->updateSimState(Landroid/content/Intent;)V

    .line 6601
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "TLF"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_14

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v45

    const-string v46, "ES"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_15

    :cond_14
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "TLF"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v45

    const-string v46, "COM"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1

    .line 6603
    :cond_15
    const-string v45, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 6604
    .local v40, "stateExtra":Ljava/lang/String;
    if-eqz v40, :cond_1

    .line 6605
    const-string v45, "IMSI"

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1

    .line 6606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->getSoftAPState()I
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3700(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v45

    const/16 v46, 0xd

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->getSoftAPState()I
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3700(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v45

    const/16 v46, 0xc

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_1

    .line 6608
    :cond_16
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3800()Landroid/net/wifi/WifiManagerProxy;

    move-result-object v45

    if-nez v45, :cond_17

    .line 6609
    new-instance v45, Landroid/net/wifi/WifiManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Landroid/net/wifi/WifiManagerProxy;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3802(Landroid/net/wifi/WifiManagerProxy;)Landroid/net/wifi/WifiManagerProxy;

    .line 6611
    :cond_17
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3800()Landroid/net/wifi/WifiManagerProxy;

    move-result-object v45

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/net/wifi/WifiManagerProxy;->setWifiApEnabled(Z)V

    .line 6612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    sget v46, Lcom/lge/internal/R$string;->hotspot_off_notification_by_SIM_changed:I

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 6624
    .end local v40    # "stateExtra":Ljava/lang/String;
    :cond_18
    const-string v45, "no_service_time_out"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_19

    .line 6625
    const-string v45, "WifiServerServiceExt"

    const-string v46, "FCC, Set to Defualt Country Code becasue of NoMobileNetworks for 1hour"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    const-string v46, "DC"

    const/16 v47, 0x1

    invoke-virtual/range {v45 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 6629
    :cond_19
    const-string v45, "com.lge.ims.action.VT_STARTED"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1a

    .line 6630
    const-string v45, "WifiServerServiceExt"

    const-string v46, "WIFI_NOTIFY_VT_START_ACTION"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mVTStarted:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3902(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 6632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->sendProhibitConnectAP()V
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2400(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    goto/16 :goto_0

    .line 6637
    :cond_1a
    const-string v45, "com.lge.ims.action.VT_ENDED"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1b

    .line 6638
    const-string v45, "WifiServerServiceExt"

    const-string v46, "WIFI_NOTIFY_VT_END_ACTION"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mVTStarted:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3902(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 6640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->sendProhibitConnectAP()V
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2400(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    goto/16 :goto_0

    .line 6641
    :cond_1b
    const-string v45, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1c

    .line 6642
    const/16 v45, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mLcdOnState:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4002(Z)Z

    .line 6643
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getAutoJoinStatus()Z

    move-result v45

    if-nez v45, :cond_1

    .line 6644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->sendKtScanInterval()V
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4100(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    goto/16 :goto_0

    .line 6646
    :cond_1c
    const-string v45, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1d

    .line 6647
    const/16 v45, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mLcdOnState:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4002(Z)Z

    .line 6648
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "KDDI"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnection:Z
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$100()Z

    move-result v45

    if-eqz v45, :cond_1

    .line 6650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setManualConneciton(IZ)Z

    goto/16 :goto_0

    .line 6655
    :cond_1d
    const-string v45, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1e

    .line 6656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mFirstUserSignOnSeen:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    if-nez v45, :cond_1

    .line 6657
    const-string v45, "WifiServerServiceExt"

    const-string v46, "ACTION_USER_PRESENT"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mFirstUserSignOnSeen:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4202(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    goto/16 :goto_0

    .line 6665
    :cond_1e
    const-string v45, "com.lge.wifi.WPS_NFC_PWD_TOKEN_REQUEST"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1f

    .line 6666
    const-string v45, "WifiServerServiceExt"

    const-string v46, "WPS: get WPS_NFC_PWD_TOKEN_REQUEST intent message success"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    if-eqz v45, :cond_1

    .line 6669
    const/16 v30, 0x0

    .line 6670
    .local v30, "method":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v46

    const v47, 0x20428

    const/16 v48, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v30

    move/from16 v3, v48

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 6672
    .end local v30    # "method":I
    :cond_1f
    const-string v45, "com.lge.wifi.WPS_NFC_HADOVER_REQ_REQUEST"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_20

    .line 6673
    const-string v45, "WifiServerServiceExt"

    const-string v46, "WPS: get WPS_NFC_HANDOVER_REQ_REQUEST intent message success"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    if-eqz v45, :cond_1

    .line 6676
    const/16 v30, 0x0

    .line 6677
    .restart local v30    # "method":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v46

    const v47, 0x20429

    const/16 v48, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v30

    move/from16 v3, v48

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 6679
    .end local v30    # "method":I
    :cond_20
    const-string v45, "com.lge.wifi.WPS_NFC_CONFIG_TOKEN_SET_REQUEST"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_21

    .line 6680
    const-string v45, "WifiServerServiceExt"

    const-string v46, "WPS: get WPS_NFC_CONFIG_TOKEN_SET intent message success"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    if-eqz v45, :cond_1

    .line 6682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const-string v46, "extra_wps_nfc_config_token"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->ndefString:Ljava/lang/String;
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4302(Lcom/lge/wifi/impl/WifiServerServiceExt;Ljava/lang/String;)Ljava/lang/String;

    .line 6683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v46

    const v47, 0x2042a

    const/16 v48, 0x0

    const/16 v49, 0x0

    invoke-static/range {v46 .. v49}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 6685
    :cond_21
    const-string v45, "com.lge.wifi.WPS_NFC_RX_HANDOVER_SEL_REQUEST"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_22

    .line 6686
    const-string v45, "WifiServerServiceExt"

    const-string v46, "WPS: get WPS_NFC_RX_HANDOVER_SEL_REQUEST intent message success"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    if-eqz v45, :cond_1

    .line 6688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const-string v46, "extra_wps_nfc_handover_sel"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mSelNdef:Ljava/lang/String;
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4402(Lcom/lge/wifi/impl/WifiServerServiceExt;Ljava/lang/String;)Ljava/lang/String;

    .line 6689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v46

    const v47, 0x2042b

    const/16 v48, 0x0

    const/16 v49, 0x0

    invoke-static/range {v46 .. v49}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 6692
    :cond_22
    const-string v45, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_26

    .line 6693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    const-string v45, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v45

    check-cast v45, Landroid/net/NetworkInfo;

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4502(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 6695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/NetworkInfo;

    move-result-object v45

    if-eqz v45, :cond_1

    .line 6696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/NetworkInfo;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, p2

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4600(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/net/NetworkInfo$DetailedState;Landroid/content/Intent;)V

    .line 6701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/NetworkInfo;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v45

    sget-object v46, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-ne v0, v1, :cond_23

    .line 6702
    const/16 v45, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollState:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4702(Z)Z

    .line 6703
    const/16 v45, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4802(I)I

    .line 6704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v45

    const/16 v46, 0x5

    invoke-virtual/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->hasMessages(I)Z

    move-result v45

    if-nez v45, :cond_1

    .line 6705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v45

    const/16 v46, 0x5

    const-wide/16 v48, 0xbb8

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 6709
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/NetworkInfo;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v45

    sget-object v46, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-ne v0, v1, :cond_24

    .line 6710
    const/16 v45, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollState:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4702(Z)Z

    .line 6711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    move-result-object v45

    const/16 v46, 0x5

    invoke-virtual/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 6712
    :cond_24
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "VZW"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/NetworkInfo;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v45

    sget-object v46, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-ne v0, v1, :cond_1

    .line 6713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v23

    .line 6714
    .local v23, "info":Landroid/net/wifi/WifiInfo;
    const/16 v32, -0x1

    .line 6715
    .local v32, "netId":I
    if-eqz v23, :cond_25

    .line 6716
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v32

    .line 6718
    :cond_25
    const/16 v45, -0x1

    move/from16 v0, v32

    move/from16 v1, v45

    if-eq v0, v1, :cond_1

    .line 6719
    new-instance v12, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v12}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 6720
    .local v12, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v16

    .line 6721
    .local v16, "curConfig":Landroid/net/wifi/WifiConfiguration;
    move/from16 v0, v32

    iput v0, v12, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 6722
    const/16 v45, 0x2

    move/from16 v0, v45

    iput v0, v12, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    .line 6723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiConfigStoreProxy;->updateSimpleNetworkNative(Landroid/net/wifi/WifiConfiguration;)V

    .line 6724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    goto/16 :goto_0

    .line 6731
    .end local v12    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v23    # "info":Landroid/net/wifi/WifiInfo;
    .end local v32    # "netId":I
    :cond_26
    const-string v45, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_27

    .line 6732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const-string v46, "phoneinECMState"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v46

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mEmergencyCallbackMode:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5002(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 6733
    const-string v45, "WifiServerServiceExt"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "ACTION_EMERGENCY_CALLBACK_MODE_CHANGED : ECM = ["

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mEmergencyCallbackMode:Z
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "]"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6737
    :cond_27
    const-string v45, "android.intent.action.SMS_WIFI_OFF"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_28

    .line 6738
    const-string v45, "WifiServerServiceExt"

    const-string v46, "Receive Emergency SMS. LCD state"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/16 v47, 0x1

    invoke-virtual/range {v45 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setManualConneciton(IZ)Z

    goto/16 :goto_0

    .line 6746
    :cond_28
    const-string v45, "com.lge.wifi.WIFI_SETTINGS_STATUS_CHANGED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_29

    .line 6747
    const-string v45, "wifi_setting_status"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v45

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiSettingStatus:I
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5102(I)I

    .line 6749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->sendDisconnectRssiLvl()V
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1200(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    goto/16 :goto_0

    .line 6759
    :cond_29
    const-string v45, "com.lge.eap.action"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2c

    .line 6760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    if-eqz v45, :cond_2a

    .line 6761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p2

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->processLgeEapActionForKT(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5200(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6762
    :cond_2a
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "LGU"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2b

    .line 6763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p2

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->processLgeEapActionForLGU(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5300(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6765
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p2

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->processLgeEapActionForCommon(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5400(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6773
    :cond_2c
    const-string v45, "android.net.wifi.supplicant.STATE_CHANGE"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2e

    .line 6775
    sget-object v46, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    const-string v45, "newState"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_2d

    .line 6776
    const-string v45, "ro.build.type"

    const-string v46, "user"

    invoke-static/range {v45 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6777
    .local v10, "buildType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v23

    .line 6778
    .restart local v23    # "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v28

    .line 6779
    .local v28, "macAddress":Ljava/lang/String;
    const-string v45, "user"

    move-object/from16 v0, v45

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_2d

    const-string v45, "00:90:4c:c5:12:38"

    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_2d

    # operator-- for: Lcom/lge/wifi/impl/WifiServerServiceExt;->DefaultMacCheck:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5510()I

    move-result v45

    if-lez v45, :cond_2d

    .line 6781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    const-string v46, "notification"

    invoke-virtual/range {v45 .. v46}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/NotificationManager;

    .line 6783
    .local v36, "notificationManager":Landroid/app/NotificationManager;
    const-string v42, "Default Wi-Fi MAC address!!!"

    .line 6784
    .local v42, "title":Ljava/lang/CharSequence;
    const-string v29, "Do not use Wi-Fi with default MAC address\nPlz write MAC address using TestMode Tool"

    .line 6785
    .local v29, "message":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    new-instance v46, Landroid/app/Notification;

    invoke-direct/range {v46 .. v46}, Landroid/app/Notification;-><init>()V

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5602(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/app/Notification;)Landroid/app/Notification;

    .line 6786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/Notification;

    move-result-object v45

    const-wide/16 v46, 0x0

    move-wide/from16 v0, v46

    move-object/from16 v2, v45

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 6787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/Notification;

    move-result-object v45

    const v46, 0x1080078

    move/from16 v0, v46

    move-object/from16 v1, v45

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 6788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/Notification;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v46, v0

    and-int/lit8 v46, v46, -0x2

    move/from16 v0, v46

    move-object/from16 v1, v45

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 6789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/Notification;

    move-result-object v45

    const/16 v46, 0x2

    move/from16 v0, v46

    move-object/from16 v1, v45

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 6790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/Notification;

    move-result-object v45

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 6791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/Notification;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v42

    move-object/from16 v3, v29

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 6792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/Notification;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v46, v0

    or-int/lit8 v46, v46, 0x10

    move/from16 v0, v46

    move-object/from16 v1, v45

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 6793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/Notification;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/Notification;

    move-result-object v46

    move-object/from16 v0, v36

    move/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 6799
    .end local v10    # "buildType":Ljava/lang/String;
    .end local v23    # "info":Landroid/net/wifi/WifiInfo;
    .end local v28    # "macAddress":Ljava/lang/String;
    .end local v29    # "message":Ljava/lang/CharSequence;
    .end local v36    # "notificationManager":Landroid/app/NotificationManager;
    .end local v42    # "title":Ljava/lang/CharSequence;
    :cond_2d
    const-string v45, "WifiServerServiceExt"

    const-string v46, "SUPPLICANT_STATE_CHANGED_ACTION"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6800
    const-string v45, "newState"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/SupplicantState;

    .line 6803
    .local v35, "new_supplicant_state":Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    goto/16 :goto_0

    .line 6806
    .end local v35    # "new_supplicant_state":Landroid/net/wifi/SupplicantState;
    :cond_2e
    const-string v45, "com.lge.wifi.WIFI_GWS_SCAN_UPDATE"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2f

    .line 6807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    if-eqz v45, :cond_1

    .line 6808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    if-eqz v45, :cond_1

    .line 6809
    new-instance v19, Landroid/content/Intent;

    const-string v45, "com.lge.wifi.WIFI_GWS_SCAN_RESULT"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6810
    .restart local v19    # "gws_intent":Landroid/content/Intent;
    const/high16 v45, 0x4000000

    move-object/from16 v0, v19

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6811
    const-string v46, "gws_scan_result"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mGWSScanResults:Ljava/util/List;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Ljava/util/List;

    move-result-object v45

    check-cast v45, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    sget-object v46, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 6817
    .end local v19    # "gws_intent":Landroid/content/Intent;
    :cond_2f
    const-string v45, "invalidPasswordMismatch"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_31

    .line 6818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$2800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    if-eqz v45, :cond_1

    .line 6819
    new-instance v24, Landroid/content/Intent;

    const-string v45, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6821
    .local v24, "intentKT":Landroid/content/Intent;
    if-eqz v24, :cond_30

    .line 6822
    const-string v45, "ERROR_NOTIFICATION"

    const/16 v46, 0x3

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    sget-object v46, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6828
    :cond_30
    const-string v45, "WifiServerServiceExt"

    const-string v46, "send broadcast OEM Extension INVALID WEP KEY"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6835
    .end local v24    # "intentKT":Landroid/content/Intent;
    :cond_31
    const-string v45, "android.net.wifi.p2p.PEERS_CHANGED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_32

    const-string v45, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_33

    .line 6837
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v45

    if-eqz v45, :cond_1

    .line 6838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v45

    if-eqz v45, :cond_1

    .line 6839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroupInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    move-result-object v47

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 6840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 6845
    :cond_33
    const-string v45, "p2p_off_delay"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_38

    .line 6857
    const-string v45, "WifiServerServiceExt"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "MSG_P2P_OFF_DELAY timeout:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayTimeOut:I
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6000(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " count:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6100(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayTimeOut:I
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6000(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v45

    if-gez v45, :cond_34

    .line 6859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v45

    const/16 v46, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    const-wide/32 v50, 0x1d4c0

    add-long v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v47

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-wide/from16 v2, v48

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 6860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6102(Lcom/lge/wifi/impl/WifiServerServiceExt;I)I

    goto/16 :goto_0

    .line 6863
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6100(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v45

    const v46, 0xea60

    mul-int v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayTimeOut:I
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6000(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v46

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_36

    .line 6864
    const-string v45, "WifiServerServiceExt"

    const-string v46, "Is not timeout. Continue monitoring"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;->startMonitoring()V

    .line 6866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;->checkState()Z

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_35

    .line 6867
    const-string v45, "WifiServerServiceExt"

    const-string v46, "P2P is used. Initialize count to P2pOffDelayCount = 1"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v45

    const/16 v46, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    const-wide/32 v50, 0xea60

    add-long v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v47

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-wide/from16 v2, v48

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 6870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6102(Lcom/lge/wifi/impl/WifiServerServiceExt;I)I

    goto/16 :goto_0

    .line 6872
    :cond_35
    const-string v45, "WifiServerServiceExt"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "p2pOffDelayCount = "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6100(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v45

    const/16 v46, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    const-wide/32 v50, 0xea60

    add-long v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v47

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-wide/from16 v2, v48

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 6875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # operator++ for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6108(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    goto/16 :goto_0

    .line 6878
    :cond_36
    const-string v45, "WifiServerServiceExt"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "p2pOffDelayCount = "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6100(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;->startMonitoring()V

    .line 6880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;->checkState()Z

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_37

    .line 6881
    const-string v45, "WifiServerServiceExt"

    const-string v46, "Monitoring is reached to timeout. But P2P is used. Initialize monitoring"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v45

    const/16 v46, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    const-wide/32 v50, 0xea60

    add-long v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v47

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-wide/from16 v2, v48

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 6884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6102(Lcom/lge/wifi/impl/WifiServerServiceExt;I)I

    goto/16 :goto_0

    .line 6886
    :cond_37
    const-string v45, "WifiServerServiceExt"

    const-string v46, "P2P is Timeout. Remove Group."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6887
    const-string v45, "WifiServerServiceExt"

    const-string v46, "P2P OFF Delay monitoring stop"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v47

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 6895
    :cond_38
    const-string v45, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_3c

    .line 6896
    const-string v45, "WifiServerServiceExt"

    const-string v46, "P2P ACTION_USER_SWITCHED!! Change P2P Device Name"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2PConnected()Z

    move-result v45

    if-nez v45, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v45

    if-eqz v45, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v45

    if-eqz v45, :cond_3a

    .line 6898
    :cond_39
    const-string v45, "WifiServerServiceExt"

    const-string v46, "P2P is connected or GO. Delay change p2p device name"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mDelayChangeP2pDeviceName:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6502(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 6910
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pDeviceNameSettingObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->unregister()V

    .line 6911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pDeviceNameSettingObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->register()V

    goto/16 :goto_0

    .line 6903
    :cond_3a
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v45

    if-eqz v45, :cond_3b

    .line 6904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "lg_device_name"

    const/16 v47, -0x2

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 6908
    .local v18, "device_name":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$5800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v18

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_4

    .line 6906
    .end local v18    # "device_name":Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "lg_device_name"

    const/16 v47, -0x2

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "device_name":Ljava/lang/String;
    goto :goto_5

    .line 6914
    .end local v18    # "device_name":Ljava/lang/String;
    :cond_3c
    const-string v45, "com.lge.wifi.WIFI_DELETE_CONN_LIST_ACTION"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_3d

    .line 6915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const-string v46, "wifi_delete_conn_list_status"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->deleteWifiConnectionList(I)V
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6700(Lcom/lge/wifi/impl/WifiServerServiceExt;I)V

    goto/16 :goto_0

    .line 6918
    :cond_3d
    const-string v45, "android.bluetooth.device.action.ACL_CONNECTED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_3e

    .line 6919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # operator++ for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mBTAclCount:I
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6808(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    .line 6920
    const-string v45, "WifiServerServiceExt"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Connected BT device : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mBTAclCount:I
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6800(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6922
    :cond_3e
    const-string v45, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_3f

    .line 6923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # operator-- for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mBTAclCount:I
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6810(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    .line 6924
    const-string v45, "WifiServerServiceExt"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Connected BT device : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mBTAclCount:I
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6800(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6928
    :cond_3f
    const-string v45, "com.lge.wifi.impl.aggregation.start"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_40

    .line 6929
    const-string v45, "WifiServerServiceExt"

    const-string v46, "VZWAggregation.WIFI_AGGREGATION_SERVER_START"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->agg:Lcom/lge/wifi/impl/aggregation/VZWAggregation;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$6900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->startAggregation(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 6934
    :cond_40
    const-string v45, "com.lge.android.intent.action.VZW_OFFLOADING_TASK_STARTED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_41

    .line 6935
    const-string v45, "WifiServerServiceExt"

    const-string v46, "VZW_OFFLOADING_TASK_STARTED_INTENT : WiFiOffloading START"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffloading:Lcom/lge/wifi/impl/offloading/WifiOffLoading;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/offloading/WifiOffLoading;

    move-result-object v45

    if-eqz v45, :cond_1

    const/16 v45, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v46, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffloading:Lcom/lge/wifi/impl/offloading/WifiOffLoading;
    invoke-static/range {v46 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/offloading/WifiOffLoading;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/wifi/impl/offloading/WifiOffLoading;->isOffloadingAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v46

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_1

    .line 6938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffloading:Lcom/lge/wifi/impl/offloading/WifiOffLoading;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/offloading/WifiOffLoading;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lge/wifi/impl/offloading/WifiOffLoading;->processingOffloading()V

    goto/16 :goto_0

    .line 6943
    :cond_41
    const-string v45, "com.lge.systemservice.core.wfdmanager.rtsp.STATE_CHANGE"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_47

    .line 6944
    const/16 v38, -0x1

    .line 6945
    .local v38, "rtspState":I
    const-string v45, "rtsp_state"

    const/16 v46, 0x7

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 6946
    const-string v45, "WifiServerServiceExt"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "RTSP_STATE_CHANGED_ACTION : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6948
    const/16 v45, 0x6

    move/from16 v0, v38

    move/from16 v1, v45

    if-ne v0, v1, :cond_43

    .line 6949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRtspPlay:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_42

    .line 6950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRtspPlay:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3602(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 6951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->sendSetScanIntervalMax(Z)V
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7100(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)V

    .line 6952
    const-string v45, "WifiServerServiceExt"

    const-string v46, "Miracast is Playing, set scan interval to max(1hour)!!"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6955
    :cond_42
    const-string v45, "WifiServerServiceExt"

    const-string v46, "RTSP_STATE_PLAYING Resume"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6958
    :cond_43
    const/16 v45, 0x5

    move/from16 v0, v38

    move/from16 v1, v45

    if-ne v0, v1, :cond_45

    .line 6959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRtspPlay:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_44

    .line 6960
    const-string v45, "WifiServerServiceExt"

    const-string v46, "This state is not allowed"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6963
    :cond_44
    const-string v45, "WifiServerServiceExt"

    const-string v46, "RTSP_STATE_PLAYING Pause skip scan interval command"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6967
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRtspPlay:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_46

    .line 6968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRtspPlay:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$3602(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 6969
    const-string v45, "WifiServerServiceExt"

    const-string v46, "Miracast is not Playing, back original scan interval!!"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->sendSetScanIntervalMax(Z)V
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7100(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)V

    goto/16 :goto_0

    .line 6973
    :cond_46
    const-string v45, "WifiServerServiceExt"

    const-string v46, "Miracast is not playing"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6977
    .end local v38    # "rtspState":I
    :cond_47
    const-string v45, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_5e

    .line 6979
    const-string v45, "multipleChanges"

    const/16 v46, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    .line 6980
    .local v31, "multiple_change":Z
    if-nez v31, :cond_48

    .line 6981
    const-string v45, "wifiConfiguration"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v33

    check-cast v33, Landroid/net/wifi/WifiConfiguration;

    .line 6982
    .local v33, "network_info":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->handleConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7200(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/net/wifi/WifiConfiguration;)V

    .line 6986
    .end local v33    # "network_info":Landroid/net/wifi/WifiConfiguration;
    :cond_48
    const-string v45, "BELL"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_4d

    .line 6987
    const-string v45, "WifiServerServiceExt"

    const-string v46, "CONFIGURED_NETWORKS_CHANGED_ACTION"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "ssid_update_completed"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    if-nez v45, :cond_4c

    .line 6989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v14

    .line 6990
    .local v14, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v14, :cond_4b

    .line 6991
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_49
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 6992
    .local v13, "config_item":Landroid/net/wifi/WifiConfiguration;
    const-string v45, "BELL_WIFI"

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_4a

    const-string v45, "5099251212"

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_4a

    const-string v45, "SaskTel Select Wi-Fi 1"

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_49

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->checkSecurityType(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v0, v1, v13}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7400(Lcom/lge/wifi/impl/WifiServerServiceExt;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v45

    if-eqz v45, :cond_49

    .line 6996
    const-string v45, "WifiServerServiceExt"

    const-string v46, "BELL/SASKTEL Network is configured, then DB should be set"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "ssid_update_completed"

    const/16 v47, 0x1

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 7003
    .end local v13    # "config_item":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_4b
    const-string v45, "WifiServerServiceExt"

    const-string v46, "BELL/SASKTEL Configured Network List is null"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7006
    .end local v14    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_4c
    const-string v45, "WifiServerServiceExt"

    const-string v46, "ssid_update_completed is set.."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7009
    :cond_4d
    const-string v45, "TLS"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_51

    .line 7010
    const-string v45, "WifiServerServiceExt"

    const-string v46, "CONFIGURED_NETWORKS_CHANGED_ACTION"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "ssid_update_completed"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    if-nez v45, :cond_50

    .line 7012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->checkPCMobileGID()Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    if-eqz v45, :cond_4e

    .line 7013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "ssid_update_completed"

    const/16 v47, 0x1

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7014
    const-string v45, "WifiServerServiceExt"

    const-string v46, " PC Mobile Configured Network set"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7016
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v14

    .line 7017
    .restart local v14    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v14, :cond_1

    .line 7018
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_4f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 7019
    .restart local v13    # "config_item":Landroid/net/wifi/WifiConfiguration;
    const-string v45, "#TELUSDirect"

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->checkSecurityType(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v0, v1, v13}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7400(Lcom/lge/wifi/impl/WifiServerServiceExt;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v45

    if-eqz v45, :cond_4f

    .line 7021
    const-string v45, "WifiServerServiceExt"

    const-string v46, "TLS Network is configured, then DB should be set"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "ssid_update_completed"

    const/16 v47, 0x1

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 7029
    .end local v13    # "config_item":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_50
    const-string v45, "WifiServerServiceExt"

    const-string v46, "ssid_update_completed is set.."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7032
    :cond_51
    const-string v45, "RGS"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_55

    .line 7033
    const-string v45, "WifiServerServiceExt"

    const-string v46, "CONFIGURED_NETWORKS_CHANGED_ACTION"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "ssid_update_completed"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    if-nez v45, :cond_54

    .line 7035
    invoke-direct/range {p0 .. p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->checkMTSGID()Z

    move-result v45

    if-eqz v45, :cond_52

    .line 7036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "ssid_update_completed"

    const/16 v47, 0x1

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7037
    const-string v45, "WifiServerServiceExt"

    const-string v46, " MTS Configured Network set"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7039
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v14

    .line 7040
    .restart local v14    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v14, :cond_1

    .line 7041
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_53
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 7042
    .restart local v13    # "config_item":Landroid/net/wifi/WifiConfiguration;
    const-string v45, "MTS Wireless"

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->checkSecurityType(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v0, v1, v13}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7400(Lcom/lge/wifi/impl/WifiServerServiceExt;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v45

    if-eqz v45, :cond_53

    .line 7044
    const-string v45, "WifiServerServiceExt"

    const-string v46, "RGS MTS Network is configured, then DB should be set"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "ssid_update_completed"

    const/16 v47, 0x1

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 7052
    .end local v13    # "config_item":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_54
    const-string v45, "WifiServerServiceExt"

    const-string v46, "ssid_update_completed is set.."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7058
    :cond_55
    const-string v45, "STL"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_5a

    .line 7059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "ssid_update_completed"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    if-nez v45, :cond_59

    .line 7060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v14

    .line 7061
    .restart local v14    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v14, :cond_58

    .line 7062
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_56
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 7063
    .restart local v13    # "config_item":Landroid/net/wifi/WifiConfiguration;
    const-string v45, "Wireless@SGx"

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_57

    const-string v45, "Singtel WIFI"

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_56

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->checkSecurityType(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v0, v1, v13}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7400(Lcom/lge/wifi/impl/WifiServerServiceExt;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v45

    if-eqz v45, :cond_56

    .line 7066
    const-string v45, "WifiServerServiceExt"

    const-string v46, "STL Network is configured, then DB should be set"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "ssid_update_completed"

    const/16 v47, 0x1

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 7072
    .end local v13    # "config_item":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_58
    const-string v45, "WifiServerServiceExt"

    const-string v46, "STL Configured Network List is null"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7075
    .end local v14    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_59
    const-string v45, "WifiServerServiceExt"

    const-string v46, "ssid_update_completed is set.."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7081
    :cond_5a
    const-string v45, "TW"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1

    .line 7082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "ssid_update_completed"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    if-nez v45, :cond_5d

    .line 7083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$4900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v14

    .line 7084
    .restart local v14    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v14, :cond_5c

    .line 7085
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_5b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 7086
    .restart local v13    # "config_item":Landroid/net/wifi/WifiConfiguration;
    const-string v45, "CHT Wi-Fi Auto"

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->checkSecurityType(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v0, v1, v13}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7400(Lcom/lge/wifi/impl/WifiServerServiceExt;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v45

    if-eqz v45, :cond_5b

    .line 7088
    const-string v45, "WifiServerServiceExt"

    const-string v46, "CHT Network is configured, then DB should be set"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "ssid_update_completed"

    const/16 v47, 0x1

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 7094
    .end local v13    # "config_item":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_5c
    const-string v45, "WifiServerServiceExt"

    const-string v46, "CHT Configured Network List is null"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7097
    .end local v14    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_5d
    const-string v45, "WifiServerServiceExt"

    const-string v46, "ssid_update_completed is set.."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7104
    .end local v31    # "multiple_change":Z
    :cond_5e
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "TMO"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_5f

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v45

    const-string v46, "MPCS"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1

    :cond_5f
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v45

    const-string v46, "US"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1

    .line 7105
    const-string v45, "IMS_REGISTRATION"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_61

    .line 7107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    const-string v46, "IMS_REG_STATUS"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v46

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->useIPPhone:Z
    invoke-static/range {v45 .. v46}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$502(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 7108
    const-string v45, "WifiServerServiceExt"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "IMS_REGISTRATION device : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v47, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->useIPPhone:Z
    invoke-static/range {v47 .. v47}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7109
    sget-boolean v45, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    if-eqz v45, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->useIPPhone:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    if-nez v45, :cond_60

    .line 7110
    const-string v45, "WifiServerServiceExt"

    const-string v46, "IMS_REG  ROVE_OUT  SET PS  true"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "wifi_ps_disable_while_wfc"

    const/16 v47, 0x1

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_1

    .line 7112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiNative;

    move-result-object v45

    const/16 v46, 0x1

    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    goto/16 :goto_0

    .line 7114
    :cond_60
    sget-boolean v45, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    if-eqz v45, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->useIPPhone:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    if-nez v45, :cond_1

    .line 7115
    const-string v45, "WifiServerServiceExt"

    const-string v46, "IMS_REG ROVE_OUT SET high perf mode to false"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    goto/16 :goto_0

    .line 7119
    :cond_61
    const-string v45, "com.lge.upsell.Upsell.UPSELL_CHECK_SUCCESS"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_62

    const-string v45, "com.lge.upsell.Upsell.UPSELL_CHECK_FAIL"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_63

    .line 7120
    :cond_62
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 7121
    .restart local v15    # "cr":Landroid/content/ContentResolver;
    const-string v45, "upsell_check_ongoing"

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7122
    const-string v45, "WifiServerServiceExt"

    const-string v46, "UpCell command got : "

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7123
    .end local v15    # "cr":Landroid/content/ContentResolver;
    :cond_63
    const-string v45, "com.lge.upsell.Upsell.UPSELL_STOP"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_64

    .line 7124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 7125
    .restart local v15    # "cr":Landroid/content/ContentResolver;
    const-string v45, "status"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v43

    .line 7127
    .local v43, "upsellStatus":I
    packed-switch v43, :pswitch_data_0

    .line 7154
    const-string v45, "upsell_check_ongoing"

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7158
    :goto_6
    const-string v45, "WifiServerServiceExt"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "UPSELL_SVC_STOP got : upsellStatus = "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7129
    :pswitch_0
    const-string v45, "WifiServerServiceExt"

    const-string v46, "UPSELL_SVC_GOTO_NOSVC"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7130
    const-string v45, "upsell_check_ongoing"

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 7134
    :pswitch_1
    const-string v45, "WifiServerServiceExt"

    const-string v46, "UPSELL_SVC_GOTO_UPGRADE started "

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7135
    const-string v45, "upsell_check_ongoing"

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 7139
    :pswitch_2
    const-string v45, "WifiServerServiceExt"

    const-string v46, "UPSELL_SVC_STARTED "

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7140
    const-string v45, "upsell_svc_started"

    const/16 v46, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 7144
    :pswitch_3
    const-string v45, "WifiServerServiceExt"

    const-string v46, "UPSELL_SVC_STOPPED"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7145
    const-string v45, "upsell_svc_started"

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7146
    const-string v45, "upsell_check_ongoing"

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 7150
    :pswitch_4
    const-string v45, "WifiServerServiceExt"

    const-string v46, "UPSELL_SVC_DATA_STOPPED "

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 7159
    .end local v15    # "cr":Landroid/content/ContentResolver;
    .end local v43    # "upsellStatus":I
    :cond_64
    const-string v45, "android.intent.action.ACTION_POWER_CONNECTED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_65

    .line 7160
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "wifi_ap_broadcast_channel"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 7163
    .local v17, "defaultChannel":I
    const/16 v45, 0x1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mbIsUsbConnected:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7602(Z)Z

    .line 7164
    const-string v45, "WifiServerServiceExt"

    const-string v46, "[txPowerMode] USB Connected!"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7165
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "wifi_ap_power_mode_high_with_usb"

    const/16 v47, 0x1

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7166
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiSoftAPIface()Lcom/lge/wifi/extension/IWifiSoftAP;

    move-result-object v45

    const/16 v46, 0x1

    move/from16 v0, v46

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lge/wifi/config/LgeWifiConfig;->getTxPowerValue(II)I

    move-result v46

    invoke-interface/range {v45 .. v46}, Lcom/lge/wifi/extension/IWifiSoftAP;->setTxPower(I)I

    goto/16 :goto_0

    .line 7167
    .end local v17    # "defaultChannel":I
    :cond_65
    const-string v45, "android.intent.action.ACTION_POWER_DISCONNECTED"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_66

    .line 7168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "wifi_ap_broadcast_channel"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 7171
    .restart local v17    # "defaultChannel":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "wifi_ap_power_mode_high"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 7172
    .local v6, "TxPower":I
    const-string v45, "WifiServerServiceExt"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "[txPowerMode] USB Disconnect! TxPower : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7173
    const/16 v45, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mbIsUsbConnected:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$7602(Z)Z

    .line 7174
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiSoftAPIface()Lcom/lge/wifi/extension/IWifiSoftAP;

    move-result-object v45

    move/from16 v0, v17

    invoke-static {v6, v0}, Lcom/lge/wifi/config/LgeWifiConfig;->getTxPowerValue(II)I

    move-result v46

    invoke-interface/range {v45 .. v46}, Lcom/lge/wifi/extension/IWifiSoftAP;->setTxPower(I)I

    goto/16 :goto_0

    .line 7175
    .end local v6    # "TxPower":I
    .end local v17    # "defaultChannel":I
    :cond_66
    const-string v45, "android.intent.action.NEW_OUTGOING_CALL"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1

    .line 7176
    sget-boolean v45, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    if-eqz v45, :cond_67

    .line 7177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->useIPPhone:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    if-eqz v45, :cond_1

    .line 7178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "wifi_ps_disable_while_wfc"

    const/16 v47, 0x1

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_1

    .line 7179
    const-string v45, "WifiServerServiceExt"

    const-string v46, "CALL_STATE_OUTGOING_CALL SET PS disable "

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiNative;

    move-result-object v45

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    goto/16 :goto_0

    .line 7183
    :cond_67
    sget-boolean v45, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    if-eqz v45, :cond_1

    .line 7184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->useIPPhone:Z
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v45

    if-eqz v45, :cond_1

    .line 7185
    const-string v45, "WifiServerServiceExt"

    const-string v46, "CALL_STATE_OUTGOING_CALL SET HighPerfMode true"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    move-object/from16 v45, v0

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static/range {v45 .. v45}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v45

    const/16 v46, 0x1

    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    goto/16 :goto_0

    .line 7127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
