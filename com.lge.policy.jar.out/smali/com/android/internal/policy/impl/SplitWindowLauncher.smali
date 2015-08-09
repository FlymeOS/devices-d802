.class Lcom/android/internal/policy/impl/SplitWindowLauncher;
.super Ljava/lang/Object;
.source "SplitWindowLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitWindowLauncher"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDualWindowKeyStatus:I

.field private mExceptionalPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mSplitWindowDisabled:Z

.field mSplitWindowDisabledReceiver:Landroid/content/BroadcastReceiver;

.field mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

.field mToastIsMiniviewOn:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mSplitWindowDisabled:Z

    .line 39
    iput-object v2, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 46
    iput-object v2, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mExceptionalPkgList:Ljava/util/List;

    .line 141
    new-instance v1, Lcom/android/internal/policy/impl/SplitWindowLauncher$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SplitWindowLauncher$1;-><init>(Lcom/android/internal/policy/impl/SplitWindowLauncher;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mSplitWindowDisabledReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    new-instance v1, Lcom/android/internal/policy/impl/SplitWindowLauncher$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SplitWindowLauncher$2;-><init>(Lcom/android/internal/policy/impl/SplitWindowLauncher;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mToastIsMiniviewOn:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mContext:Landroid/content/Context;

    .line 50
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.android.intent.action.MINIVIEW_SETTINGS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mSplitWindowDisabledReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mHandler:Landroid/os/Handler;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$array;->config_Exceptional_Pkg_list_of_SplitWindow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mExceptionalPkgList:Ljava/util/List;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/SplitWindowLauncher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/SplitWindowLauncher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method SplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->getPolicyService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    goto :goto_0
.end method

.method applySplitWindowAtPostLayoutPolicyLw(Z)V
    .locals 2
    .param p1, "forceStatusBar"    # Z

    .prologue
    .line 110
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "isSplitModeWithViewCovered":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SplitWindowLauncher;->SplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 117
    :goto_0
    if-eqz v0, :cond_0

    .line 118
    const/4 p1, 0x0

    .line 121
    .end local v0    # "isSplitModeWithViewCovered":Z
    :cond_0
    return-void

    .line 113
    .restart local v0    # "isSplitModeWithViewCovered":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method dumpSplitWindowLauncher(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    const-string v0, " mDualWindowKeyStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    iget v0, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mDualWindowKeyStatus:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 168
    return-void
.end method

.method isDualWindowKeyAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 124
    iget v1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mDualWindowKeyStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isExceptionalPkgForSplitWindow()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 95
    iget-object v5, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mExceptionalPkgList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 96
    iget-object v5, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 97
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "topPackage":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mExceptionalPkgList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    const-string v5, "SplitWindowLauncher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is Exceptional Pkg For SplitWindow : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 106
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4    # "topPackage":Ljava/lang/String;
    :goto_1
    return v5

    .line 98
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    const-string v4, ""

    goto :goto_0

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    move v5, v7

    .line 106
    goto :goto_1
.end method

.method launchSplitWindowUI(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    .line 67
    const-string v3, "SplitWindowLauncher"

    const-string v4, "launchSplitWindowUI"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 70
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cappuccino/IMdm;->getEnforcePasswordChange()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    const-string v3, "MDM"

    const-string v4, "SplitWindowLauncher:launch splitwindow is locked by server policy!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.lge.splitwindow"

    const-string v4, "com.lge.splitwindow.SplitService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 79
    const-string v3, "com.lge.android.intent.action.SPLIT_WINDOW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v3, "com.lge.intent.extra.SPLIT_WITH_DRAWER"

    const/16 v4, 0x65

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v3, "com.lge.intent.extra.SPLIT_WINDOW_STARTKEY"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    iget-object v3, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 85
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v2, "intentPopup":Landroid/content/Intent;
    const-string v3, "com.lge.splitwindow.DISMISS_POPUP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v3, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method showMiniViewExceptionToast()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mToastIsMiniviewOn:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method

.method updateDualWindowKeySettings(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 61
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "dual_window"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mDualWindowKeyStatus:I

    .line 64
    :cond_0
    return-void
.end method
