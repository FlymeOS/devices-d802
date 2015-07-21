.class Lcom/android/internal/policy/impl/PhoneWindowManager$26;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 6108
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6112
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarServiceEx()Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    move-result-object v1

    .line 6113
    .local v1, "statusbarEx":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    if-eqz v1, :cond_1

    .line 6114
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->sIsDimming:Z

    if-nez v2, :cond_2

    .line 6115
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PWM]1.notifyNavigationBarColor => mLastColorNavigationBar=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastColorNavigationBar:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6116
    sget v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastColorNavigationBar:I

    invoke-interface {v1, v2}, Lcom/lge/internal/statusbar/IStatusBarServiceEx;->notifyNavigationBarColor(I)V

    .line 6121
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->sIsDimming:Z

    sput-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->sLastIsDimming:Z

    .line 6127
    .end local v1    # "statusbarEx":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    :cond_1
    :goto_1
    return-void

    .line 6117
    .restart local v1    # "statusbarEx":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->sLastIsDimming:Z

    if-nez v2, :cond_0

    .line 6118
    const-string v2, "WindowManager"

    const-string v3, "[PWM]2.notifyNavigationBarColor => Color.TRANSPARENT "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6119
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/internal/statusbar/IStatusBarServiceEx;->notifyNavigationBarColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6123
    .end local v1    # "statusbarEx":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    :catch_0
    move-exception v0

    .line 6125
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarServiceEx:Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    goto :goto_1
.end method
