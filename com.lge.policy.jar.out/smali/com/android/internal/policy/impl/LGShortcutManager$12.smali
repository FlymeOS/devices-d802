.class Lcom/android/internal/policy/impl/LGShortcutManager$12;
.super Ljava/lang/Object;
.source "LGShortcutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$12;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 985
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager$12;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # setter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchPressed:Z
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$1102(Lcom/android/internal/policy/impl/LGShortcutManager;Z)Z

    .line 986
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 987
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isHomeGuestMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 988
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager$12;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$000(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGShortcutManager$12;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$000(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->guest_mode_toast_string:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 990
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1007
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 993
    const-string v3, "LGShortcutManager"

    const-string v4, "mSimSwitchLongpress : launching MultiSimSettings"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 995
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.lge.networksettings"

    const-string v4, "com.lge.networksettings.msim.DualSim"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 998
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->collapsePanels()V

    .line 999
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager$12;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$000(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1000
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager$12;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "LGShortcutManager"

    const-string v4, "Dropping MultiSimSettings launch because the activity was not found"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
