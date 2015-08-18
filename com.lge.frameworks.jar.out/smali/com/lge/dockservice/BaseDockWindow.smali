.class public abstract Lcom/lge/dockservice/BaseDockWindow;
.super Lcom/lge/dockservice/IBaseDockWindow$Stub;
.source "BaseDockWindow.java"

# interfaces
.implements Lcom/lge/dockservice/DockableWindow;


# static fields
.field private static final TAG:Ljava/lang/String; = "DockWindow"


# instance fields
.field private final mActivityName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDisplaymetrics:Landroid/util/DisplayMetrics;

.field private mDockIconBitmap:Landroid/graphics/Bitmap;

.field private mDockState:I

.field private final mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

.field private mHasTouchDownConfirmed:Z

.field mRequestedDockDirection:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/lge/dockservice/IBaseDockWindow$Stub;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/lge/dockservice/BaseDockWindow;->mDisplaymetrics:Landroid/util/DisplayMetrics;

    .line 21
    iput-object v1, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockIconBitmap:Landroid/graphics/Bitmap;

    .line 23
    iput v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockState:I

    .line 25
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/dockservice/BaseDockWindow;->mRequestedDockDirection:I

    .line 45
    iput-boolean v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mHasTouchDownConfirmed:Z

    .line 28
    const-string v1, "DockWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create BaseDockWindow for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/lge/dockservice/BaseDockWindow;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/lge/dockservice/BaseDockWindow;->mActivityName:Ljava/lang/String;

    .line 32
    invoke-static {p1, p0}, Lcom/lge/dockservice/DockWindowManager;->getDefault(Landroid/content/Context;Lcom/lge/dockservice/BaseDockWindow;)Lcom/lge/dockservice/DockWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    .line 33
    iget-object v1, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    invoke-virtual {v1, p0}, Lcom/lge/dockservice/DockWindowManager;->addDockableWindow(Lcom/lge/dockservice/DockableWindow;)V

    .line 35
    iget-object v1, p0, Lcom/lge/dockservice/BaseDockWindow;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 36
    .local v0, "mWindowManager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/lge/dockservice/BaseDockWindow;->mDisplaymetrics:Landroid/util/DisplayMetrics;

    .line 37
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mDisplaymetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 38
    return-void
.end method

.method public static final findSurfaceView(Landroid/view/View;)Landroid/view/SurfaceView;
    .locals 4
    .param p0, "aView"    # Landroid/view/View;

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "mSurfaceView":Landroid/view/SurfaceView;
    instance-of v3, p0, Landroid/view/SurfaceView;

    if-eqz v3, :cond_0

    .line 269
    check-cast p0, Landroid/view/SurfaceView;

    .line 281
    .end local p0    # "aView":Landroid/view/View;
    :goto_0
    return-object p0

    .line 272
    .restart local p0    # "aView":Landroid/view/View;
    :cond_0
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, p0

    .line 273
    check-cast v2, Landroid/view/ViewGroup;

    .line 274
    .local v2, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 275
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/dockservice/BaseDockWindow;->findSurfaceView(Landroid/view/View;)Landroid/view/SurfaceView;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_1

    move-object p0, v1

    .line 277
    goto :goto_0

    .line 274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 281
    .end local v0    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract getClientPackageName()Ljava/lang/String;
.end method

.method public abstract getClientRect()Landroid/graphics/Rect;
.end method

.method public final getDockDirection()I
    .locals 2

    .prologue
    .line 191
    const-string v0, "DockWindow"

    const-string v1, "getDockDirection"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    invoke-virtual {v0, p0}, Lcom/lge/dockservice/DockWindowManager;->getDockDirection(Lcom/lge/dockservice/DockableWindow;)I

    move-result v0

    return v0
.end method

.method public abstract getDockIconBitmap()Landroid/graphics/Bitmap;
.end method

.method public getDockState()I
    .locals 3

    .prologue
    .line 186
    const-string v0, "DockWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDockState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget v0, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockState:I

    return v0
.end method

