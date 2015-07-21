.class Lcom/lge/uicc/framework/IccNotiControllerVZW$1;
.super Landroid/content/BroadcastReceiver;
.source "IccNotiControllerVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccNotiControllerVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/IccNotiControllerVZW;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW$1;->this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW$1;->this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    # invokes: Lcom/lge/uicc/framework/IccNotiControllerVZW;->updateSimState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$000(Lcom/lge/uicc/framework/IccNotiControllerVZW;Landroid/content/Intent;)V

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW$1;->this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    # getter for: Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSkipUpdate:Z
    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$200(Lcom/lge/uicc/framework/IccNotiControllerVZW;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 148
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW$1;->this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    # invokes: Lcom/lge/uicc/framework/IccNotiControllerVZW;->updateIccNotification()V
    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$300(Lcom/lge/uicc/framework/IccNotiControllerVZW;)V

    .line 153
    :goto_1
    return-void

    .line 131
    :cond_0
    const-string v1, "com.lge.intent.action.VZW_NOTI_SIM_PROVISIONING_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const-string v1, "Receive ACTION_VZW_ACTIVATION_SUCCESS!!!"

    # invokes: Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    const-string v1, "com.lge.intent.action.VZW_NOTI_SIM_PROVISIONING_FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    const-string v1, "Receive ACTION_VZW_ACTIVATION_FAILED!!!"

    # invokes: Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    const-string v1, "com.lge.sim_noti_removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    const-string v1, "Receive ACTION_VZW_DISMISS_SIM_NOTIFICATION!!!"

    # invokes: Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$100(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW$1;->this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    # setter for: Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSkipUpdate:Z
    invoke-static {v1, v3}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$202(Lcom/lge/uicc/framework/IccNotiControllerVZW;Z)Z

    goto :goto_0

    .line 138
    :cond_3
    const-string v1, "com.lge.no_sim_noti_removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    const-string v1, "Receive ACTION_VZW_TAP_NO_SIM_NOTIFICATION!!!"

    # invokes: Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$100(Ljava/lang/String;)V

    .line 140
    const-string v1, "tap_no_sim_noti"

    const-string v2, "yes"

    invoke-static {v1, v2}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW$1;->this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    # setter for: Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSkipUpdate:Z
    invoke-static {v1, v3}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$202(Lcom/lge/uicc/framework/IccNotiControllerVZW;Z)Z

    goto :goto_0

    .line 143
    :cond_4
    const-string v1, "Unknown Intent!!"

    # invokes: Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$100(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW$1;->this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    # setter for: Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSkipUpdate:Z
    invoke-static {v1, v3}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$202(Lcom/lge/uicc/framework/IccNotiControllerVZW;Z)Z

    goto :goto_0

    .line 150
    :cond_5
    const-string v1, "Skip to update notification!!"

    # invokes: Lcom/lge/uicc/framework/IccNotiControllerVZW;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$100(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW$1;->this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    const/4 v2, 0x0

    # setter for: Lcom/lge/uicc/framework/IccNotiControllerVZW;->mSkipUpdate:Z
    invoke-static {v1, v2}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$202(Lcom/lge/uicc/framework/IccNotiControllerVZW;Z)Z

    goto :goto_1
.end method
