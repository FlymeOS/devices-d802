.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowsForAccessibilityObserver"


# instance fields
.field private final mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mOldWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .prologue
    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    .line 993
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 995
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 997
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 999
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    .line 1001
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1003
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1005
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1019
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    .line 1020
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 1021
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1022
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 1023
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 1026
    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    return-void
.end method

.method private cacheWindows(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1254
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1255
    .local v3, "oldWindowCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1256
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    invoke-virtual {v4}, Landroid/view/WindowInfo;->recycle()V

    .line 1255
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1258
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1259
    .local v2, "newWindowCount":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1260
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    .line 1261
    .local v1, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-static {v1}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1263
    .end local v1    # "newWindow":Landroid/view/WindowInfo;
    :cond_1
    return-void
.end method

.method private clearAndRecycleWindows(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1306
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1307
    .local v1, "windowCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1308
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1307
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1310
    :cond_0
    return-void
.end method

.method private computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1204
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1205
    .local v2, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1206
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1207
    .local v1, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1210
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1211
    .local v3, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1212
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 1215
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1216
    .local v0, "matrix":Landroid/graphics/Matrix;
    # invokes: Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    invoke-static {p1, v0}, Lcom/android/server/wm/AccessibilityController;->access$600(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 1217
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1220
    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1222
    return-void
.end method

.method private static isReportedWindowType(I)Z
    .locals 1
    .param p0, "windowType"    # I

    .prologue
    .line 1313
    const/16 v0, 0x7ed

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7ea

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7ee

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;
    .locals 7
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "boundsInScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 1226
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v4

    .line 1227
    .local v4, "window":Landroid/view/WindowInfo;
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v5, v4, Landroid/view/WindowInfo;->type:I

    .line 1228
    iget v5, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v5, v4, Landroid/view/WindowInfo;->layer:I

    .line 1229
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 1231
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1232
    .local v0, "attachedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 1233
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1236
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    iput-boolean v5, v4, Landroid/view/WindowInfo;->focused:Z

    .line 1237
    iget-object v5, v4, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1239
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1240
    .local v2, "childCount":I
    if-lez v2, :cond_2

    .line 1241
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v5, :cond_1

    .line 1242
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 1244
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1245
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1246
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1250
    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v3    # "j":I
    :cond_2
    return-object v4
.end method

.method private populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1328
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1330
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 1331
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1332
    .local v2, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1333
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1334
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1335
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1332
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1338
    .end local v4    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .locals 4
    .param p1, "oldWindow"    # Landroid/view/WindowInfo;
    .param p2, "newWindow"    # Landroid/view/WindowInfo;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1266
    if-ne p1, p2, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return v0

    .line 1269
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1270
    goto :goto_0

    .line 1272
    :cond_2
    if-nez p2, :cond_3

    move v0, v1

    .line 1273
    goto :goto_0

    .line 1275
    :cond_3
    iget v2, p1, Landroid/view/WindowInfo;->type:I

    iget v3, p2, Landroid/view/WindowInfo;->type:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 1276
    goto :goto_0

    .line 1278
    :cond_4
    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 1279
    goto :goto_0

    .line 1281
    :cond_5
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_6

    .line 1282
    iget-object v2, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_7

    move v0, v1

    .line 1283
    goto :goto_0

    .line 1285
    :cond_6
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 1286
    goto :goto_0

    .line 1288
    :cond_7
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v2, :cond_8

    .line 1289
    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v2, :cond_9

    move v0, v1

    .line 1290
    goto :goto_0

    .line 1292
    :cond_8
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 1293
    goto :goto_0

    .line 1295
    :cond_9
    iget-object v2, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    iget-object v3, p2, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 1296
    goto :goto_0

    .line 1298
    :cond_a
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1300
    goto :goto_0
.end method


# virtual methods
.method public computeChangedWindows()V
    .locals 26

    .prologue
    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1050
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 1051
    monitor-exit v24

    .line 1200
    :goto_0
    return-void

    .line 1054
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v25, "window"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    .line 1056
    .local v19, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Point;->x:I

    .line 1058
    .local v13, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Point;->y:I

    .line 1060
    .local v12, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1061
    .local v14, "unaccountedSpace":Landroid/graphics/Region;
    const/16 v23, 0x0

    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1, v13, v12}, Landroid/graphics/Region;->set(IIII)Z

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    .line 1064
    .local v16, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 1066
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v21, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1069
    .local v3, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1071
    const/4 v7, 0x0

    .line 1073
    .local v7, "focusedWindowAdded":Z
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 1074
    .local v15, "visibleWindowCount":I
    add-int/lit8 v8, v15, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_4

    .line 1075
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    .line 1078
    .local v20, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1079
    .local v4, "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1081
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1085
    .local v6, "flags":I
    and-int/lit8 v23, v6, 0x10

    if-eqz v23, :cond_2

    .line 1074
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1090
    :cond_2
    invoke-virtual {v14, v4}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 1095
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1097
    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    move-result-object v17

    .line 1098
    .local v17, "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1099
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1101
    const/4 v7, 0x1

    .line 1106
    .end local v17    # "window":Landroid/view/WindowInfo;
    :cond_3
    sget-object v23, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v23

    invoke-virtual {v14, v4, v14, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1110
    invoke-virtual {v14}, Landroid/graphics/Region;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1122
    .end local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v6    # "flags":I
    .end local v20    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_4
    :goto_2
    if-nez v7, :cond_5

    .line 1123
    add-int/lit8 v8, v15, -0x1

    :goto_3
    if-ltz v8, :cond_5

    .line 1124
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    .line 1125
    .restart local v20    # "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1128
    .restart local v4    # "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1131
    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    move-result-object v17

    .line 1133
    .restart local v17    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1134
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    .end local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v17    # "window":Landroid/view/WindowInfo;
    .end local v20    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v18

    .line 1142
    .local v18, "windowCount":I
    const/4 v8, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v8, v0, :cond_b

    .line 1143
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowInfo;

    .line 1144
    .restart local v17    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 1145
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1147
    :cond_6
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 1148
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v5

    .line 1149
    .local v5, "childTokenCount":I
    add-int/lit8 v9, v5, -0x1

    .local v9, "j":I
    :goto_5
    if-ltz v9, :cond_a

    .line 1150
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 1151
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1149
    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 1115
    .end local v5    # "childTokenCount":I
    .end local v9    # "j":I
    .end local v17    # "window":Landroid/view/WindowInfo;
    .end local v18    # "windowCount":I
    .restart local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v6    # "flags":I
    .restart local v20    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_8
    and-int/lit8 v23, v6, 0x28

    if-nez v23, :cond_1

    goto/16 :goto_2

    .line 1123
    .end local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v6    # "flags":I
    :cond_9
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_3

    .line 1142
    .end local v20    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v17    # "window":Landroid/view/WindowInfo;
    .restart local v18    # "windowCount":I
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1158
    .end local v17    # "window":Landroid/view/WindowInfo;
    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->clear()V

    .line 1159
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1162
    const/16 v22, 0x0

    .line 1163
    .local v22, "windowsChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    .line 1165
    const/16 v22, 0x1

    .line 1183
    :cond_c
    :goto_6
    if-eqz v22, :cond_10

    .line 1188
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->cacheWindows(Ljava/util/List;)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v25, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/Message;->sendToTarget()V

    .line 1199
    :goto_7
    monitor-exit v24

    goto/16 :goto_0

    .end local v3    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v7    # "focusedWindowAdded":Z
    .end local v8    # "i":I
    .end local v12    # "screenHeight":I
    .end local v13    # "screenWidth":I
    .end local v14    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v15    # "visibleWindowCount":I
    .end local v16    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v18    # "windowCount":I
    .end local v19    # "windowManager":Landroid/view/WindowManager;
    .end local v21    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    .end local v22    # "windowsChanged":Z
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 1166
    .restart local v3    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .restart local v7    # "focusedWindowAdded":Z
    .restart local v8    # "i":I
    .restart local v12    # "screenHeight":I
    .restart local v13    # "screenWidth":I
    .restart local v14    # "unaccountedSpace":Landroid/graphics/Region;
    .restart local v15    # "visibleWindowCount":I
    .restart local v16    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .restart local v18    # "windowCount":I
    .restart local v19    # "windowManager":Landroid/view/WindowManager;
    .restart local v21    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    .restart local v22    # "windowsChanged":Z
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_c

    .line 1170
    :cond_e
    const/4 v8, 0x0

    :goto_8
    move/from16 v0, v18

    if-ge v8, v0, :cond_c

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowInfo;

    .line 1172
    .local v11, "oldWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowInfo;

    .line 1176
    .local v10, "newWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 1177
    const/16 v22, 0x1

    .line 1178
    goto :goto_6

    .line 1170
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1197
    .end local v10    # "newWindow":Landroid/view/WindowInfo;
    .end local v11    # "oldWindow":Landroid/view/WindowInfo;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1031
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    if-eq v0, v1, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
