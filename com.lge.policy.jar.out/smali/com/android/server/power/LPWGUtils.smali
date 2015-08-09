.class public Lcom/android/server/power/LPWGUtils;
.super Ljava/lang/Object;
.source "LPWGUtils.java"


# static fields
.field private static final DBG:Z = true

.field private static final NOTUSER_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "LPWGController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLpwgState:Lcom/android/server/power/LPWGStateUpdatable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/LPWGUtils;->NOTUSER_DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/server/power/LPWGStateUpdatable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p3, "lpwgState"    # Lcom/android/server/power/LPWGStateUpdatable;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/server/power/LPWGUtils;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/android/server/power/LPWGUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 23
    iput-object p3, p0, Lcom/android/server/power/LPWGUtils;->mLpwgState:Lcom/android/server/power/LPWGStateUpdatable;

    .line 24
    return-void
.end method

.method public static isInCall()Z
    .locals 5

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "ret":Z
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 68
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 70
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 71
    const/4 v1, 0x1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "LPWGController"

    const-string v4, "RemoteException calling ITelephony#isIdle"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isInVtCall()Z
    .locals 6

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "ret":Z
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 84
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 86
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 87
    .local v3, "vtCallState":I
    const/16 v4, 0x65

    if-eq v3, v4, :cond_0

    const/16 v4, 0x66

    if-ne v3, v4, :cond_1

    .line 89
    :cond_0
    const/4 v1, 0x1

    .line 95
    .end local v3    # "vtCallState":I
    :cond_1
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "LPWGController"

    const-string v5, "RemoteException when getting vt call state"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isSwitchUserAvailable()Z
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x1

    .line 28
    .local v0, "ret":Z
    invoke-static {}, Lcom/android/server/power/LPWGUtils;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/power/LPWGUtils;->isInVtCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 31
    :cond_1
    return v0
.end method


# virtual methods
.method public isSwipeDownWakeupAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v2, p0, Lcom/android/server/power/LPWGUtils;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 38
    .local v0, "mPowerManager":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    :goto_0
    return v1

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/LPWGUtils;->mLpwgState:Lcom/android/server/power/LPWGStateUpdatable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/LPWGUtils;->mLpwgState:Lcom/android/server/power/LPWGStateUpdatable;

    invoke-interface {v2}, Lcom/android/server/power/LPWGStateUpdatable;->getCoverState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    const-string v2, "LPWGController"

    const-string v3, "cover closed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/LPWGUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/LPWGUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    const-string v2, "LPWGController"

    const-string v3, "lockscreen disabled!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {}, Lcom/android/server/power/LPWGUtils;->isInCall()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/server/power/LPWGUtils;->isInVtCall()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    :cond_3
    const-string v2, "LPWGController"

    const-string v3, "device is in call or vt call"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method
