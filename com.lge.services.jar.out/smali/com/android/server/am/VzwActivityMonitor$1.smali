.class Lcom/android/server/am/VzwActivityMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "VzwActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VzwActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isOFFHook:Z

.field final synthetic this$0:Lcom/android/server/am/VzwActivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/am/VzwActivityMonitor;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/am/VzwActivityMonitor$1;->this$0:Lcom/android/server/am/VzwActivityMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/VzwActivityMonitor$1;->isOFFHook:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "callState":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/server/am/VzwActivityMonitor$1;->isOFFHook:Z

    if-nez v2, :cond_2

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    iput-boolean v4, p0, Lcom/android/server/am/VzwActivityMonitor$1;->isOFFHook:Z

    .line 81
    iget-object v2, p0, Lcom/android/server/am/VzwActivityMonitor$1;->this$0:Lcom/android/server/am/VzwActivityMonitor;

    # invokes: Lcom/android/server/am/VzwActivityMonitor;->is1XSRLTEMode()Z
    invoke-static {v2}, Lcom/android/server/am/VzwActivityMonitor;->access$000(Lcom/android/server/am/VzwActivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    .end local v1    # "callState":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v1    # "callState":Ljava/lang/String;
    :cond_1
    const-string v2, "VzwActivityMonitor"

    const-string v3, "1X SRLTE CALL START"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/android/server/am/VzwActivityMonitor$1;->this$0:Lcom/android/server/am/VzwActivityMonitor;

    iput-boolean v4, v2, Lcom/android/server/am/VzwActivityMonitor;->is1XSRLTE:Z

    goto :goto_0

    .line 86
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/VzwActivityMonitor$1;->isOFFHook:Z

    if-ne v2, v4, :cond_0

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iput-boolean v3, p0, Lcom/android/server/am/VzwActivityMonitor$1;->isOFFHook:Z

    .line 88
    iget-object v2, p0, Lcom/android/server/am/VzwActivityMonitor$1;->this$0:Lcom/android/server/am/VzwActivityMonitor;

    iput-boolean v3, v2, Lcom/android/server/am/VzwActivityMonitor;->is1XSRLTE:Z

    goto :goto_0
.end method
