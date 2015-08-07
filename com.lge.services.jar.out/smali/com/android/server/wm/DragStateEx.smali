.class Lcom/android/server/wm/DragStateEx;
.super Lcom/android/server/wm/DragState;
.source "DragStateEx.java"


# static fields
.field static sIWin:Landroid/view/IWindow;

.field static sTmpFlag:I

.field static sTriggerAnim:Z


# instance fields
.field private endP:Landroid/graphics/PointF;

.field mDropInProgress:Z

.field private startP:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput v0, Lcom/android/server/wm/DragStateEx;->sTmpFlag:I

    .line 26
    sput-boolean v0, Lcom/android/server/wm/DragStateEx;->sTriggerAnim:Z

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/DragStateEx;->sIWin:Landroid/view/IWindow;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "flags"    # I
    .param p5, "localWin"    # Landroid/os/IBinder;

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragStateEx;->startP:Landroid/graphics/PointF;

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragStateEx;->endP:Landroid/graphics/PointF;

    .line 32
    const-string v0, "ZDI"

    const-string v1, "DragStateEx init.. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public static doFailAnimIfNeeded(Landroid/view/IWindow;Z)V
    .locals 1
    .param p0, "iwin"    # Landroid/view/IWindow;
    .param p1, "result"    # Z

    .prologue
    .line 143
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_ZDI_O:Z

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    .line 148
    sput-object p0, Lcom/android/server/wm/DragStateEx;->sIWin:Landroid/view/IWindow;

    .line 149
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/DragStateEx;->sTriggerAnim:Z

    goto :goto_0
.end method

.method private handleDragEndedWhenZdi()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/DragStateEx;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 125
    .local v10, "ws":Lcom/android/server/wm/WindowState;
    const/4 v0, 0x4

    iget-boolean v6, p0, Lcom/android/server/wm/DragStateEx;->mDragResult:Z

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v8

    .line 128
    .local v8, "evt":Landroid/view/DragEvent;
    :try_start_0
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v8}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v2, :cond_0

    .line 133
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    goto :goto_0

    .line 129
    :catch_0
    move-exception v7

    .line 130
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to drag-end window "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v2, :cond_0

    .line 133
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    goto :goto_0

    .line 132
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_1

    .line 133
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    :cond_1
    throw v0

    .line 138
    .end local v8    # "evt":Landroid/view/DragEvent;
    .end local v10    # "ws":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DragStateEx;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragStateEx;->mDragInProgress:Z

    .line 140
    return-void
.end method

.method public static setFlags(I)V
    .locals 3
    .param p0, "flags"    # I

    .prologue
    .line 109
    const-string v0, "ZDI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DragStateEx setFlags.. flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sput p0, Lcom/android/server/wm/DragStateEx;->sTmpFlag:I

    .line 112
    return-void
.end method

.method private setStartPointWhenZdi(FF)V
    .locals 1
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 115
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_ZDI_O:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/DragStateEx;->startP:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragStateEx;->mDropInProgress:Z

    .line 119
    return-void
.end method


# virtual methods
.method protected broadcastDragEndedLw()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_ZDI_O:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/android/server/wm/DragStateEx;->handleDragEndedWhenZdi()V

    .line 51
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragStateEx;->mDropInProgress:Z

    .line 52
    return-void

    .line 49
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/DragState;->broadcastDragEndedLw()V

    goto :goto_0
.end method

.method protected broadcastDragStartedLw(FF)V
    .locals 0
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragStateEx;->setStartPointWhenZdi(FF)V

    .line 38
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DragState;->broadcastDragStartedLw(FF)V

    .line 39
    return-void
.end method

.method dropFailAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;FFLandroid/view/SurfaceControl;Lcom/android/server/wm/WindowManagerService;)V
    .locals 8
    .param p1, "startP"    # Landroid/graphics/PointF;
    .param p2, "endP"    # Landroid/graphics/PointF;
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F
    .param p5, "surface"    # Landroid/view/SurfaceControl;
    .param p6, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 181
    new-instance v0, Lcom/android/server/wm/DragStateEx$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p5

    move v5, p3

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DragStateEx$1;-><init>(Lcom/android/server/wm/DragStateEx;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/SurfaceControl;FFLcom/android/server/wm/WindowManagerService;)V

    .line 218
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 219
    return-void
