.class public Lcom/lge/dockservice/DockWindowService;
.super Landroid/app/Service;
.source "DockWindowService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;,
        Lcom/lge/dockservice/DockWindowService$DockView;,
        Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;
    }
.end annotation


# static fields
.field static final ACTION_ACCESSORY_EVENT:Ljava/lang/String; = "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

.field static final ACTION_DOCK_WINDOW_ENTER_LOWPROFILE:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

.field static final ACTION_DOCK_WINDOW_EXIT_LOWPROFILE:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

.field static final ACTION_FLOATING_WINDOW_CHANGED:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

.field static final ACTION_FULLSCREEN_CALL_INCOMING:Ljava/lang/String; = "com.lge.action.INCOMING_FULLSCREEN"

.field static final EXTRA_ACCESSORY_COVER_STATE:Ljava/lang/String; = "com.lge.intent.extra.ACCESSORY_COVER_STATE"

.field public static final EXTRA_ACCESSORY_STATE_FRONT_CLOSED:I = 0x1

.field public static final EXTRA_ACCESSORY_STATE_FRONT_HALFOPEN:I = 0x2

.field public static final EXTRA_ACCESSORY_STATE_FRONT_OPENED:I = 0x0

.field static final EXTRA_REMOVED_WINDOW:Ljava/lang/String; = "window-remove"

.field public static final EXTRA_SERVICE_VIBRATE:Ljava/lang/String; = "com.lge.app.floating.ExtraService.VIBRATE"

.field private static final TAG:Ljava/lang/String;

.field private static sGetServiceMethod:Ljava/lang/reflect/Method;

.field private static sIWindowManager:Ljava/lang/Object;

.field private static sIWindowManagerStubAsInterfaceMethod:Ljava/lang/reflect/Method;

.field private static sIsKeyguardSecure:Ljava/lang/reflect/Method;

.field private static sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;


# instance fields
.field private mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

.field private final mCurrentConfig:Landroid/content/res/Configuration;

.field public mDockAreaBerth:I

.field private final mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/dockservice/DockWindowService$DockView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDockWindowService:Lcom/lge/dockservice/IDockWindowService$Stub;

.field private mHandler:Landroid/os/Handler;

.field mIsQuickCoverClosed:Z

.field private mLowProfileRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;

.field private mWindowManager:Landroid/view/WindowManager;

.field refreshDockAxis:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 63
    const-class v2, Lcom/lge/dockservice/DockWindowService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    .line 1883
    :try_start_0
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/dockservice/DockWindowService;->sGetServiceMethod:Ljava/lang/reflect/Method;

    .line 1884
    const-string v2, "com.lge.view.IWindowManagerEx$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/dockservice/DockWindowService;->sIWindowManagerStubAsInterfaceMethod:Ljava/lang/reflect/Method;

    .line 1886
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->sGetServiceMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "window"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1887
    .local v0, "binderObject":Ljava/lang/Object;
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->sIWindowManagerStubAsInterfaceMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/lge/dockservice/DockWindowService;->sIWindowManager:Ljava/lang/Object;

    .line 1888
    const-string v2, "com.lge.view.IWindowManagerEx"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "moveWindowTokenToTop"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/dockservice/DockWindowService;->sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;

    .line 1890
    const-class v2, Landroid/app/KeyguardManager;

    const-string v3, "isKeyguardSecure"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/dockservice/DockWindowService;->sIsKeyguardSecure:Ljava/lang/reflect/Method;

    .line 1891
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->sIsKeyguardSecure:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 1892
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->sIsKeyguardSecure:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1894
    :cond_0
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v3, "reflection success"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1899
    :goto_0
    return-void

    .line 1895
    :catch_0
    move-exception v1

    .line 1896
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v3, "reflection fail"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/dockservice/DockWindowService;->refreshDockAxis:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/dockservice/DockWindowService;->mIsQuickCoverClosed:Z

    .line 207
    new-instance v0, Lcom/lge/dockservice/DockWindowService$1;

    invoke-direct {v0, p0}, Lcom/lge/dockservice/DockWindowService$1;-><init>(Lcom/lge/dockservice/DockWindowService;)V

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mDockWindowService:Lcom/lge/dockservice/IDockWindowService$Stub;

    .line 1720
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/dockservice/DockWindowService;)Lcom/lge/dockservice/DockWindowService$DockView;
    .locals 1
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/DockWindowService$DockView;
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;
    .param p1, "x1"    # Lcom/lge/dockservice/DockWindowService$DockView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/dockservice/DockWindowService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/lge/dockservice/DockWindowService;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;
    .param p1, "x1"    # Lcom/lge/dockservice/DockWindowService$DockView;
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;
    .param p1, "x1"    # Lcom/lge/dockservice/DockWindowService$DockView;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/lge/dockservice/DockWindowService;->updateDockAxis(Lcom/lge/dockservice/DockWindowService$DockView;)V

    return-void
