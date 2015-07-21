.class Lcom/lge/wifi/impl/WifiServerServiceExt$5;
.super Landroid/telephony/PhoneStateListener;
.source "WifiServerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;->registerPhoneStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0

    .prologue
    .line 2313
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 2316
    packed-switch p1, :pswitch_data_0

    .line 2333
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2334
    const-string v0, "WifiServerServiceExt"

    const-string v1, "android.telephony.TelephonyManager.NO CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->useIPPhone:Z
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2336
    const-string v0, "WifiServerServiceExt"

    const-string v1, "useIPPhone NO setL2RoamingTrigger() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    const/16 v0, -0x4b

    const/16 v1, 0xf

    invoke-static {v0, v1, v3}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setL2RoamingTrigger(III)Z

    .line 2341
    :cond_1
    if-ne p1, v2, :cond_3

    .line 2342
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2343
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->useIPPhone:Z
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2344
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ps_disable_while_wfc"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2345
    const-string v0, "WifiServerServiceExt"

    const-string v1, "CALL_STATE_RINGING SET PS disable "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    .line 2354
    :cond_3
    :goto_0
    return-void

    .line 2319
    :pswitch_0
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2320
    const-string v0, "WifiServerServiceExt"

    const-string v1, "android.telephony.TelephonyManager.CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    const/16 v0, -0x50

    const/16 v1, 0x14

    invoke-static {v0, v1, v3}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setL2RoamingTrigger(III)Z

    .line 2323
    :cond_5
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_6
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2324
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->useIPPhone:Z
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2325
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ps_disable_while_wfc"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2326
    const-string v0, "WifiServerServiceExt"

    const-string v1, "CALL_STATE_IDLE SET PS enable "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    goto/16 :goto_0

    .line 2316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 8
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2364
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v1, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$702(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 2369
    const/4 v0, 0x0

    .line 2370
    .local v0, "currIso":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2371
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useFccCerti()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2374
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->hasService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2375
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 2376
    const-string v1, "WifiServerServiceExt"

    const-string v2, "FCC, AIRPALNE_MODE_ON and Wi-Fi will be used Default Country Code"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_country_code"

    const-string v3, "DC"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2386
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->hasService()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2387
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged setCountryCode currIso : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lcom/android/server/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 2389
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNoServiceTimeOutIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2392
    :cond_1
    return-void

    .line 2380
    :cond_2
    const-string v1, "WifiServerServiceExt"

    const-string v2, "FCC, Set to Check Alarm 1hour for setting Defualt Country Code with no mobile networks"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNoServiceTimeOutIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2382
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNoServiceTimeOut:I
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1100(Lcom/lge/wifi/impl/WifiServerServiceExt;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mNoServiceTimeOutIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
