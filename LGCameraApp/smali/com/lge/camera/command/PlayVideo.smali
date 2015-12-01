.class public Lcom/lge/camera/command/PlayVideo;
.super Lcom/lge/camera/command/Command;
.source "PlayVideo.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 23
    return-void
.end method


# virtual methods
.method public createPlayIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "video/mp4"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "mimeType"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    return-object v0
.end method

.method public execute()V
    .locals 5

    .prologue
    .line 27
    const-string v2, "CameraApp"

    const-string v3, "PlayVideo"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lcom/lge/camera/command/PlayVideo;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/VideoFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/command/PlayVideo;->createPlayIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 30
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.finishOnCompletion"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/command/PlayVideo;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/PlayVideo;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0a0179

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "CameraApp"

    const-string v3, "ActivityNotFoundException:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    iget-object v2, p0, Lcom/lge/camera/command/PlayVideo;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a019e

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    goto :goto_0
.end method
