.class public Lcom/lge/view/SplitWindowViewHelper;
.super Ljava/lang/Object;
.source "SplitWindowViewHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitWindowViewHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWindowSplit(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 27
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-nez v6, :cond_1

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move v3, v5

    .line 52
    :cond_0
    :goto_0
    return v3

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 33
    .local v4, "wm":Lcom/lge/view/IWindowManagerEx;
    :try_start_0
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/view/IWindowManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 39
    const/4 v3, 0x0

    .line 41
    .local v3, "result":Z
    if-eqz p0, :cond_0

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 43
    :try_start_1
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v4, v6, v7, p1}, Lcom/lge/view/IWindowManagerEx;->isWindowSplit(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/graphics/Rect;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    goto :goto_0

    .line 34
    .end local v3    # "result":Z
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v6, "SplitWindowViewHelper"

    const-string v7, "IWindowManagerEx is null now.. return false"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 36
    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "result":Z
    :catch_1
    move-exception v1

    .line 45
    .local v1, "ne":Ljava/lang/NullPointerException;
    const-string v6, "SplitWindowViewHelper"

    const-string v7, "mSession or mWindow is null now.. return false"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 46
    goto :goto_0

    .line 47
    .end local v1    # "ne":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 48
    .local v2, "re":Landroid/os/RemoteException;
    const-string v6, "SplitWindowViewHelper"

    const-string v7, "Session or binder is not available now.. return false"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 49
    goto :goto_0
.end method
