.class Lcom/android/nfc/LNfcService$LNfcServiceAddonService;
.super Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;
.source "LNfcService.java"

# interfaces
.implements Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LNfcServiceAddonService"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcService;)V
    .locals 1

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;-><init>()V

    .line 1271
    const-string v0, "LNfcServiceAddonService"

    iput-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private getNfcStatusMasking(II)I
    .locals 1
    .param p1, "status"    # I
    .param p2, "powerStatusMaskingbit"    # I

    .prologue
    .line 1517
    shr-int v0, p1, p2

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private isNfcPowerOnStatus(IIZ)Z
    .locals 2
    .param p1, "status"    # I
    .param p2, "powerStatusMaskingbit"    # I
    .param p3, "presentStatus"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1511
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->getNfcStatusMasking(II)I

    move-result v0

    .line 1513
    .local v0, "powerstatus":I
    if-nez v0, :cond_0

    .end local p3    # "presentStatus":Z
    :goto_0
    return p3

    .restart local p3    # "presentStatus":Z
    :cond_0
    if-ne v0, v1, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCPLC([B)Z
    .locals 7
    .param p1, "response"    # [B

    .prologue
    const/4 v6, 0x0

    .line 1432
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1434
    const/4 v0, 0x0

    .line 1435
    .local v0, "ret_val":Z
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v3}, Lcom/android/nfc/LNfcServiceTestApis;->NfcInitIOCT()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1436
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    const-string v4, "Processing......NFC SmartMX SELF TEST"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v3}, Lcom/android/nfc/LNfcServiceTestApis;->NfcSecureElementConnection()I

    move-result v2

    .line 1440
    .local v2, "tmpHandle":I
    if-nez v2, :cond_0

    .line 1441
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMX Handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const/4 v0, 0x0

    .line 1463
    .end local v2    # "tmpHandle":I
    :goto_0
    return v0

    .line 1444
    .restart local v2    # "tmpHandle":I
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMX Handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    const/4 v4, 0x5

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    invoke-interface {v3, v2, v4}, Lcom/android/nfc/LNfcServiceTestApis;->NfcSecureElementTransceive(I[B)[B

    move-result-object v1

    .line 1446
    .local v1, "tmpCplc":[B
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v3, v2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcSecureElementDisconnect(I)Z

    .line 1448
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close SE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    if-nez v1, :cond_1

    .line 1450
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    const-string v4, "cplc Data null"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const/4 v0, 0x0

    .line 1457
    :goto_1
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cplc data Right?: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1453
    :cond_1
    const/4 v0, 0x1

    .line 1454
    array-length v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v6

    .line 1455
    const/4 v3, 0x1

    array-length v4, v1

    invoke-static {v1, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1

    .line 1460
    .end local v1    # "tmpCplc":[B
    .end local v2    # "tmpHandle":I
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    const-string v4, "Processing......NFC SmartMX SELF TEST FAIL(init)"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const/4 v0, 0x0

    goto :goto_0

    .line 1445
    :array_0
    .array-data 1
        -0x80t
        -0x36t
        -0x61t
        0x7ft
        0x0t
    .end array-data
.end method

.method public getCardEmulationInterface()Lcom/lge/nfcaddon/ICardEmulationAddon;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCardEmulationAddonService:Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;

    return-object v0
.end method

.method public getGsmaNfcControllerInterface()Lcom/lge/nfcaddon/IGsmaNfcController;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    return-object v0
.end method

.method public getNfcAddonPreference(I)Z
    .locals 3
    .param p1, "prefnumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1396
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1404
    :goto_0
    return v0

    .line 1400
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1404
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    invoke-virtual {v0, p1}, Lcom/android/nfc/utils/LNfcPopupPreference;->getPopupEnable(I)Z

    move-result v0

    goto :goto_0

    .line 1402
    :pswitch_0
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "calling_nfcsound"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 1400
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getNfcCardState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1282
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1283
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNfcConfigureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1523
    :try_start_0
    const-class v4, Lcom/lge/nfcconfig/NfcConfigure;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1524
    .local v0, "configKey":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    .line 1525
    const-class v4, Lcom/lge/nfcconfig/NfcConfigure;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 1526
    if-nez v0, :cond_0

    .line 1541
    .end local v0    # "configKey":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1531
    .restart local v0    # "configKey":Ljava/lang/reflect/Field;
    :cond_0
    :try_start_1
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1532
    .local v2, "valueObject":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    goto :goto_0

    .line 1533
    .end local v2    # "valueObject":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1534
    .local v1, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 1535
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 1536
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 1537
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 1538
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1540
    .end local v0    # "configKey":Ljava/lang/reflect/Field;
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v1

    .line 1541
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0
.end method

.method public getNfcDiscoveryState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1289
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1290
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNfcInfo(I)Ljava/lang/String;
    .locals 5
    .param p1, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1553
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    const-string v2, "getNfcInfo in"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1556
    const-string v0, ""

    .line 1558
    .local v0, "mNfcData":Ljava/lang/String;
    sget-boolean v1, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNfcInfo::command = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1559
    packed-switch p1, :pswitch_data_0

    .line 1593
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNfcInfo::mNfcData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1594
    return-object v0

    .line 1561
    :pswitch_0
    sget-object v1, Lcom/android/nfc/LNfcService;->NFC_VENDOR_MAP:Ljava/util/Map;

    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mNfcData":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1562
    .restart local v0    # "mNfcData":Ljava/lang/String;
    goto :goto_0

    .line 1565
    :pswitch_1
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/LDeviceHost;->checkChipVer()Ljava/lang/String;

    move-result-object v0

    .line 1566
    goto :goto_0

    .line 1569
    :pswitch_2
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/LDeviceHost;->checkMWVersion()Ljava/lang/String;

    move-result-object v0

    .line 1570
    goto :goto_0

    .line 1573
    :pswitch_3
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/LDeviceHost;->checkFWVersion()Ljava/lang/String;

    move-result-object v0

    .line 1574
    goto :goto_0

    .line 1577
    :pswitch_4
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_0

    .line 1580
    sget-object v1, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    const/4 v2, 0x3

    const-string v3, "host"

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "On Host"

    .line 1587
    :goto_1
    goto :goto_0

    .line 1580
    :cond_1
    const-string v0, "Off Host"

    goto :goto_1

    .line 1559
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getNfcP2pState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1296
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1297
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNfcSysState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1275
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1276
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNfcCardModeEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1310
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1311
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNfcP2pModeEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1324
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1325
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pEnable()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNfcRwModeEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1317
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1318
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNfcSystemEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1303
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1304
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isWirelessChargingModeOn()Z
    .locals 2

    .prologue
    .line 1427
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendNfcTestCommand(I[B)Z
    .locals 4
    .param p1, "command"    # I
    .param p2, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1341
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1342
    const/4 v0, 0x0

    .line 1344
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 1390
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1346
    :pswitch_1
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v2, v3}, Lcom/android/nfc/LNfcServiceTestApis;->NfcPowerOn(I)Z

    move-result v0

    .end local v0    # "result":Z
    iput-boolean v0, v1, Lcom/android/nfc/LNfcService;->mIsNfcModeOn:Z

    .line 1347
    .restart local v0    # "result":Z
    goto :goto_0

    .line 1349
    :pswitch_2
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1}, Lcom/android/nfc/LNfcServiceTestApis;->NfcPowerOff()Z

    move-result v0

    .line 1350
    if-ne v0, v3, :cond_0

    .line 1351
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/LNfcService;->mIsNfcModeOn:Z

    goto :goto_0

    .line 1355
    :pswitch_3
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcSwpSelfTest([B)Z

    move-result v0

    .line 1356
    goto :goto_0

    .line 1358
    :pswitch_4
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcAntennaSelfTest([B)Z

    move-result v0

    .line 1359
    goto :goto_0

    .line 1361
    :pswitch_5
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcReaderModeTest([B)Z

    move-result v0

    .line 1362
    goto :goto_0

    .line 1364
    :pswitch_6
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcReadFirmwareFileVersion([B)Z

    move-result v0

    .line 1365
    goto :goto_0

    .line 1367
    :pswitch_7
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1}, Lcom/android/nfc/LNfcServiceTestApis;->NfcDownloadFirmware()Z

    move-result v0

    .line 1368
    goto :goto_0

    .line 1370
    :pswitch_8
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcReadFirmwareVersion([B)Z

    move-result v0

    .line 1371
    goto :goto_0

    .line 1373
    :pswitch_9
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcStartCWE([B)Z

    move-result v0

    .line 1374
    goto :goto_0

    .line 1376
    :pswitch_a
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcStopCWE([B)Z

    move-result v0

    .line 1377
    goto :goto_0

    .line 1379
    :pswitch_b
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcSetRegValue([B)Z

    move-result v0

    .line 1380
    goto :goto_0

    .line 1382
    :pswitch_c
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcGetRegValue([B)Z

    move-result v0

    .line 1383
    goto :goto_0

    .line 1385
    :pswitch_d
    invoke-virtual {p0, p2}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->getCPLC([B)Z

    move-result v0

    .line 1386
    goto :goto_0

    .line 1344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public setLGSharingModeCallback(Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lge/nfcaddon/ILGSharingMessageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1600
    sget-boolean v0, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLGSharingModeCallback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1601
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-nez v0, :cond_0

    .line 1602
    const/4 v0, 0x0

    .line 1605
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/lgsharing/LSharingManager;->setMode(Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public setNfcAddonPreference(IZ)Z
    .locals 2
    .param p1, "prefnumber"    # I
    .param p2, "prefvalue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 1411
    const/4 v0, 0x0

    .line 1420
    :goto_0
    return v0

    .line 1414
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1420
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/utils/LNfcPopupPreference;->setPopupEnable(IZ)Z

    move-result v0

    goto :goto_0

    .line 1416
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "calling_nfcsound"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1417
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1418
    const/4 v0, 0x1

    goto :goto_0

    .line 1414
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setNfcPowerStatus(I)Z
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1471
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->setNfcPowerStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public setNfcPowerStatus(IZ)Z
    .locals 12
    .param p1, "status"    # I
    .param p2, "isCallbackEnable"    # Z

    .prologue
    .line 1476
    sget-boolean v5, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v6, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setNfcPowerStatus : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0x%02x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1477
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->isNfcPowerOnStatus(IIZ)Z

    move-result v0

    .line 1478
    .local v0, "cardOn":Z
    const/4 v5, 0x2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->isNfcPowerOnStatus(IIZ)Z

    move-result v1

    .line 1479
    .local v1, "discoveryOn":Z
    const/4 v5, 0x4

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pEnable()Z

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->isNfcPowerOnStatus(IIZ)Z

    move-result v2

    .line 1480
    .local v2, "p2pOn":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    const/4 v4, 0x1

    .line 1482
    .local v4, "sysOn":Z
    :goto_0
    sget-boolean v5, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v6, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sys : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", card : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", discovery : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", p2p : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1484
    sget-object v6, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6, v5}, Lcom/android/nfc/LNfcStatusManager;->saveNfcSystemOnSetting(Z)V

    .line 1486
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->getNfcStatusMasking(II)I

    move-result v5

    if-eqz v5, :cond_1

    .line 1487
    sget-object v6, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v6, v5}, Lcom/android/nfc/LNfcStatusManager;->saveNfcCardOnSetting(Z)V

    .line 1490
    :cond_1
    const/4 v5, 0x2

    invoke-direct {p0, p1, v5}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->getNfcStatusMasking(II)I

    move-result v5

    if-eqz v5, :cond_2

    .line 1491
    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v3, 0x1

    .line 1492
    .local v3, "powerstate":Z
    :goto_3
    sget-object v5, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v5, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcDiscoveryOnSetting(Z)V

    .line 1495
    .end local v3    # "powerstate":Z
    :cond_2
    const/4 v5, 0x4

    invoke-direct {p0, p1, v5}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->getNfcStatusMasking(II)I

    move-result v5

    if-eqz v5, :cond_3

    .line 1496
    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/16 v6, 0x9

    invoke-static {v5, v6}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    const/4 v3, 0x1

    .line 1497
    .restart local v3    # "powerstate":Z
    :goto_4
    sget-object v5, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v5, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcP2pOnSetting(Z)V

    .line 1498
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v5, v3}, Lcom/android/nfc/LNfcService;->setBeamShareActivityState(Z)V

    .line 1502
    .end local v3    # "powerstate":Z
    :cond_3
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v5}, Lcom/android/nfc/LNfcService;->saveAirplaneSetting()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1503
    const/4 v5, 0x0

    .line 1507
    :goto_5
    return v5

    .line 1480
    .end local v4    # "sysOn":Z
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1484
    .restart local v4    # "sysOn":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 1487
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 1491
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 1496
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 1506
    :cond_9
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v5}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v6

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x1

    if-eqz v4, :cond_a

    const/4 v5, 0x1

    :goto_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    const/4 v8, 0x2

    if-eqz p2, :cond_b

    const/4 v5, 0x1

    :goto_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1507
    const/4 v5, 0x1

    goto :goto_5

    .line 1506
    :cond_a
    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    goto :goto_7
.end method

.method public setPresentUid(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->getInstance(Landroid/content/Context;)Lcom/android/nfc/utils/LNfcPopupPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/utils/LNfcPopupPreference;->setUserID(I)V

    .line 1548
    return-void
.end method
