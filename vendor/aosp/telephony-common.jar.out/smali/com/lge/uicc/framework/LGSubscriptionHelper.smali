.class public Lcom/lge/uicc/framework/LGSubscriptionHelper;
.super Landroid/os/Handler;
.source "LGSubscriptionHelper.java"


# static fields
.field private static final EVENT_SUB_STATE_CHANGED:I = 0x1

.field private static sInstance:Lcom/lge/uicc/framework/LGSubscriptionHelper;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    const-string v0, "sub_state"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 33
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LGSubHelper] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logd(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LGSubHelper] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private logp(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LGSubHelper] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logp(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private sendSubscriptionDeactivationInfo(IZ)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "sub_deact"    # Z

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 62
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.SIM_DEACTIVATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    :goto_1
    const-string v1, "deactivation_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-static {v0}, Lcom/lge/uicc/framework/IccTools;->broadcastStickyIntent(Landroid/content/Intent;)V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSubscriptionChangeInfo : slotId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sub_deact= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/uicc/framework/LGSubscriptionHelper;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.SIM_DEACTIVATION_SLOT2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 68
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.SIM_DEACTIVATION_SLOT3"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static setup()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/lge/uicc/framework/LGSubscriptionHelper;->sInstance:Lcom/lge/uicc/framework/LGSubscriptionHelper;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/lge/uicc/framework/LGSubscriptionHelper;

    invoke-direct {v0}, Lcom/lge/uicc/framework/LGSubscriptionHelper;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/LGSubscriptionHelper;->sInstance:Lcom/lge/uicc/framework/LGSubscriptionHelper;

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 37
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 39
    :pswitch_0
    const-string v4, "EVENT_SUB_STATE_CHANGED"

    invoke-direct {p0, v4}, Lcom/lge/uicc/framework/LGSubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 41
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 42
    .local v2, "slotId":I
    const-string v4, "sub_state"

    invoke-static {v4, v2}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 43
    .local v3, "state":I
    const-string v4, "card_state"

    invoke-static {v4, v2}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "card_state":Ljava/lang/String;
    const-string v4, "PRESENT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    if-ne v3, v5, :cond_1

    .line 46
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/lge/uicc/framework/LGSubscriptionHelper;->sendSubscriptionDeactivationInfo(IZ)V

    goto :goto_0

    .line 47
    :cond_1
    if-nez v3, :cond_0

    .line 48
    invoke-direct {p0, v2, v5}, Lcom/lge/uicc/framework/LGSubscriptionHelper;->sendSubscriptionDeactivationInfo(IZ)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