.end method

.method protected endDragLw()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 89
    sget-boolean v0, Lcom/android/server/wm/DragStateEx;->sTriggerAnim:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DragStateEx;->mFlags:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DragStateEx;->sIWin:Landroid/view/IWindow;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/DragStateEx;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/wm/DragStateEx;->sIWin:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 91
    .local v7, "win":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_0

    .line 92
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 93
    .local v8, "winBinder":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/android/server/wm/DragStateEx;->mLocalWin:Landroid/os/IBinder;

    if-eq v8, v0, :cond_0

    .line 94
    const-string v0, "ZDI"

    const-string v1, "animation is ready to run.. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/android/server/wm/DragStateEx;->startP:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/server/wm/DragStateEx;->endP:Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/server/wm/DragStateEx;->mThumbOffsetX:F

    iget v4, p0, Lcom/android/server/wm/DragStateEx;->mThumbOffsetY:F

    iget-object v5, p0, Lcom/android/server/wm/DragStateEx;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/server/wm/DragStateEx;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragStateEx;->dropFailAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;FFLandroid/view/SurfaceControl;Lcom/android/server/wm/WindowManagerService;)V

    .line 96
    sput-boolean v9, Lcom/android/server/wm/DragStateEx;->sTriggerAnim:Z

    .line 97
    sput-object v10, Lcom/android/server/wm/DragStateEx;->sIWin:Landroid/view/IWindow;

    .line 106
    .end local v7    # "win":Lcom/android/server/wm/WindowState;
    .end local v8    # "winBinder":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 102
    :cond_0
    sput-boolean v9, Lcom/android/server/wm/DragStateEx;->sTriggerAnim:Z

    .line 103
    sput-object v10, Lcom/android/server/wm/DragStateEx;->sIWin:Landroid/view/IWindow;

    .line 105
    invoke-super {p0}, Lcom/android/server/wm/DragState;->endDragLw()V

    goto :goto_0
.end method

.method endDragLw(Lcom/android/server/wm/WindowState;)V
    .locals 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 155
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_ZDI_O:Z

    if-nez v0, :cond_0

    .line 156
    invoke-super {p0}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 178
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "ZDI"

    const-string v1, "DragStateEx endDragLw.. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/DragStateEx;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->broadcastDragEndedLw()V

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/DragStateEx;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->unregister()V

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/DragStateEx;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 168
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_ZDI_O:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/DragStateEx;->mDragResult:Z

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 170
    .local v7, "winBinder":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/android/server/wm/DragStateEx;->mLocalWin:Landroid/os/IBinder;

    if-eq v7, v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/DragStateEx;->startP:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/server/wm/DragStateEx;->endP:Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/server/wm/DragStateEx;->mThumbOffsetX:F

    iget v4, p0, Lcom/android/server/wm/DragStateEx;->mThumbOffsetY:F

    iget-object v5, p0, Lcom/android/server/wm/DragStateEx;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/server/wm/DragStateEx;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragStateEx;->dropFailAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;FFLandroid/view/SurfaceControl;Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_0

    .line 176
    .end local v7    # "winBinder":Landroid/os/IBinder;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragStateEx;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->reset()V

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/DragStateEx;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    goto :goto_0
.end method

.method protected notifyDropLw(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/wm/DragStateEx;->mDropInProgress:Z

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragStateEx;->mDropInProgress:Z

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/DragStateEx;->endP:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 66
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z

    move-result v0

    goto :goto_0
.end method

.method protected notifyMoveLw(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/wm/DragStateEx;->mDropInProgress:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V

    goto :goto_0
.end method

.method protected sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V
    .locals 1
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F
    .param p4, "desc"    # Landroid/content/ClipDescription;

    .prologue
    .line 79
    sget v0, Lcom/android/server/wm/DragStateEx;->sTmpFlag:I

    if-eqz v0, :cond_0

    .line 80
    sget v0, Lcom/android/server/wm/DragStateEx;->sTmpFlag:I

    iput v0, p0, Lcom/android/server/wm/DragStateEx;->mFlags:I

    .line 81
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/DragStateEx;->sTmpFlag:I

    .line 84
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 85
    return-void
.end method
