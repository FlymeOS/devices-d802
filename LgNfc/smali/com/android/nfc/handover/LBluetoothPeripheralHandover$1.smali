.class Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;
.super Landroid/os/Handler;
.source "LBluetoothPeripheralHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/LBluetoothPeripheralHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/LBluetoothPeripheralHandover;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    .line 105
    # getter for: Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received OOB message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 120
    # getter for: Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Sequence : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
