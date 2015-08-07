.class public Lcom/android/server/firewall/IntentFirewallEx;
.super Lcom/android/server/firewall/IntentFirewall;
.source "IntentFirewallEx.java"


# static fields
.field static final TAG_EX:Ljava/lang/String; = "IntentFirewallEx"


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$AMSInterface;Landroid/os/Handler;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/firewall/IntentFirewall$AMSInterface;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall;-><init>(Lcom/android/server/firewall/IntentFirewall$AMSInterface;Landroid/os/Handler;)V

    .line 15
    const-string v0, "IntentFirewallEx"

    const-string v1, "create IntentFirewallEx"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void
.end method


# virtual methods
.method public checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resolvedApp"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 24
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewallEx;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    invoke-interface {v1}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->getAMSLock()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerServiceEx;

    .line 25
    .local v0, "am":Lcom/android/server/am/ActivityManagerServiceEx;
    const-string v1, "kids"

    const-string v2, "service.plushome.currenthome"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerServiceEx;->checkGuestModeList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    const-string v1, "IntentFirewallEx"

    const-string v2, "block to Start Activity included Guest Mode App List"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v1, 0x0

    .line 30
    :goto_0
    return v1

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    goto :goto_0
.end method
