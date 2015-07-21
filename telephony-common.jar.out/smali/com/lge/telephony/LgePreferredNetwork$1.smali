.class Lcom/lge/telephony/LgePreferredNetwork$1;
.super Landroid/content/BroadcastReceiver;
.source "LgePreferredNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/LgePreferredNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/LgePreferredNetwork;


# direct methods
.method constructor <init>(Lcom/lge/telephony/LgePreferredNetwork;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/telephony/LgePreferredNetwork$1;->this$0:Lcom/lge/telephony/LgePreferredNetwork;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/telephony/LgePreferredNetwork$1;->this$0:Lcom/lge/telephony/LgePreferredNetwork;

    iget-boolean v2, v2, Lcom/lge/telephony/LgePreferredNetwork;->isIntentDuplicate:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/telephony/LgePreferredNetwork$1;->this$0:Lcom/lge/telephony/LgePreferredNetwork;

    iget-object v2, v2, Lcom/lge/telephony/LgePreferredNetwork;->ACTION_PREFERRED_NETWORK_SET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/lge/telephony/LgePreferredNetwork$1;->this$0:Lcom/lge/telephony/LgePreferredNetwork;

    iget-object v2, v2, Lcom/lge/telephony/LgePreferredNetwork;->EXTRA_NETWORK_TYPE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 45
    .local v1, "setLteMode":I
    iget-object v2, p0, Lcom/lge/telephony/LgePreferredNetwork$1;->this$0:Lcom/lge/telephony/LgePreferredNetwork;

    invoke-virtual {v2, v1}, Lcom/lge/telephony/LgePreferredNetwork;->setNetworkMode(I)V

    .line 50
    .end local v1    # "setLteMode":I
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/lge/telephony/LgePreferredNetwork$1;->this$0:Lcom/lge/telephony/LgePreferredNetwork;

    iget-object v2, v2, Lcom/lge/telephony/LgePreferredNetwork;->ACTION_PREFERRED_NETWORK_GET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/lge/telephony/LgePreferredNetwork$1;->this$0:Lcom/lge/telephony/LgePreferredNetwork;

    invoke-virtual {v2}, Lcom/lge/telephony/LgePreferredNetwork;->getNetworkMode()V

    goto :goto_0
.end method
