.class Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0xc8

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc9

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.lge.bluetooth.sap.ACTION_SAP_REQUEST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    const-string v7, "req_type"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    # setter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mReqType:I
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$002(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;I)I

    .line 117
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mReqType:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$000(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 201
    :pswitch_0
    const-string v6, "LgeBluetoothSimManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BTUI] SAP_REQUEST : type ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mReqType:I
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$000(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 119
    :pswitch_1
    const-string v6, "LgeBluetoothSimManager"

    const-string v7, "[BTUI] SAP_ENABLE_EVT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :pswitch_2
    const-string v6, "LgeBluetoothSimManager"

    const-string v7, "[BTUI] SAP_DISABLE_EVT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :pswitch_3
    const-string v6, "LgeBluetoothSimManager"

    const-string v7, "[BTUI] SIM_OPEN_EVT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$100(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 130
    .local v2, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$200(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 131
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$200(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    invoke-interface {v6, v11, v2}, Lcom/android/internal/telephony/CommandsInterface;->SAPConnectionrequest(ILandroid/os/Message;)V

    goto :goto_0

    .line 137
    .end local v2    # "msg":Landroid/os/Message;
    :pswitch_4
    const-string v6, "LgeBluetoothSimManager"

    const-string v7, "[BTUI] SIM_CLOSE_EVT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$100(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 140
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$200(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 141
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$200(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    invoke-interface {v6, v8, v2}, Lcom/android/internal/telephony/CommandsInterface;->SAPConnectionrequest(ILandroid/os/Message;)V

    goto :goto_0

    .line 148
    .end local v2    # "msg":Landroid/os/Message;
    :pswitch_5
    const-string v6, "LgeBluetoothSimManager"

    const-string v7, "[BTUI] SIM_RESET_EVT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$100(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 150
    .restart local v2    # "msg":Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 151
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    const/4 v7, 0x4

    # invokes: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->sendSapRequestToSim([BILandroid/os/Message;)V
    invoke-static {v6, v10, v7, v2}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$300(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;[BILandroid/os/Message;)V

    goto :goto_0

    .line 156
    .end local v2    # "msg":Landroid/os/Message;
    :pswitch_6
    const-string v6, "LgeBluetoothSimManager"

    const-string v7, "[BTUI] SIM_POWER_ON_EVT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$100(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 158
    .restart local v2    # "msg":Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 159
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    const/4 v7, 0x3

    # invokes: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->sendSapRequestToSim([BILandroid/os/Message;)V
    invoke-static {v6, v10, v7, v2}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$300(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;[BILandroid/os/Message;)V

    goto/16 :goto_0

    .line 164
    .end local v2    # "msg":Landroid/os/Message;
    :pswitch_7
    const-string v6, "LgeBluetoothSimManager"

    const-string v7, "[BTUI] SIM_POWER_OFF_EVT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$100(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 166
    .restart local v2    # "msg":Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 167
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    const/4 v7, 0x2

    # invokes: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->sendSapRequestToSim([BILandroid/os/Message;)V
    invoke-static {v6, v10, v7, v2}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$300(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;[BILandroid/os/Message;)V

    goto/16 :goto_0

    .line 172
    .end local v2    # "msg":Landroid/os/Message;
    :pswitch_8
    const-string v6, "LgeBluetoothSimManager"

    const-string v7, "[BTUI] SIM_TRANSFER_ATR_EVT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$100(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 174
    .restart local v2    # "msg":Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 175
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # invokes: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->sendSapRequestToSim([BILandroid/os/Message;)V
    invoke-static {v6, v10, v8, v2}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$300(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;[BILandroid/os/Message;)V

    goto/16 :goto_0

    .line 180
    .end local v2    # "msg":Landroid/os/Message;
    :pswitch_9
    const-string v6, "LgeBluetoothSimManager"

    const-string v7, "[BTUI] SIM_TRANSFER_APDU_EVT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v6, "is_apdu_7816"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 182
    .local v1, "is_apdu_7816":I
    const-string v6, "req_len"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 183
    .local v4, "req_len":I
    const-string v6, "req_data"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "req_str":Ljava/lang/String;
    const-string v6, "req_data_byte"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    check-cast v3, [B

    .line 185
    .local v3, "req_byte":[B
    const-string v6, "LgeBluetoothSimManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BTUI] input str = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$100(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 187
    .restart local v2    # "msg":Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 188
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # invokes: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->sendSapRequestToSim([BILandroid/os/Message;)V
    invoke-static {v6, v3, v11, v2}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$300(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;[BILandroid/os/Message;)V

    goto/16 :goto_0

    .line 193
    .end local v1    # "is_apdu_7816":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "req_byte":[B
    .end local v4    # "req_len":I
    .end local v5    # "req_str":Ljava/lang/String;
    :pswitch_a
    const-string v6, "LgeBluetoothSimManager"

    const-string v7, "[BTUI] SIM_CARD_READER_STATUS_EVT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    # getter for: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$100(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 195
    .restart local v2    # "msg":Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 196
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;->this$0:Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    const/4 v7, 0x5

    # invokes: Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->sendSapRequestToSim([BILandroid/os/Message;)V
    invoke-static {v6, v10, v7, v2}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->access$300(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;[BILandroid/os/Message;)V

    goto/16 :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
