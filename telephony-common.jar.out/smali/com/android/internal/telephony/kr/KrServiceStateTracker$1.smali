.class Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "KrServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/kr/KrServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.LG_NVITEM_RESET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "KR"

    const-string v4, "KT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    :cond_0
    const-string v3, "Receive NV init Intent!"

    # invokes: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$000(Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$100(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    const v4, 0x20036

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setModemIntegerItem(IILandroid/os/Message;)V

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.FA_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 63
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    const-string v3, "FA"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaChannel:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$202(Lcom/android/internal/telephony/kr/KrServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.intent.action.FA_CHANGE is received = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaChannel:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$200(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$000(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaChannel:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$200(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 69
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.intent.action.FA_CHANGE ClassCastException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$100(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "skt_fa_changed_fail"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 73
    .local v2, "rebootToast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 75
    .end local v2    # "rebootToast":Landroid/widget/Toast;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.FA_LTE_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 77
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    const-string v3, "FA_LTE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaLTEChannel:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$302(Lcom/android/internal/telephony/kr/KrServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.intent.action.FA_LTE_CHANGE is received="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaLTEChannel:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$300(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$000(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mFaLTEChannel:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$300(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 83
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    .restart local v0    # "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.intent.action.FA_LTE_CHANGE ClassCastException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .line 85
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$100(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "skt_fa_changed_fail"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 86
    .restart local v2    # "rebootToast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 91
    .end local v2    # "rebootToast":Landroid/widget/Toast;
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.lge.intent.action.LTE_EMM_REJECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 92
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 96
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    const-string v3, "Enter ACTION_SIM_STATE_CHANGED!!"

    # invokes: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$000(Ljava/lang/String;)V

    .line 98
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "icc_state":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->showSearchingNotiBySimReady(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
