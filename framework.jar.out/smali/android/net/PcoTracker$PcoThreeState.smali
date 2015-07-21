.class Landroid/net/PcoTracker$PcoThreeState;
.super Lcom/android/internal/util/State;
.source "PcoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PcoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PcoThreeState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/PcoTracker;


# direct methods
.method private constructor <init>(Landroid/net/PcoTracker;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/PcoTracker;
    .param p2, "x1"    # Landroid/net/PcoTracker$1;

    .prologue
    .line 430
    invoke-direct {p0, p1}, Landroid/net/PcoTracker$PcoThreeState;-><init>(Landroid/net/PcoTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    const-string v1, "PcoThreeState entered"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/PcoTracker;->access$6600(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    const-string v1, "PcoThreeState :: NotificationAlertMsg(3) "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/PcoTracker;->access$6700(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/PcoTracker;->NotificationAlertMsg(I)V

    .line 437
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    const-string v1, "PcoThreeState :: Disable internet PDN interface "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/PcoTracker;->access$6800(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Landroid/net/PcoTracker;->access$1300(Landroid/net/PcoTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 440
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    const-string v1, "PcoThreeState setRestrictBackground(true)"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/PcoTracker;->access$6900(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v0}, Landroid/net/PcoTracker;->access$6000(Landroid/net/PcoTracker;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 442
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 446
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/PcoTracker$PcoThreeState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Landroid/net/PcoTracker;->access$7000(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 447
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 473
    :goto_0
    return v0

    .line 450
    :pswitch_0
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v3, "pcoProfileNum"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_0

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v3, "pcoValue"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    const-string v3, "PcoThreeState transitionTo PcoDefaultState!!! "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Landroid/net/PcoTracker;->access$7100(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    const-string v3, "PcoThreeState setRestrictBackground(false)"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Landroid/net/PcoTracker;->access$7200(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v0}, Landroid/net/PcoTracker;->access$6000(Landroid/net/PcoTracker;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 455
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoThreeState :: Enable internet PDN "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$7300(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Landroid/net/PcoTracker;->access$1300(Landroid/net/PcoTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 458
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    iget-object v2, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/PcoTracker;->access$5600(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$7400(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V

    :goto_1
    move v0, v1

    .line 473
    goto :goto_0

    .line 460
    :cond_0
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "pcoProfileNum"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_1

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "pcoValue"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 462
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoThreeState in case of ignore "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$7500(Landroid/net/PcoTracker;Ljava/lang/String;)V

    goto :goto_1

    .line 466
    :cond_1
    iget-object v0, p0, Landroid/net/PcoTracker$PcoThreeState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoThreeState Nothing to do "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$7600(Landroid/net/PcoTracker;Ljava/lang/String;)V

    move v0, v1

    .line 467
    goto/16 :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
