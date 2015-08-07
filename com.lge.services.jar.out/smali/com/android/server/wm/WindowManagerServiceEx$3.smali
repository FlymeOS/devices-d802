.class Lcom/android/server/wm/WindowManagerServiceEx$3;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerServiceEx;)V
    .locals 0

    .prologue
    .line 2711
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceEx$3;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2714
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2715
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx$3;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceEx;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_1

    .line 2728
    :cond_0
    :goto_0
    return-void

    .line 2719
    :cond_1
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2720
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2721
    .local v1, "callStateRinging":Z
    if-eqz v1, :cond_0

    .line 2723
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx$3;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2724
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx$3;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceEx;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 2725
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
