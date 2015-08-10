.class public Lcom/android/nfc/VNfcService$VNfcServiceHandler;
.super Lcom/android/nfc/LNfcService$LNfcServiceHandler;
.source "VNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VNfcServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/VNfcService;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/VNfcService;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;-><init>(Lcom/android/nfc/LNfcService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .line 393
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 501
    invoke-super {p0, p1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 395
    :sswitch_0
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v8, v8, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->onPpseRouted(I)Z

    goto :goto_0

    .line 399
    :sswitch_1
    sget-boolean v8, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v9, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v10, "MSG_CARD_EMULATION"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [B

    move-object v7, v8

    check-cast v7, [B

    .line 403
    .local v7, "tlv":[B
    invoke-static {v7}, Lcom/android/nfc/broadcom/EeTransactionParser;->getAid([B)[B

    move-result-object v0

    check-cast v0, [B

    .line 404
    .local v0, "aid":[B
    invoke-static {v7}, Lcom/android/nfc/broadcom/EeTransactionParser;->getParam([B)[B

    move-result-object v4

    check-cast v4, [B

    .line 406
    .local v4, "param":[B
    if-nez v0, :cond_1

    .line 407
    sget-boolean v8, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v9, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v10, "aid null"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_1
    if-nez v4, :cond_2

    .line 411
    sget-boolean v8, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v9, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v10, "param null"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_2
    array-length v8, v4

    if-nez v8, :cond_3

    .line 416
    const/4 v4, 0x0

    .line 417
    sget-boolean v8, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v9, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v10, "param lengh = 0"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_3
    sget-object v8, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v8, v8, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    if-eqz v8, :cond_4

    .line 421
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 426
    :goto_1
    invoke-super {p0, p1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 423
    :cond_4
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 430
    .end local v0    # "aid":[B
    .end local v4    # "param":[B
    .end local v7    # "tlv":[B
    :sswitch_2
    sget-boolean v8, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v9, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v10, "SE LISTEN MODE ACTIVATED"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 435
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v8, v8, Lcom/android/nfc/VNfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v8

    if-nez v8, :cond_5

    .line 436
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v8, v8, Lcom/android/nfc/VNfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 437
    :cond_5
    sget-boolean v8, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v9, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v10, "mSecureElementActiveMutex.lockInterruptibly"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 445
    .local v2, "listenModeActivated":Landroid/content/Intent;
    const-string v8, "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v2}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 439
    .end local v2    # "listenModeActivated":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-boolean v8, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v9, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v10, "MSG_SE_LISTEN_ACTIVATED; thread interrupted"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 450
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :sswitch_3
    sget-boolean v8, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v9, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v10, "SE LISTEN MODE DEACTIVATED"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 455
    :try_start_1
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v8, v8, Lcom/android/nfc/VNfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 456
    sget-boolean v8, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v9, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v10, "mSecureElementActiveMutex.unlock()"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 462
    :goto_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 463
    .local v3, "listenModeDeactivated":Landroid/content/Intent;
    const-string v8, "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0, v3}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    .line 467
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mIsDeferChangeRoutingWhenNoApp:Z
    invoke-static {v8}, Lcom/android/nfc/VNfcService;->access$000(Lcom/android/nfc/VNfcService;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 469
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    # setter for: Lcom/android/nfc/VNfcService;->mIsDeferChangeRoutingWhenNoApp:Z
    invoke-static {v8, v11}, Lcom/android/nfc/VNfcService;->access$002(Lcom/android/nfc/VNfcService;Z)Z

    .line 470
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    invoke-virtual {v8}, Lcom/android/nfc/VNfcService;->changeHceRouteWhenNoApp()V

    .line 474
    :cond_6
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mIsDiscoveringDefered:Z
    invoke-static {v8}, Lcom/android/nfc/VNfcService;->access$100(Lcom/android/nfc/VNfcService;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 475
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    # setter for: Lcom/android/nfc/VNfcService;->mIsDiscoveringDefered:Z
    invoke-static {v8, v11}, Lcom/android/nfc/VNfcService;->access$102(Lcom/android/nfc/VNfcService;Z)Z

    .line 476
    sget-boolean v8, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v9, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v10, "recall defered discovering!!"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v8, v8, Lcom/android/nfc/VNfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v8}, Lcom/android/nfc/NfcDiscoveryParameters;->getTechMask()I

    move-result v8

    if-eqz v8, :cond_8

    .line 478
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v8, v8, Lcom/android/nfc/VNfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v8}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v6

    .line 479
    .local v6, "shouldRestart":Z
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v8, v8, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v9, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v9, v9, Lcom/android/nfc/VNfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-interface {v8, v9, v6}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 486
    .end local v6    # "shouldRestart":Z
    :cond_7
    :goto_4
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mIsDeferChangeRoutingTable:Z
    invoke-static {v8}, Lcom/android/nfc/VNfcService;->access$200(Lcom/android/nfc/VNfcService;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 487
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    # setter for: Lcom/android/nfc/VNfcService;->mIsDeferChangeRoutingTable:Z
    invoke-static {v8, v11}, Lcom/android/nfc/VNfcService;->access$202(Lcom/android/nfc/VNfcService;Z)Z

    .line 488
    sget-boolean v8, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v9, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v10, "SE LISTEN MODE DEACTIVATED; re-route all AID\'s"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;
    invoke-static {v8}, Lcom/android/nfc/VNfcService;->access$300(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/cardemulation/VCardEmulationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->reRouteAllAids()V

    goto/16 :goto_0

    .line 481
    :cond_8
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v8, v8, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    goto :goto_4

    .line 495
    .end local v3    # "listenModeDeactivated":Landroid/content/Intent;
    :sswitch_4
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.android.nfc.cardmeulation.close_tap_dialog"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v5, "popupIntent":Landroid/content/Intent;
    const-string v8, "com.android.nfc"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    iget-object v8, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v8, v8, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 458
    .end local v5    # "popupIntent":Landroid/content/Intent;
    :catch_1
    move-exception v8

    goto/16 :goto_3

    .line 393
    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_1
        0x3d -> :sswitch_0
        0x3e -> :sswitch_2
        0x3f -> :sswitch_3
        0x40 -> :sswitch_4
    .end sparse-switch
.end method
