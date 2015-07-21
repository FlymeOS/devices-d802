.class Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffDelayIfNotUsed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .param p1, "stayAwakeConditions"    # I
    .param p2, "pluggedType"    # I

    .prologue
    .line 551
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(III)Z
    .locals 2
    .param p1, "wifiSleepPolicy"    # I
    .param p2, "stayAwakeConditions"    # I
    .param p3, "pluggedType"    # I

    .prologue
    const/4 v0, 0x1

    .line 537
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return v0

    .line 540
    :cond_1
    if-ne p1, v0, :cond_2

    if-nez p3, :cond_0

    .line 546
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->shouldDeviceStayAwake(II)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 413
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$000(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 417
    .local v2, "stayAwakeConditions":I
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$000(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_sleep_policy"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 420
    .local v3, "wifiSleepPolicy":I
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 421
    const-string v4, "WifiOffDelayIfNotUsed"

    const-string v5, "ACTION_SCREEN_ON"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # setter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mScreenOff:Z
    invoke-static {v4, v7}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$102(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;Z)Z

    .line 423
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$200(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/app/AlarmManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 424
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$200(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$300(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 426
    :cond_0
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # invokes: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->getPowerSaveActivated()Z
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$400(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 533
    :cond_1
    :goto_0
    return-void

    .line 434
    :cond_2
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # invokes: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->releaseWiFiStopWakeLock()V
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$500(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)V

    goto :goto_0

    .line 435
    :cond_3
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 436
    const-string v4, "WifiOffDelayIfNotUsed"

    const-string v5, "ACTION_SCREEN_OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # setter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mScreenOff:Z
    invoke-static {v4, v8}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$102(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;Z)Z

    .line 439
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # invokes: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->getPowerSaveActivated()Z
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$400(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 443
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPluggedType:I
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$600(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->shouldWifiStayAwake(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 456
    if-ne v3, v6, :cond_1

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPluggedType:I
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$600(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)I

    move-result v4

    if-nez v4, :cond_1

    .line 463
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$700(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v5

    # invokes: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->isConnecting(Landroid/net/wifi/SupplicantState;)Z
    invoke-static {v4, v5}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$800(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;Landroid/net/wifi/SupplicantState;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 465
    const-string v4, "WifiOffDelayIfNotUsed"

    const-string v5, "supplicant state is not COMPLETED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_4
    const-string v4, "WifiOffDelayIfNotUsed"

    const-string v5, "ACTION_SCREEN_OFF : WIFI_SLEEP_POLICY_NEVER & unpluged"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->startMonitoring()V

    goto :goto_0

    .line 482
    :cond_5
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 483
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 486
    .local v1, "pluggedType":I
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # invokes: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->getPowerSaveActivated()Z
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$400(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 487
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # setter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPluggedType:I
    invoke-static {v4, v1}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$602(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;I)I

    goto :goto_0

    .line 491
    :cond_6
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mScreenOff:Z
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$100(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPluggedType:I
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$600(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->shouldWifiStayAwake(III)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v3, v2, v1}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->shouldWifiStayAwake(III)Z

    move-result v4

    if-nez v4, :cond_8

    .line 520
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # setter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPluggedType:I
    invoke-static {v4, v1}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$602(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;I)I

    goto/16 :goto_0

    .line 500
    :cond_8
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mScreenOff:Z
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$100(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-ne v3, v6, :cond_9

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPluggedType:I
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$600(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)I

    move-result v4

    if-nez v4, :cond_9

    if-eqz v1, :cond_9

    .line 504
    const-string v4, "WifiOffDelayIfNotUsed"

    const-string v5, "ACTION_BATTERY_CHANGED : unplugged -> plugged"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # invokes: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->releaseWiFiStopWakeLock()V
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$500(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)V

    goto :goto_1

    .line 513
    :cond_9
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mScreenOff:Z
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$100(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-ne v3, v6, :cond_7

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mPluggedType:I
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$600(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)I

    move-result v4

    if-eqz v4, :cond_7

    if-nez v1, :cond_7

    .line 517
    const-string v4, "WifiOffDelayIfNotUsed"

    const-string v5, "ACTION_BATTERY_CHANGED : plugged -> unplugged"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->startMonitoring()V

    goto :goto_1

    .line 521
    .end local v1    # "pluggedType":I
    :cond_a
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 522
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    # setter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5, v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$902(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 523
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$900(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 524
    const-string v4, "WifiOffDelayIfNotUsed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NETWORK_STATE_CHANGED_ACTION ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$900(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # invokes: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->getPowerSaveActivated()Z
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$400(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$900(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_1

    .line 528
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->mWifiHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->access$1000(Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->wifiStatsHandler()V

    goto/16 :goto_0
.end method
