.class Lcom/android/internal/policy/impl/EasyAccessLauncher;
.super Ljava/lang/Object;
.source "EasyAccessLauncher.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final HOME_DOUBLE_INITIATE_INTERVAL_MILLIS:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "EasyAccessLauncher"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEasyAccessEnabled:Z

.field private final mEasyAccessEntry:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHomeDoubleTapped:Z

.field private final mHomeKeyUpRunnable:Ljava/lang/Runnable;

.field private mIsTripleHomeCheckMode:Z

.field private mLastHomeKeyUpTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mEasyAccessEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mIsTripleHomeCheckMode:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeDoubleTapped:Z

    .line 96
    new-instance v0, Lcom/android/internal/policy/impl/EasyAccessLauncher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/EasyAccessLauncher$1;-><init>(Lcom/android/internal/policy/impl/EasyAccessLauncher;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeKeyUpRunnable:Ljava/lang/Runnable;

    .line 105
    new-instance v0, Lcom/android/internal/policy/impl/EasyAccessLauncher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/EasyAccessLauncher$2;-><init>(Lcom/android/internal/policy/impl/EasyAccessLauncher;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mEasyAccessEntry:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/EasyAccessLauncher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/EasyAccessLauncher;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mIsTripleHomeCheckMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/EasyAccessLauncher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/EasyAccessLauncher;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeDoubleTapped:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/EasyAccessLauncher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/EasyAccessLauncher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private consumeEasyAccessLauncher()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 48
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mIsTripleHomeCheckMode:Z

    if-nez v4, :cond_0

    .line 49
    iget-object v3, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeKeyUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mIsTripleHomeCheckMode:Z

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mLastHomeKeyUpTime:J

    .line 76
    :goto_0
    return v2

    .line 54
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 56
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mLastHomeKeyUpTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 57
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeDoubleTapped:Z

    if-eqz v3, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EasyAccessLauncher;->executeHomeKeyDoubleTapped()V

    .line 68
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mLastHomeKeyUpTime:J

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EasyAccessLauncher;->sendHomeKey()V

    goto :goto_1

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeKeyUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mIsTripleHomeCheckMode:Z

    .line 73
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeDoubleTapped:Z

    move v2, v3

    .line 76
    goto :goto_0
.end method

.method private executeHomeKeyDoubleTapped()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeKeyUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mEasyAccessEntry:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mIsTripleHomeCheckMode:Z

    .line 89
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeDoubleTapped:Z

    .line 90
    return-void
.end method

.method private sendHomeKey()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeKeyUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeKeyUpRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeDoubleTapped:Z

    .line 83
    return-void
.end method


# virtual methods
.method isHomeKeyConsumedByEasyAccess()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mEasyAccessEnabled:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EasyAccessLauncher;->consumeEasyAccessLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateEasyAccessSetting(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 93
    const-string v1, "accessibility_easy_access_enabled_category"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher;->mEasyAccessEnabled:Z

    .line 94
    return-void
.end method
