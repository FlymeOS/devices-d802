.class Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;
.super Landroid/content/BroadcastReceiver;
.source "CDMAPhoneEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CDMAPhoneEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CDMAPhoneEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhoneEx;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhoneEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 516
    invoke-static {p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->updateProfile(Landroid/content/Context;Landroid/content/Intent;)V

    .line 517
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "stateExtra":Ljava/lang/String;
    const-string v1, "CDMAPhoneEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CDMAPhone] mSimStateReceiver - stateExtra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhoneEx;

    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSimState:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->access$002(Lcom/android/internal/telephony/cdma/CDMAPhoneEx;Ljava/lang/String;)Ljava/lang/String;

    .line 521
    const-string v1, "CDMAPhoneEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CDMAPhone] mSimStateReceiver - mSimState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhoneEx;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSimState:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->access$000(Lcom/android/internal/telephony/cdma/CDMAPhoneEx;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    const-string v1, "CDMAPhoneEx"

    const-string v2, "[CDMAPhone] mSimStateReceiver ICC LOADED"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhoneEx;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->access$100(Lcom/android/internal/telephony/cdma/CDMAPhoneEx;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "seperate_processing_sms_uicc"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 530
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhoneEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->emptySIMMessageDB()V

    .line 540
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->isUSimSmsDeleted:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->access$200()Z

    move-result v1

    if-nez v1, :cond_1

    .line 534
    const/4 v1, 0x1

    # setter for: Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->isUSimSmsDeleted:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->access$302(Z)Z

    .line 535
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhoneEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->emptySIMMessageDB()V

    goto :goto_0
.end method
