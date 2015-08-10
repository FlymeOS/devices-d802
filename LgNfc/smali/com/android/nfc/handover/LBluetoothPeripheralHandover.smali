.class public Lcom/android/nfc/handover/LBluetoothPeripheralHandover;
.super Lcom/android/nfc/handover/BluetoothPeripheralHandover;
.source "LBluetoothPeripheralHandover.java"


# static fields
.field private static DBG:Z = false

.field public static final HANDOVER_CONNECT_DELAY:I = 0x5dc

.field static INSTANCE:Lcom/android/nfc/handover/LBluetoothPeripheralHandover; = null

.field public static final MSG_A2DP_CONNECT:I = 0x2

.field public static final MSG_HFP_CONNECT:I = 0x1

.field static final STATE_CHECKPOPUP:I = 0x33

.field private static TAG:Ljava/lang/String;


# instance fields
.field public final mLHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "LBluetoothHeadsetHandover"

    sput-object v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "transport"    # I
    .param p5, "callback"    # Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V

    .line 102
    new-instance v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;-><init>(Lcom/android/nfc/handover/LBluetoothPeripheralHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLHandler:Landroid/os/Handler;

    .line 50
    sput-object p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->INSTANCE:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method complete(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    const/4 v1, 0x1

    .line 215
    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dpResult:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHfpResult:I

    if-ne v0, v1, :cond_1

    .line 216
    :cond_0
    const/4 p1, 0x1

    .line 219
    :cond_1
    invoke-super {p0, p1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 220
    return-void
.end method

.method handleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mState:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->nextStepInit()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-super {p0, p1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method nextStepConnect()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 129
    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    .line 201
    :goto_1
    return-void

    .line 131
    :pswitch_1
    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mTransport:I

    if-eq v0, v6, :cond_2

    .line 132
    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dpResult:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHfpResult:I

    if-ne v0, v4, :cond_2

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v1, 0x7f080049

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->complete(Z)V

    goto :goto_1

    .line 144
    :cond_2
    :pswitch_2
    const-string v0, "PopupDialogType"

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    invoke-static {v0, v1}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mState:I

    goto :goto_0

    .line 150
    :pswitch_3
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mState:I

    .line 151
    iget-object v1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mTransport:I

    if-ne v0, v6, :cond_5

    .line 153
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v2, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v6, :cond_3

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHidResult:I

    .line 156
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v2, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 160
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f080048

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 162
    monitor-exit v1

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 164
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHidResult:I

    .line 195
    :cond_4
    monitor-exit v1

    goto :goto_0

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v6, :cond_7

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHfpResult:I

    .line 172
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 173
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 179
    :goto_2
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v6, :cond_8

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dpResult:I

    .line 183
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 184
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 189
    :goto_3
    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHfpResult:I

    if-nez v0, :cond_4

    .line 191
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f080048

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 192
    monitor-exit v1

    goto/16 :goto_1

    .line 176
    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHfpResult:I

    goto :goto_2

    .line 187
    :cond_8
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dpResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method nextStepInit()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 55
    const-string v0, "PopupDialogType"

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    invoke-static {v0, v1}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 57
    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_2

    .line 60
    :cond_1
    iput v3, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mState:I

    .line 61
    invoke-virtual {p0}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->getProfileProxys()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->complete(Z)V

    goto :goto_0

    .line 68
    :cond_2
    :pswitch_1
    iput v2, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mState:I

    .line 70
    iget-object v1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mTransport:I

    if-ne v0, v2, :cond_4

    .line 73
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    sget-boolean v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->DBG:Z

    sget-object v2, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DISCONNECT addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mAction:I

    .line 90
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p0}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->nextStep()V

    goto :goto_0

    .line 77
    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->DBG:Z

    sget-object v2, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_CONNECT addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mAction:I

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 81
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 83
    :cond_6
    sget-boolean v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->DBG:Z

    sget-object v2, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DISCONNECT addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mAction:I

    goto/16 :goto_1

    .line 86
    :cond_7
    sget-boolean v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->DBG:Z

    sget-object v2, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_CONNECT addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mAction:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 97
    :cond_8
    invoke-super {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepInit()V

    goto/16 :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
