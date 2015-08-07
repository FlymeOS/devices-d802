.class Lcom/android/server/BatteryServiceEx$BatteryObserver$2;
.super Ljava/lang/Object;
.source "BatteryServiceEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryServiceEx$BatteryObserver;->sendIntentLocked()V
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
    .line 352
    iput-object p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v3, -0xf4240

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.BATTERYEX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 357
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 359
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mValidBatteryID:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 360
    sget v1, Lcom/android/server/BatteryServiceEx;->sBootcomplete:I

    if-ne v1, v4, :cond_7

    .line 361
    const-string v1, "com.lge.intent.extra.BATTERY_ID"

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mValidBatteryID:I
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCurrent:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$900(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 367
    const-string v1, "com.lge.intent.extra.BATTERY_CURRENT"

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCurrent:I
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$900(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    :cond_1
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCondition:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 370
    const-string v1, "com.lge.intent.extra.BATTERY_CONDITION"

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCondition:I
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mChargingCurrent:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 373
    const-string v1, "com.lge.intent.extra.CHARGING_CURRENT"

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mChargingCurrent:I
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mExtPwr:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 376
    const-string v1, "EXT_PWR"

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mExtPwr:I
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    :cond_4
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1300(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 379
    const-string v1, "BATTERY_LEVEL"

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1300(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    :cond_5
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1400(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 382
    const-string v1, "BATTERY_STATUS"

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1400(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    :cond_6
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iget-object v1, v1, Lcom/android/server/BatteryServiceEx$BatteryObserver;->this$0:Lcom/android/server/BatteryServiceEx;

    iget-object v1, v1, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v1, :cond_8

    .line 385
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I
    invoke-static {v1, v4}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1502(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I

    .line 393
    :goto_1
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1500(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v1, v3, :cond_d

    .line 394
    const-string v1, "BATTERY_PLUGGED"

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1500(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1500(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-ne v1, v7, :cond_c

    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1600(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-ne v1, v3, :cond_c

    # getter for: Lcom/android/server/BatteryServiceEx;->HW_PATCH:Z
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 396
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientationListener:Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;->enable()V

    .line 397
    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mIntentToForward:Landroid/content/Intent;
    invoke-static {v2, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1902(Lcom/android/server/BatteryServiceEx$BatteryObserver;Landroid/content/Intent;)Landroid/content/Intent;

    .line 398
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iget-object v2, v2, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mSendIntentForWireless:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 399
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 400
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iget-object v2, v2, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mSendIntentForWireless:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    :goto_2
    return-void

    .line 363
    :cond_7
    const-string v1, "com.lge.intent.extra.BATTERY_ID"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 386
    :cond_8
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iget-object v1, v1, Lcom/android/server/BatteryServiceEx$BatteryObserver;->this$0:Lcom/android/server/BatteryServiceEx;

    iget-object v1, v1, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v1, :cond_9

    .line 387
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I
    invoke-static {v1, v6}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1502(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I

    goto :goto_1

    .line 388
    :cond_9
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iget-object v1, v1, Lcom/android/server/BatteryServiceEx$BatteryObserver;->this$0:Lcom/android/server/BatteryServiceEx;

    iget-object v1, v1, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v1, :cond_a

    .line 389
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I
    invoke-static {v1, v7}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1502(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I

    goto/16 :goto_1

    .line 391
    :cond_a
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I
    invoke-static {v1, v5}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1502(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I

    goto/16 :goto_1

    .line 402
    :cond_b
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iget-object v2, v2, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mSendIntentForWireless:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 406
    :cond_c
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientationListener:Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;->disable()V

    .line 407
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iget-object v2, v2, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mSendIntentForWireless:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 410
    :cond_d
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1600(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v1, v3, :cond_11

    .line 411
    const-string v1, "WIRELESS_ALIGNMENT"

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1600(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1600(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v1, v4, :cond_e

    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1600(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-ne v1, v6, :cond_10

    .line 413
    :cond_e
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientationListener:Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;->enable()V

    .line 414
    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mIntentToForward:Landroid/content/Intent;
    invoke-static {v2, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1902(Lcom/android/server/BatteryServiceEx$BatteryObserver;Landroid/content/Intent;)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iget-object v2, v2, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mSendIntentForWireless:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 416
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 417
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iget-object v2, v2, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mSendIntentForWireless:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 419
    :cond_f
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iget-object v2, v2, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mSendIntentForWireless:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 423
    :cond_10
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientationListener:Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;->disable()V

    .line 424
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iget-object v2, v2, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mSendIntentForWireless:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    const-string v1, "orientation"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    :cond_11
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHvdcpType:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v1, v3, :cond_13

    .line 429
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHvdcpType:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v1, v6, :cond_12

    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHvdcpType:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_12

    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHvdcpType:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-ne v1, v7, :cond_15

    .line 430
    :cond_12
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mFastCharging:Z
    invoke-static {v1, v4}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2202(Lcom/android/server/BatteryServiceEx$BatteryObserver;Z)Z

    .line 431
    const-string v1, "HVDCP_TYPE"

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mFastCharging:Z
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    :cond_13
    :goto_3
    # getter for: Lcom/android/server/BatteryServiceEx;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$2300()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 439
    const-string v1, "BatteryServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ACTION_BATTERYEX_CHANGED.  Battery ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mValidBatteryID:I
    invoke-static {v3}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Battery Current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCurrent:I
    invoke-static {v3}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$900(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Battery Condition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCondition:I
    invoke-static {v3}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Battery charging current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mExtPwr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mExtPwr:I
    invoke-static {v3}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Battery level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1300(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Battery status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I
    invoke-static {v3}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1400(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Battery plugged type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I
    invoke-static {v3}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1500(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Wireless Alignment:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I
    invoke-static {v3}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1600(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Fast Charger state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mFastCharging:Z
    invoke-static {v3}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_14
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 433
    :cond_15
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mFastCharging:Z
    invoke-static {v1, v5}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2202(Lcom/android/server/BatteryServiceEx$BatteryObserver;Z)Z

    .line 434
    const-string v1, "HVDCP_TYPE"

    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mFastCharging:Z
    invoke-static {v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3
.end method
