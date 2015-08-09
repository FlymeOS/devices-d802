.class Lcom/android/server/power/LPWGController$4;
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
    .line 517
    iput-object p1, p0, Lcom/android/server/power/LPWGController$4;->this$0:Lcom/android/server/power/LPWGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "positive":Z
    iget-object v1, p0, Lcom/android/server/power/LPWGController$4;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$800(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/ILPWGSensorEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/server/power/LPWGController$4;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$800(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/ILPWGSensorEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/power/ILPWGSensorEventListener;->getData()I

    move-result v1

    # setter for: Lcom/android/server/power/LPWGController;->mLight:I
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$902(I)I

    .line 524
    :cond_0
    sget-object v1, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@mRunnableCheckLight: mLight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/power/LPWGController;->mLight:I
    invoke-static {}, Lcom/android/server/power/LPWGController;->access$900()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mProximity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LPWGController$4;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;
    invoke-static {v3}, Lcom/android/server/power/LPWGController;->access$1000(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/ILPWGSensorEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/power/ILPWGSensorEventListener;->getData()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    # getter for: Lcom/android/server/power/LPWGController;->mLight:I
    invoke-static {}, Lcom/android/server/power/LPWGController;->access$900()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/power/LPWGController$4;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$1000(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/ILPWGSensorEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/power/ILPWGSensorEventListener;->getData()I

    move-result v1

    if-nez v1, :cond_2

    .line 526
    const/4 v0, 0x0

    .line 531
    :goto_0
    sget-object v1, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@mRunnableCheckLight: positive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v1, p0, Lcom/android/server/power/LPWGController$4;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$700(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/DriverNotifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/android/server/power/LPWGController$4;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$700(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/DriverNotifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/power/DriverNotifier;->updateProximitySensorChangedLocked(Z)V

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/LPWGController$4;->this$0:Lcom/android/server/power/LPWGController;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/power/LPWGController;->setLightSensorEnabled(Z)V
    invoke-static {v1, v2}, Lcom/android/server/power/LPWGController;->access$1100(Lcom/android/server/power/LPWGController;Z)V

    .line 536
    return-void

    .line 528
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
