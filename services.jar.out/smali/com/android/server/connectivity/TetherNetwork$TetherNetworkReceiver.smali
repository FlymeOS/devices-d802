.class Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetherNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherNetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/TetherNetwork;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/TetherNetwork;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/TetherNetwork;Lcom/android/server/connectivity/TetherNetwork$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/TetherNetwork;
    .param p2, "x1"    # Lcom/android/server/connectivity/TetherNetwork$1;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;-><init>(Lcom/android/server/connectivity/TetherNetwork;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x1388

    const/16 v7, 0x3fc

    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "action":Ljava/lang/String;
    const-string v4, "TetherNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get Actions "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 353
    const-string v4, "wifi_state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 354
    const-string v4, "TetherNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WIFI_AP_STATE_CHANGED_ACTION : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "wifi_state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v4, "wifi_state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const-string v4, "wifi_state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 363
    :cond_2
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 365
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "state":Ljava/lang/String;
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "reason":Ljava/lang/String;
    const-string v4, "TetherNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive ACTION_ANY_DATA_CONNECTION_STATE_CHANGED to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  Change reason is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    # getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v4}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    # getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v4}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getTetherNetworkDataFlagSet()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "CONNECTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 373
    const-string v4, "connectionMipErrorCheck"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 374
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    # getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v4}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->readMipErrorCode()I

    move-result v1

    .line 375
    .local v1, "mipErrCode":I
    const-string v4, "TetherNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TETHER data connection failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "errCode :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz v1, :cond_3

    .line 378
    const/16 v4, 0x43

    if-ne v1, v4, :cond_0

    .line 379
    const-string v4, "TetherNetwork"

    const-string v5, "Auth failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    # getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$300()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->removeMessages(I)V

    .line 381
    # getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$300()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v4

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 385
    :cond_3
    const-string v4, "TetherNetwork"

    const-string v5, "TETHER data connection keep cause : readMipErrorCode == 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 390
    .end local v1    # "mipErrCode":I
    .end local v2    # "reason":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    :cond_4
    const-string v4, "com.lge.nai.Err.AuthFailed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 391
    const-string v4, "TetherNetwork"

    const-string v5, "Auth failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v4, "TetherNetwork"

    const-string v5, "MSG_SHOW_MIP_ERR_DLG show Dialog for Mip Error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    # getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$300()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->removeMessages(I)V

    .line 396
    # getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$300()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v4

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 400
    :cond_5
    const-string v4, "com.lge.nai.Err.Timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.lge.pamdisabled"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 401
    :cond_6
    const-string v4, "TetherNetwork"

    const-string v5, "Time out"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    # getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$300()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v4

    const/16 v5, 0x3fd

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 404
    :cond_7
    const-string v4, "com.lge.nai.Noti.Success"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 407
    const-string v4, "com.lge.nai.Noti.Failed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0
.end method
