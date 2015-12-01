.class public Lcom/lge/camera/controller/ToastController;
.super Lcom/lge/camera/controller/Controller;
.source "ToastController.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field private mIsAllowDisturb:Z

.field private mOrientation:I

.field private final mResetAllowDisturb:Ljava/lang/Runnable;

.field private mStorageToast:Lcom/lge/camera/util/OnScreenHint;

.field private final mStorageToastHide:Ljava/lang/Runnable;

.field private mToast:Lcom/lge/camera/util/OnScreenHint;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 22
    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    .line 23
    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/ToastController;->mIsAllowDisturb:Z

    .line 56
    new-instance v0, Lcom/lge/camera/controller/ToastController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ToastController$1;-><init>(Lcom/lge/camera/controller/ToastController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mResetAllowDisturb:Ljava/lang/Runnable;

    .line 245
    new-instance v0, Lcom/lge/camera/controller/ToastController$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ToastController$5;-><init>(Lcom/lge/camera/controller/ToastController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    .line 251
    new-instance v0, Lcom/lge/camera/controller/ToastController$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ToastController$6;-><init>(Lcom/lge/camera/controller/ToastController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToastHide:Ljava/lang/Runnable;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/ToastController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/ToastController;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/lge/camera/controller/ToastController;->mIsAllowDisturb:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/controller/ToastController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/ToastController;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/lge/camera/controller/ToastController;->mIsAllowDisturb:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/ToastController;ZJ)Z
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/controller/ToastController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/controller/ToastController;->checkDisturb(ZJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/ToastController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/ToastController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/ToastController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/ToastController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/ToastController;)Lcom/lge/camera/util/OnScreenHint;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/ToastController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/camera/controller/ToastController;Lcom/lge/camera/util/OnScreenHint;)Lcom/lge/camera/util/OnScreenHint;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/ToastController;
    .param p1, "x1"    # Lcom/lge/camera/util/OnScreenHint;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    return-object p1
.end method

.method private declared-synchronized checkDisturb(ZJ)Z
    .locals 4
    .param p1, "needDisturb"    # Z
    .param p2, "hideDelayMillis"    # J

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x0

    .line 78
    .local v0, "needStopShow":Z
    :try_start_0
    iget-boolean v1, p0, Lcom/lge/camera/controller/ToastController;->mIsAllowDisturb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 79
    if-eqz p1, :cond_0

    .line 100
    :goto_0
    monitor-exit p0

    return v0

    .line 84
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/lge/camera/controller/ToastController;->mIsAllowDisturb:Z

    .line 85
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 87
    invoke-direct {p0, p2, p3}, Lcom/lge/camera/controller/ToastController;->hideAndResetDisturb(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 90
    :cond_1
    if-eqz p1, :cond_2

    .line 92
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController;->mResetAllowDisturb:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/ToastController;->mIsAllowDisturb:Z

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/lge/camera/controller/ToastController;->hideAndResetDisturb(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hideAndResetDisturb(J)V
    .locals 5
    .param p1, "hideDelayMillis"    # J

    .prologue
    const/4 v3, 0x1

    .line 63
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 65
    .local v0, "rtnValue":Z
    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController;->mResetAllowDisturb:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController;->mResetAllowDisturb:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    iput-boolean v3, p0, Lcom/lge/camera/controller/ToastController;->mIsAllowDisturb:Z

    .line 74
    :cond_1
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 143
    return-void
.end method

.method public declared-synchronized hide(Z)V
    .locals 1
    .param p1, "immediately"    # Z

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 147
    if-eqz p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancelImmediately()V

    .line 153
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 150
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hideForPhotoStory()Z
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    const/4 v0, 0x0

    .line 159
    .local v0, "bRet":Z
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v1}, Lcom/lge/camera/util/OnScreenHint;->cancelImmediately()V

    .line 161
    const/4 v0, 0x1

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v1}, Lcom/lge/camera/util/OnScreenHint;->cancelImmediately()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    const/4 v0, 0x1

    .line 168
    :cond_1
    monitor-exit p0

    return v0

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageToastShowing()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    const-string v0, "CameraApp"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V

    .line 270
    iput-object v2, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToastHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V

    .line 275
    iput-object v2, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    .line 277
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 278
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "CameraApp"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 261
    return-void
.end method

.method public rotate()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ToastController;->rotate(I)V

    .line 220
    return-void
.end method

.method public declared-synchronized rotate(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I

    if-eq v0, p1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V

    .line 226
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/OnScreenHint;->changeOrientation(Landroid/content/Context;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V

    .line 230
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/lge/camera/util/OnScreenHint;->changeOrientation(Landroid/content/Context;II)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    .line 233
    :cond_1
    iput p1, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_2
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public show(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;Z)V

    .line 34
    return-void
.end method

.method public show(Ljava/lang/String;J)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "hideDelayMillis"    # J

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;JZ)V

    .line 121
    return-void
.end method

.method public show(Ljava/lang/String;JZ)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "hideDelayMillis"    # J
    .param p4, "needDisturb"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/ToastController$2;

    move-object v2, p0

    move v3, p4

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/lge/camera/controller/ToastController$2;-><init>(Lcom/lge/camera/controller/ToastController;ZJLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public show(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "immediately"    # Z

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;ZI)V

    .line 38
    return-void
.end method

.method public declared-synchronized show(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "immediately"    # Z
    .param p3, "orientation"    # I

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/ToastController;->mIsAllowDisturb:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->hide()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    .line 46
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_1

    .line 47
    if-eqz p2, :cond_2

    .line 48
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->showImmediately()V

    .line 52
    :goto_0
    iput p3, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    monitor-exit p0

    return-void

    .line 50
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showLongToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/controller/ToastController;->showLongToast(Ljava/lang/String;Z)V

    .line 113
    return-void
.end method

.method public showLongToast(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "needDisturb"    # Z

    .prologue
    .line 116
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;JZ)V

    .line 117
    return-void
.end method

.method public showShortToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/controller/ToastController;->showShortToast(Ljava/lang/String;Z)V

    .line 105
    return-void
.end method

.method public showShortToast(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "needDisturb"    # Z

    .prologue
    .line 108
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;JZ)V

    .line 109
    return-void
.end method

.method public declared-synchronized storageToastShow(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "immediately"    # Z
    .param p3, "shortToast"    # Z

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->isStorageToastShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController;->mStorageToastHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/ToastController;->storageToasthide(Z)V

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v0

    .line 178
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    .line 180
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v1, :cond_1

    .line 181
    if-eqz p2, :cond_3

    .line 182
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/ToastController$3;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/ToastController$3;-><init>(Lcom/lge/camera/controller/ToastController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    :goto_0
    iput v0, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I

    .line 194
    :cond_1
    if-eqz p3, :cond_2

    .line 195
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController;->mStorageToastHide:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/ToastController;->storageToasthide(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_2
    monitor-exit p0

    return-void

    .line 189
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v1}, Lcom/lge/camera/util/OnScreenHint;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    .end local v0    # "orientation":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized storageToasthide(Z)V
    .locals 2
    .param p1, "immediately"    # Z

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 203
    if-eqz p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/ToastController$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/ToastController$4;-><init>(Lcom/lge/camera/controller/ToastController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
