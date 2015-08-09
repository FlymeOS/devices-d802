.class public Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;
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
    name = "DefaultKnockCode"
.end annotation


# instance fields
.field private mMatchedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/power/KnockCodeChecker;


# direct methods
.method public constructor <init>(Lcom/android/server/power/KnockCodeChecker;)V
    .locals 2

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    .line 282
    return-void
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .locals 8
    .param p1, "passwords"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, "matched":Z
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 287
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 288
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v5}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 289
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mMultiUserKnockCode:Z
    invoke-static {v5}, Lcom/android/server/power/KnockCodeChecker;->access$100(Lcom/android/server/power/KnockCodeChecker;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 290
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v5}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->checkPasswordsGetUsers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 291
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v4, :cond_8

    .line 292
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    const/4 v2, 0x0

    .line 308
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_4

    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 310
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v5}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7, v5}, Lcom/android/internal/widget/LockPatternUtilsEx;->setDupulicatedKnockCode(ZI)V

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mSettingUserInfo:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/power/KnockCodeChecker;->access$200(Lcom/android/server/power/KnockCodeChecker;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 296
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 297
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 298
    .local v3, "matcheduserinfo":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mSettingUserInfo:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/power/KnockCodeChecker;->access$200(Lcom/android/server/power/KnockCodeChecker;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 299
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mSettingUserInfo:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/power/KnockCodeChecker;->access$200(Lcom/android/server/power/KnockCodeChecker;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;

    iget v5, v5, Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;->userId:I

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mSettingUserInfo:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/power/KnockCodeChecker;->access$200(Lcom/android/server/power/KnockCodeChecker;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;

    iget-boolean v5, v5, Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;->knockCodeSetting:Z

    if-eqz v5, :cond_3

    .line 300
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    const/4 v2, 0x1

    .line 296
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 312
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "matcheduserinfo":Landroid/content/pm/UserInfo;
    :cond_4
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 319
    :cond_5
    :goto_3
    # getter for: Lcom/android/server/power/KnockCodeChecker;->NOTUSER_DEBUG:Z
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$300()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 320
    # getter for: Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkPassword = {"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 322
    # getter for: Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$400()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 314
    .end local v0    # "i":I
    :cond_6
    # getter for: Lcom/android/server/power/KnockCodeChecker;->NOTUSER_DEBUG:Z
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$300()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 315
    # getter for: Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no matched users!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 324
    .restart local v0    # "i":I
    :cond_7
    # getter for: Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, " }"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v0    # "i":I
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :goto_5
    return v2

    .line 328
    :cond_9
    iget-object v5, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v5}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->checkPasswords(Ljava/lang/String;)Z

    move-result v2

    goto :goto_5

    .line 332
    :cond_a
    # getter for: Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, "could\'t check passwords"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getMatchedUsers()Ljava/util/ArrayList;
    .locals 1
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
    .line 402
    iget-object v0, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public launch(I)I
    .locals 9
    .param p1, "wakeupReason"    # I

    .prologue
    const/4 v8, 0x0

    .line 338
    move v2, p1

    .line 339
    .local v2, "launchResult":I
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mMultiUserKnockCode:Z
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$100(Lcom/android/server/power/KnockCodeChecker;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 340
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # invokes: Lcom/android/server/power/KnockCodeChecker;->getCurrentUserId()I
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$500(Lcom/android/server/power/KnockCodeChecker;)I

    move-result v0

    .line 341
    .local v0, "currentUserId":I
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 342
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 343
    .local v4, "matchedUser":Landroid/content/pm/UserInfo;
    const/4 v5, 0x0

    .line 344
    .local v5, "verified":Z
    # getter for: Lcom/android/server/power/KnockCodeChecker;->NOTUSER_DEBUG:Z
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$300()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 345
    # getter for: Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$400()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentUserId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", matchedUser="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v0, :cond_3

    .line 348
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v6, v0}, Lcom/android/server/power/KnockCodeChecker;->verifyFailedAttempts(I)Z

    move-result v5

    .line 349
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->isDupulicatedKnockCode(I)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v5, :cond_1

    .line 350
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/power/KnockCodeChecker;->reportSuccessfulPasswordAttempt(I)V

    .line 351
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v6}, Lcom/android/server/power/KnockCodeChecker;->keyguardDone()V

    .line 353
    :cond_1
    if-nez v5, :cond_2

    .line 354
    const/4 v2, 0x2

    .line 398
    .end local v0    # "currentUserId":I
    .end local v4    # "matchedUser":Landroid/content/pm/UserInfo;
    .end local v5    # "verified":Z
    :cond_2
    :goto_0
    return v2

    .line 357
    .restart local v0    # "currentUserId":I
    .restart local v4    # "matchedUser":Landroid/content/pm/UserInfo;
    .restart local v5    # "verified":Z
    :cond_3
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # invokes: Lcom/android/server/power/KnockCodeChecker;->registerUserSwitchObserver()V
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$600(Lcom/android/server/power/KnockCodeChecker;)V

    .line 358
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/power/KnockCodeChecker;->verifyFailedAttempts(I)Z

    move-result v5

    .line 359
    if-eqz v5, :cond_5

    .line 360
    const/16 v2, 0x200

    .line 361
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v6

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtilsEx;->isDupulicatedKnockCode(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 362
    const/16 v2, 0x400

    .line 367
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$700(Lcom/android/server/power/KnockCodeChecker;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$1;

    invoke-direct {v7, p0, v4}, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$1;-><init>(Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;Landroid/content/pm/UserInfo;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 365
    :cond_5
    const/4 v2, 0x2

    goto :goto_1

    .line 375
    .end local v4    # "matchedUser":Landroid/content/pm/UserInfo;
    .end local v5    # "verified":Z
    :cond_6
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v6, v7, :cond_7

    .line 376
    const/16 v2, 0x400

    .line 377
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->mMatchedUsers:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 378
    .local v3, "matched1stUser":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    if-eq v6, v0, :cond_2

    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->isDupulicatedKnockCode(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 380
    iget v1, v3, Landroid/content/pm/UserInfo;->id:I

    .line 381
    .local v1, "id":I
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$700(Lcom/android/server/power/KnockCodeChecker;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$2;

    invoke-direct {v7, p0, v1}, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode$2;-><init>(Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 389
    .end local v1    # "id":I
    .end local v3    # "matched1stUser":Landroid/content/pm/UserInfo;
    :cond_7
    # getter for: Lcom/android/server/power/KnockCodeChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/KnockCodeChecker;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v7, "omg! can\'t be here!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 392
    .end local v0    # "currentUserId":I
    :cond_8
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 393
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    # getter for: Lcom/android/server/power/KnockCodeChecker;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v6}, Lcom/android/server/power/KnockCodeChecker;->access$000(Lcom/android/server/power/KnockCodeChecker;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtilsEx;->rollbackLockSettingForNormalMode()V

    .line 395
    :cond_9
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v6}, Lcom/android/server/power/KnockCodeChecker;->reportSuccessfulPasswordAttempt()V

    .line 396
    iget-object v6, p0, Lcom/android/server/power/KnockCodeChecker$DefaultKnockCode;->this$0:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v6}, Lcom/android/server/power/KnockCodeChecker;->keyguardDone()V

    goto/16 :goto_0
.end method
