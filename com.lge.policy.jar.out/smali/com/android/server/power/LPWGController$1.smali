.class Lcom/android/server/power/LPWGController$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "LPWGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/LPWGController;->init()V
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
    .line 206
    iput-object p1, p0, Lcom/android/server/power/LPWGController$1;->this$0:Lcom/android/server/power/LPWGController;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 3
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/server/power/LPWGController$1;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$100(Lcom/android/server/power/LPWGController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/LPWGController$1;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$100(Lcom/android/server/power/LPWGController;)Lcom/android/internal/widget/LockPatternUtilsEx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->isDupulicatedKnockCode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/server/power/LPWGController$1;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$200(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/KnockCodeChecker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/power/KnockCodeChecker;->verifyFailedAttempts(I)Z

    move-result v0

    .line 216
    .local v0, "verified":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/power/LPWGController$1;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mWakeupReason:I
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$300(Lcom/android/server/power/LPWGController;)I

    move-result v1

    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/server/power/LPWGController$1;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$200(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/KnockCodeChecker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/power/KnockCodeChecker;->reportSuccessfulPasswordAttempt(I)V

    .line 218
    iget-object v1, p0, Lcom/android/server/power/LPWGController$1;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$200(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/KnockCodeChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/KnockCodeChecker;->keyguardDone()V

    .line 221
    .end local v0    # "verified":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/LPWGController$1;->this$0:Lcom/android/server/power/LPWGController;

    # invokes: Lcom/android/server/power/LPWGController;->unregisterUserSwitchObserver()V
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$400(Lcom/android/server/power/LPWGController;)V

    .line 222
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 209
    return-void
.end method
