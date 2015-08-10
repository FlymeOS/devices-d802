.class public Lcom/android/nfc/LNfcService$LNfcAdapterService;
.super Lcom/android/nfc/NfcService$NfcAdapterService;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LNfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/LNfcService;)V
    .locals 0

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    return-void
.end method


# virtual methods
.method public disable(Z)Z
    .locals 5
    .param p1, "saveState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1168
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1170
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 1171
    const-string v0, "LNfcService"

    const-string v1, "Defer Disable"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    sput-boolean v4, Lcom/android/nfc/LNfcService;->mIsDisable:Z

    .line 1203
    :goto_0
    return v4

    .line 1176
    :cond_0
    const-string v0, "LNfcService"

    const-string v1, "disable"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iput-boolean v3, v0, Lcom/android/nfc/LNfcService;->mOffReturn:Z

    .line 1178
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->manageShutdown()V

    .line 1181
    sget-object v0, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v2, "na"

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1182
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iput-boolean v4, v0, Lcom/android/nfc/LNfcService;->mOffReturn:Z

    goto :goto_0

    .line 1189
    :cond_1
    if-eqz p1, :cond_2

    .line 1190
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcService;->saveNfcOnSetting(Z)V

    .line 1191
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcSystemOnSetting(Z)V

    .line 1192
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcCardOnSetting(Z)V

    .line 1193
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcDiscoveryOnSetting(Z)V

    .line 1201
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public disableNdefPush()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1234
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1236
    const-string v0, "LNfcService"

    const-string v1, "disableNdefPush"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcP2pOnSetting(Z)V

    .line 1239
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcService;->setBeamShareActivityState(Z)V

    .line 1240
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1242
    return v4
.end method

.method public enable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1139
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1141
    const-string v2, "LNfcService"

    const-string v3, "enable"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2}, Lcom/android/nfc/LNfcService;->saveAirplaneSetting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return v0

    .line 1145
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_0

    .line 1151
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2, v1}, Lcom/android/nfc/LNfcService;->saveNfcOnSetting(Z)V

    .line 1152
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v2, v1}, Lcom/android/nfc/LNfcStatusManager;->saveNfcSystemOnSetting(Z)V

    .line 1156
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcCardOnSetting(Z)V

    .line 1160
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcDiscoveryOnSetting(Z)V

    .line 1162
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 1163
    goto :goto_0
.end method

.method public enableNdefPush()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1217
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1219
    const-string v2, "LNfcService"

    const-string v3, "enableNdefPush"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1229
    :cond_0
    :goto_0
    return v0

    .line 1223
    :cond_1
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_0

    .line 1226
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v2, v1}, Lcom/android/nfc/LNfcStatusManager;->saveNfcP2pOnSetting(Z)V

    .line 1227
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2, v1}, Lcom/android/nfc/LNfcService;->setBeamShareActivityState(Z)V

    .line 1228
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 1229
    goto :goto_0
.end method

.method public getState()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1247
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1248
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v2, v2, Lcom/android/nfc/LNfcService;->mOffReturn:Z

    if-eqz v2, :cond_0

    .line 1249
    monitor-exit v1

    .line 1264
    :goto_0
    return v0

    .line 1251
    :cond_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_1

    .line 1254
    const/4 v0, 0x3

    monitor-exit v1

    goto :goto_0

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1255
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_3

    .line 1258
    :cond_2
    const/4 v0, 0x2

    monitor-exit v1

    goto :goto_0

    .line 1259
    :cond_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_4

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_4

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_5

    .line 1262
    :cond_4
    const/4 v0, 0x4

    monitor-exit v1

    goto :goto_0

    .line 1264
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isNdefPushEnabled()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1208
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1209
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget v2, v2, Lcom/android/nfc/LNfcService;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pEnable()Z

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
