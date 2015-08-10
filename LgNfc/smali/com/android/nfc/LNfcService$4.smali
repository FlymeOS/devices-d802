.class Lcom/android/nfc/LNfcService$4;
.super Landroid/content/BroadcastReceiver;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcService;)V
    .locals 0

    .prologue
    .line 2174
    iput-object p1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2178
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2183
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/LNfcService;->receivedScreenStateIntent(Landroid/content/Context;Landroid/content/Intent;)I

    .line 2208
    :cond_1
    :goto_0
    return-void

    .line 2184
    :cond_2
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2185
    iget-object v1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/LNfcService;->receivedAirPlaneIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 2186
    :cond_3
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2187
    iget-object v1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/LNfcService;->receivedUserSwitchedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 2188
    :cond_4
    const-string v1, "com.android.settings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2189
    iget-object v1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/LNfcService;->receivedPowerSavedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 2190
    :cond_5
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.lge.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2192
    :cond_6
    iget-object v1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/LNfcService;->receivedBatteryChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 2193
    :cond_7
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2194
    iget-object v1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/LNfcService;->receivedPhoneStateChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 2195
    :cond_8
    invoke-static {v0}, Lcom/android/nfc/LNfcCommon;->isBeamUIFinishIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2196
    iget-object v1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/LNfcService;->receivedAlarmClockIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 2197
    :cond_9
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2198
    iget-object v1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/LNfcService;->receivedSimLoadedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 2199
    :cond_a
    const-string v1, "com.lge.intent.action.SIM_CHANGED_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2200
    iget-object v1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/LNfcService;->receivedSimChangedInfoIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 2201
    :cond_b
    const-string v1, "com.lge.nfc.test.TRANSACTION_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2202
    iget-object v1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService;->receivedTestTransactionEventIntent()V

    goto/16 :goto_0

    .line 2203
    :cond_c
    const-string v1, "lge.settings.intent.action.RESET_SETTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2204
    iget-object v1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService;->receivedResetSettingIntent()V

    goto/16 :goto_0

    .line 2205
    :cond_d
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2206
    iget-object v1, p0, Lcom/android/nfc/LNfcService$4;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService;->receivedShutDownIntent()V

    goto/16 :goto_0
.end method
