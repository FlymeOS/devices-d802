.class Lcom/android/server/power/LPWGController$5;
.super Ljava/lang/Object;
.source "LPWGController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LPWGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LPWGController;


# direct methods
.method constructor <init>(Lcom/android/server/power/LPWGController;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/server/power/LPWGController$5;->this$0:Lcom/android/server/power/LPWGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 542
    iget-object v0, p0, Lcom/android/server/power/LPWGController$5;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$800(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/ILPWGSensorEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/server/power/LPWGController$5;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$800(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/ILPWGSensorEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/ILPWGSensorEventListener;->getData()I

    move-result v0

    # setter for: Lcom/android/server/power/LPWGController;->mLight:I
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$902(I)I

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/LPWGController$5;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$1000(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/ILPWGSensorEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/ILPWGSensorEventListener;->getData()I

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/android/server/power/LPWGController;->mLight:I
    invoke-static {}, Lcom/android/server/power/LPWGController;->access$900()I

    move-result v0

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/server/power/LPWGController$5;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$1200(Lcom/android/server/power/LPWGController;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 549
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToSleep : proximity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LPWGController$5;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;
    invoke-static {v2}, Lcom/android/server/power/LPWGController;->access$1000(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/ILPWGSensorEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/power/ILPWGSensorEventListener;->getData()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_1
    # getter for: Lcom/android/server/power/LPWGController;->mUsingLightSensor:Z
    invoke-static {}, Lcom/android/server/power/LPWGController;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/android/server/power/LPWGController$5;->this$0:Lcom/android/server/power/LPWGController;

    # invokes: Lcom/android/server/power/LPWGController;->setLightSensorEnabled(Z)V
    invoke-static {v0, v4}, Lcom/android/server/power/LPWGController;->access$1100(Lcom/android/server/power/LPWGController;Z)V

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/LPWGController$5;->this$0:Lcom/android/server/power/LPWGController;

    # invokes: Lcom/android/server/power/LPWGController;->setProximitySensorEnabled(Z)V
    invoke-static {v0, v4}, Lcom/android/server/power/LPWGController;->access$1400(Lcom/android/server/power/LPWGController;Z)V

    .line 557
    return-void
.end method
