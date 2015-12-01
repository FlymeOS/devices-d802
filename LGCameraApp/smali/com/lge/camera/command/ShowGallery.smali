.class public Lcom/lge/camera/command/ShowGallery;
.super Lcom/lge/camera/command/Command;
.source "ShowGallery.java"


# instance fields
.field private mCheckingLastThumbnail:Z

.field private mThumbnailUri:Landroid/net/Uri;

.field private mUriPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/ShowGallery;->mCheckingLastThumbnail:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/ShowGallery;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/command/ShowGallery;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/camera/command/ShowGallery;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/ShowGallery;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$102(Lcom/lge/camera/command/ShowGallery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/ShowGallery;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/camera/command/ShowGallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/ShowGallery;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lge/camera/command/ShowGallery;->checkUriAndShowGallery()V

    return-void
.end method

.method static synthetic access$302(Lcom/lge/camera/command/ShowGallery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/ShowGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lge/camera/command/ShowGallery;->mCheckingLastThumbnail:Z

    return p1
.end method

.method private checkUriAndShowGallery()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 111
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->setGalleryLaunching(Z)V

    .line 113
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getThumbnailAndUpdateButton()V

    .line 114
    const-string v3, "CameraApp"

    const-string v4, "Uri is not valid"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show gallery return - thumbnailUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPreviewOnGoing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->setGalleryLaunching(Z)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 125
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 127
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 131
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 132
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 136
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v3, "com.android.gallery3d"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 148
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    invoke-direct {p0, v3, v1}, Lcom/lge/camera/command/ShowGallery;->launchingGallery(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "CameraApp"

    const-string v4, "Gallery is not founded:"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 141
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/lge/camera/command/ShowGallery;->launchingGallery(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_1

    .line 143
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->setGalleryLaunching(Z)V

    goto :goto_0
.end method

.method private launchingGallery(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .param p1, "thumbnailUri"    # Landroid/net/Uri;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    if-eqz p2, :cond_1

    iget-boolean v2, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setGalleryLaunching(Z)V

    .line 155
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->restoreLiveEffectSubMenu()V

    .line 156
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearQuickFunctionSubMenu()V

    .line 157
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x18

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    .line 160
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 161
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 162
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 168
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :goto_1
    invoke-virtual {p0, v1}, Lcom/lge/camera/command/ShowGallery;->setIntentRotationExtra(Landroid/content/Intent;)V

    .line 174
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v2

    if-nez v2, :cond_0

    .line 178
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "CameraApp"

    const-string v3, "review fail"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setGalleryLaunching(Z)V

    goto :goto_0

    .line 170
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_3
    const-string v2, "video/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowGallery;->execute(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 6
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 48
    const-string v4, "CameraApp"

    const-string v5, "ShowGallery - start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 50
    check-cast v0, Landroid/os/Bundle;

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "useAsPostview"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 53
    .local v2, "useAsPostview":Z
    if-eqz v2, :cond_3

    .line 54
    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_2

    .line 55
    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    .line 56
    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;

    .line 107
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lge/camera/command/ShowGallery;->checkUriAndShowGallery()V

    .line 108
    :cond_1
    :goto_1
    return-void

    .line 58
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v3

    .line 59
    .local v3, "video":Lcom/lge/camera/VideoFile;
    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v3}, Lcom/lge/camera/VideoFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    .line 61
    invoke-virtual {v3}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;

    goto :goto_0

    .line 65
    .end local v3    # "video":Lcom/lge/camera/VideoFile;
    :cond_3
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 66
    iget-boolean v4, p0, Lcom/lge/camera/command/ShowGallery;->mCheckingLastThumbnail:Z

    if-nez v4, :cond_1

    .line 70
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lge/camera/command/ShowGallery;->mCheckingLastThumbnail:Z

    .line 71
    new-instance v1, Lcom/lge/camera/command/ShowGallery$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/ShowGallery$1;-><init>(Lcom/lge/camera/command/ShowGallery;)V

    .line 98
    .local v1, "checkingThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 99
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/util/SecureImageUtil;->release()V

    goto :goto_1

    .line 103
    .end local v1    # "checkingThread":Ljava/lang/Thread;
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getThumbnailControllerUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    .line 104
    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getOrientaionString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "strOrientation":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 219
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set extra orientation :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-object v0

    .line 205
    :sswitch_0
    const-string v0, "portrait"

    .line 206
    goto :goto_0

    .line 208
    :sswitch_1
    const-string v0, "reverseLandscape"

    .line 209
    goto :goto_0

    .line 211
    :sswitch_2
    const-string v0, "reversePortrait"

    .line 212
    goto :goto_0

    .line 214
    :sswitch_3
    const-string v0, "landscape"

    .line 215
    goto :goto_0

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected setExtraForKDDI()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    .line 224
    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_0

    move v1, v2

    .line 225
    .local v1, "mIsReverse":Z
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 226
    .local v0, "mIsFrontCam":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 228
    .end local v0    # "mIsFrontCam":Z
    .end local v1    # "mIsReverse":Z
    :goto_2
    return v2

    :cond_0
    move v1, v3

    .line 224
    goto :goto_0

    .restart local v1    # "mIsReverse":Z
    :cond_1
    move v0, v3

    .line 225
    goto :goto_1

    .restart local v0    # "mIsFrontCam":Z
    :cond_2
    move v2, v3

    .line 226
    goto :goto_2

    .end local v0    # "mIsFrontCam":Z
    .end local v1    # "mIsReverse":Z
    :cond_3
    move v2, v3

    .line 228
    goto :goto_2
.end method

.method public setIntentRotationExtra(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, "settingOff":I
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 190
    .local v1, "rotationAutoVal":I
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 191
    .local v0, "isRotationAutoOff":Z
    :cond_0
    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->setExtraForKDDI()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    const-string v3, "CameraApp"

    const-string v4, "set extra to reversePortrait for KDDI"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v3, "screen-orientation"

    const-string v4, "reversePortrait"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    const-string v3, "screen-orientation"

    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getOrientaionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set scerre-orientation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getOrientaionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
