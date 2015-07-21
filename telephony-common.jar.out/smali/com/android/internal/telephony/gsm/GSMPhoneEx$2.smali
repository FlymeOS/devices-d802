.class Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;
.super Landroid/content/BroadcastReceiver;
.source "GSMPhoneEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhoneEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhoneEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhoneEx;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhoneEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, -0x64

    .line 443
    invoke-static {p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->updateProfile(Landroid/content/Context;Landroid/content/Intent;)V

    .line 444
    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v6, "GSMPhoneEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GSMPhone] mSimStateReceiver - stateExtra: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v6, "LOADED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 448
    const-string v6, "GSMPhoneEx"

    const-string v7, "[GSMPhone] mSimStateReceiver - ICC LOADED"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v6, "persist.sys.cust.lte_config"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 453
    # getter for: Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smIsCheckedLTEReady:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->access$000()Z

    move-result v6

    if-nez v6, :cond_0

    .line 454
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhoneEx;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->checkLteReady()V

    .line 465
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    .line 469
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhoneEx;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->syncClirSetting()V

    .line 479
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhoneEx;

    # getter for: Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->access$100(Lcom/android/internal/telephony/gsm/GSMPhoneEx;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "seperate_processing_sms_uicc"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 480
    const-string v6, "ABSENT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 481
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhoneEx;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->emptySIMMessageDB()V

    .line 493
    :cond_2
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 494
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhoneEx;

    # invokes: Lcom/android/internal/telephony/gsm/GSMPhoneEx;->initSimSMSUpdateFlag(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->access$400(Lcom/android/internal/telephony/gsm/GSMPhoneEx;Landroid/content/Intent;)V

    .line 498
    :cond_3
    const-string v6, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 500
    const-string v6, "RadioPower"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "mtkRadioPower":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 502
    .local v4, "subState":I
    :goto_2
    const-string v6, "phone"

    const/16 v7, -0x3e8

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 505
    .local v2, "phoneId":I
    const-string v6, "columnName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "columnName":Ljava/lang/String;
    const-string v6, "sub_state"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 507
    const-string v6, "intContent"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 508
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    const-string v7, "_id"

    const-wide/16 v8, -0x3e8

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v2

    .line 511
    :cond_4
    if-eq v4, v5, :cond_5

    .line 512
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhoneEx;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPhoneId()I

    move-result v5

    if-ne v5, v2, :cond_5

    .line 513
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhoneEx;

    # invokes: Lcom/android/internal/telephony/gsm/GSMPhoneEx;->subInfoChanged(I)V
    invoke-static {v5, v4}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->access$500(Lcom/android/internal/telephony/gsm/GSMPhoneEx;I)V

    .line 518
    .end local v0    # "columnName":Ljava/lang/String;
    .end local v1    # "mtkRadioPower":Ljava/lang/String;
    .end local v2    # "phoneId":I
    .end local v4    # "subState":I
    :cond_5
    return-void

    .line 472
    :cond_6
    const-string v6, "READY"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 473
    const-string v6, "H3G"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 474
    const-string v6, "GSMPhoneEx"

    const-string v7, "Set permanantAutomode when power on "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhoneEx;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 482
    :cond_7
    const-string v6, "READY"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 484
    # getter for: Lcom/android/internal/telephony/gsm/GSMPhoneEx;->isUSimSmsDeleted:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->access$200()Z

    move-result v6

    if-nez v6, :cond_2

    .line 485
    const/4 v6, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GSMPhoneEx;->isUSimSmsDeleted:Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->access$302(Z)Z

    .line 486
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhoneEx;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->emptySIMMessageDB()V

    goto/16 :goto_1

    .restart local v1    # "mtkRadioPower":Ljava/lang/String;
    :cond_8
    move v4, v5

    .line 501
    goto :goto_2
.end method
