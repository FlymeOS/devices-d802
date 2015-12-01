.class public Lcom/lge/camera/postview/PostViewToast;
.super Ljava/lang/Object;
.source "PostViewToast.java"


# static fields
.field public static final TOAST_LENGTH_LONG:J = 0x1388L

.field public static final TOAST_LENGTH_NORMAL:J = 0xbb8L

.field public static final TOAST_LENGTH_SHORT:J = 0x7d0L


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHide:Ljava/lang/Runnable;

.field private mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/lge/camera/postview/PostViewToast$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostViewToast$1;-><init>(Lcom/lge/camera/postview/PostViewToast;)V

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHide:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/PostViewToast;->cancel(Z)V

    .line 55
    return-void
.end method

.method public declared-synchronized cancel(Z)V
    .locals 1
    .param p1, "immediately"    # Z

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 59
    if-eqz p1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancelImmediately()V

    .line 65
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 62
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "orientation"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lge/camera/postview/PostViewToast;->show(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 26
    return-void
.end method

.method public show(Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "hideDelayMillis"    # J
    .param p5, "orientation"    # I

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 47
    const-wide/16 p3, 0x7d0

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2, p5}, Lcom/lge/camera/postview/PostViewToast;->show(Landroid/content/Context;Ljava/lang/String;I)V

    .line 50
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/postview/PostViewToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void
.end method

.method public declared-synchronized show(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "immediately"    # Z
    .param p4, "orientation"    # I

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostViewToast;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/postview/PostViewToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostViewToast;->cancel()V

    .line 34
    :cond_0
    invoke-static {p1, p2, p4}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    .line 35
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_1

    .line 36
    if-eqz p3, :cond_2

    .line 37
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->showImmediately()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 40
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    .line 80
    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHide:Ljava/lang/Runnable;

    .line 81
    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method
