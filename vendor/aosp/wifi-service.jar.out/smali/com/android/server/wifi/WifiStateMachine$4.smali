.class Lcom/android/server/wifi/WifiStateMachine$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v12, 0x2005f

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, -0x1

    .line 1189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, "action":Ljava/lang/String;
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1192
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9, v12, v8}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1194
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8, v12, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 1195
    :cond_2
    const-string v10, "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1196
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startNextBatchedScanAsync()V
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)V

    goto :goto_0

    .line 1197
    :cond_3
    const-string v10, "com.quicinc.cne.CNE_PREFERENCE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1198
    const-string v8, "cneFeatureId"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1199
    .local v3, "featureId":I
    const-string v8, "cneFeatureParameter"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1200
    .local v4, "featureParam":I
    const-string v8, "cneParameterValue"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1201
    .local v5, "featureVal":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handlePrefChange(III)V
    invoke-static {v8, v3, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;III)V

    goto :goto_0

    .line 1202
    .end local v3    # "featureId":I
    .end local v4    # "featureParam":I
    .end local v5    # "featureVal":I
    :cond_4
    const-string v10, "prop_state_change"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1203
    const-string v8, "state"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1204
    .local v7, "state":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleStateChange(I)V
    invoke-static {v8, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_0

    .line 1205
    .end local v7    # "state":I
    :cond_5
    const-string v10, "blacklist_bad_bssid"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1207
    const-string v10, "blacklistBSSID"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1208
    .local v1, "blacklist":I
    const-string v10, "BSSIDToBlacklist"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1209
    .local v2, "bssid":Ljava/lang/String;
    const-string v10, "blacklistReason"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1210
    .local v6, "reason":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    if-nez v1, :cond_6

    :goto_1
    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleBSSIDBlacklist(ZLjava/lang/String;I)V
    invoke-static {v10, v8, v2, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;ZLjava/lang/String;I)V

    goto :goto_0

    :cond_6
    move v8, v9

    goto :goto_1

    .line 1213
    .end local v1    # "blacklist":I
    .end local v2    # "bssid":Ljava/lang/String;
    .end local v6    # "reason":I
    :cond_7
    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1214
    const-string v8, "WifiStateMachine"

    const-string v9, "receive Intent.ACTION_SHUTDOWN"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v9, 0x200c8

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0
.end method
