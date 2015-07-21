.class Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$2;
.super Landroid/os/Handler;
.source "LgeBluetoothSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$2;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 349
    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "LgeBluetoothSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_0
    return-void

    .line 355
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$2;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # invokes: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onGetRilResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$500(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;Landroid/os/Message;)V

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
