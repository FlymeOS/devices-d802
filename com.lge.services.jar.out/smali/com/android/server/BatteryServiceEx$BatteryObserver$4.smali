.class Lcom/android/server/BatteryServiceEx$BatteryObserver$4;
.super Ljava/lang/Object;
.source "BatteryServiceEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryServiceEx$BatteryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$4;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 587
    const-string v0, "BatteryServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSendIntentForWireless : Orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$4;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientation:I
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Wireless Alignment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$4;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1600(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$4;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientationListener:Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;
    invoke-static {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;->disable()V

    .line 589
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$4;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mIntentToForward:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1900(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orientation"

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$4;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientation:I
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$4;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$4;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mIntentToForward:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1900(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 591
    return-void
.end method
