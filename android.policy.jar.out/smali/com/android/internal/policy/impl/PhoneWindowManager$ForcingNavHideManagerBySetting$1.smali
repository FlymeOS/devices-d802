.class Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V
    .locals 0

    .prologue
    .line 6443
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 6446
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6447
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6448
    .local v1, "userId":I
    const-string v2, "HideNav"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user switched.. and started..  userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6449
    if-eq v1, v6, :cond_1

    .line 6450
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mHideAppListSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 6451
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->readDB()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V

    .line 6452
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsReadDB:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->access$1702(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Z)Z

    .line 6453
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6454
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsRegistered:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6455
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->observer:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6456
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->talkbackObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6458
    :cond_0
    const-string v2, "enable_hide_navigation_apps"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->observer:Landroid/database/ContentObserver;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v2, v7, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6459
    const-string v2, "enabled_accessibility_services"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->talkbackObserver:Landroid/database/ContentObserver;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v2, v7, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6461
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsRegistered:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->access$1802(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Z)Z

    .line 6463
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->updateCurrentUserForNavHide(I)V

    .line 6466
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "userId":I
    :cond_1
    return-void
.end method
