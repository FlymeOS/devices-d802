.class Lcom/android/server/connectivity/NetworkMonitor$DefaultState$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/NetworkMonitor$DefaultState;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor$DefaultState;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 340
    const-string v1, "extra_is_captive_portal"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 341
    .local v0, "isCaptive":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v3, 0x82014

    invoke-virtual {v2, v3, v0}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(II)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(Landroid/os/Message;)V

    .line 342
    return-void
.end method
