.class Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 298
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$900(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Message;

    move-result-object v1

    .line 303
    .local v1, "message":Landroid/os/Message;
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/StateChangeResult;

    .line 304
    .local v2, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    const/4 v0, 0x4

    .line 306
    .local v0, "mMAX_RETRIES_ON_ASSOCIATION_REJECT":I
    sget-boolean v3, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    if-eqz v3, :cond_1

    .line 307
    const/16 v0, 0x8

    .line 310
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$100(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 311
    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to authenticate, disabling network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v4, v2, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    const/4 v5, 0x3

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v3, v4, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1000(Lcom/android/server/wifi/SupplicantStateTracker;II)V

    .line 315
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v3, v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 324
    :cond_2
    :goto_0
    return-void

    .line 317
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$800(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v3

    if-lt v3, v0, :cond_2

    .line 318
    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Association getting rejected, disabling network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v4, v2, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    const/4 v5, 0x4

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v3, v4, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1000(Lcom/android/server/wifi/SupplicantStateTracker;II)V

    .line 322
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v3, v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$802(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    goto :goto_0
.end method