.end method

.method static synthetic access$2400()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->sIWindowManager:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/lge/dockservice/DockWindowService;->enterLowProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->sIsKeyguardSecure:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/dockservice/DockWindowService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/dockservice/DockWindowService;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/lge/dockservice/DockWindowService;->removeViewInUiThread(Landroid/view/View;)V

    return-void
.end method

.method private avoidDock(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "direction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/dockservice/DockWindowService$DockView;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/dockservice/DockWindowService$DockView;>;"
    invoke-static {p0}, Lcom/lge/dockservice/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 593
    .local v1, "iconHeight":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 608
    :cond_0
    return-void

    .line 596
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 598
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, v2, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v2, v2, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 599
    if-eqz p2, :cond_3

    .line 600
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 596
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    goto :goto_1
.end method

.method private enterLowProfile(Ljava/lang/String;)V
    .locals 2
    .param p1, "requester"    # Ljava/lang/String;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 866
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    monitor-enter v1

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 855
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/lge/dockservice/DockWindowService$3;

    invoke-direct {v1, p0, p1}, Lcom/lge/dockservice/DockWindowService$3;-><init>(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 855
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private exitLowProfile(Ljava/lang/String;)V
    .locals 2
    .param p1, "requester"    # Ljava/lang/String;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 937
    :goto_0
    return-void

    .line 872
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/lge/dockservice/DockWindowService$4;

    invoke-direct {v1, p0, p1}, Lcom/lge/dockservice/DockWindowService$4;-><init>(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private reloateIfStickOut()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 650
    sget-object v6, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v7, "reloateIfStickOut "

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-static {p0}, Lcom/lge/dockservice/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 652
    .local v3, "iconHeight":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 653
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 654
    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f060009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 655
    .local v5, "minH":I
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 656
    .local v4, "maxH":I
    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 657
    .local v1, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$800(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 660
    iget v6, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-ge v6, v5, :cond_1

    .line 661
    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 662
    sget-object v6, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reloateIfStickOut 1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-direct {p0, v1, v9}, Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    goto :goto_0

    .line 665
    :cond_1
    iget v6, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    add-int/2addr v6, v3

    if-le v6, v4, :cond_2

    .line 666
    sub-int v6, v4, v3

    iput v6, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 667
    sget-object v6, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reloateIfStickOut 2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-direct {p0, v1, v9}, Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    goto :goto_0

    .line 671
    :cond_2
    sget-object v6, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v7, "reloateIfStickOut 3: Do nothing"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 675
    .end local v1    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_3
    return-void
.end method

.method private removeViewInUiThread(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/dockservice/DockWindowService$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/dockservice/DockWindowService$2;-><init>(Lcom/lge/dockservice/DockWindowService;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 847
    return-void
.end method

.method private sortDockList(Ljava/util/ArrayList;Z)V
    .locals 5
    .param p2, "acending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/dockservice/DockWindowService$DockView;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/dockservice/DockWindowService$DockView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 572
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 573
    if-eqz p2, :cond_1

    .line 574
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v4, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-le v4, v3, :cond_0

    .line 575
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 576
    .local v2, "temp":Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 572
    .end local v2    # "temp":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 580
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v4, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-ge v4, v3, :cond_0

    .line 581
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 582
    .restart local v2    # "temp":Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 571
    .end local v2    # "temp":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    .end local v1    # "j":I
    :cond_3
    return-void
.end method

.method private updateDock(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/dockservice/DockWindowService$DockView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/dockservice/DockWindowService$DockView;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 640
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 641
    .local v0, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 642
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iput v3, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 643
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iput v3, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    goto :goto_1

    .line 639
    .end local v0    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private updateDockAxis(Lcom/lge/dockservice/DockWindowService$DockView;)V
    .locals 2
    .param p1, "dv"    # Lcom/lge/dockservice/DockWindowService$DockView;

    .prologue
    const/4 v1, 0x2

    .line 626
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$800(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 637
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 630
    iget v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iput v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mX_Landscape:I

    .line 631
    iget v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iput v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mY_Landscape:I

    goto :goto_0

    .line 634
    :cond_1
    iget v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iput v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mX_Portrate:I

    .line 635
    iget v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iput v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mY_Portrate:I

    goto :goto_0
.end method

.method private updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V
    .locals 10
    .param p1, "baseDock"    # Lcom/lge/dockservice/DockWindowService$DockView;
    .param p2, "updateLayout"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 515
    sget-object v5, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update Dock position by Location...BaseDock : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v4, "upperDockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/dockservice/DockWindowService$DockView;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v3, "lowerDockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/dockservice/DockWindowService$DockView;>;"
    sget-object v5, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v6, "1. divide Dock with upper and lower group."

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 522
    .local v0, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$800(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 525
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1300(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v5

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1300(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 528
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 529
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 533
    :cond_1
    iget v5, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iget v6, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-ge v5, v6, :cond_2

    .line 534
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    :cond_2
    iget v5, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iget v6, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-le v5, v6, :cond_3

    .line 536
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :cond_3
    iget v5, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iget v6, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-ne v5, v6, :cond_0

    .line 538
    iget v5, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 539
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 543
    .end local v0    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 544
    sget-object v6, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "upperDockList : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 546
    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 547
    sget-object v6, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lowerDockList : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 550
    :cond_6
    sget-object v5, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v6, "2. sort each group"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, v4, v8}, Lcom/lge/dockservice/DockWindowService;->sortDockList(Ljava/util/ArrayList;Z)V

    .line 552
    invoke-direct {p0, v3, v9}, Lcom/lge/dockservice/DockWindowService;->sortDockList(Ljava/util/ArrayList;Z)V

    .line 555
    sget-object v5, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v6, "3. relocate all DockViews (push)"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, v4, v9}, Lcom/lge/dockservice/DockWindowService;->avoidDock(Ljava/util/ArrayList;Z)V

    .line 557
    invoke-direct {p0, v3, v8}, Lcom/lge/dockservice/DockWindowService;->avoidDock(Ljava/util/ArrayList;Z)V

    .line 560
    sget-object v5, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v6, "4. check stick out DockView & relocate"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService;->reloateIfStickOut()V

    .line 564
    sget-object v5, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v6, "5. update all position of DockView."

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    if-eqz p2, :cond_7

    .line 566
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService;->updateDockPosition()V

    .line 568
    :cond_7
    return-void
.end method

.method private updateDockPosition()V
    .locals 6

    .prologue
    .line 611
    sget-object v3, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateDockPosition "

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 615
    .local v0, "dockViewSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 616
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 617
    .local v1, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$800(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 621
    sget-object v3, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v4, "Update x,y axis in Landscape and Protrate mode"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v4, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iget v5, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->slideTo(II)V
    invoke-static {v3, v4, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1400(Lcom/lge/dockservice/DockWindowService$DockView;II)V

    goto :goto_0

    .line 624
    .end local v1    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_1
    return-void
.end method


# virtual methods
.method getUndockArea()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 830
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/lge/dockservice/DockWindowService;->mDockAreaBerth:I

    const/4 v3, 0x0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/lge/dockservice/DockWindowService;->mDockAreaBerth:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 430
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v1, "on bind"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService;->startClientWatcherThread()V

    .line 432
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mDockWindowService:Lcom/lge/dockservice/IDockWindowService$Stub;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 17
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 679
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "on ConfigurationChanged : mCurrentConfig = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "on ConfigurationChanged : newConfig = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const/4 v7, 0x0

    .line 683
    .local v7, "isDockExists":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v14}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 684
    .local v4, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$800(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 685
    const/4 v7, 0x1

    goto :goto_0

    .line 688
    .end local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_1
    if-nez v7, :cond_2

    .line 689
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v15, "No dock view to handle configuration changes"

    invoke-static {v14, v15}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :goto_1
    return-void

    .line 692
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v14}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v14

    if-nez v14, :cond_3

    .line 693
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v15, "no dock view to handle configuration changes"

    invoke-static {v14, v15}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_1

    .line 697
    :cond_3
    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    if-ne v14, v15, :cond_4

    .line 698
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v15, "Screen orientation has not changed. Return."

    invoke-static {v14, v15}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 701
    :cond_4
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "number of dockviews = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v13, "tempDockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/dockservice/DockWindowService$DockView;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v14}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 705
    .restart local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$800(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 706
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 709
    .end local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_6
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lge/dockservice/DockWindowService;->sortDockList(Ljava/util/ArrayList;Z)V

    .line 710
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 711
    .local v2, "displaymetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 712
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 716
    .local v12, "size":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/dockservice/DockWindowService;->refreshDockAxis:Z

    if-nez v14, :cond_a

    .line 717
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v15, "Use saved Dock x,y axis "

    invoke-static {v14, v15}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 721
    .local v3, "dockSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 723
    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    .line 724
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 725
    .restart local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$800(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 726
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v15, v4, Lcom/lge/dockservice/DockWindowService$DockView;->mX_Landscape:I

    iget v0, v4, Lcom/lge/dockservice/DockWindowService$DockView;->mY_Landscape:I

    move/from16 v16, v0

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V
    invoke-static/range {v14 .. v16}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1500(Lcom/lge/dockservice/DockWindowService$DockView;II)V

    goto :goto_3

    .line 731
    .end local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_8
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 732
    .restart local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$800(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    .line 733
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v15, v4, Lcom/lge/dockservice/DockWindowService$DockView;->mX_Portrate:I

    iget v0, v4, Lcom/lge/dockservice/DockWindowService$DockView;->mY_Portrate:I

    move/from16 v16, v0

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V
    invoke-static/range {v14 .. v16}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1500(Lcom/lge/dockservice/DockWindowService$DockView;II)V

    goto :goto_4

    .line 740
    .end local v3    # "dockSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    .end local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_a
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v15, "Update Dock x,y axis "

    invoke-static {v14, v15}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v15, v15

    div-float v10, v14, v15

    .line 744
    .local v10, "ratio":F
    const/4 v11, 0x0

    .line 745
    .local v11, "right_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    const/4 v8, 0x0

    .line 746
    .local v8, "left_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    const/4 v1, -0x1

    .line 747
    .local v1, "centerVertical":I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b

    .line 748
    iget v14, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v14, 0x2

    .line 753
    :goto_5
    const/4 v9, 0x0

    .line 755
    .local v9, "offset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    if-ge v5, v12, :cond_f

    .line 756
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I
    invoke-static {v14}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1300(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_c

    .line 755
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 751
    .end local v5    # "i":I
    .end local v9    # "offset":I
    :cond_b
    iget v14, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v14, 0x2

    goto :goto_5

    .line 759
    .restart local v5    # "i":I
    .restart local v9    # "offset":I
    :cond_c
    sget-object v15, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DIRECTION_RIGHT - before : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v14, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v15, v15, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    int-to-float v15, v15

    mul-float/2addr v15, v10

    float-to-int v15, v15

    iput v15, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 761
    sget-object v15, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DIRECTION_RIGHT - after : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v14, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    if-nez v5, :cond_e

    .line 763
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "right_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    check-cast v11, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 764
    .restart local v11    # "right_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    iget v14, v11, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v14, v1

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 771
    :cond_d
    :goto_8
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    const/4 v15, 0x0

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->attachToWall(Z)V
    invoke-static {v14, v15}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1600(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    .line 772
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v0, v15, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    move/from16 v16, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v15, v15, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    move/from16 v0, v16

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V
    invoke-static {v14, v0, v15}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1500(Lcom/lge/dockservice/DockWindowService$DockView;II)V

    goto/16 :goto_7

    .line 766
    :cond_e
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v14, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v14, v1

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-ge v14, v9, :cond_d

    .line 767
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "right_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    check-cast v11, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 768
    .restart local v11    # "right_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    iget v14, v11, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v14, v1

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v9

    goto :goto_8

    .line 774
    :cond_f
    const/4 v5, 0x0

    :goto_9
    if-ge v5, v12, :cond_13

    .line 775
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I
    invoke-static {v14}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1300(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_10

    .line 774
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 778
    :cond_10
    sget-object v15, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DIRECTION_LEFT - before : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v14, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v15, v15, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    int-to-float v15, v15

    mul-float/2addr v15, v10

    float-to-int v15, v15

    iput v15, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 780
    sget-object v15, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DIRECTION_LEFT - after : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v14, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    if-nez v5, :cond_12

    .line 782
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "left_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    check-cast v8, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 783
    .restart local v8    # "left_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    iget v14, v8, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v14, v1

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 790
    :cond_11
    :goto_b
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    const/4 v15, 0x0

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->attachToWall(Z)V
    invoke-static {v14, v15}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1600(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    .line 791
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v0, v15, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    move/from16 v16, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v15, v15, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    move/from16 v0, v16

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V
    invoke-static {v14, v0, v15}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1500(Lcom/lge/dockservice/DockWindowService$DockView;II)V

    goto/16 :goto_a

    .line 785
    :cond_12
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v14, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v14, v1

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-ge v14, v9, :cond_11

    .line 786
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "left_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    check-cast v8, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 787
    .restart local v8    # "left_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    iget v14, v8, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v14, v1

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v9

    goto :goto_b

    .line 794
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/dockservice/DockWindowService;->updateDock(Ljava/util/ArrayList;)V

    .line 796
    if-eqz v8, :cond_14

    .line 797
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "left_baseDock  : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v8}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    .line 800
    :cond_14
    if-eqz v11, :cond_15

    .line 801
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "right_baseDock  : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v11}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    .line 804
    :cond_15
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lge/dockservice/DockWindowService;->refreshDockAxis:Z

    .line 806
    .end local v1    # "centerVertical":I
    .end local v5    # "i":I
    .end local v8    # "left_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    .end local v9    # "offset":I
    .end local v10    # "ratio":F
    .end local v11    # "right_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 807
    invoke-super/range {p0 .. p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_1
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 458
    sget-object v1, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v2, "on create"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 460
    invoke-static {p0}, Lcom/lge/dockservice/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;

    .line 461
    new-instance v1, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;

    invoke-direct {v1, p0}, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;-><init>(Lcom/lge/dockservice/DockWindowService;)V

    iput-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 462
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 463
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v1, "com.lge.action.INCOMING_FULLSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string v1, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const-string v1, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    const-string v1, "com.lge.lockscreen.intent.action.END_KIDSHOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    const-string v1, "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    const-string v1, "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lge/dockservice/DockWindowService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 475
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/lge/dockservice/DockWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;

    .line 476
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 477
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 479
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 480
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mHandler:Landroid/os/Handler;

    .line 481
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/lge/dockservice/DockWindowService;->mDockAreaBerth:I

    .line 482
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 486
    sget-object v3, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v4, "on destroy"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 490
    sget-object v3, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v4, "Execute killDock to ensure all dock views are removed."

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 492
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 494
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v3}, Lcom/lge/dockservice/DockWindowService$DockView;->killdock()V

    goto :goto_0

    .line 499
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    :cond_0
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 500
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService;->stopClientWatcherThread()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_1
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/lge/dockservice/DockWindowService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 505
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 506
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 507
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lge/dockservice/DockWindowService;->stopForeground(Z)V

    .line 508
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 453
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v1, "on rebind"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x2

    .line 812
    const-string v2, "com.lge.app.floating.ExtraService.VIBRATE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 813
    .local v0, "extraServiceVibrate":I
    if-lez v0, :cond_0

    .line 814
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received extra service request for com.lge.app.floating.ExtraService.VIBRATE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string/jumbo v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/lge/dockservice/DockWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 816
    .local v1, "vibe":Landroid/os/Vibrator;
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 821
    .end local v1    # "vibe":Landroid/os/Vibrator;
    :goto_0
    return v5

    .line 819
    :cond_0
    const/4 v2, 0x1

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/lge/dockservice/DockWindowService;->startForeground(ILandroid/app/Notification;)V

    .line 820
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service started by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 437
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v3, "on unbind"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 441
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 443
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1200(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/IBaseDockWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1200(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/IBaseDockWindow;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/dockservice/IBaseDockWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    sget-object v3, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " seems to died. Let\'s killdock"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->killdock()V

    goto :goto_0

    .line 448
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v2

    return v2
.end method

.method declared-synchronized startClientWatcherThread()V
    .locals 2

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v1, "ClientProcessWatcherThread start"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v0, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;-><init>(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$1;)V

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    .line 195
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    invoke-virtual {v0}, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stopClientWatcherThread()V
    .locals 2

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v1, "ClientWatcherThread stop"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    invoke-virtual {v0}, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;->requestStop()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
