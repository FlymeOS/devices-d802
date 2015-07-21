.class public Lcom/lge/app/floating/FloatingWindowManager;
.super Ljava/lang/Object;
.source "FloatingWindowManager.java"


# static fields
.field public static final ACTION_APP_SWITCH_ACTION_DOWN:Ljava/lang/String; = "com.lge.intent.action.APP_SWITCH_ACTION_DOWN"

.field public static final ACTION_ENTER_GUEST_MODE:Ljava/lang/String; = "com.lge.lockscreen.intent.action.START_KIDSHOME"

.field public static final ACTION_EXIT_GUEST_MODE:Ljava/lang/String; = "com.lge.lockscreen.intent.action.END_KIDSHOME"

.field public static final ACTION_FLOATING_WINDOW_ALREADY_RUNNING:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_ALREADY_RUNNING"

.field static final ACTION_FLOATING_WINDOW_CHANGED:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

.field public static final ACTION_FLOATING_WINDOW_CLOSE_REQUESTED:Ljava/lang/String; = "com.lge.android.intent.action.FLOATING_WINDOW_CLOSE_REQUESTED"

.field public static final ACTION_FLOATING_WINDOW_CLOSE_REQUESTED_OLD:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_CLOSE_REQUESTED"

.field public static final ACTION_FLOATING_WINDOW_ENTER_LOWPROFILE:Ljava/lang/String; = "com.lge.android.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

.field public static final ACTION_FLOATING_WINDOW_ENTER_LOWPROFILE_OLD:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

.field public static final ACTION_FLOATING_WINDOW_EXIT_LOWPROFILE:Ljava/lang/String; = "com.lge.android.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

.field public static final ACTION_FLOATING_WINDOW_EXIT_LOWPROFILE_OLD:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

.field public static final ACTION_FORCE_UNDOCK:Ljava/lang/String; = "com.lge.intent.action.FORCE_UNDOCK"

.field public static final ACTION_LOCKSCREEN_CREATE:Ljava/lang/String; = "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.lge.android.intent.action."

.field public static final ACTION_START_STANDARD_HOME:Ljava/lang/String; = "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

.field public static final ACTION_STOP_FLOATING_WINDOW_SERVICE:Ljava/lang/String; = "com.lge.intent.action.STOP_FLOATING_WINDOW_SERVICE"

.field public static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field public static final EXTRA_FLOATING_CLOSE_PACKAGE:Ljava/lang/String; = "com.lge.intent.extra.target"

.field public static final EXTRA_FLOATING_CLOSE_PACKAGE_OLD:Ljava/lang/String; = "target"

.field public static final EXTRA_FLOATING_HIDE:Ljava/lang/String; = "com.lge.intent.extra.hide"

.field public static final EXTRA_FLOATING_HIDE_OLD:Ljava/lang/String; = "hide"

.field public static final EXTRA_FLOATING_PACKAGE:Ljava/lang/String; = "com.lge.intent.extra.package"

.field public static final EXTRA_FLOATING_PACKAGE_OLD:Ljava/lang/String; = "package"

.field public static final EXTRA_FORCE_EXITLOWPROFILE:Ljava/lang/String; = "exit-lowprofile"

.field private static final EXTRA_PREFIX:Ljava/lang/String; = "com.lge.intent.extra."

.field static final EXTRA_REMOVED_REASON:Ljava/lang/String; = "remove-reason"

.field static final EXTRA_REMOVED_WINDOW:Ljava/lang/String; = "window-remove"

.field static final EXTRA_TOP_WINDOW:Ljava/lang/String; = "top-window"

.field private static final FLOATING_WINDOW_SERVICE_CLASSNAME:Ljava/lang/String; = "com.lge.app.floating.FloatingWindowService"

.field static final REASON_FORCE_CLOSE:Ljava/lang/String; = "close"

.field static final REASON_SWITCH_TO_FULLMODE:Ljava/lang/String; = "fullmode"

.field private static final TAG:Ljava/lang/String;

.field private static sDefault:Lcom/lge/app/floating/FloatingWindowManager;

.field private static sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

.field private static sMaxFloating:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDummyView:Landroid/view/View;

.field private mGlobalTopWindowName:Ljava/lang/String;

.field mLastLowProfileIsHidden:Z

.field mLastLowProfileRequester:Ljava/lang/String;

.field private mLowProfileRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLowProfileRequestsConf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealWindowManager:Landroid/view/WindowManager;

.field private mServiceContext:Landroid/content/Context;

