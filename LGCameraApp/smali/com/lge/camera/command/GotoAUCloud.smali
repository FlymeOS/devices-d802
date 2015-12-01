.class public Lcom/lge/camera/command/GotoAUCloud;
.super Lcom/lge/camera/command/Command;
.source "GotoAUCloud.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 26
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    .line 31
    iget-object v5, p0, Lcom/lge/camera/command/GotoAUCloud;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 32
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 35
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v5, "com.kddi.android.auclouduploader"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 41
    :goto_0
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_0

    .line 42
    iget-object v5, p0, Lcom/lge/camera/command/GotoAUCloud;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v6, 0x1c

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    .line 54
    :goto_1
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "CameraApp"

    const-string v6, "Au Cloud cannot be founded:"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 44
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 45
    .local v3, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.kddi.android.auclouduploader"

    const-string v7, "com.kddi.android.auclouduploader.activity.AutoUploadSettingActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    const/high16 v5, 0x4000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/command/GotoAUCloud;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 50
    :catch_1
    move-exception v1

    .line 51
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v5, "CameraApp"

    const-string v6, "AU Cloud App is not exist"

    invoke-static {v5, v6, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
