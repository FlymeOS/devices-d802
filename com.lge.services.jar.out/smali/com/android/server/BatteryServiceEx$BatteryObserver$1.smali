.class Lcom/android/server/BatteryServiceEx$BatteryObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryServiceEx$BatteryObserver;-><init>(Lcom/android/server/BatteryServiceEx;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

.field final synthetic val$this$0:Lcom/android/server/BatteryServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;Lcom/android/server/BatteryServiceEx;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$1;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iput-object p2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$1;->val$this$0:Lcom/android/server/BatteryServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 202
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$1;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/BatteryServiceEx$BatteryObserver$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver$1$1;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver$1;)V

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    :cond_0
    return-void
.end method