.field private final mWindows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/app/floating/FloatingWindow;",
            ">;"
        }
    .end annotation
.end field

.field private final mZList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 40
    const-class v6, Lcom/lge/app/floating/FloatingWindowManager;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    .line 46
    sput-object v7, Lcom/lge/app/floating/FloatingWindowManager;->sDefault:Lcom/lge/app/floating/FloatingWindowManager;

    .line 654
    const/4 v6, 0x2

    sput v6, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    .line 655
    sput-object v7, Lcom/lge/app/floating/FloatingWindowManager;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    .line 658
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/lge/app/floating/FloatingWindowManager;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    .line 659
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ro.lge.qslide.max_window"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 660
    .local v4, "propertyValue":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 661
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    .line 662
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read ro.lge.qslide.max_window = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 666
    .local v5, "r":Landroid/content/res/Resources;
    sget v6, Lcom/lge/internal/R$integer;->config_qslide_maximum:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 667
    .local v2, "mResourceFloating":I
    sget v6, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    if-eq v6, v2, :cond_1

    .line 668
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read R.integer.config_qslide_maximum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    sput v2, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 676
    :cond_1
    :try_start_1
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.lge.qslide.max_window_test"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 677
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 678
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 679
    .local v3, "maxFloatingTest":I
    if-ltz v3, :cond_2

    .line 680
    sput v3, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    .line 681
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read com.lge.qslide.max_window_test = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 692
    .end local v2    # "mResourceFloating":I
    .end local v3    # "maxFloatingTest":I
    .end local v5    # "r":Landroid/content/res/Resources;
    :cond_2
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v1

    .line 688
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reflection for android.os.SystemProperties.get() failed. reason = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 689
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 690
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reflection to get ro.lge.qslide.max_window failed. reason = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 684
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "mResourceFloating":I
    .restart local v5    # "r":Landroid/content/res/Resources;
    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mDummyView:Landroid/view/View;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLastLowProfileRequester:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLastLowProfileIsHidden:Z

    .line 180
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    .line 181
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mRealWindowManager:Landroid/view/WindowManager;

    .line 182
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->sDefault:Lcom/lge/app/floating/FloatingWindowManager;

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->sDefault:Lcom/lge/app/floating/FloatingWindowManager;

    .line 176
    :goto_0
    return-object v0

    .line 175
    :cond_0
    new-instance v0, Lcom/lge/app/floating/FloatingWindowManager;

    invoke-direct {v0, p0}, Lcom/lge/app/floating/FloatingWindowManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/app/floating/FloatingWindowManager;->sDefault:Lcom/lge/app/floating/FloatingWindowManager;

    .line 176
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->sDefault:Lcom/lge/app/floating/FloatingWindowManager;

    goto :goto_0
.end method

