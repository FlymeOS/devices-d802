.class Lcom/android/internal/widget/LockPatternUtils$1;
.super Landroid/os/AsyncTask;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$service:Landroid/os/IBinder;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$1;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$service:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$type:I

    iput-object p4, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 772
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "dummy"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 775
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$service:Landroid/os/IBinder;

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    .line 778
    .local v3, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils$1;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, v4, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/R$bool;->config_default_encrypt:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 780
    .local v2, "isPhoneLockSupport":Z
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils$1;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, v4, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "security_phone_lock"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 782
    .local v1, "isPhoneLockEnable":Z
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    .line 783
    :cond_0
    const-string v4, "LockPatternUtils"

    const-string v5, "SECURITY_PHONE_LOCK = 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget v4, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$type:I

    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$password:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/os/storage/IMountService;->changeEncryptionPassword(ILjava/lang/String;)I

    .line 792
    .end local v1    # "isPhoneLockEnable":Z
    .end local v2    # "isPhoneLockSupport":Z
    :goto_1
    return-object v7

    .line 780
    .restart local v2    # "isPhoneLockSupport":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 786
    .restart local v1    # "isPhoneLockEnable":Z
    :cond_2
    const-string v4, "LockPatternUtils"

    const-string v5, "SECURITY_PHONE_LOCK = 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/storage/IMountService;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 789
    .end local v1    # "isPhoneLockEnable":Z
    .end local v2    # "isPhoneLockSupport":Z
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing encryption password"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
