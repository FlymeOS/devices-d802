.class Lcom/android/internal/policy/impl/LGShortcutManager$5;
.super Ljava/lang/Object;
.source "LGShortcutManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 823
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 787
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 788
    .local v2, "gesture":F
    const-string v3, "LGShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HW_SENSOR : BasicGestureSensor = mBasicGestureSensor gesture : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isFactoryTestOrAutoTestRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 797
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingEnabled:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$300(Lcom/android/internal/policy/impl/LGShortcutManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingMode:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$400(Lcom/android/internal/policy/impl/LGShortcutManager;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$500(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 798
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 800
    :cond_3
    const-string v3, "LGShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingPkg:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$600(Lcom/android/internal/policy/impl/LGShortcutManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$700(Lcom/android/internal/policy/impl/LGShortcutManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 803
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_5

    .line 805
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getRingerMode()I

    move-result v3

    if-eqz v3, :cond_4

    .line 806
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    const-wide/16 v4, 0x12c

    iget-object v6, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/systemservice/core/VolumeVibratorManager;->vibrate(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingPkg:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$600(Lcom/android/internal/policy/impl/LGShortcutManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager$5;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$700(Lcom/android/internal/policy/impl/LGShortcutManager;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/policy/impl/LGShortcutManager;->startActivityByPackageInfo(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$800(Lcom/android/internal/policy/impl/LGShortcutManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 809
    :catch_0
    move-exception v1

    .line 810
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "LGShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 813
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string v3, "LGShortcutManager"

    const-string v4, "Unable to find IAudioService for media key event."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