.method public getDockWindowPosition()[I
    .locals 2

    .prologue
    .line 195
    const-string v0, "DockWindow"

    const-string v1, "getDockWindowPosition"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    iget-object v1, p0, Lcom/lge/dockservice/BaseDockWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/dockservice/DockWindowManager;->getDockWindowPosition(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public handleTouch(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 50
    iget-object v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    invoke-virtual {v2}, Lcom/lge/dockservice/DockWindowManager;->isDockServiceReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    const-string v2, "DockWindow"

    const-string v3, "touch event is ignored before dock service becomes ready"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 65
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 74
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    iput-boolean v3, p0, Lcom/lge/dockservice/BaseDockWindow;->mHasTouchDownConfirmed:Z

    .line 79
    invoke-virtual {p0}, Lcom/lge/dockservice/BaseDockWindow;->getClientRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 81
    .local v0, "clientRect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 82
    const-string v2, "DockWindow"

    const-string v3, "Cannot ACTION_DOWN - Fail to getClientRect == null"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v0    # "clientRect":Landroid/graphics/Rect;
    :pswitch_1
    iget-boolean v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mHasTouchDownConfirmed:Z

    if-nez v2, :cond_3

    .line 91
    const-string v2, "DockWindow"

    const-string v3, "ignore touch move without preceding touch down"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/lge/dockservice/BaseDockWindow;->getTouchOffsetX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/lge/dockservice/BaseDockWindow;->getTouchOffsetY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, p0, v3, v4}, Lcom/lge/dockservice/DockWindowManager;->isInDockArea(Lcom/lge/dockservice/DockableWindow;II)Z

    move-result v1

    .line 96
    .local v1, "isInDockArea":Z
    const-string v2, "DockWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check current position is in dock area or not : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/lge/dockservice/BaseDockWindow;->getDockState()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 101
    :cond_4
    iget-object v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockIconBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 102
    invoke-virtual {p0}, Lcom/lge/dockservice/BaseDockWindow;->getDockIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockIconBitmap:Landroid/graphics/Bitmap;

    .line 104
    :cond_5
    iget-object v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    iget-object v3, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, v3}, Lcom/lge/dockservice/DockWindowManager;->handleDockTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final isDocked()Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    invoke-virtual {v0, p0}, Lcom/lge/dockservice/DockWindowManager;->getDockDirection(Lcom/lge/dockservice/DockableWindow;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInDockArea(Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    invoke-virtual {v0, p1}, Lcom/lge/dockservice/DockWindowManager;->isInDockArea(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method isInDockArea()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    invoke-virtual {v0, p0}, Lcom/lge/dockservice/DockWindowManager;->isInDockArea(Lcom/lge/dockservice/DockableWindow;)Z

    move-result v0

    return v0
.end method

.method public onDockCompleted(I)V
    .locals 0
    .param p1, "dockDirection"    # I

    .prologue
    .line 225
    return-void
.end method

.method public onDockStarting(Z)Z
    .locals 1
    .param p1, "byUser"    # Z

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public onDockStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 216
    :goto_0
    :pswitch_0
    return-void

    .line 206
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/dockservice/BaseDockWindow;->onEnterDockArea()V

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-virtual {p0}, Lcom/lge/dockservice/BaseDockWindow;->onLeaveDockArea()V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEnterDockArea()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "DockWindow"

    const-string v1, "onEnterDockArea"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public onLeaveDockArea()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public onUndockCompleted()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onUndockStarting(Z)Z
    .locals 1
    .param p1, "byUser"    # Z

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public requestUndock(Z)V
    .locals 2
    .param p1, "startedAsFloating"    # Z

    .prologue
    .line 130
    const-string v0, "DockWindow"

    const-string v1, "requestUndock"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    iget-object v1, p0, Lcom/lge/dockservice/BaseDockWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lge/dockservice/DockWindowManager;->requestUndock(Ljava/lang/String;Z)V

    .line 132
    return-void
.end method

.method public restoreDockWindow(II)V
    .locals 3
    .param p1, "restoreX"    # I
    .param p2, "restoreY"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    iget-object v1, p0, Lcom/lge/dockservice/BaseDockWindow;->mActivityName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/lge/dockservice/DockWindowManager;->initDock(Ljava/lang/String;IIZ)V

    .line 145
    return-void
.end method

.method public final terminate()V
    .locals 3

    .prologue
    .line 135
    const-string v0, "DockWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminate Dock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    iget-object v1, p0, Lcom/lge/dockservice/BaseDockWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/dockservice/DockWindowManager;->terminateDock(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected updateDockIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockWindowManager:Lcom/lge/dockservice/DockWindowManager;

    iget-object v1, p0, Lcom/lge/dockservice/BaseDockWindow;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/lge/dockservice/DockWindowManager;->updateDockIconImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 141
    return-void
.end method

.method public final updateDockState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "oldState":Ljava/lang/String;
    const/4 v0, 0x0

    .line 152
    .local v0, "newState":Ljava/lang/String;
    iget v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockState:I

    if-ne v2, v3, :cond_2

    .line 153
    const-string v1, "STATE_INVALID"

    .line 162
    :cond_0
    :goto_0
    if-ne p1, v3, :cond_4

    .line 163
    const-string v0, "STATE_INVALID"

    .line 171
    :cond_1
    :goto_1
    const-string v2, "DockWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDockState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iput p1, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockState:I

    .line 173
    invoke-virtual {p0, p1}, Lcom/lge/dockservice/BaseDockWindow;->onDockStateChanged(I)V

    .line 174
    return-void

    .line 155
    :cond_2
    iget v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockState:I

    if-nez v2, :cond_3

    .line 156
    const-string v1, "STATE_UNDOCK"

    goto :goto_0

    .line 158
    :cond_3
    iget v2, p0, Lcom/lge/dockservice/BaseDockWindow;->mDockState:I

    if-ne v2, v4, :cond_0

    .line 159
    const-string v1, "STATE_DOCK"

    goto :goto_0

    .line 165
    :cond_4
    if-nez p1, :cond_5

    .line 166
    const-string v0, "STATE_UNDOCK"

    goto :goto_1

    .line 168
    :cond_5
    if-ne p1, v4, :cond_1

    .line 169
    const-string v0, "STATE_DOCK"

    goto :goto_1
.end method
