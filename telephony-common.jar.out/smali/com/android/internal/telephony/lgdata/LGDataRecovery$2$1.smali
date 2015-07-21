.class Lcom/android/internal/telephony/lgdata/LGDataRecovery$2$1;
.super Landroid/os/Handler;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2$1;->this$1:Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 939
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 948
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2$1;->this$1:Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;

    iget-object v1, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefine Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 949
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 952
    :goto_0
    return-void

    .line 943
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 944
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2$1;->this$1:Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;

    iget-object v1, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->onGetModemPacketCountDone(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 939
    nop

    :pswitch_data_0
    .packed-switch 0x4281f
        :pswitch_0
    .end packed-switch
.end method
