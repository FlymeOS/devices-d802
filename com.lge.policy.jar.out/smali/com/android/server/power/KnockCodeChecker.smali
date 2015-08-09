.class public Lcom/android/server/power/KnockCodeChecker;
.super Ljava/lang/Object;
.source "KnockCodeChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;,
        Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;,
        Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NOTUSER_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private WAKEUP_FAILED_ATTEMPTS:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mKidModeKnockCode:Z

.field private mKnockCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/KnockCodeBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

.field private mMultiUserKnockCode:Z

.field private final mSettingUserInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserSwitchObserver:Landroid/app/IUserSwitchObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;

    .line 28
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/KnockCodeChecker;->NOTUSER_DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/widget/LockPatternUtilsEx;Landroid/os/UserManager;Landroid/app/IUserSwitchObserver;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "lockPatternUtilsEx"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p4, "userManage"    # Landroid/os/UserManager;
    .param p5, "userSwitchObserver"    # Landroid/app/IUserSwitchObserver;
    .param p7, "wakeup_failed_attempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/android/internal/widget/LockPatternUtilsEx;",
            "Landroid/os/UserManager;",
            "Landroid/app/IUserSwitchObserver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p6, "settingUserInfoint":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/power/KnockCodeChecker;->WAKEUP_FAILED_ATTEMPTS:I

    .line 48
    iput-object p1, p0, Lcom/android/server/power/KnockCodeChecker;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/server/power/KnockCodeChecker;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object p3, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    .line 51
    iput-object p4, p0, Lcom/android/server/power/KnockCodeChecker;->mUserManager:Landroid/os/UserManager;

    .line 52
    iput-object p5, p0, Lcom/android/server/power/KnockCodeChecker;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    .line 53
    iput-object p6, p0, Lcom/android/server/power/KnockCodeChecker;->mSettingUserInfo:Ljava/util/ArrayList;

    .line 54
    iput p7, p0, Lcom/android/server/power/KnockCodeChecker;->WAKEUP_FAILED_ATTEMPTS:I

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    .line 58
    iget-object v1, p0, Lcom/android/server/power/KnockCodeChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/lge/internal/R$bool;->config_multiuser_knockcode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/KnockCodeChecker;->mMultiUserKnockCode:Z

    .line 60
    sget v1, Lcom/lge/internal/R$bool;->config_kidmode_knockcode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/KnockCodeChecker;->mKidModeKnockCode:Z

    .line 62
    new-instance v1, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;

    invoke-direct {v1, p0}, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;-><init>(Lcom/android/server/power/KnockCodeChecker;)V

    invoke-virtual {p0, v1}, Lcom/android/server/power/KnockCodeChecker;->registerKnockCodeBehavior(Lcom/android/server/power/KnockCodeBehavior;)V

    .line 63
    new-instance v1, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;

    invoke-direct {v1, p0}, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;-><init>(Lcom/android/server/power/KnockCodeChecker;)V

    invoke-virtual {p0, v1}, Lcom/android/server/power/KnockCodeChecker;->registerKnockCodeBehavior(Lcom/android/server/power/KnockCodeBehavior;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/KnockCodeChecker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/KnockCodeChecker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/KnockCodeChecker;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/server/power/KnockCodeChecker;->mMultiUserKnockCode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/power/KnockCodeChecker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/KnockCodeChecker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mSettingUserInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/server/power/KnockCodeChecker;->NOTUSER_DEBUG:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/KnockCodeChecker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/KnockCodeChecker;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/server/power/KnockCodeChecker;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/power/KnockCodeChecker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/KnockCodeChecker;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/server/power/KnockCodeChecker;->registerUserSwitchObserver()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/KnockCodeChecker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/KnockCodeChecker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/KnockCodeChecker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/KnockCodeChecker;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/server/power/KnockCodeChecker;->mKidModeKnockCode:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/KnockCodeChecker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/KnockCodeChecker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCurrentUserId()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 102
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 103
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    return v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private registerUserSwitchObserver()V
    .locals 3

    .prologue
    .line 228
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/KnockCodeChecker;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t register user switch observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/String;)Lcom/android/server/power/KnockCodeBehavior;
    .locals 5
    .param p1, "passwords"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v2, 0x0

    .line 85
    .local v2, "kcb":Lcom/android/server/power/KnockCodeBehavior;
    iget-object v3, p0, Lcom/android/server/power/KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/android/server/power/KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/KnockCodeBehavior;

    .line 87
    .local v1, "kc":Lcom/android/server/power/KnockCodeBehavior;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/server/power/KnockCodeBehavior;->checkPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    move-object v2, v1

    .line 93
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "kc":Lcom/android/server/power/KnockCodeBehavior;
    :cond_1
    if-nez v2, :cond_2

    .line 94
    sget-object v3, Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;

    const-string v4, "no matched passwords"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    return-object v2
.end method

.method getFailedAttempts()I
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/server/power/KnockCodeChecker;->getCurrentUserId()I

    move-result v0

    .line 160
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/power/KnockCodeChecker;->getFailedAttempts(I)I

    move-result v1

    return v1
