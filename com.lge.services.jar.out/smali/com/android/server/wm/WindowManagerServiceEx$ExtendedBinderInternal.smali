.class final Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;
.super Lcom/lge/view/IWindowManagerEx$Stub;
.source "WindowManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExtendedBinderInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerServiceEx;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-direct {p0}, Lcom/lge/view/IWindowManagerEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerServiceEx;Lcom/android/server/wm/WindowManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/WindowManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/wm/WindowManagerServiceEx$1;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/wm/WindowManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public addAllowList(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerServiceEx;->findFromAllowPopupList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "DISA_WM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists on the allowPopupList."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v0, "DISA_WM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been added on the allowPopupList."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerServiceEx;->writeAllowPopupList()V

    .line 357
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exchangeAllowListSet([Ljava/lang/String;)V
    .locals 5
    .param p1, "packageNameList"    # [Ljava/lang/String;

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    monitor-enter v2

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 389
    const-string v1, "DISA_WM"

    const-string v3, "allowPopupList has been flushed."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 393
    const-string v1, "DISA_WM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been added on the allowPopupList."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerServiceEx;->writeAllowPopupList()V

    .line 396
    monitor-exit v2

    .line 397
    return-void

    .line 396
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLGSystemUiVisibility()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "mSystemUiVisibilityLG":I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getLGSystemUiVisibility()I

    move-result v0

    .line 201
    return v0
.end method

.method public getSystemBarShownState()I
    .locals 12

    .prologue
    .line 156
    const/4 v3, 0x0

    .line 158
    .local v3, "state":I
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 159
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerServiceEx;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 160
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 161
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerServiceEx;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v8

    .line 162
    .local v8, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 163
    .local v2, "numWindows":I
    const/4 v7, 0x0

    .local v7, "winNdx":I
    :goto_1
    if-ge v7, v2, :cond_3

    .line 164
    invoke-virtual {v8, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 167
    .local v6, "w":Lcom/android/server/wm/WindowState;
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "StatusBar"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7d0

    if-ne v9, v11, :cond_2

    .line 169
    const/4 v4, 0x0

    .line 170
    .local v4, "statusBarSize":I
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x1050010

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 171
    .local v5, "unexpandedStatusBarSize":I
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v9, :cond_0

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    if-eqz v9, :cond_0

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v9, :cond_0

    .line 172
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v4, v9, v11

    .line 173
    or-int/lit8 v3, v3, 0x1

    .line 177
    :cond_0
    if-le v4, v5, :cond_1

    .line 178
    and-int/lit8 v3, v3, -0x2

    .line 163
    .end local v4    # "statusBarSize":I
    .end local v5    # "unexpandedStatusBarSize":I
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 183
    :cond_2
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "NavigationBar"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7e3

    if-ne v9, v11, :cond_1

    .line 185
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v9, :cond_1

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v9, :cond_1

    .line 186
    or-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 160
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 191
    .end local v2    # "numWindows":I
    .end local v7    # "winNdx":I
    .end local v8    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    monitor-exit v10

    .line 193
    return v3

    .line 191
    .end local v0    # "displayNdx":I
    .end local v1    # "numDisplays":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public getWindowInfoList(IZ)Ljava/util/List;
    .locals 11
    .param p1, "displayNdx"    # I
    .param p2, "visibleOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerServiceEx;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 230
    .local v1, "numDisplays":I
    if-ltz p1, :cond_3

    if-ge p1, v1, :cond_3

    .line 231
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v5, "wndList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v7, v6, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 233
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerServiceEx;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 235
    .local v4, "windowList":Lcom/android/server/wm/WindowList;
    const/4 v3, 0x0

    .local v3, "winNdx":I
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 236
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 237
    .local v2, "w":Lcom/android/server/wm/WindowState;
    if-eqz p2, :cond_0

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v6, :cond_1

    .line 238
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 239
    .local v0, "bndl":Landroid/os/Bundle;
    const-string v6, "WIN_NUM"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    const-string v6, "SURFACE_LAYER"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v6, "TITLE"

    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v6, "PACKAGE"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v6, "FRAME_SIZE"

    const/4 v8, 0x4

    new-array v8, v8, [I

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    aput v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    aput v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    aput v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    aput v10, v8, v9

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 246
    const-string v6, "SHOWN_FRAME_SIZE"

    const/4 v8, 0x4

    new-array v8, v8, [F

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->left:F

    aput v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->top:F

    aput v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    aput v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    aput v10, v8, v9

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 249
    const-string v6, "IS_VISIBLE"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v6, "IS_WIN_VISIBLE"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    const-string v6, "IS_FOCUSED"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v0    # "bndl":Landroid/os/Bundle;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 255
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_2
    monitor-exit v7

    .line 258
    .end local v3    # "winNdx":I
    .end local v4    # "windowList":Lcom/android/server/wm/WindowList;
    .end local v5    # "wndList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :goto_1
    return-object v5

    .line 255
    .restart local v5    # "wndList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 258
    .end local v5    # "wndList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isWindowSplit(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "Isession"    # Landroid/view/IWindowSession;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "outDisplayFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerServiceEx;->isWindowSplit(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public moveWindowTokenToTop(Landroid/os/IBinder;)V
    .locals 13
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 109
    .local v2, "origId":J
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 110
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerServiceEx;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowToken;

    .line 111
    .local v8, "wtoken":Lcom/android/server/wm/WindowToken;
    if-nez v8, :cond_0

    .line 112
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attempted to reorder non-existing token: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    monitor-exit v10

    .line 142
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerServiceEx;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 117
    .local v7, "windowList":Lcom/android/server/wm/WindowList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "floatingWindowStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/WindowState;>;"
    iget-object v9, v8, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 119
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 120
    iget-object v9, v8, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 121
    .local v6, "win":Lcom/android/server/wm/WindowState;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    new-instance v9, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal$1;

    invoke-direct {v9, p0, v7}, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal$1;-><init>(Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;Lcom/android/server/wm/WindowList;)V

    invoke-static {v0, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 131
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 132
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 133
    .local v5, "st":Lcom/android/server/wm/WindowState;
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v5}, Lcom/android/server/wm/WindowManagerServiceEx;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 136
    .end local v5    # "st":Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 138
    .restart local v5    # "st":Lcom/android/server/wm/WindowState;
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-virtual {v9, v5}, Lcom/android/server/wm/WindowManagerServiceEx;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 140
    .end local v5    # "st":Lcom/android/server/wm/WindowState;
    :cond_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 140
    .end local v0    # "floatingWindowStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/WindowState;>;"
    .end local v1    # "i":I
    .end local v4    # "size":I
    .end local v7    # "windowList":Lcom/android/server/wm/WindowList;
    .end local v8    # "wtoken":Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method public printAllowPopupLists()V
    .locals 5

    .prologue
    .line 405
    const-string v2, "DISA_WM"

    const-string v3, "********** Allow Popup list **********"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 407
    .local v0, "its":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 409
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "DISA_WM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v2, "DISA_WM"

    const-string v3, "**************************************"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method public removeAllowList(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerServiceEx;->findFromAllowPopupList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    const-string v0, "DISA_WM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not exists on the allowPopupList."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    monitor-enter v1

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 374
    const-string v0, "DISA_WM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been removed from the allowPopupList."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerServiceEx;->writeAllowPopupList()V

    .line 376
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendSplitWindowFocusChanged(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "getFocus"    # Z

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerServiceEx;->sendSplitWindowFocusChanged(Landroid/os/IBinder;Z)V

    .line 319
    return-void
.end method

.method public startControlPopup()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerServiceEx;->isMdmOn:Z

    .line 328
    const-string v0, "DISA_WM"

    const-string v1, "DISA popup control ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method public stopControlPopup()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerServiceEx;->isMdmOn:Z

    .line 338
    const-string v0, "DISA_WM"

    const-string v1, "DISA popup control OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method public switchSplitWindows()V
    .locals 4

    .prologue
    .line 270
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 271
    .local v0, "origId":J
    sget-boolean v2, Lcom/android/server/wm/WindowManagerServiceEx;->CAPP_SPLITWINDOW:Z

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceEx;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 287
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerServiceEx;->sendNewConfiguration()V

    .line 290
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    return-void

    .line 287
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
