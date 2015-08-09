.class Lcom/android/internal/policy/impl/EmergencyLauncher$1;
.super Ljava/lang/Object;
.source "EmergencyLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/EmergencyLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/EmergencyLauncher;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$1;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    const-string v1, "EmergencyLauncher"

    const-string v2, "112APP_KEY : 112 App. activated!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$1;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    # getter for: Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->wakeUpAndShowToastForLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$1;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    # getter for: Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "go.police.report"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 166
    const-string v1, "startFlag"

    const-string v2, "002"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$1;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    # getter for: Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 171
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel:112"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 172
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$1;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    # getter for: Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
