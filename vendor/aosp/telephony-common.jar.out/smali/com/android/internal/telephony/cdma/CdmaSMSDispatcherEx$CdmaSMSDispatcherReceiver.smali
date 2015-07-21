.class public final Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$CdmaSMSDispatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CdmaSMSDispatcherEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CdmaSMSDispatcherReceiver"
.end annotation


# instance fields
.field public mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$CdmaSMSDispatcherReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 730
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$CdmaSMSDispatcherReceiver;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 731
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SMS_OVER_IMS_ON_VOLTE_E911] CdmaSMSDispatcherReceiver intent.getAction() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 739
    # getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sFirstCond:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1300()Z

    move-result v3

    if-nez v3, :cond_2

    .line 740
    const-string v3, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    # setter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sFirstCond:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1302(Z)Z

    .line 769
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 740
    goto :goto_0

    .line 742
    :cond_2
    const-string v3, "[SMS_OVER_IMS_ON_VOLTE_E911] sFirstCond true"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 743
    # getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sSecondCond:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1400()Z

    move-result v3

    if-nez v3, :cond_4

    .line 744
    const-string v3, "com.lge.phone.action.ECM_BLOCK_DLG_EXIT_YES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.lge.phone.action.ECM_BLOCK_DLG_EXIT_NO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    move v3, v1

    :goto_2
    # setter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sSecondCond:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1402(Z)Z

    .line 747
    :cond_4
    # getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sSecondCond:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    const-string v3, "[SMS_OVER_IMS_ON_VOLTE_E911] sFirstCond true + sSecondCond true"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 749
    const-string v3, "com.lge.phone.action.ECM_BLOCK_DLG_EXIT_YES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 750
    const-string v1, "[SMS_OVER_IMS_ON_VOLTE_E911] CdmaSMSDispatcherReceiver ECM_BLOCK_DLG_EXIT_YES "

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v3, v2

    .line 744
    goto :goto_2

    .line 751
    :cond_6
    const-string v3, "com.lge.phone.action.ECM_BLOCK_DLG_EXIT_NO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 752
    # setter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sFirstCond:Z
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1302(Z)Z

    .line 753
    # setter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sSecondCond:Z
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1402(Z)Z

    .line 754
    const-string v3, "[SMS_OVER_IMS_ON_VOLTE_E911] CdmaSMSDispatcherReceiver ECM_BLOCK_DLG_EXIT_NO "

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 755
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$CdmaSMSDispatcherReceiver;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$CdmaSMSDispatcherReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1500(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_1

    .line 756
    :cond_7
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 757
    const-string v1, "[SMS_OVER_IMS_ON_VOLTE_E911] sFirstCond true + sSecondCond true + EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 758
    # setter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sFirstCond:Z
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1302(Z)Z

    .line 759
    # setter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sSecondCond:Z
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1402(Z)Z

    .line 760
    const-string v1, "phoneinECMState"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    const-string v1, "[SMS_OVER_IMS_ON_VOLTE_E911] CdmaSMSDispatcherReceiver ECM_BLOCK_DLG_EXIT_YES sendRawPdu(mTracker)"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 762
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$CdmaSMSDispatcherReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$CdmaSMSDispatcherReceiver;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1600(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 765
    :cond_8
    const-string v1, "CdmaSMSDispatcherEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected BroadcastReceiver action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
