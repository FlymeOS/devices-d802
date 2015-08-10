.class public Lcom/android/nfc/LP2pLinkManager;
.super Lcom/android/nfc/P2pLinkManager;
.source "LP2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/LP2pLinkManager$LSendTask;,
        Lcom/android/nfc/LP2pLinkManager$LConnectTask;,
        Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;
    }
.end annotation


# static fields
.field static final LG_SHARING_SAP:I = 0x1f

.field static final MSG_HANDOVER_CONFLICT:I = 0x35

.field static final MSG_LLCP_DEACTIVATED_EXCEPTION:I = 0x34

.field private static final TAG:Ljava/lang/String; = "LP2pLinkManager"

.field static mDefaultFragmentLength:I


# instance fields
.field final mActivityManager:Landroid/app/ActivityManager;

.field mLEventListener:Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;

.field final mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

.field final mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

.field final mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/android/nfc/LP2pLinkManager;->mDefaultFragmentLength:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverManager;Lcom/android/nfc/lgsharing/LSharingManager;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/LHandoverManager;
    .param p3, "sharingManager"    # Lcom/android/nfc/lgsharing/LSharingManager;
    .param p4, "defaultMiu"    # I
    .param p5, "defaultRwSize"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;II)V

    .line 60
    iput-object p2, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    .line 61
    iput-object p3, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    .line 62
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 65
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/nfc/lgsharing/LSharingServer;

    const/16 v1, 0x1f

    invoke-direct {v0, v1, p3}, Lcom/android/nfc/lgsharing/LSharingServer;-><init>(ILcom/android/nfc/lgsharing/LSharingManager;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLEventListener:Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    .line 72
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverManager;Lcom/android/nfc/lgsharing/LSharingManager;III)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/LHandoverManager;
    .param p3, "sharingManager"    # Lcom/android/nfc/lgsharing/LSharingManager;
    .param p4, "defaultMiu"    # I
    .param p5, "defaultRwSize"    # I
    .param p6, "defaultFragmentLength"    # I

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/LP2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverManager;Lcom/android/nfc/lgsharing/LSharingManager;II)V

    .line 77
    sput p6, Lcom/android/nfc/LP2pLinkManager;->mDefaultFragmentLength:I

    .line 78
    return-void
.end method


