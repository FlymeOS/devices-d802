.class public Lcom/android/nfc/handover/LHandoverService;
.super Lcom/android/nfc/handover/HandoverService;
.source "LHandoverService.java"

# interfaces
.implements Lcom/android/nfc/handover/LHandoverPopupList$Callback;


# static fields
.field protected static final PREF:Ljava/lang/String; = "NfcHandoverPrefs"

.field protected static final PREF_BLUETOOTHPOWERSTATE:Ljava/lang/String; = "BluetooothPowerState"

.field protected static final PREF_HEADSETCONNECT:Ljava/lang/String; = "BluetoothHeadsetConnect"

.field static final TAG:Ljava/lang/String; = "LHandoverService"


# instance fields
.field mContext:Landroid/content/Context;

.field mLHandoverService:Lcom/android/nfc/handover/LHandoverService;

.field private mPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

.field mPopupPref:Lcom/android/nfc/utils/LNfcPopupPreference;

.field protected mPrefs:Landroid/content/SharedPreferences;

.field protected mPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverService;-><init>()V

    return-void
.end method


# virtual methods
.method destroyHandoverTransfer()V
    .locals 10

    .prologue
    .line 188
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 189
    const-string v7, "LHandoverService"

    const-string v8, "mTransfer is null"

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 195
    .local v5, "transferCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/handover/HandoverTransfer;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 196
    :cond_2
    const-string v7, "LHandoverService"

    const-string v8, "transferCollection size is 0"

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v5    # "transferCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/handover/HandoverTransfer;>;"
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "LHandoverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in destroyHandoverTransfer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "transferCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/handover/HandoverTransfer;>;"
    :cond_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v6, v7, [Lcom/android/nfc/handover/LHandoverTransfer;

    .line 201
    .local v6, "transferObjects":[Lcom/android/nfc/handover/LHandoverTransfer;
    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "transferObjects":[Lcom/android/nfc/handover/LHandoverTransfer;
    check-cast v6, [Lcom/android/nfc/handover/LHandoverTransfer;

    .line 202
    .restart local v6    # "transferObjects":[Lcom/android/nfc/handover/LHandoverTransfer;
    move-object v0, v6

    .local v0, "arr$":[Lcom/android/nfc/handover/LHandoverTransfer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 203
    .local v4, "transfer":Lcom/android/nfc/handover/LHandoverTransfer;
    invoke-virtual {v4}, Lcom/android/nfc/handover/LHandoverTransfer;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method disableBluetoothIfNeeded()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/nfc/handover/LHandoverService;->mBluetoothHeadsetConnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "BluetooothPowerState"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/android/nfc/handover/HandoverService;->disableBluetoothIfNeeded()V

    .line 173
    return-void
.end method

.method public doPeripheralHandover(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 101
    const-string v1, "PopupDialogType"

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    invoke-static {v1, v2}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "BluetoothHeadsetConnect"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 105
    .local v0, "isConnect":Z
    if-nez v0, :cond_2

    new-instance v1, Lcom/android/nfc/handover/LHandoverPopupList;

    invoke-direct {v1, p0, p0, p1}, Lcom/android/nfc/handover/LHandoverPopupList;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverPopupList$Callback;Landroid/os/Parcelable;)V

    :goto_0
    iput-object v1, p0, Lcom/android/nfc/handover/LHandoverService;->mPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    .line 107
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverService;->mPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverService;->mPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    invoke-virtual {v1}, Lcom/android/nfc/handover/LHandoverPopupList;->requestConnectBluetoothDeviceConfirmation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lcom/android/nfc/handover/HandoverService;->doPeripheralHandover(Landroid/os/Message;)V

    .line 114
    .end local v0    # "isConnect":Z
    :cond_1
    :goto_1
    return-void

    .line 105
    .restart local v0    # "isConnect":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 112
    .end local v0    # "isConnect":Z
    :cond_3
    invoke-super {p0, p1}, Lcom/android/nfc/handover/HandoverService;->doPeripheralHandover(Landroid/os/Message;)V

    goto :goto_1
.end method

.method enableBluetooth()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 155
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "BluetooothPowerState"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    iput-boolean v0, p0, Lcom/android/nfc/handover/LHandoverService;->mBluetoothEnabledByNfc:Z

    .line 161
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 163
    :cond_1
    return v0
.end method

.method bridge synthetic findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/HandoverTransfer;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/handover/LHandoverService;->findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/LHandoverTransfer;

    move-result-object v0

    return-object v0
.end method

.method findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/LHandoverTransfer;
    .locals 2
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "incoming"    # Z

    .prologue
    .line 147
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/nfc/handover/HandoverService;->findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/HandoverTransfer;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/handover/LHandoverTransfer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-object v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleCancelTransfer(Landroid/content/Intent;I)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "deviceType"    # I

    .prologue
    const/4 v5, -0x1

    .line 213
    const-string v4, "android.nfc.handover.intent.extra.ADDRESS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "sourceAddress":Ljava/lang/String;
    const-string v4, "com.android.nfc.handover.extra.INCOMING"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 216
    .local v0, "direction":I
    if-ne v0, v5, :cond_0

    .line 227
    :goto_0
    return-void

    .line 220
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 221
    .local v1, "incoming":Z
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/handover/LHandoverService;->findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/LHandoverTransfer;

    move-result-object v3

    .line 222
    .local v3, "transfer":Lcom/android/nfc/handover/LHandoverTransfer;
    if-nez v3, :cond_2

    .line 223
    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/nfc/handover/LHandoverTransfer;->initialNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 220
    .end local v1    # "incoming":Z
    .end local v3    # "transfer":Lcom/android/nfc/handover/LHandoverTransfer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 225
    .restart local v1    # "incoming":Z
    .restart local v3    # "transfer":Lcom/android/nfc/handover/LHandoverTransfer;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/nfc/handover/HandoverService;->handleCancelTransfer(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected handleTransferDoneEvent(Landroid/content/Intent;I)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "deviceType"    # I

    .prologue
    .line 272
    const-string v11, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 273
    .local v0, "direction":I
    const-string v11, "android.nfc.handover.intent.extra.ADDRESS"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, "sourceAddress":Ljava/lang/String;
    if-nez v0, :cond_7

    const/4 v3, 0x1

    .line 278
    .local v3, "incoming":Z
    :goto_0
    invoke-virtual {p0, v7, v3}, Lcom/android/nfc/handover/LHandoverService;->findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/LHandoverTransfer;

    move-result-object v8

    .line 280
    .local v8, "transfer":Lcom/android/nfc/handover/LHandoverTransfer;
    if-nez v8, :cond_1

    .line 282
    const-string v11, "android.nfc.handover.intent.extra.TRANSFER_URI"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 283
    .local v10, "uriString":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 284
    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 285
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    .line 286
    new-instance v11, Ljava/io/File;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 289
    :cond_0
    if-eqz v9, :cond_1

    .line 290
    new-instance v1, Ljava/io/File;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 298
    .end local v1    # "file":Ljava/io/File;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "uriString":Ljava/lang/String;
    :cond_1
    const-string v11, "android.nfc.handover.intent.extra.TRANSFER_URI"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 299
    .restart local v10    # "uriString":Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 300
    const-string v11, "android.nfc.handover.intent.extra.TRANSFER_URI"

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/android/nfc/handover/HandoverService;->handleTransferEvent(Landroid/content/Intent;I)V

    .line 306
    const-string v11, "android.nfc.handover.intent.extra.TRANSFER_STATUS"

    const/4 v12, 0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 308
    .local v2, "handoverStatus":I
    if-nez v3, :cond_6

    .line 309
    if-nez v2, :cond_8

    const-string v4, "com.lge.nfc.handover.action.SEND_SUCCESS"

    .line 311
    .local v4, "intentString":Ljava/lang/String;
    :goto_1
    const-string v11, "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, "mimeType":Ljava/lang/String;
    if-eqz v8, :cond_4

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_4

    .line 314
    :cond_3
    iget-object v5, v8, Lcom/android/nfc/handover/LHandoverTransfer;->mSendMimeType:Ljava/lang/String;

    .line 316
    :cond_4
    const-string v11, "LHandoverService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendBroadcast : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v6, "sendintent":Landroid/content/Intent;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 319
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    :cond_5
    iget-object v11, p0, Lcom/android/nfc/handover/LHandoverService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.NFC"

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 323
    .end local v4    # "intentString":Ljava/lang/String;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "sendintent":Landroid/content/Intent;
    :cond_6
    return-void

    .line 274
    .end local v2    # "handoverStatus":I
    .end local v3    # "incoming":Z
    .end local v8    # "transfer":Lcom/android/nfc/handover/LHandoverTransfer;
    .end local v10    # "uriString":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 309
    .restart local v2    # "handoverStatus":I
    .restart local v3    # "incoming":Z
    .restart local v8    # "transfer":Lcom/android/nfc/handover/LHandoverTransfer;
    .restart local v10    # "uriString":Ljava/lang/String;
    :cond_8
    const-string v4, "com.lge.nfc.handover.action.SEND_FAIL"

    goto :goto_1
.end method

.method protected handleTransferEvent(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "deviceType"    # I

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/handover/LHandoverService;->handleTransferProgressEvent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 239
    :cond_1
    const-string v1, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/handover/LHandoverService;->handleTransferDoneEvent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 242
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/nfc/handover/HandoverService;->handleTransferEvent(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected handleTransferProgressEvent(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "deviceType"    # I

    .prologue
    .line 247
    const-string v5, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 248
    .local v0, "direction":I
    const-string v5, "android.nfc.handover.intent.extra.ADDRESS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "sourceAddress":Ljava/lang/String;
    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 253
    .local v1, "incoming":Z
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 255
    .local v4, "transfer":Lcom/android/nfc/handover/LHandoverTransfer;
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 256
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "transfer":Lcom/android/nfc/handover/LHandoverTransfer;
    check-cast v4, Lcom/android/nfc/handover/LHandoverTransfer;

    .line 259
    .restart local v4    # "transfer":Lcom/android/nfc/handover/LHandoverTransfer;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/nfc/handover/HandoverService;->handleTransferEvent(Landroid/content/Intent;I)V

    .line 261
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/nfc/handover/LHandoverTransfer;->checkCancellingStatus()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 269
    :cond_1
    :goto_1
    return-void

    .line 249
    .end local v1    # "incoming":Z
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v4    # "transfer":Lcom/android/nfc/handover/LHandoverTransfer;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 265
    .restart local v1    # "incoming":Z
    .restart local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v4    # "transfer":Lcom/android/nfc/handover/LHandoverTransfer;
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/nfc/handover/LHandoverTransfer;->isRunning()Z

    move-result v5

    if-nez v5, :cond_1

    .line 266
    :cond_4
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverTransfer;->initialNotification(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected newBluetoothPeripheralHandover(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)Lcom/android/nfc/handover/BluetoothPeripheralHandover;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transport"    # I

    .prologue
    .line 327
    new-instance v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V

    return-object v0
.end method

.method protected newHandoverTransfer(Landroid/content/Context;Lcom/android/nfc/handover/HandoverTransfer$Callback;Lcom/android/nfc/handover/PendingHandoverTransfer;)Lcom/android/nfc/handover/HandoverTransfer;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/handover/HandoverTransfer$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/handover/PendingHandoverTransfer;

    .prologue
    .line 333
    new-instance v0, Lcom/android/nfc/handover/LHandoverTransfer;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/nfc/handover/LHandoverTransfer;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverTransfer$Callback;Lcom/android/nfc/handover/PendingHandoverTransfer;)V

    return-object v0
.end method

.method public onBluetoothPeripheralHandoverComplete(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "BluetoothHeadsetConnect"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    :cond_0
    invoke-super {p0, p1}, Lcom/android/nfc/handover/HandoverService;->onBluetoothPeripheralHandoverComplete(Z)V

    .line 142
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-super {p0}, Lcom/android/nfc/handover/HandoverService;->onCreate()V

    .line 60
    const-string v0, "LHandoverService"

    const-string v1, "onCreate LHandoverService"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/android/nfc/handover/LHandoverService;->mSoundPool:Landroid/media/SoundPool;

    .line 64
    sget-object v0, Lcom/android/nfc/handover/LHandoverService;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "system/media/audio/ui/NFC_End.ogg"

    invoke-virtual {v0, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/nfc/handover/LHandoverService;->mSuccessSound:I

    .line 65
    sget v0, Lcom/android/nfc/handover/LHandoverService;->mSuccessSound:I

    if-gtz v0, :cond_0

    .line 66
    const-string v0, "LHandoverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "END Sound file load Fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/nfc/handover/LHandoverService;->mSuccessSound:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/android/nfc/handover/LHandoverService;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lcom/android/nfc/handover/LHandoverService;->mSuccessSound:I

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/android/nfc/utils/LNfcPopupPreference;->getInstance(Landroid/content/Context;)Lcom/android/nfc/utils/LNfcPopupPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPopupPref:Lcom/android/nfc/utils/LNfcPopupPreference;

    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPopupPref:Lcom/android/nfc/utils/LNfcPopupPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/utils/LNfcPopupPreference;->setUserID(I)V

    .line 74
    const-string v0, "NfcHandoverPrefs"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/handover/LHandoverService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    .line 75
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 85
    iput-object p0, p0, Lcom/android/nfc/handover/LHandoverService;->mLHandoverService:Lcom/android/nfc/handover/LHandoverService;

    .line 86
    iput-object p0, p0, Lcom/android/nfc/handover/LHandoverService;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p0}, Lcom/android/nfc/handover/LHandoverTransfer;->initialNotification(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverService;->restoreBluetoothPowerState()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/nfc/handover/HandoverService;->onDestroy()V

    .line 96
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverService;->destroyHandoverTransfer()V

    .line 97
    return-void
.end method

.method public onHandoverPopupCallback(IZLandroid/os/Parcelable;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "result"    # Z
    .param p3, "msg"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    .line 118
    if-eqz p2, :cond_1

    .line 119
    instance-of v1, p3, Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 120
    check-cast p3, Landroid/os/Message;

    .end local p3    # "msg":Landroid/os/Parcelable;
    invoke-super {p0, p3}, Lcom/android/nfc/handover/HandoverService;->doPeripheralHandover(Landroid/os/Message;)V

    .line 132
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/android/nfc/handover/LHandoverService;->mPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    .line 133
    return-void

    .line 123
    .restart local p3    # "msg":Landroid/os/Parcelable;
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverService;->mClient:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x2

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, "message":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverService;->mClient:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method restoreBluetoothPowerState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "BluetooothPowerState"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "BluetoothHeadsetConnect"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 180
    iput-boolean v2, p0, Lcom/android/nfc/handover/LHandoverService;->mBluetoothEnabledByNfc:Z

    .line 181
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "BluetooothPowerState"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 182
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    :cond_0
    return-void
.end method
