.class public Lcom/android/internal/telephony/soi/WakeLockManager;
.super Ljava/lang/Object;
.source "WakeLockManager.java"


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "WakeLockManager"

.field private static sPartialWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/soi/WakeLockManager;->sPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquire(I)V
    .locals 5
    .param p0, "timeout"    # I

    .prologue
    .line 31
    const-string v2, "WakeLockManager"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    if-nez p0, :cond_0

    .line 35
    const/16 p0, 0x1388

    .line 38
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/soi/WakeLockManager;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 40
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-nez v1, :cond_1

    .line 41
    const-string v2, "WakeLockManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeLock is null :: timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/soi/WakeLockManager;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    .line 47
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    const-string v2, "WakeLockManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeLock :: screen on; no action; timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    const-string v2, "WakeLockManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeLock :: timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method private static getPowerManager()Landroid/os/PowerManager;
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiContext;->getInstance()Lcom/android/internal/telephony/soi/SoiContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/SoiContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 79
    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 83
    :goto_0
    return-object v1

    .line 81
    :cond_0
    const-string v1, "WakeLockManager"

    const-string v2, "getPowerManager() fail SoiContext is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 62
    const-string v1, "WakeLockManager"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/android/internal/telephony/soi/WakeLockManager;->sPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/soi/WakeLockManager;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    .line 66
    .local v0, "pm":Landroid/os/PowerManager;
    if-nez v0, :cond_0

    .line 67
    const-string v1, "WakeLockManager"

    const-string v2, "PowerManager is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v1, 0x0

    .line 73
    :goto_0
    return-object v1

    .line 70
    :cond_0
    const-string v1, "SMSoverIMS"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/soi/WakeLockManager;->sPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    sget-object v1, Lcom/android/internal/telephony/soi/WakeLockManager;->sPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 73
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/soi/WakeLockManager;->sPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method
