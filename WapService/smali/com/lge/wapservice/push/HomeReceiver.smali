.class public Lcom/lge/wapservice/push/HomeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    .local v3, "isOnIdle":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 23
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 24
    const-string v8, "LauncherState"

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 26
    :cond_0
    const-string v8, "PushLaunchBrowser"

    invoke-virtual {p1, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 27
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 28
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "LauncherRunning"

    invoke-interface {v1, v8, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    const-string v8, "PushReceived"

    invoke-interface {v5, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 31
    .local v4, "isPushLowMsg":Z
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 33
    const-string v8, "PushUrl"

    const-string v9, ""

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 34
    .local v7, "url":Ljava/lang/String;
    if-nez v7, :cond_2

    const/4 v6, 0x0

    .line 35
    .local v6, "uri":Landroid/net/Uri;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v2, "intent1":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37
    const/high16 v8, 0x10000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    const-string v8, "PushReceived"

    invoke-interface {v1, v8, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 40
    const-string v8, "PushUrl"

    const-string v9, ""

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    .end local v2    # "intent1":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "url":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void

    .line 34
    .restart local v7    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0
.end method
