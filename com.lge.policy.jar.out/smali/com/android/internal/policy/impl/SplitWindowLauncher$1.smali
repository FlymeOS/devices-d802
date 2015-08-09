.class Lcom/android/internal/policy/impl/SplitWindowLauncher$1;
.super Landroid/content/BroadcastReceiver;
.source "SplitWindowLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SplitWindowLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SplitWindowLauncher;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SplitWindowLauncher;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher$1;->this$0:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.lge.android.intent.action.MINIVIEW_SETTINGS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "com.lge.intent.extra.MINIVIEW_ALIVE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher$1;->this$0:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    const-string v2, "com.lge.intent.extra.MINIVIEW_ALIVE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mSplitWindowDisabled:Z

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher$1;->this$0:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mSplitWindowDisabled:Z

    goto :goto_0
.end method
