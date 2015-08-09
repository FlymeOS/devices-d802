.class Lcom/android/server/power/KnockOnSensorListener;
.super Ljava/lang/Object;
.source "KnockOnSensorListener.java"

# interfaces
.implements Lcom/android/server/power/ILPWGSensorEventListener;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCoverOpened:Z

.field private final mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

.field private mMultiUserKnockCode:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

.field private mTimeToSleep:J

.field private mUsingLightSensor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/KnockOnSensorListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/internal/widget/LockPatternUtilsEx;ZLcom/android/server/power/ILPWGSensorEventListener;Lcom/android/server/power/ILPWGSensorEventListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManage"    # Landroid/os/PowerManager;
    .param p3, "lockPatternUtilsEx"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p4, "usingLightSensor"    # Z
    .param p5, "lightSensorListener"    # Lcom/android/server/power/ILPWGSensorEventListener;
    .param p6, "proximitySensorListener"    # Lcom/android/server/power/ILPWGSensorEventListener;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/android/server/power/KnockOnSensorListener;->mMultiUserKnockCode:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/server/power/KnockOnSensorListener;->mUsingLightSensor:Z

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/KnockOnSensorListener;->mCoverOpened:Z

    .line 41
    iput-object p1, p0, Lcom/android/server/power/KnockOnSensorListener;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/server/power/KnockOnSensorListener;->mPowerManager:Landroid/os/PowerManager;

    .line 43
    iput-object p3, p0, Lcom/android/server/power/KnockOnSensorListener;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    .line 44
    iput-boolean p4, p0, Lcom/android/server/power/KnockOnSensorListener;->mUsingLightSensor:Z

    .line 45
    iput-object p5, p0, Lcom/android/server/power/KnockOnSensorListener;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    .line 46
    iput-object p6, p0, Lcom/android/server/power/KnockOnSensorListener;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    .line 48
    iget-object v1, p0, Lcom/android/server/power/KnockOnSensorListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/lge/internal/R$bool;->config_multiuser_knockcode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/KnockOnSensorListener;->mMultiUserKnockCode:Z

    .line 50
    return-void
.end method

.method private getCurrentUserId()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 151
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 152
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    return v2

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getFailedAttempts()I
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/server/power/KnockOnSensorListener;->getCurrentUserId()I

    move-result v0

    .line 130
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/power/KnockOnSensorListener;->getFailedAttempts(I)I

    move-result v1

    return v1
.end method

.method private getFailedAttempts(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "attempts":I
    iget-object v2, p0, Lcom/android/server/power/KnockOnSensorListener;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v2, :cond_0

    .line 136
    iget-boolean v2, p0, Lcom/android/server/power/KnockOnSensorListener;->mMultiUserKnockCode:Z

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/server/power/KnockOnSensorListener;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/KnockOnSensorListener;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtilsEx;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 140
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    goto :goto_0
.end method

.method private sendIntent(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "result"    # Z

    .prologue
    .line 102
    const/4 v0, 0x1

    .line 103
    .local v0, "wakeupReason":I
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 104
    const/16 v0, 0x100

    .line 106
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/power/KnockOnSensorListener;->sendIntent(IZZI)V

    .line 107
    return-void
.end method

.method private sendIntent(IZZI)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "result"    # Z
    .param p3, "notify"    # Z
    .param p4, "wakeupReason"    # I

    .prologue
    .line 110
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/KnockOnSensorListener;->sendIntent(IZZILjava/util/ArrayList;)V

    .line 111
    return-void
.end method

.method private sendIntent(IZZILjava/util/ArrayList;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "result"    # Z
    .param p3, "notify"    # Z
    .param p4, "wakeupReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.ACTION_KNOCK_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "knockOnIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    const-string v1, "com.lge.intent.extra.LPWG_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v1, "com.lge.intent.extra.LPWG_RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    const-string v1, "com.lge.intent.extra.LPWG_FAILED_ATTEMPTS"

    invoke-direct {p0}, Lcom/android/server/power/KnockOnSensorListener;->getFailedAttempts()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v1, "com.lge.intent.extra.LPWG_NOTIFY_USER"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    const-string v1, "com.lge.intent.extra.LPWG_WAKEUP_REASON"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v1, "com.lge.intent.extra.LPWG_MATCHED_USERS"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/android/server/power/KnockOnSensorListener;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 126
    return-void
.end method

.method private setLightSensorEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/power/KnockOnSensorListener;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    if-eqz v0, :cond_0

    .line 170
    if-eqz p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/server/power/KnockOnSensorListener;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0}, Lcom/android/server/power/ILPWGSensorEventListener;->enable()V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/KnockOnSensorListener;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0}, Lcom/android/server/power/ILPWGSensorEventListener;->disable()V

    goto :goto_0
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/power/KnockOnSensorListener;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    if-eqz v0, :cond_0

    .line 160
    if-eqz p1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/server/power/KnockOnSensorListener;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0}, Lcom/android/server/power/ILPWGSensorEventListener;->enable()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/KnockOnSensorListener;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0}, Lcom/android/server/power/ILPWGSensorEventListener;->disable()V

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public getData()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 55
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x1

    .line 59
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const v3, 0x1dcbd6f6

    if-ne v2, v3, :cond_1

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/KnockOnSensorListener;->mTimeToSleep:J

    sub-long v0, v2, v4

    .line 64
    .local v0, "mTimeAfterSleep":J
    sget-object v2, Lcom/android/server/power/KnockOnSensorListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnockOnonSensorChanged: isScreenOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/KnockOnSensorListener;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", TimeAfterSleep = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/android/server/power/KnockOnSensorListener;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 68
    invoke-direct {p0, v6, v6}, Lcom/android/server/power/KnockOnSensorListener;->sendIntent(IZ)V

    .line 69
    iget-object v2, p0, Lcom/android/server/power/KnockOnSensorListener;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 70
    iget-boolean v2, p0, Lcom/android/server/power/KnockOnSensorListener;->mCoverOpened:Z

    if-eqz v2, :cond_1

    .line 71
    iget-boolean v2, p0, Lcom/android/server/power/KnockOnSensorListener;->mUsingLightSensor:Z

    if-eqz v2, :cond_0

    .line 72
    invoke-direct {p0, v6}, Lcom/android/server/power/KnockOnSensorListener;->setLightSensorEnabled(Z)V

    .line 74
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/server/power/KnockOnSensorListener;->setProximitySensorEnabled(Z)V

    .line 79
    .end local v0    # "mTimeAfterSleep":J
    :cond_1
    return-void
.end method

.method public updateState(Lcom/android/server/power/LPWGStateUpdatable;)V
    .locals 4
    .param p1, "knockStateUpdatable"    # Lcom/android/server/power/LPWGStateUpdatable;

    .prologue
    .line 96
    move-object v0, p1

    .line 97
    .local v0, "state":Lcom/android/server/power/LPWGStateUpdatable;
    invoke-interface {v0}, Lcom/android/server/power/LPWGStateUpdatable;->getTimeToSleep()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/KnockOnSensorListener;->mTimeToSleep:J

    .line 98
    invoke-interface {v0}, Lcom/android/server/power/LPWGStateUpdatable;->getCoverState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/KnockOnSensorListener;->mCoverOpened:Z

    .line 99
    return-void
.end method
