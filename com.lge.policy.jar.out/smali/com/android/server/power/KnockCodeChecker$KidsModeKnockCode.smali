.class public Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;
.super Ljava/lang/Object;
.source "KnockCodeChecker.java"

# interfaces
.implements Lcom/android/server/power/KnockCodeBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockCodeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KidsModeKnockCode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/KnockCodeChecker;


# direct methods
.method public constructor <init>(Lcom/android/server/power/KnockCodeChecker;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    return-void
.end method

.method private launchKidsMode()V
    .locals 5

    .prologue
    .line 451
    # getter for: Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "launch kids mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const/high16 v2, 0x10810000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 458
    const-string v2, "com.lge.launcher2"

    const-string v3, "com.lge.launcher2.plushome.kidshome.LGKidsHome"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    iget-object v2, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/KnockCodeChecker;->access$900(Lcom/android/server/power/KnockCodeChecker;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/KnockCodeChecker;->access$900(Lcom/android/server/power/KnockCodeChecker;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendBroadcast fail(com.lge.lockscreen.intent.action.START_KIDSHOME)"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .locals 5
    .param p1, "passwords"    # Ljava/lang/String;

    .prologue
    .line 416
    const/4 v2, 0x0

    .line 417
    .local v2, "matched":Z
    iget-object v3, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v3}, Lcom/android/server/power/KnockCodeChecker;->hasBootCompletedIntentPosted()Z

    move-result v0

    .line 418
    .local v0, "isBootCompleted":Z
    iget-object v3, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v3}, Lcom/android/server/power/KnockCodeChecker;->isEnabledKidsModeSetting()Z

    move-result v1

    .line 419
    .local v1, "isKidsModeEnabled":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 420
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v3}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v3}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v3

    const-string v4, "unlock_set_knockcode"

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtilsEx;->savedKidsModeFileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v3}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v3

    const-string v4, "unlock_set_knockcode"

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/widget/LockPatternUtilsEx;->checkPasswordsKidsMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    const/4 v2, 0x1

    .line 429
    :cond_0
    :goto_0
    return v2

    .line 427
    :cond_1
    # getter for: Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "could\'t check kidsmode passwords"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMatchedUsers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public launch(I)I
    .locals 2
    .param p1, "wakeUpReason"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mKidModeKnockCode:Z
    invoke-static {v0}, Lcom/android/server/power/KnockCodeChecker;->access$800(Lcom/android/server/power/KnockCodeChecker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    const-string v0, "service.plushome.currenthome"

    const-string v1, "kids"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v0}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v0}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->changeLockSettingForKidsMode()V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v0}, Lcom/android/server/power/KnockCodeChecker;->reportSuccessfulPasswordAttempt()V

    .line 440
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v0}, Lcom/android/server/power/KnockCodeChecker;->keyguardDone()V

    .line 442
    invoke-direct {p0}, Lcom/android/server/power/KnockCodeChecker$KidsModeKnockCode;->launchKidsMode()V

    .line 447
    :goto_0
    return p1

    .line 444
    :cond_1
    const/16 p1, 0x800

    goto :goto_0
.end method
