.class public Lcom/lge/camera/postview/PostViewBatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PostViewBatteryReceiver.java"


# instance fields
.field private mGet:Lcom/lge/camera/postview/ReceiverFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/postview/ReceiverFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/postview/ReceiverFunction;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 26
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 27
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    const-string v3, "level"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 35
    .local v1, "charged":I
    if-eq v1, v4, :cond_0

    if-gt v1, v6, :cond_0

    .line 36
    invoke-static {v5}, Lcom/lge/camera/util/CheckStatusManager;->setEnterCheckComplete(Z)V

    .line 37
    iget-object v3, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v3, :cond_0

    .line 38
    iget-object v3, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    invoke-interface {v3}, Lcom/lge/camera/postview/ReceiverFunction;->finish()V

    .line 50
    .end local v1    # "charged":I
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const-string v3, "level"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 43
    .local v2, "level":I
    if-eq v2, v4, :cond_0

    if-gt v2, v6, :cond_0

    .line 44
    invoke-static {v5}, Lcom/lge/camera/util/CheckStatusManager;->setEnterCheckComplete(Z)V

    .line 45
    iget-object v3, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    invoke-interface {v3}, Lcom/lge/camera/postview/ReceiverFunction;->finish()V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewBatteryReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 56
    :cond_0
    return-void
.end method
