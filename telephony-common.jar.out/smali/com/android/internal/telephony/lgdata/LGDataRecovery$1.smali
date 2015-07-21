.class Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;
.super Landroid/content/BroadcastReceiver;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v12, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 223
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive: action="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 226
    :cond_2
    const-string v12, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 227
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isScreenOn:Z

    .line 228
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v13, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v14, 0x42818

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 229
    :cond_3
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 230
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isScreenOn:Z

    .line 231
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v13, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v14, 0x42819

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 232
    :cond_4
    const-string v12, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 233
    const-class v12, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v13, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 234
    .local v11, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v11, v12, :cond_5

    .line 235
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v13, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v14, 0x4281b

    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    .line 237
    :cond_5
    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v11, v12, :cond_0

    .line 238
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v13, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v14, 0x4281a

    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 240
    .end local v11    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_6
    const-string v12, "com.lge.internal.telephony.lge-data-stall-alarm"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 241
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v13, 0x4281d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 242
    .local v9, "msg":Landroid/os/Message;
    const-string v12, "data.stall.alram.tag"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    iput v12, v9, Landroid/os/Message;->arg1:I

    .line 243
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v12, v9}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 244
    .end local v9    # "msg":Landroid/os/Message;
    :cond_7
    const-string v12, "com.lge.internal.telephony.lge-data-conn-check-alarm"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 245
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v13, 0x4281e

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 246
    .restart local v9    # "msg":Landroid/os/Message;
    const-string v12, "conn.check.alram.tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "iface":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v3, "data":Landroid/os/Bundle;
    const-string v12, "iface"

    invoke-virtual {v3, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v9, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 250
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v12, v9}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 251
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v6    # "iface":Ljava/lang/String;
    .end local v9    # "msg":Landroid/os/Message;
    :cond_8
    const-string v12, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 252
    const-string v12, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkInfo;

    .line 254
    .local v10, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v13, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    :goto_1
    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsWifiConnected:Z
    invoke-static {v13, v12}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$002(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Z)Z

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x0

    goto :goto_1

    .line 255
    .end local v10    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_a
    const-string v12, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 256
    const-string v12, "wifi_state"

    const/4 v13, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_b

    const/4 v5, 0x1

    .line 258
    .local v5, "enabled":Z
    :goto_2
    if-nez v5, :cond_0

    .line 261
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const/4 v13, 0x0

    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsWifiConnected:Z
    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$002(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Z)Z

    goto/16 :goto_0

    .line 256
    .end local v5    # "enabled":Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_2

    .line 263
    :cond_c
    const-string v12, "com.lge.ims.action.CALL_STATE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 264
    const-string v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 265
    .local v7, "imscallstate":I
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IMS_CALL_STATE intent received: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " [1:active / 0:inactive]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 266
    const/4 v12, 0x1

    if-ne v7, v12, :cond_d

    .line 267
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const/4 v13, 0x1

    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIMScall:Z
    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$102(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Z)Z

    goto/16 :goto_0

    .line 269
    :cond_d
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const/4 v13, 0x0

    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIMScall:Z
    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$102(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Z)Z

    goto/16 :goto_0

    .line 271
    .end local v7    # "imscallstate":I
    :cond_e
    const-string v12, "lg-data-pulllog"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 272
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v13, "LG Data pull log"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 273
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v12}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v12

    if-nez v12, :cond_f

    .line 274
    const-string v12, "network_management"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 275
    .local v2, "b":Landroid/os/IBinder;
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v13

    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$202(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Landroid/os/INetworkManagementService;)Landroid/os/INetworkManagementService;

    .line 277
    .end local v2    # "b":Landroid/os/IBinder;
    :cond_f
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;
    invoke-static {v12}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$300(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Lcom/lge/systemservice/core/LGNetworkManager;

    move-result-object v12

    if-nez v12, :cond_10

    .line 278
    new-instance v8, Lcom/lge/systemservice/core/LGContext;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 279
    .local v8, "lgContext":Lcom/lge/systemservice/core/LGContext;
    iget-object v13, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v12, "lgnetworkmanagementservice"

    invoke-virtual {v8, v12}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/systemservice/core/LGNetworkManager;

    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;
    invoke-static {v13, v12}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$302(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Lcom/lge/systemservice/core/LGNetworkManager;)Lcom/lge/systemservice/core/LGNetworkManager;

    .line 283
    .end local v8    # "lgContext":Lcom/lge/systemservice/core/LGContext;
    :cond_10
    :try_start_0
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;
    invoke-static {v12}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$300(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Lcom/lge/systemservice/core/LGNetworkManager;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 284
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;
    invoke-static {v12}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$300(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Lcom/lge/systemservice/core/LGNetworkManager;

    move-result-object v12

    const-string v13, "lgdata_pulllog"

    invoke-virtual {v12, v13}, Lcom/lge/systemservice/core/LGNetworkManager;->runShellCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 286
    :catch_0
    move-exception v4

    .line 287
    .local v4, "e":Ljava/lang/Exception;
    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in pulling LGData log"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