.end method

.method getFailedAttempts(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "attempts":I
    iget-object v2, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v2, :cond_0

    .line 166
    iget-boolean v2, p0, Lcom/android/server/power/KnockCodeChecker;->mMultiUserKnockCode:Z

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtilsEx;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 170
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    goto :goto_0
.end method

.method getUsersHaveKnockCode()I
    .locals 6

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "num":I
    iget-object v3, p0, Lcom/android/server/power/KnockCodeChecker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 147
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v2, :cond_1

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v3, :cond_0

    sget-object v4, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockScreenType(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    move-result-object v3

    if-ne v4, v3, :cond_0

    .line 151
    add-int/lit8 v1, v1, 0x1

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public hasBootCompletedIntentPosted()Z
    .locals 3

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "ret":Z
    const-string v1, "1"

    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 250
    return v0
.end method

.method hasCurrentUserKnockCode()Z
    .locals 4

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/server/power/KnockCodeChecker;->getCurrentUserId()I

    move-result v0

    .line 183
    .local v0, "id":I
    sget-object v2, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    iget-object v3, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockScreenType(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 184
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 183
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabledKidsModeSetting()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 254
    const/4 v3, 0x0

    .line 255
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 256
    .local v1, "other":Landroid/content/Context;
    const/4 v2, 0x0

    .line 258
    .local v2, "pref":Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/KnockCodeChecker;->mContext:Landroid/content/Context;

    const-string v5, "com.lge.launcher2"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_0

    .line 260
    const-string v4, "show_the_kids_guide"

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 267
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 268
    const-string v4, "plushome_mode_enable"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 270
    :cond_1
    return v3

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot find package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isVerifyFailedAttempts()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "verified":Z
    invoke-virtual {p0}, Lcom/android/server/power/KnockCodeChecker;->getUsersHaveKnockCode()I

    move-result v0

    .line 132
    .local v0, "num":I
    iget-boolean v2, p0, Lcom/android/server/power/KnockCodeChecker;->mMultiUserKnockCode:Z

    if-eqz v2, :cond_1

    if-gt v0, v3, :cond_0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/KnockCodeChecker;->hasCurrentUserKnockCode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    :cond_0
    sget-object v2, Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;

    const-string v3, "bypass verifying failed attempts"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x1

    .line 138
    :goto_0
    return v1

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/KnockCodeChecker;->verifyFailedAttempts()Z

    move-result v1

    goto :goto_0
.end method

.method keyguardDone()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 215
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    sget-object v0, Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;

    const-string v1, "error : while getting keyguardservice!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerKnockCodeBehavior(Lcom/android/server/power/KnockCodeBehavior;)V
    .locals 1
    .param p1, "kc"    # Lcom/android/server/power/KnockCodeBehavior;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method reportFailedPasswordAttempt()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v0, :cond_0

    .line 203
    iget-boolean v0, p0, Lcom/android/server/power/KnockCodeChecker;->mMultiUserKnockCode:Z

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-direct {p0}, Lcom/android/server/power/KnockCodeChecker;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtilsEx;->reportFailedPasswordAttempt(I)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->reportFailedPasswordAttempt()V

    goto :goto_0
.end method

.method reportSuccessfulPasswordAttempt()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/power/KnockCodeChecker;->reportSuccessfulPasswordAttempt(I)V

    .line 189
    return-void
.end method

.method reportSuccessfulPasswordAttempt(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v0, :cond_0

    .line 193
    iget-boolean v0, p0, Lcom/android/server/power/KnockCodeChecker;->mMultiUserKnockCode:Z

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->reportSuccessfulPasswordAttempt(I)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->reportSuccessfulPasswordAttempt()V

    goto :goto_0
.end method

.method public setKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 0
    .param p1, "keyguard"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/server/power/KnockCodeChecker;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 224
    return-void
.end method

.method switchUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 235
    invoke-static {}, Lcom/android/server/power/LPWGUtils;->isSwitchUserAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    sget-object v1, Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;

    const-string v2, "cannot switch user in call"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    sget-object v1, Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchUser:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t switch user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterKnockCodeBehavior(Lcom/android/server/power/KnockCodeBehavior;)V
    .locals 1
    .param p1, "kc"    # Lcom/android/server/power/KnockCodeBehavior;

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker;->mKnockCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method verifyFailedAttempts()Z
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/power/KnockCodeChecker;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/KnockCodeChecker;->verifyFailedAttempts(I)Z

    move-result v0

    return v0
.end method

.method verifyFailedAttempts(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "verified":Z
    invoke-virtual {p0, p1}, Lcom/android/server/power/KnockCodeChecker;->getFailedAttempts(I)I

    move-result v0

    .line 119
    .local v0, "failedAttempts":I
    iget v2, p0, Lcom/android/server/power/KnockCodeChecker;->WAKEUP_FAILED_ATTEMPTS:I

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    .line 120
    :goto_0
    sget-object v2, Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verity failed attempts ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v1

    .line 119
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
