.class Lcom/android/server/wifi/WifiServiceImplEx$ClientHandlerEx;
.super Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;
.source "WifiServiceImplEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImplEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandlerEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImplEx;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImplEx;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImplEx$ClientHandlerEx;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    .line 226
    return-void
.end method

.method private replyFailed(Landroid/os/Message;II)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "why"    # I

    .prologue
    .line 317
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 318
    .local v1, "reply":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->what:I

    .line 319
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 321
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 230
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 314
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->handleMessage(Landroid/os/Message;)V

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 232
    :sswitch_0
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 233
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-interface {v7, v6, v8, v9}, Lcom/lge/cappuccino/IMdm;->checkDisabledWifiSecurity(Landroid/net/wifi/WifiConfiguration;II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 237
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 238
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v10, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    invoke-interface {v6, v11}, Lcom/lge/cappuccino/IMdm;->getAllowWiFiProfileManagement(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 248
    :sswitch_1
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 249
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-interface {v7, v6, v10, v8}, Lcom/lge/cappuccino/IMdm;->checkDisabledWifiSecurity(Landroid/net/wifi/WifiConfiguration;II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 253
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    invoke-interface {v6, v11}, Lcom/lge/cappuccino/IMdm;->getAllowWiFiProfileManagement(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 258
    :cond_2
    sget-boolean v6, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v6, :cond_0

    .line 260
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v4

    .line 262
    .local v4, "mDeviceManager":Lcom/android/server/DeviceManager3LMService;
    const/4 v5, 0x0

    .line 263
    .local v5, "ssid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 265
    .local v0, "allowedByPolicy":Z
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 268
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx$ClientHandlerEx;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImplEx;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 270
    .local v2, "configList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_1

    .line 273
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 274
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v7, :cond_3

    .line 276
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 277
    goto/16 :goto_0

    .line 282
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v4, v5}, Lcom/android/server/DeviceManager3LMService;->isSsidLocked(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 284
    const/4 v0, 0x1

    .line 292
    .end local v2    # "configList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    if-nez v0, :cond_0

    .line 293
    const v6, 0x25008

    const/16 v7, 0x9

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/wifi/WifiServiceImplEx$ClientHandlerEx;->replyFailed(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 286
    :cond_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/android/server/DeviceManager3LMService;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 290
    const/4 v0, 0x1

    goto :goto_1

    .line 302
    .end local v0    # "allowedByPolicy":Z
    .end local v4    # "mDeviceManager":Lcom/android/server/DeviceManager3LMService;
    .end local v5    # "ssid":Ljava/lang/String;
    :sswitch_2
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 303
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Lcom/lge/cappuccino/IMdm;->getAllowWiFiProfileManagement(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_0

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x25001 -> :sswitch_0
        0x25004 -> :sswitch_2
        0x25007 -> :sswitch_1
    .end sparse-switch
.end method
