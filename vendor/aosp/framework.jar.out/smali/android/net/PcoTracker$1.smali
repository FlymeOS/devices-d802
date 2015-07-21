.class Landroid/net/PcoTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "PcoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PcoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/PcoTracker;


# direct methods
.method constructor <init>(Landroid/net/PcoTracker;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v12, 0x3

    const/4 v11, 0x5

    const/4 v10, 0x0

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "action":Ljava/lang/String;
    const-string v6, "com.lge.android.LTE_PCO"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "com.lge.android.LTE_PCO"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$600(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 168
    const-string v6, "extra_pco_profile_num"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 169
    .local v2, "pcoProfileNum":I
    const-string v6, "extra_pco_value"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 171
    .local v3, "pcoValue":I
    packed-switch v2, :pswitch_data_0

    .line 186
    :pswitch_0
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BroadcastReceiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not handle except IMS, INTERNET"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1000(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 279
    .end local v2    # "pcoProfileNum":I
    .end local v3    # "pcoValue":I
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local v2    # "pcoProfileNum":I
    .restart local v3    # "pcoValue":I
    :pswitch_1
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "last_ims_pco"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BroadcastReceiver : last_ims_pco = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "last_ims_pco"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$800(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 191
    :goto_1
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "pcoProfileNum"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "pcoValue"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PcoDefaultState : pcoProfileNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "pcoProfileNum"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pcoValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "pcoValue"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1100(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 195
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-virtual {v6}, Landroid/net/PcoTracker;->isRunningSetupWizard()Z

    move-result v6

    if-nez v6, :cond_0

    .line 196
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    iget-object v7, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-virtual {v7, v10}, Landroid/net/PcoTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/PcoTracker;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 180
    :pswitch_2
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "last_internet_pco"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BroadcastReceiver : last_internet_pco = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "last_internet_pco"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$900(Landroid/net/PcoTracker;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 199
    .end local v2    # "pcoProfileNum":I
    .end local v3    # "pcoValue":I
    :cond_1
    const-string v6, "com.lge.android.pco.notification.click"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 201
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "last_internet_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v12, :cond_3

    .line 203
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "ACTION_LTE_PCO_NOTIFICATION_CLICK :: Mobile data on"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1200(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 204
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Landroid/net/PcoTracker;->access$1300(Landroid/net/PcoTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 218
    :cond_2
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v0, "VerizonOnlinePortalintent":Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.VerizonOnlinePortal"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/PcoTracker;->access$1500(Landroid/net/PcoTracker;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 208
    .end local v0    # "VerizonOnlinePortalintent":Landroid/content/Intent;
    :cond_3
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "last_ims_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v11, :cond_4

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "last_internet_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v11, :cond_2

    .line 211
    :cond_4
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "ACTION_LTE_PCO_NOTIFICATION_CLICK :: the cellular radio on"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1400(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 212
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Landroid/net/PcoTracker;->access$1300(Landroid/net/PcoTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->setRadioPower(Z)Z

    .line 213
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Landroid/net/PcoTracker;->access$1300(Landroid/net/PcoTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_2

    .line 224
    :cond_5
    const-string v6, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 226
    :cond_6
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->isFirstBooting:Z
    invoke-static {v6}, Landroid/net/PcoTracker;->access$1600(Landroid/net/PcoTracker;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 227
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "is first botting. ignore user change event."

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1700(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 228
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # setter for: Landroid/net/PcoTracker;->isFirstBooting:Z
    invoke-static {v6, v10}, Landroid/net/PcoTracker;->access$1602(Landroid/net/PcoTracker;Z)Z

    goto/16 :goto_0

    .line 232
    :cond_7
    const-string v6, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 233
    .local v4, "userSentBackground":Z
    const-string v6, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 234
    .local v5, "userSentForeground":Z
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Switch received. User sent background = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";User sent foreground = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1800(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 236
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Landroid/net/PcoTracker;->access$2000(Landroid/net/PcoTracker;)Landroid/app/NotificationManager;

    move-result-object v6

    const/4 v7, 0x0

    # getter for: Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I
    invoke-static {}, Landroid/net/PcoTracker;->access$1900()I

    move-result v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 238
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "last_internet_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v12, :cond_8

    .line 240
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-virtual {v6, v12}, Landroid/net/PcoTracker;->NotificationAlertMsg(I)V

    goto/16 :goto_0

    .line 242
    :cond_8
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "last_internet_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v11, :cond_9

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "last_ims_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 244
    :cond_9
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-virtual {v6, v11}, Landroid/net/PcoTracker;->NotificationAlertMsg(I)V

    goto/16 :goto_0

    .line 248
    .end local v4    # "userSentBackground":Z
    .end local v5    # "userSentForeground":Z
    :cond_a
    const-string v6, "com.mediatek.server.action.ACTION_FINISHED_VERIZONE_PORTAL"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 250
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "mFinishedVZWPortalReceiver!!"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$2100(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 252
    const-string v6, "cause"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v6, v8, :cond_b

    .line 254
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "PAY Completed ======="

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$2200(Landroid/net/PcoTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :cond_b
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "just exit ======="

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$2300(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 260
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "last_internet_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v12, :cond_c

    .line 262
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "ACTION_FINISHED_VERIZONE_PORTAL :: Mobile data off again due to close web view!!"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$2400(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 263
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Landroid/net/PcoTracker;->access$1300(Landroid/net/PcoTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 264
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "ACTION_FINISHED_VERIZONE_PORTAL :: NotificationAlertMsg(3)"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$2500(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 265
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-virtual {v6, v12}, Landroid/net/PcoTracker;->NotificationAlertMsg(I)V

    goto/16 :goto_0

    .line 267
    :cond_c
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "last_internet_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v11, :cond_d

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "last_ims_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 269
    :cond_d
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "ACTION_FINISHED_VERIZONE_PORTAL :: the cellular radio off by close web view!!"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$2600(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Landroid/net/PcoTracker;->access$1300(Landroid/net/PcoTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/telephony/TelephonyManager;->setRadioPower(Z)Z

    .line 271
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Landroid/net/PcoTracker;->access$1300(Landroid/net/PcoTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 272
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "ACTION_FINISHED_VERIZONE_PORTAL :: NotificationAlertMsg(5)"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$2700(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 273
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-virtual {v6, v11}, Landroid/net/PcoTracker;->NotificationAlertMsg(I)V

    goto/16 :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
