.class Lcom/android/server/wm/WindowStateEx;
.super Lcom/android/server/wm/WindowState;
.source "WindowStateEx.java"


# instance fields
.field final TYPE_LG_SPLITWINDOW_OFFSET:I

.field mIsSplitFullScreen:Z

.field mIsTouchDisabled:Z

.field mSavedSysFlags:I

.field mSavedWLFlags:I

.field mSplitLayoutChanged:Z

.field mSplitable:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;ILcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "s"    # Lcom/android/server/wm/Session;
    .param p3, "c"    # Landroid/view/IWindow;
    .param p4, "token"    # Lcom/android/server/wm/WindowToken;
    .param p5, "attachedWindow"    # Lcom/android/server/wm/WindowState;
    .param p6, "appOp"    # I
    .param p7, "seq"    # I
    .param p8, "a"    # Landroid/view/WindowManager$LayoutParams;
    .param p9, "viewVisibility"    # I
    .param p10, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p10}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;ILcom/android/server/wm/DisplayContent;)V

    .line 20
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateEx;->mIsSplitFullScreen:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateEx;->mSplitLayoutChanged:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateEx;->mIsTouchDisabled:Z

    .line 24
    iput v0, p0, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    .line 25
    iput v0, p0, Lcom/android/server/wm/WindowStateEx;->mSavedSysFlags:I

    .line 26
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateEx;->mSplitable:Z

    .line 28
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/server/wm/WindowStateEx;->TYPE_LG_SPLITWINDOW_OFFSET:I

    .line 36
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LG_split"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/server/wm/WindowStateEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, 0x1770

    iput v0, p0, Lcom/android/server/wm/WindowStateEx;->mBaseLayer:I

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public getDecorFullscreenFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/wm/WindowStateEx;->mDecorFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method hideLw(ZZ)Z
    .locals 5
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v1

    .line 80
    .local v1, "didHide":Z
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-ne v3, v4, :cond_1

    .line 81
    iget-object v3, p0, Lcom/android/server/wm/WindowStateEx;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 82
    .local v2, "sizeOfChild":I
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    .line 83
    add-int/lit8 v2, v2, -0x1

    .line 84
    iget-object v3, p0, Lcom/android/server/wm/WindowStateEx;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 85
    .local v0, "c":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/WindowStateEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v0, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    goto :goto_0

    .line 90
    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    .end local v2    # "sizeOfChild":I
    :cond_1
    return v1
.end method

.method public isSplitFullScreen()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 46
    iget-object v2, p0, Lcom/android/server/wm/WindowStateEx;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 47
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    :goto_0
    if-nez v0, :cond_2

    .line 50
    :cond_0
    :goto_1
    return v1

    .line 46
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    iget v2, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateEx;->mIsSplitFullScreen:Z

    goto :goto_1
.end method

.method public setSplitFullscreen(Z)V
    .locals 0
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateEx;->mIsSplitFullScreen:Z

    .line 55
    return-void
.end method

.method showLw(ZZ)Z
    .locals 5
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v1

    .line 64
    .local v1, "didShow":Z
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-ne v3, v4, :cond_1

    .line 65
    iget-object v3, p0, Lcom/android/server/wm/WindowStateEx;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 66
    .local v2, "sizeOfChild":I
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    .line 67
    add-int/lit8 v2, v2, -0x1

    .line 68
    iget-object v3, p0, Lcom/android/server/wm/WindowStateEx;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 69
    .local v0, "c":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/WindowStateEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v0, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    goto :goto_0

    .line 74
    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    .end local v2    # "sizeOfChild":I
    :cond_1
    return v1
.end method
