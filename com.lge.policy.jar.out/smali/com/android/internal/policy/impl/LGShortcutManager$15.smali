.class Lcom/android/internal/policy/impl/LGShortcutManager$15;
.super Ljava/lang/Object;
.source "LGShortcutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1070
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$15;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1072
    sget-boolean v2, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mEccMode:Z

    if-eqz v2, :cond_0

    .line 1109
    :goto_0
    return-void

    .line 1075
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager$15;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mRearSideKeyEnable:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$1200(Lcom/android/internal/policy/impl/LGShortcutManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1076
    invoke-static {v4}, Lcom/android/internal/policy/impl/SensorUtil;->setSensorEnabled(Z)V

    .line 1079
    sget-boolean v2, Lcom/android/internal/policy/impl/SensorUtil;->mProximityNear:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/internal/policy/impl/SensorUtil;->mLightCovered:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    if-nez v2, :cond_1

    .line 1080
    const-string v2, "LGShortcutManager"

    const-string v3, "HW_SENSOR : [Key_Exception] No use LongVolumeDown action"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager$15;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->cancelPendingVolumeDownLongKeyChord()V

    goto :goto_0

    .line 1085
    :cond_1
    const-string v2, "LGShortcutManager"

    const-string v3, "volumeDownLongPress triggered!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager$15;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v2

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1088
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager$15;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    iput-boolean v5, v2, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeDownKeyConsumedByLongPress:Z

    .line 1091
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    :goto_1
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1096
    .local v0, "am":Landroid/app/ActivityManagerInternal;
    if-eqz v0, :cond_2

    .line 1097
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->wakingUp()V

    .line 1100
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager$15;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1101
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager$15;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_4

    .line 1102
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager$15;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1103
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager$15;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    .line 1105
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager$15;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->dismiss()V

    .line 1108
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager$15;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->launchVolumeDownLongPressAction()V

    goto/16 :goto_0

    .line 1092
    .end local v0    # "am":Landroid/app/ActivityManagerInternal;
    :catch_0
    move-exception v1

    .line 1093
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LGShortcutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyguardWaitingForActivityDrawn throws "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
