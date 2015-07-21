.class Lcom/lge/telephony/CTCPreferredNetwork$1;
.super Landroid/content/BroadcastReceiver;
.source "CTCPreferredNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/CTCPreferredNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/CTCPreferredNetwork;


# direct methods
.method constructor <init>(Lcom/lge/telephony/CTCPreferredNetwork;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/telephony/CTCPreferredNetwork$1;->this$0:Lcom/lge/telephony/CTCPreferredNetwork;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/telephony/CTCPreferredNetwork$1;->this$0:Lcom/lge/telephony/CTCPreferredNetwork;

    iget-boolean v2, v2, Lcom/lge/telephony/CTCPreferredNetwork;->isIntentDuplicate:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/telephony/CTCPreferredNetwork$1;->this$0:Lcom/lge/telephony/CTCPreferredNetwork;

    iget-object v2, v2, Lcom/lge/telephony/CTCPreferredNetwork;->ACTION_PREFERRED_NETWORK_SET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/lge/telephony/CTCPreferredNetwork$1;->this$0:Lcom/lge/telephony/CTCPreferredNetwork;

    iget-object v2, v2, Lcom/lge/telephony/CTCPreferredNetwork;->EXTRA_NETWORK_TYPE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 111
    .local v1, "setLteMode":I
    iget-object v2, p0, Lcom/lge/telephony/CTCPreferredNetwork$1;->this$0:Lcom/lge/telephony/CTCPreferredNetwork;

    # invokes: Lcom/lge/telephony/CTCPreferredNetwork;->setTddLteOnly(I)Z
    invoke-static {v2, v1}, Lcom/lge/telephony/CTCPreferredNetwork;->access$000(Lcom/lge/telephony/CTCPreferredNetwork;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    .end local v1    # "setLteMode":I
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local v1    # "setLteMode":I
    :cond_1
    iget-object v2, p0, Lcom/lge/telephony/CTCPreferredNetwork$1;->this$0:Lcom/lge/telephony/CTCPreferredNetwork;

    invoke-virtual {v2, v1}, Lcom/lge/telephony/CTCPreferredNetwork;->setNetworkMode(I)V

    goto :goto_0

    .line 117
    .end local v1    # "setLteMode":I
    :cond_2
    iget-object v2, p0, Lcom/lge/telephony/CTCPreferredNetwork$1;->this$0:Lcom/lge/telephony/CTCPreferredNetwork;

    iget-object v2, v2, Lcom/lge/telephony/CTCPreferredNetwork;->ACTION_PREFERRED_NETWORK_GET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/lge/telephony/CTCPreferredNetwork$1;->this$0:Lcom/lge/telephony/CTCPreferredNetwork;

    invoke-virtual {v2}, Lcom/lge/telephony/CTCPreferredNetwork;->getNetworkMode()V

    goto :goto_0
.end method
