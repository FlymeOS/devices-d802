.class Lcom/android/internal/policy/impl/HomeSetupWizard;
.super Ljava/lang/Object;
.source "HomeSetupWizard.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeSetupWizard"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGoHomeFromSetupWizard:Z

.field private mGoHomeValue:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mGoHomeFromSetupWizard:Z

    .line 21
    iput v0, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mGoHomeValue:I

    .line 25
    iput-object p1, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mContext:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->enable_go_home_from_setupwizard:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mGoHomeFromSetupWizard:Z

    .line 28
    return-void
.end method


# virtual methods
.method dumpHomeSetupWizard(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 59
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    const-string v0, " mGoHomeFromSetupWizard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mGoHomeFromSetupWizard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 62
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    const-string v0, " mGoHomeValue="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mGoHomeValue:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 65
    return-void
.end method

.method isUsingGoHomeFromeSetupWizard()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mGoHomeFromSetupWizard:Z

    return v0
.end method

.method showGoHomeDialog(ZZZ)Z
    .locals 5
    .param p1, "down"    # Z
    .param p2, "canceled"    # Z
    .param p3, "homeConsumed"    # Z

    .prologue
    const/4 v2, 0x1

    .line 41
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mGoHomeFromSetupWizard:Z

    if-eqz v3, :cond_0

    .line 42
    if-nez p3, :cond_0

    if-nez p1, :cond_0

    .line 43
    if-nez p2, :cond_0

    .line 44
    iget v3, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mGoHomeValue:I

    if-ne v3, v2, :cond_0

    .line 45
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.LGSetupWizard"

    const-string v4, "com.android.LGSetupWizard.SetupLeaveAlertDialog"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 48
    iget-object v3, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 49
    const-string v3, "HomeSetupWizard"

    const-string v4, "PhoneWindowManagerEx: showGoHomeDialog"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateGoHomeSetupWizardSettings(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mGoHomeFromSetupWizard:Z

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "go_home"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/HomeSetupWizard;->mGoHomeValue:I

    .line 38
    :cond_0
    return-void
.end method
