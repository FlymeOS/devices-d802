.class Lcom/android/internal/widget/LockPatternUtilsCache$1;
.super Lcom/android/internal/widget/ILockSettingsObserver$Stub;
.source "LockPatternUtilsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtilsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtilsCache;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtilsCache;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtilsCache$1;->this$0:Lcom/android/internal/widget/LockPatternUtilsCache;

    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettingsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockSettingChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    const-string v0, "lockscreen.password_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache$1;->this$0:Lcom/android/internal/widget/LockPatternUtilsCache;

    const-string v1, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    # invokes: Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V
    invoke-static {v0, v1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->access$100(Lcom/android/internal/widget/LockPatternUtilsCache;Ljava/lang/String;I)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache$1;->this$0:Lcom/android/internal/widget/LockPatternUtilsCache;

    const-string v1, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    # invokes: Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V
    invoke-static {v0, v1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->access$100(Lcom/android/internal/widget/LockPatternUtilsCache;Ljava/lang/String;I)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache$1;->this$0:Lcom/android/internal/widget/LockPatternUtilsCache;

    # invokes: Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->access$100(Lcom/android/internal/widget/LockPatternUtilsCache;Ljava/lang/String;I)V

    .line 237
    return-void
.end method