.method public static isQSlideModeEnabled(Landroid/content/Context;Z)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showToast"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 788
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isQSlideModeEnabled showToast = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    if-nez v8, :cond_1

    .line 791
    sget-object v7, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v8, "sGetSystemPropertiesMethod is null, assume that QSlide is enabled."

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_0
    :goto_0
    return v6

    .line 801
    :cond_1
    :try_start_0
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "com.lge.qslide.enabled"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 802
    .local v3, "propertyValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    move v1, v6

    .line 803
    .local v1, "isQSlideModeEnabled":Z
    :goto_1
    if-nez v1, :cond_0

    .line 804
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v9, "com.lge.qslide.enabled property is FALSE!!"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    if-eqz p1, :cond_3

    .line 806
    if-eqz p0, :cond_5

    .line 807
    const-string v2, "QSlide mode is currently not available"

    .line 808
    .local v2, "msg":Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 809
    .local v5, "yOffset":I
    const/4 v8, 0x0

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 810
    .local v4, "toast":Landroid/widget/Toast;
    const/16 v8, 0x31

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 811
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v2    # "msg":Ljava/lang/CharSequence;
    .end local v4    # "toast":Landroid/widget/Toast;
    .end local v5    # "yOffset":I
    :cond_3
    :goto_2
    move v6, v7

    .line 817
    goto :goto_0

    .end local v1    # "isQSlideModeEnabled":Z
    :cond_4
    move v1, v7

    .line 802
    goto :goto_1

    .line 814
    .restart local v1    # "isQSlideModeEnabled":Z
    :cond_5
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v9, "no toast for null context"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 819
    .end local v1    # "isQSlideModeEnabled":Z
    .end local v3    # "propertyValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v8, "failed to get com.lge.qslide.enabled property"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isTooManyFloatingWindows(Landroid/content/Context;Z)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showToast"    # Z

    .prologue
    .line 724
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isTooManyFloatingWindows showToast = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    if-nez p0, :cond_0

    .line 726
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v11, "null context"

    invoke-static {v10, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/4 v10, 0x1

    .line 765
    :goto_0
    return v10

    .line 729
    :cond_0
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 730
    .local v1, "am":Landroid/app/ActivityManager;
    const v10, 0x7fffffff

    invoke-virtual {v1, v10}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v7

    .line 731
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v6, 0x0

    .line 734
    .local v6, "nFloatingService":I
    if-nez v7, :cond_1

    .line 735
    const/4 v10, 0x0

    goto :goto_0

    .line 738
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 739
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.lge.app.floating.FloatingWindowService"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 740
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 742
    .local v3, "floatingPackageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v10, v3, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 743
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "ignoreMaxFloating"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 744
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignore "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in counting current floating services"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "floatingPackageName":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 747
    .restart local v3    # "floatingPackageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 748
    .local v2, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get ApplicationInfo of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 753
    .end local v3    # "floatingPackageName":Ljava/lang/String;
    :cond_4
    sget v10, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    if-lt v6, v10, :cond_7

    .line 754
    if-eqz p1, :cond_5

    .line 755
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "show toast that we have maximum number of floating windows"

    invoke-static {v10, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    sget v10, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_6

    invoke-static {p0}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 758
    .local v5, "msg":Ljava/lang/CharSequence;
    :goto_3
    invoke-static {p0}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 759
    .local v9, "yOffset":I
    const/4 v10, 0x0

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 760
    .local v8, "toast":Landroid/widget/Toast;
    const/16 v10, 0x31

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 761
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 763
    .end local v5    # "msg":Ljava/lang/CharSequence;
    .end local v8    # "toast":Landroid/widget/Toast;
    .end local v9    # "yOffset":I
    :cond_5
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 756
    :cond_6
    invoke-static {p0}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0017

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_3

    .line 765
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private restoreLowProfileRequest()V
    .locals 2

    .prologue
    .line 304
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "Restore Lowprofile Requests for ConfigurationChange"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 306
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 307
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 308
    return-void
.end method


# virtual methods
.method addFloatingWindowFor(Ljava/lang/String;Lcom/lge/app/floating/FloatingWindow;)V
    .locals 3
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFloatingWindowFor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already Floating exists : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method clearLowProfileRequestList()V
    .locals 4

    .prologue
    .line 503
    sget-object v2, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "clearLowProfileList"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatingWindow;

    .line 506
    .local v1, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->callBackOnExitingLowProfileMode()V

    goto :goto_0

    .line 508
    .end local v1    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_0
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 509
    return-void
.end method

.method configutationChangeforWindows(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 289
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatingWindow;

    .line 290
    .local v1, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v1, p1}, Lcom/lge/app/floating/FloatingWindow;->configurationChangeforWindow(Landroid/content/res/Configuration;)V

    .line 291
    invoke-virtual {v1, p1}, Lcom/lge/app/floating/FloatingWindow;->configurationChangeForActivity(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 293
    .end local v1    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_0
    return-void
.end method

.method getActivityNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 229
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    .local v0, "activityName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    .end local v0    # "activityName":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/floating/FloatingWindow;

    return-object v0
.end method

.method getFloatingWindows()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/app/floating/FloatingWindow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number of current floating windows = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getRealWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mRealWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method getServiceContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mServiceContext:Landroid/content/Context;

    return-object v0
.end method

.method handleEnterLowProfile(ZLjava/lang/String;)V
    .locals 11
    .param p1, "hide"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 501
    :cond_0
    return-void

    .line 434
    :cond_1
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "entering low profile for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", hide="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v2, 0x1

    .line 436
    .local v2, "NOT_LOW_PROFILE":I
    const/4 v1, 0x2

    .line 437
    .local v1, "LOW_PROFILE_TRUE":I
    const/4 v0, 0x3

    .line 439
    .local v0, "LOW_PROFILE_FALSE":I
    move v5, v2

    .line 440
    .local v5, "mOldLowProfileState":I
    move v4, v2

    .line 443
    .local v4, "mNewLowProfileState":I
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 444
    move v5, v2

    .line 453
    :goto_0
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, p2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iput-object p2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLastLowProfileRequester:Ljava/lang/String;

    .line 455
    iput-boolean p1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLastLowProfileIsHidden:Z

    .line 458
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 459
    move v4, v2

    .line 468
    :goto_1
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v9, "Updated LowProfileRequet list"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v9, "-----List-----"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 471
    .local v6, "p":Ljava/lang/String;
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 446
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "p":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 447
    move v5, v0

    goto :goto_0

    .line 450
    :cond_3
    move v5, v1

    goto :goto_0

    .line 461
    :cond_4
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 462
    move v4, v0

    goto :goto_1

    .line 465
    :cond_5
    move v4, v1

    goto :goto_1

    .line 473
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v9, "-----End-----"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    if-ne v5, v2, :cond_7

    .line 485
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/app/floating/FloatingWindow;

    .line 486
    .local v7, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v7, p1}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_3

    .line 490
    .end local v7    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_7
    if-ne v5, v0, :cond_8

    if-ne v4, v1, :cond_8

    .line 491
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/app/floating/FloatingWindow;

    .line 492
    .restart local v7    # "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v7, p1}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_4

    .line 496
    .end local v7    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_8
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 497
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/app/floating/FloatingWindow;

    .line 498
    .restart local v7    # "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v7, p1}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_5
.end method

.method handleExitLowProfile(Ljava/lang/String;)V
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 513
    sget-object v16, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "exiting low profile for package "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 515
    sget-object v16, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "LowProfileRequets list is empty. Do not handleExitLowProfile for : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    sget-object v16, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v17, "Current LowProfileRequets list (Before remove)"

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    sget-object v16, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v17, "----- LowProfileRequets list -----"

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 522
    .local v10, "p":Ljava/lang/String;
    sget-object v16, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 524
    .end local v10    # "p":Ljava/lang/String;
    :cond_2
    sget-object v16, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v17, "----- LowProfileRequets list End -----"

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 527
    sget-object v16, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "FloatingWindow list is empty. Do not handleExitLowProfile for : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    :cond_3
    sget-object v16, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "exiting from low profile for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", by "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_9

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "activity"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 536
    .local v3, "am":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v12

    .line 537
    .local v12, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 539
    .local v2, "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v12, :cond_5

    .line 540
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 541
    .local v8, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v9, :cond_4

    aget-object v11, v4, v7

    .line 542
    .local v11, "pkg":Ljava/lang/String;
    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 547
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v9    # "len$":I
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "phone"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 548
    .local v14, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    .line 549
    .local v5, "callState":I
    if-eqz v5, :cond_6

    .line 550
    const-string v16, "phone"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_6
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 557
    .local v13, "removeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 559
    .restart local v10    # "p":Ljava/lang/String;
    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 560
    sget-object v16, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "package "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " seems to died. removing it from mLowProfileRequests"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-interface {v13, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 564
    .end local v10    # "p":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    .line 567
    .end local v2    # "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "am":Landroid/app/ActivityManager;
    .end local v5    # "callState":I
    .end local v12    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v13    # "removeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v14    # "tm":Landroid/telephony/TelephonyManager;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/app/floating/FloatingWindow;

    .line 569
    .local v15, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v15}, Lcom/lge/app/floating/FloatingWindow;->exitLowProfile()V

    goto :goto_4

    .line 573
    .end local v15    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_a
    sget-object v16, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v17, "----- After LowProfileRequets list -----"

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 575
    .restart local v10    # "p":Ljava/lang/String;
    sget-object v16, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 577
    .end local v10    # "p":Ljava/lang/String;
    :cond_b
    sget-object v16, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v17, "----- LowProfileRequets list End -----"

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v16

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v16 .. v17}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/app/floating/FloatingWindow;

    .line 582
    .restart local v15    # "w":Lcom/lge/app/floating/FloatingWindow;
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_6

    .line 585
    .end local v15    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v16

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v16 .. v17}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/app/floating/FloatingWindow;

    .line 587
    .restart local v15    # "w":Lcom/lge/app/floating/FloatingWindow;
    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_7