# virtual methods
.method protected checkp2pSendConfirmation()V
    .locals 4

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v1, p0}, Lcom/android/nfc/lgsharing/LSharingManager;->sendSharingServices(Ljava/lang/Object;)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v1}, Lcom/android/nfc/handover/LHandoverManager;->isHandoverSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v1}, Lcom/android/nfc/handover/LHandoverManager;->isHandoverServiceBind()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/android/nfc/LP2pLinkManager;->onHandoverConflict()V

    .line 228
    :cond_2
    :goto_0
    return-void

    .line 215
    :cond_3
    iget v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 216
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSendState:I

    .line 217
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/LP2pLinkManager;->onP2pSendConfirmed(Z)V

    goto :goto_0

    .line 219
    :cond_4
    sget-boolean v1, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v2, "LP2pLinkManager"

    const-string v3, "onP2pSendConfirmationRequested() - Add Exception"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 220
    iget v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    iget-object v2, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v1, v2}, Lcom/android/nfc/handover/LHandoverManager;->getBeamTitleString(Landroid/nfc/NdefMessage;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "title":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLEventListener:Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;

    invoke-interface {v1, v0}, Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;->onP2pSendConfirmationRequested_addException(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSendState:I

    goto :goto_0

    .line 220
    .end local v0    # "title":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method connectLlcpServices()V
    .locals 2

    .prologue
    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "LP2pLinkManager"

    const-string v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    new-instance v0, Lcom/android/nfc/LP2pLinkManager$LConnectTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/LP2pLinkManager$LConnectTask;-><init>(Lcom/android/nfc/LP2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 250
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    monitor-exit p0

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDisable(ZZ)V
    .locals 1
    .param p1, "sendEnable"    # Z
    .param p2, "receiveEnable"    # Z

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/LP2pLinkManager;->mIsReceiveEnabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer;->start()V

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 94
    return-void

    .line 87
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/LP2pLinkManager;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer;->stop()V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 397
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 420
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->handleMessage(Landroid/os/Message;)Z

    .line 423
    :goto_0
    return v3

    .line 399
    :sswitch_0
    monitor-enter p0

    .line 400
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 402
    iget v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLinkState:I

    if-ne v0, v3, :cond_0

    .line 403
    monitor-exit p0

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 405
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendState:I

    .line 407
    sget-boolean v0, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v1, "LP2pLinkManager"

    const-string v2, "onP2pHandoverNotSupported()"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverNotSupported()V

    .line 409
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 413
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/nfc/LP2pLinkManager;->onLlcpDeactivated()V

    goto :goto_0

    .line 416
    :sswitch_2
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mContext:Landroid/content/Context;

    const v1, 0x7f08004f

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 397
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x34 -> :sswitch_1
        0x35 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic isLlcpActive()Z
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->isLlcpActive()Z

    move-result v0

    return v0
.end method

.method protected newP2pEventListener(Landroid/content/Context;)Lcom/android/nfc/P2pEventListener;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    new-instance v0, Lcom/android/nfc/LP2pEventManager;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/LP2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLEventListener:Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;

    .line 429
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLEventListener:Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;

    return-object v0
.end method

.method onHandoverConflict()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    return-void
.end method

.method public onLlcpActivated()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/LHandoverManager;->handoverLLCPActivated()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingManager;->onLlcpActivated()V

    .line 106
    :cond_1
    const-string v0, "LP2pLinkManager"

    const-string v1, "LLCP activated"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated()V

    .line 108
    return-void
.end method

.method public onLlcpDeactivated()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingManager;->onLlcpDeactivated()V

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 116
    return-void
.end method

.method public bridge synthetic onLlcpFirstPacketReceived()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpFirstPacketReceived()V

    return-void
.end method

.method public bridge synthetic onManualBeamInvoke(Landroid/nfc/BeamShareData;)V
    .locals 0
    .param p1, "x0"    # Landroid/nfc/BeamShareData;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    return-void
.end method

.method public bridge synthetic onP2pCanceled()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onP2pCanceled()V

    return-void
.end method

.method public bridge synthetic onP2pSendConfirmed()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed()V

    return-void
.end method

.method public bridge synthetic onUserSwitched(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->onUserSwitched(I)V

    return-void
.end method

.method prepareMessageToSend(Z)V
    .locals 15
    .param p1, "generatePlayLink"    # Z

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v12, p0, Lcom/android/nfc/LP2pLinkManager;->mNdefCallbackUid:I

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "mValidCallbackPackages":[Ljava/lang/String;
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I

    .line 124
    iget-boolean v11, p0, Lcom/android/nfc/LP2pLinkManager;->mIsSendEnabled:Z

    if-nez v11, :cond_0

    .line 125
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 126
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 127
    monitor-exit p0

    .line 194
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v8, 0x0

    .line 131
    .local v8, "runningPackage":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 132
    .local v10, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 133
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 136
    :cond_1
    if-nez v8, :cond_2

    .line 137
    sget-boolean v11, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v12, "LP2pLinkManager"

    const-string v13, "Could not determine running package."

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 139
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 140
    monitor-exit p0

    goto :goto_0

    .line 192
    .end local v6    # "mValidCallbackPackages":[Ljava/lang/String;
    .end local v8    # "runningPackage":Ljava/lang/String;
    .end local v10    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 144
    .restart local v6    # "mValidCallbackPackages":[Ljava/lang/String;
    .restart local v8    # "runningPackage":Ljava/lang/String;
    .restart local v10    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    :try_start_1
    iget-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    if-eqz v11, :cond_5

    .line 147
    const/4 v1, 0x0

    .line 149
    .local v1, "callbackValid":Z
    if-eqz v6, :cond_3

    .line 150
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v7, v0, v4

    .line 151
    .local v7, "pkg":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-eqz v11, :cond_4

    .line 152
    const/4 v1, 0x1

    .line 158
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_7

    .line 161
    :try_start_2
    iget-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-interface {v11}, Landroid/nfc/IAppCallback;->createBeamShareData()Landroid/nfc/BeamShareData;

    move-result-object v9

    .line 162
    .local v9, "shareData":Landroid/nfc/BeamShareData;
    iget-object v11, v9, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 163
    iget-object v11, v9, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 164
    iget v11, v9, Landroid/nfc/BeamShareData;->flags:I

    iput v11, p0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 150
    .end local v9    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "pkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 166
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v11, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v12, "LP2pLinkManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed NDEF callback: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v1    # "callbackValid":Z
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v11}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v3

    .line 180
    .local v3, "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_6

    invoke-virtual {p0, v8}, Lcom/android/nfc/LP2pLinkManager;->beamDefaultDisabled(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x0

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/nfc/LP2pLinkManager;->isManagedOrBeamDisabled(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 182
    :cond_6
    sget-boolean v11, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v12, "LP2pLinkManager"

    const-string v13, "Disabling default Beam behavior"

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 184
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 190
    :goto_3
    sget-boolean v11, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v12, "LP2pLinkManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mMessageToSend = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-boolean v11, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v12, "LP2pLinkManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mUrisToSend = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 192
    monitor-exit p0

    goto/16 :goto_0

    .line 173
    .end local v3    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "callbackValid":Z
    :cond_7
    sget-boolean v11, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v12, "LP2pLinkManager"

    const-string v13, "Last registered callback is not running in the foreground."

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 186
    .end local v1    # "callbackValid":Z
    .restart local v3    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8
    invoke-virtual {p0, v8}, Lcom/android/nfc/LP2pLinkManager;->createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v11

    iput-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 187
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public sendNdefMessage()V
    .locals 2

    .prologue
    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/LP2pLinkManager;->cancelSendNdefMessage()V

    .line 238
    new-instance v0, Lcom/android/nfc/LP2pLinkManager$LSendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/LP2pLinkManager$LSendTask;-><init>(Lcom/android/nfc/LP2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 239
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 240
    monitor-exit p0

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setNdefCallback(Landroid/nfc/IAppCallback;I)V
    .locals 0
    .param p1, "x0"    # Landroid/nfc/IAppCallback;
    .param p2, "x1"    # I

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/android/nfc/P2pLinkManager;->setNdefCallback(Landroid/nfc/IAppCallback;I)V

    return-void
.end method