.end method

.method handleImeVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 642
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatingWindow;

    .line 643
    .local v1, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-eqz v2, :cond_0

    .line 645
    iput-boolean p1, v1, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    goto :goto_0

    .line 648
    :cond_0
    invoke-virtual {v1, p1}, Lcom/lge/app/floating/FloatingWindow;->handleImeVisibilityChanged(Z)V

    goto :goto_0

    .line 651
    .end local v1    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_1
    return-void
.end method

.method handleLowProfileConf()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 594
    sget-object v3, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v4, "handleLowProfileConf"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/floating/FloatingWindow;

    .line 597
    .local v2, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->exitLowProfile()V

    goto :goto_0

    .line 600
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_0
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 601
    sget-object v3, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v4, "----- Current mLowProfileRequests[Conf] list -----"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 603
    .local v1, "p":Ljava/lang/String;
    sget-object v3, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 605
    .end local v1    # "p":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v4, "----- mLowProfileRequests[Conf] list End -----"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 610
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/floating/FloatingWindow;

    .line 611
    .restart local v2    # "w":Lcom/lge/app/floating/FloatingWindow;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_2

    .line 615
    .end local v2    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_2
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 616
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/floating/FloatingWindow;

    .line 617
    .restart local v2    # "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v2, v6}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_3

    .line 622
    .end local v2    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_3
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/floating/FloatingWindow;

    .line 623
    .restart local v2    # "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v2, v6}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_4

    .line 626
    .end local v2    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_4
    invoke-direct {p0}, Lcom/lge/app/floating/FloatingWindowManager;->restoreLowProfileRequest()V

    .line 628
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method isQSlideModeEnabled(Z)Z
    .locals 1
    .param p1, "showToast"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lge/app/floating/FloatingWindowManager;->isQSlideModeEnabled(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public isTooManyFloatingWindows()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingWindowManager;->isTooManyFloatingWindows(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public isTooManyFloatingWindows(Z)Z
    .locals 1
    .param p1, "showToast"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lge/app/floating/FloatingWindowManager;->isTooManyFloatingWindows(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method isTopWindow(Lcom/lge/app/floating/FloatingWindow;)Z
    .locals 3
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 389
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "top window is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mGlobalTopWindowName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mGlobalTopWindowName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method notifyNewTopWindow(Lcom/lge/app/floating/FloatingWindow;)V
    .locals 4
    .param p1, "newTop"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 395
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is moved to top"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "top-window"

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    return-void
.end method

.method onTopWindowChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "topWindowActivityName"    # Ljava/lang/String;

    .prologue
    .line 370
    sget-object v2, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "top window is changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatingWindow;

    .line 374
    .local v1, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->looseFocus()V

    goto :goto_0

    .line 380
    .end local v1    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_1
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mGlobalTopWindowName:Ljava/lang/String;

    .line 381
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 384
    :cond_2
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method

.method onWindowRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "windowName"    # Ljava/lang/String;

    .prologue
    .line 409
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mGlobalTopWindowName:Ljava/lang/String;

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mGlobalTopWindowName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    .line 421
    .local v0, "w":Lcom/lge/app/floating/FloatingWindow;
    if-eqz v0, :cond_2

    .line 422
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the next top window is in this process. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->moveToTop()V

    .line 424
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->gainFocus()V

    .line 425
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingWindowManager;->notifyNewTopWindow(Lcom/lge/app/floating/FloatingWindow;)V

    .line 427
    :cond_2
    return-void
.end method

.method removeFloatingWindow(Lcom/lge/app/floating/FloatingWindow;)V
    .locals 1
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 313
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/lge/app/floating/FloatingWindowManager;->removeFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method removeFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Ljava/lang/String;)V
    .locals 5
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "extra_removed_reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 317
    if-nez p1, :cond_1

    .line 318
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "do not operation, remove FloatingWindow caused by window == null"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove FloatingWindow of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ensure terminate dock before removing floating window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p1, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    if-eqz v1, :cond_3

    .line 330
    iget-object v1, p1, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingDockWindow;->terminate()V

    .line 340
    :goto_1
    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getActivity()Lcom/lge/app/floating/FloatableActivity;

    move-result-object v1

    iput-object v4, v1, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "window-remove"

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 346
    const-string v1, "remove-reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    :cond_2
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 351
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 354
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 355
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "no floating window left in this process"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stop FloatingWindowService!!"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindowManager;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 359
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindowManager;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 333
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDockWindow of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 363
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_4
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "service context is null. Do not try stopService."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method removeLowProfileRequests(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 632
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "removeLowProfileRequests"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 636
    :cond_0
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLowProfileRequests :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method saveLowProfileRequest()V
    .locals 2

    .prologue
    .line 297
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "Save Lowprofile Requests for ConfigurationChange"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 299
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 300
    return-void
.end method

.method setServiceContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mServiceContext:Landroid/content/Context;

    .line 195
    return-void
.end method
