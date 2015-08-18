.class public abstract Lcom/lge/app/floating/FloatableActivity;
.super Landroid/app/Activity;
.source "FloatableActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;,
        Lcom/lge/app/floating/FloatableActivity$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EXTRA_LAUNCH_AS_FLOATING:Ljava/lang/String; = "com.lge.app.floating.launchAsFloating"

.field private static final EXTRA_LOWPROFILE_HIDE:Ljava/lang/String; = "com.lge.app.floating.lowProfileIsHidden"

.field private static final EXTRA_LOWPROFILE_REQUESTER:Ljava/lang/String; = "com.lge.app.floating.lowProfileRequester"

.field static final EXTRA_OPACITY:Ljava/lang/String; = "com.lge.app.floating.opacity"

.field public static final EXTRA_POSITION:Ljava/lang/String; = "com.lge.app.floating.position"

.field private static final EXTRA_RESTARTED:Ljava/lang/String; = "com.lge.app.floating.restarted"

.field private static final EXTRA_RETURN_FROM_FLOATING:Ljava/lang/String; = "com.lge.app.floating.returnFromFloating"

.field static final PREF_FILE_NAME:Ljava/lang/String; = "com.lge.app.floating.pref"

.field private static final TAG:Ljava/lang/String;

.field static mIsInGuestMode:Z


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private mContentView:Landroid/view/View;

.field private mContentViewParent:Landroid/view/ViewGroup;

.field private mCurrentIntent:Landroid/content/Intent;

.field private mDontFinishActivity:Z

.field mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

.field private mHasActivityResultReceived:Z

.field private mIsAttached:Z

.field private mIsFullScreenInFullMode:Z

.field private mIsRestartedOrNewIntentCalled:Z

.field private mIsSetFullScreenFlag:Z

.field private mIsSwitchToFloatingModeCalled:Z

.field private volatile mIsSwitchingToFloatingMode:Z

.field private mIsWaitingActivityResult:Z

.field private mOldConfig:Landroid/content/res/Configuration;

.field private final mReceiverRegisterInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field private mSavedWindowBackground:Landroid/graphics/drawable/Drawable;

.field private mServiceStartRequested:Z

.field private mState:Lcom/lge/app/floating/FloatableActivity$State;

.field private mTaskId:I

.field private receiverListForUnregister:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;",
            ">;"
        }
    .end annotation
.end field

.field restartActivityhandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const-class v0, Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lge/app/floating/FloatableActivity;->$assertionsDisabled:Z

    .line 57
    sput-boolean v1, Lcom/lge/app/floating/FloatableActivity;->mIsInGuestMode:Z

    .line 111
    const-class v0, Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    .line 55
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 122
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    .line 125
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    .line 128
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    .line 131
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    .line 135
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    .line 145
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    .line 148
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSetFullScreenFlag:Z

    .line 151
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->CREATE:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 154
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    .line 835
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsRestartedOrNewIntentCalled:Z

    .line 1045
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mHasActivityResultReceived:Z

    .line 1055
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsWaitingActivityResult:Z

    .line 1091
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mServiceStartRequested:Z

    .line 1266
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsAttached:Z

    .line 1267
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mContentViewParent:Landroid/view/ViewGroup;

    .line 1269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->receiverListForUnregister:Ljava/util/List;

    .line 1578
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mSavedWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 1659
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    .line 1794
    new-instance v0, Lcom/lge/app/floating/FloatableActivity$2;

    invoke-direct {v0, p0}, Lcom/lge/app/floating/FloatableActivity$2;-><init>(Lcom/lge/app/floating/FloatableActivity;)V

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->restartActivityhandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/app/floating/FloatableActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/app/floating/FloatableActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    return v0
.end method

.method private checkRtl(Ljava/util/Locale;)Z
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x1

    .line 1624
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1627
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createFloatingWindow(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)Lcom/lge/app/floating/FloatingWindow;
    .locals 5
    .param p1, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .prologue
    const/4 v1, 0x0

    .line 529
    if-nez p1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-object v1

    .line 532
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "activityName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v2

    if-nez v2, :cond_0

    .line 536
    sget-object v2, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create FloatingWindow of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v1, Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/lge/app/floating/FloatingWindow;-><init>(Lcom/lge/app/floating/FloatableActivity;Lcom/lge/app/floating/FloatingWindowManager;Ljava/lang/String;Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    .line 538
    .local v1, "window":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lge/app/floating/FloatingWindowManager;->addFloatingWindowFor(Ljava/lang/String;Lcom/lge/app/floating/FloatingWindow;)V

    goto :goto_0
.end method

.method private dismissCurrentActivity()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 543
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dismiss current activity. activity="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    if-nez v9, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    const/high16 v10, -0x56000000

    const-string v11, "Qwindow"

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 551
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    .line 560
    :cond_0
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DontFinishActivity = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-boolean v9, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-nez v9, :cond_3

    .line 562
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v10, "finish current Activity"

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    monitor-enter v10

    .line 565
    :try_start_0
    iget-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    .line 566
    .local v4, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    iget-boolean v9, v4, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->isRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_1

    .line 572
    :try_start_1
    iget-object v9, v4, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/lge/app/floating/FloatableActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v2

    .line 574
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "receiver "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is already unregistered"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 578
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 579
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finish()V

    .line 625
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 581
    :cond_3
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v10, "save current task ID and moveTaskToBack"

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 584
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v9, 0x64

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 586
    .local v6, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v5, "mMatchedList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v6, :cond_8

    .line 588
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 589
    .local v7, "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 590
    .local v8, "topActivityName":Landroid/content/ComponentName;
    iget-object v1, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 591
    .local v1, "baseActivityName":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 592
    :cond_5
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mMatchedList ( "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 596
    .end local v1    # "baseActivityName":Landroid/content/ComponentName;
    .end local v7    # "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v8    # "topActivityName":Landroid/content/ComponentName;
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_a

    .line 598
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No Task exists. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_7
    :goto_3
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "task id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    if-eqz v6, :cond_9

    iget v9, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_9

    .line 618
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v10, "cannot find the task id of this activity. Defaulting it to foreground task."

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v9, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    .line 623
    :cond_9
    invoke-virtual {p0, v13}, Lcom/lge/app/floating/FloatableActivity;->moveTaskToBack(Z)Z

    goto/16 :goto_1

    .line 600
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v13, :cond_b

    .line 601
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v9, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    goto :goto_3

    .line 605
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 606
    .restart local v7    # "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 607
    .restart local v8    # "topActivityName":Landroid/content/ComponentName;
    iget-object v1, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 608
    .restart local v1    # "baseActivityName":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 609
    :cond_d
    iget v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v9, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    goto/16 :goto_3
.end method

.method private ensureMaximumFloatingWindows()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 455
    sget-object v2, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v3, "ensureMaximumFloatingWindows"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/app/floating/FloatingWindowManager;->isTooManyFloatingWindows(Z)Z

    move-result v0

    .line 457
    .local v0, "noMore":Z
    sget-object v2, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTooManyFloatingWindows? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    sget-object v1, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v2, "MaximumFloatingWindow limitation. Finish current Activity."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finish()V

    .line 463
    :cond_0
    const/4 v1, 0x0

    .line 465
    :cond_1
    return v1
.end method

.method private ensureQSlideModeIsAllowed()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 415
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v4, "ensureQSlideModeIsAllowed"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x1

    .line 419
    .local v0, "isAllowed":Z
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/app/floating/FloatingWindowManager;->isQSlideModeEnabled(Z)Z

    move-result v1

    .line 420
    .local v1, "isQSlideEnabled":Z
    if-nez v1, :cond_0

    .line 421
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isQSlideEnabled? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v0, 0x0

    .line 444
    :cond_0
    if-nez v0, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    sget-object v2, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v3, "Qslide is not allowed. Finish this Activity."

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finish()V

    .line 449
    :cond_1
    const/4 v2, 0x0

    .line 451
    :cond_2
    return v2
.end method

.method private fakeLoadersNotStarted(Z)V
    .locals 7
    .param p1, "notStarted"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1835
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isSwitchingToFloatingMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1836
    if-nez p1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {p0, v4}, Lcom/lge/app/floating/FloatingFunctionReflect;->setActivityMLoadersStarted(Landroid/app/Activity;Z)V

    .line 1838
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/app/floating/FloatingFunctionReflect;->getFragmentList(Landroid/app/FragmentManager;)Ljava/util/List;

    move-result-object v2

    .line 1839
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    if-nez v2, :cond_2

    .line 1840
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "no fragment to load exists"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    .end local v2    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v6

    .line 1836
    goto :goto_0

    .line 1843
    .restart local v2    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1844
    .local v1, "frag":Landroid/app/Fragment;
    if-nez p1, :cond_3

    move v4, v5

    :goto_3
    invoke-static {v1, v4}, Lcom/lge/app/floating/FloatingFunctionReflect;->setFragmentMLoadersStarted(Landroid/app/Fragment;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1847
    .end local v1    # "frag":Landroid/app/Fragment;
    .end local v2    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 1848
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "frag":Landroid/app/Fragment;
    .restart local v2    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    move v4, v6

    .line 1844
    goto :goto_3
.end method

.method private findRegisterInfo(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    .locals 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 1144
    iget-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    monitor-enter v3

    .line 1145
    :try_start_0
    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    .line 1146
    .local v1, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    iget-object v2, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    monitor-exit v3

    .line 1151
    .end local v1    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :goto_0
    return-object v1

    .line 1150
    :cond_1
    monitor-exit v3

    .line 1151
    const/4 v1, 0x0

    goto :goto_0

    .line 1150
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private forceSwitchToFloatingMode(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V
    .locals 14
    .param p1, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .prologue
    const v13, 0x7f060009

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 469
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "forceSwitchToFloatingMode with intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iput-boolean v11, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 474
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 475
    .local v0, "currentSystemUiVisibility":I
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "forceSwitchToFloatingMode. Current flag : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Set SYSTEM_UI_FLAG_LAYOUT_STABLE flag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    or-int/lit16 v0, v0, 0x100

    .line 477
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 480
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 481
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 482
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v12, :cond_0

    .line 483
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f060002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 489
    :cond_0
    iget v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 490
    .local v5, "tmpHorRatio":F
    iget v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 491
    .local v6, "tmpVerRatio":F
    const-string v7, "com.lge.app.floating.pref"

    invoke-virtual {p0, v7, v10}, Lcom/lge/app/floating/FloatableActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 492
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "floating_w"

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    .line 493
    const-string v7, "floating_h"

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    .line 494
    const-string v7, "floating_hor_ratio"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 496
    const-string v7, "floating_ver_ratio"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    div-int/lit8 v8, v8, 0x2

    sub-int v4, v7, v8

    .line 497
    .local v4, "tempY":I
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-lt v4, v7, :cond_1

    .line 498
    iput v4, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 502
    :cond_1
    sget-boolean v7, Lcom/lge/app/floating/FloatableActivity;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 504
    :cond_2
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v7, :cond_4

    .line 505
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v8, "com.lge.app.floating.position"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 506
    .local v2, "initialPosition":[I
    if-eqz v2, :cond_3

    array-length v7, v2

    if-ne v7, v12, :cond_3

    .line 507
    aget v7, v2, v10

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 508
    aget v7, v2, v11

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 511
    :cond_3
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v8, "com.lge.app.floating.returnFromFloating"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 517
    .end local v2    # "initialPosition":[I
    :cond_4
    invoke-direct {p0, p1}, Lcom/lge/app/floating/FloatableActivity;->createFloatingWindow(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    .line 523
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v8, Lcom/lge/app/floating/FloatableActivity$State;->RESUME:Lcom/lge/app/floating/FloatableActivity$State;

    if-ne v7, v8, :cond_5

    .line 524
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->dismissCurrentActivity()V

    .line 526
    :cond_5
    return-void
.end method

.method private getOrderingForStartActivity()I
    .locals 9

    .prologue
    .line 1631
    const-string v5, "com.lge.app.floating.FloatingWindowService"

    .line 1632
    .local v5, "serviceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 1633
    .local v3, "pid":I
    const/4 v2, 0x0

    .line 1634
    .local v2, "order":I
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1635
    .local v1, "manager":Landroid/app/ActivityManager;
    const v7, 0x7fffffff

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v6

    .line 1636
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v6, :cond_1

    .line 1637
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v8, "Cannot get Ordering For Start Activity"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    :cond_0
    :goto_0
    return v2

    .line 1640
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1642
    .local v4, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-nez v7, :cond_3

    .line 1643
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v8, "Exception - RunningServiceInfo : null"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1647
    :cond_3
    iget-object v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1648
    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-eq v7, v3, :cond_0

    .line 1651
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private handleDuplicatedStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 907
    sget-object v1, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDuplicatedStart brings activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from background to foreground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsRestartedOrNewIntentCalled:Z

    if-eqz v1, :cond_1

    .line 916
    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatableActivity;->moveTaskToBack(Z)Z

    .line 933
    :goto_0
    iput-boolean v5, p0, Lcom/lge/app/floating/FloatableActivity;->mIsRestartedOrNewIntentCalled:Z

    .line 934
    :cond_0
    return-void

    .line 917
    :cond_1
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mHasActivityResultReceived:Z

    if-eqz v1, :cond_2

    .line 920
    iput-boolean v5, p0, Lcom/lge/app/floating/FloatableActivity;->mHasActivityResultReceived:Z

    .line 921
    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatableActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 922
    :cond_2
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsWaitingActivityResult:Z

    if-nez v1, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    .line 931
    .local v0, "window":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v0, v4}, Lcom/lge/app/floating/FloatingWindow;->closeInner(Z)V

    goto :goto_0
.end method

.method private handleStartedAsFloatingMode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1581
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->onStartedAsFloatingMode()Z

    move-result v1

    .line 1582
    .local v1, "proceed":Z
    if-eqz v1, :cond_1

    .line 1583
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " started as floating mode. Automatically switching to floating mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1585
    .local v0, "nullDrwable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mSavedWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 1586
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1589
    iget-boolean v3, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    if-nez v3, :cond_0

    .line 1590
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->switchToFloatingMode()V

    .line 1591
    iput-boolean v6, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    .line 1607
    .end local v0    # "nullDrwable":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    :goto_0
    return-void

    .line 1595
    :cond_1
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " started as floating mode, but app decided not to enter into floating mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-boolean v3, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    if-eqz v3, :cond_0

    .line 1600
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v2

    .line 1601
    .local v2, "window":Lcom/lge/app/floating/FloatingWindow;
    if-eqz v2, :cond_2

    .line 1602
    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->closeInner()V

    .line 1604
    :cond_2
    iput-boolean v6, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    goto :goto_0
.end method

.method private isServiceRunning(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    const/4 v4, 0x0

    .line 968
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v6, "Check isServiceRunning"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 970
    .local v1, "manager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 971
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v3, :cond_1

    .line 972
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v6, "Cannot get  RunningServiceInfo."

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :cond_0
    :goto_0
    return v4

    .line 975
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 976
    .local v2, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 977
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serviceName , pid : ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v5, p2, :cond_3

    .line 979
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service Pid matched. pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const/4 v4, 0x1

    goto :goto_0

    .line 982
    :cond_3
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service Pid not matched. current pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "find service pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private performShowToastForLockTaskMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 288
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v6, "PerformShowToastForLockTaskMode"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 290
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 291
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v6, "Under LockTaskMode. Prevent switch to floating mode"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v3, 0x1

    .line 295
    .local v3, "mHasNav":Z
    :try_start_0
    invoke-static {}, Lcom/lge/app/floating/FloatingFunction;->hasNavigationBar()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 299
    :goto_0
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 300
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v5, "set_hw_menu_key_options"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Lcom/lge/app/floating/FloatingFunctionReflect;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 302
    .local v2, "mHWMenuKeyDB":I
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HasNav : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HWMenuKeyDB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    if-eqz v3, :cond_1

    .line 306
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v6, "SW key model."

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const v5, 0x10406b5

    invoke-virtual {p0, v5}, Lcom/lge/app/floating/FloatableActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 321
    .end local v2    # "mHWMenuKeyDB":I
    .end local v3    # "mHasNav":Z
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_1
    return-void

    .line 296
    .restart local v3    # "mHasNav":Z
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v6, "Exception is occured in getting hasNav values"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "mHWMenuKeyDB":I
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    if-ne v2, v8, :cond_2

    .line 310
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v6, "HW_recent key model."

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const v5, 0x10406b7

    invoke-virtual {p0, v5}, Lcom/lge/app/floating/FloatableActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 315
    :cond_2
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v6, "HW_menu key model."

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const v5, 0x10406b8

    invoke-virtual {p0, v5}, Lcom/lge/app/floating/FloatableActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private startFloatingService()V
    .locals 3

    .prologue
    .line 1094
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mServiceStartRequested:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.lge.app.floating.FloatingWindowService"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/lge/app/floating/FloatableActivity;->isServiceRunning(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1096
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mServiceStartRequested:Z

    .line 1099
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/app/floating/FloatingWindowService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1100
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ActivityName"

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1101
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatableActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1103
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private switchToFloatingMode(Lcom/lge/app/floating/FloatingWindow$LayoutParams;Z)V
    .locals 11
    .param p1, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    .param p2, "temp"    # Z

    .prologue
    const/16 v10, 0x400

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 329
    iput-boolean v8, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    .line 330
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 331
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is currently in floating mode. Do nothing."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-boolean v5, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v5, :cond_2

    .line 336
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is currently switching to floating mode. Ignoring duplicated request."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v6, Lcom/lge/app/floating/FloatableActivity$State;->PAUSE:Lcom/lge/app/floating/FloatableActivity$State;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v6, Lcom/lge/app/floating/FloatableActivity$State;->STOP:Lcom/lge/app/floating/FloatableActivity$State;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v6, Lcom/lge/app/floating/FloatableActivity$State;->DESTROY:Lcom/lge/app/floating/FloatableActivity$State;

    if-ne v5, v6, :cond_4

    .line 341
    :cond_3
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is currnently in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mode. In this mode, switching to floating mode is not possible."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_4
    const/4 v3, 0x0

    .line 352
    .local v3, "ignoreMaxFloating":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 353
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "ignoreMaxFloating"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 357
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-nez v3, :cond_6

    .line 358
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->ensureMaximumFloatingWindows()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 366
    :goto_2
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 367
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-ne v5, v10, :cond_7

    .line 368
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v6, "FLAG_FULLSCREEN in full mode."

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iput-boolean v8, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    .line 375
    :goto_3
    iput-boolean v8, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSetFullScreenFlag:Z

    .line 378
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v4

    .line 379
    .local v4, "window":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 380
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_5

    .line 381
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v6, "addFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    .line 385
    :cond_5
    if-eqz v4, :cond_9

    .line 386
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There already is a floating window for activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 392
    invoke-virtual {v4}, Lcom/lge/app/floating/FloatingWindow;->gainFocus()V

    .line 393
    invoke-virtual {v4}, Lcom/lge/app/floating/FloatingWindow;->moveToTop()V

    .line 394
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finish()V

    goto/16 :goto_0

    .line 354
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "window":Lcom/lge/app/floating/FloatingWindow;
    :catch_0
    move-exception v2

    .line 355
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get ApplicationInfo of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 362
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MaxFloating is ignored by app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 372
    .restart local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v6, "Not FLAG_FULLSCREEN in full mode."

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iput-boolean v9, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    goto/16 :goto_3

    .line 401
    .restart local v4    # "window":Lcom/lge/app/floating/FloatingWindow;
    :cond_8
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v6, "Activity is originally started as a normal mode and there is a floating window for this activity...Close late one"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {v4}, Lcom/lge/app/floating/FloatingWindow;->closeInner()V

    goto/16 :goto_0

    .line 409
    :cond_9
    invoke-direct {p0, p1}, Lcom/lge/app/floating/FloatableActivity;->forceSwitchToFloatingMode(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V
    .locals 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "dontRemember"    # Z

    .prologue
    .line 1222
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregister receiver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dontRemember : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    if-nez p1, :cond_0

    .line 1225
    invoke-super {p0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1249
    :goto_0
    return-void

    .line 1229
    :cond_0
    const/4 v0, 0x0

    .line 1230
    .local v0, "done":Z
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1231
    .local v3, "unregisteredReceivers":Ljava/util/Set;, "Ljava/util/Set<Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;>;"
    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    monitor-enter v5

    .line 1232
    :try_start_0
    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    .line 1233
    .local v2, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    iget-object v4, v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v4, p1, :cond_1

    .line 1234
    iget-boolean v4, v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->isRegistered:Z

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 1235
    invoke-super {p0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1236
    const/4 v0, 0x1

    .line 1238
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->isRegistered:Z

    .line 1239
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1248
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1245
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz p2, :cond_4

    .line 1246
    :try_start_1
    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1248
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1254
    invoke-super {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1262
    :goto_0
    return-object v1

    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    const-string v2, "tag_frame_layout"

    invoke-virtual {v1, v2}, Lcom/lge/app/floating/FloatingWindow;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1258
    .local v0, "targetView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1259
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1262
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finishFloatingMode()V
    .locals 3

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is currently not in floating mode, thus finishing is impossible."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finishFloatingMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->closeInner()V

    goto :goto_0
.end method

.method public getContentViewForFloatingMode()Landroid/view/View;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method getDontFinishActivity()Z
    .locals 1

    .prologue
    .line 1853
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    return v0
.end method

.method public getFloatingWindow()Lcom/lge/app/floating/FloatingWindow;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    return-object v0
.end method

.method public getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v0

    return-object v0
.end method

.method handleAttachToFloatingWindow(Lcom/lge/app/floating/FloatingWindow;)V
    .locals 14
    .param p1, "w"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1272
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleAttachToFloatingWindow="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    sget-boolean v7, Lcom/lge/app/floating/FloatableActivity;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1274
    :cond_0
    iput-boolean v12, p0, Lcom/lge/app/floating/FloatableActivity;->mIsAttached:Z

    .line 1276
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    if-nez v7, :cond_1

    .line 1277
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    iput-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    .line 1278
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1283
    :cond_1
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v7, :cond_2

    .line 1284
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v8, "com.lge.app.floating.launchAsFloating"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1287
    :cond_2
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 1290
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v8, "view is being transferred from full-screen window to floating window"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 1292
    .local v5, "p":Landroid/view/ViewParent;
    if-eqz v5, :cond_3

    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    move-object v7, v5

    .line 1293
    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1294
    check-cast v5, Landroid/view/ViewGroup;

    .end local v5    # "p":Landroid/view/ViewParent;
    iput-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mContentViewParent:Landroid/view/ViewGroup;

    .line 1296
    :cond_3
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/lge/app/floating/FloatingWindow;->setContentView(Landroid/view/View;)V

    .line 1300
    :cond_4
    iget-boolean v7, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-nez v7, :cond_7

    .line 1301
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "re-registering receivers for activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    .line 1303
    .local v3, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receiver="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/app/floating/FloatingWindowManager;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    .line 1305
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_5

    .line 1306
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1308
    :cond_5
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "register to service context: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v7, v3, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v8, v3, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->filter:Landroid/content/IntentFilter;

    iget-object v9, v3, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->broadcastPermission:Ljava/lang/String;

    iget-object v10, v3, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->scheduler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 1312
    .end local v0    # "c":Landroid/content/Context;
    .end local v3    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :cond_6
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->receiverListForUnregister:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1313
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->receiverListForUnregister:Ljava/util/List;

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1319
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-boolean v7, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-nez v7, :cond_a

    .line 1320
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v8, Lcom/lge/app/floating/FloatableActivity$State;->PAUSE:Lcom/lge/app/floating/FloatableActivity$State;

    if-ne v7, v8, :cond_9

    .line 1346
    :cond_8
    :goto_1
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v8, "callback onAttachedToFloatingWindow()"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p0, p1}, Lcom/lge/app/floating/FloatableActivity;->onAttachedToFloatingWindow(Lcom/lge/app/floating/FloatingWindow;)V

    .line 1349
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v7, :cond_d

    .line 1350
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v8, "com.lge.app.floating.lowProfileRequester"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1351
    .local v6, "previousLowProfileRequester":Ljava/lang/String;
    if-eqz v6, :cond_b

    .line 1352
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v8, "com.lge.app.floating.lowProfileIsHidden"

    invoke-virtual {v7, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1353
    .local v1, "hide":Z
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recover last low profile mode as hide="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " by previous LowProfile requester "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Lcom/lge/app/floating/FloatingWindowManager;->handleEnterLowProfile(ZLjava/lang/String;)V

    .line 1355
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v8, "com.lge.app.floating.lowProfileRequester"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1356
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v8, "com.lge.app.floating.lowProfileIsHidden"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1386
    .end local v1    # "hide":Z
    .end local v6    # "previousLowProfileRequester":Ljava/lang/String;
    :goto_2
    return-void

    .line 1322
    :cond_9
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v8, Lcom/lge/app/floating/FloatableActivity$State;->STOP:Lcom/lge/app/floating/FloatableActivity$State;

    if-eq v7, v8, :cond_8

    .line 1324
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v8, Lcom/lge/app/floating/FloatableActivity$State;->DESTROY:Lcom/lge/app/floating/FloatableActivity$State;

    if-ne v7, v8, :cond_8

    .line 1326
    iput-boolean v11, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    goto :goto_1

    .line 1335
    :cond_a
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v8, Lcom/lge/app/floating/FloatableActivity$State;->PAUSE:Lcom/lge/app/floating/FloatableActivity$State;

    if-eq v7, v8, :cond_8

    .line 1337
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v8, Lcom/lge/app/floating/FloatableActivity$State;->STOP:Lcom/lge/app/floating/FloatableActivity$State;

    if-ne v7, v8, :cond_8

    .line 1339
    iput-boolean v11, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    goto :goto_1

    .line 1363
    .restart local v6    # "previousLowProfileRequester":Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v8, "com.lge.app.floating.opacity"

    invoke-virtual {v7, v8, v13}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    .line 1364
    .local v4, "opacity":F
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show opacity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    cmpg-float v7, v4, v13

    if-gez v7, :cond_c

    .line 1366
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "apply opacity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " saved in intent"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v7, v12}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 1370
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/lge/app/floating/FloatableActivity$1;

    invoke-direct {v8, p0}, Lcom/lge/app/floating/FloatableActivity$1;-><init>(Lcom/lge/app/floating/FloatableActivity;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1376
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v7, v4}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(F)V

    .line 1377
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v8, "com.lge.app.floating.opacity"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1381
    :cond_c
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v7, v12}, Lcom/lge/app/floating/FloatingWindow;->updateTitleBackground(Z)V

    goto/16 :goto_2

    .line 1384
    .end local v4    # "opacity":F
    .end local v6    # "previousLowProfileRequester":Ljava/lang/String;
    :cond_d
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v8, "Current intent is NULL"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method handleDetachFromFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Z)V
    .locals 23
    .param p1, "w"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "isReturningToFullScreen"    # Z

    .prologue
    .line 1406
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleDetachFromFloatingWindow="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-virtual/range {p0 .. p2}, Lcom/lge/app/floating/FloatableActivity;->onDetachedFromFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Z)Z

    move-result v4

    .line 1408
    .local v4, "autoRelaunch":Z
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/app/floating/FloatableActivity;->mIsAttached:Z

    .line 1409
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    .line 1410
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 1411
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    .line 1414
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 1415
    .local v7, "display":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v16

    .line 1417
    .local v16, "params":Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    if-nez v16, :cond_1

    .line 1418
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v20, "FloatingWindow.LayoutParams params == null"

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v10, v19, v20

    .line 1423
    .local v10, "horRatio":F
    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v18, v19, v20

    .line 1424
    .local v18, "verRatio":F
    const-string v19, "com.lge.app.floating.pref"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lge/app/floating/FloatableActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1425
    .local v17, "prefs":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1426
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v19, "floating_hor_ratio"

    move-object/from16 v0, v19

    invoke-interface {v9, v0, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1427
    const-string v19, "floating_ver_ratio"

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1428
    const-string v19, "floating_w"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1429
    const-string v19, "floating_h"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1430
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1434
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 1435
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 1436
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x12

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 1437
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v20, "clearFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v20, 0x400

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->clearFlags(I)V

    .line 1446
    :cond_2
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DontFinishActivity = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 1448
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "unregistering receivers for activity"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->receiverListForUnregister:Ljava/util/List;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1450
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->receiverListForUnregister:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    .line 1451
    .local v12, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "receiver="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v12, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lge/app/floating/FloatingWindowManager;->getServiceContext()Landroid/content/Context;

    move-result-object v5

    .line 1454
    .local v5, "c":Landroid/content/Context;
    if-nez v5, :cond_3

    .line 1455
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 1457
    :cond_3
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "unregister from service context: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v12, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object v0, v12, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1459
    .end local v5    # "c":Landroid/content/Context;
    :catch_0
    move-exception v8

    .line 1460
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "receiver "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v12, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is already unregistered"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1463
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->receiverListForUnregister:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 1466
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_5
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "AutoRelaunch = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    if-eqz v4, :cond_0

    .line 1468
    if-eqz p2, :cond_e

    .line 1469
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1473
    .local v13, "intent":Landroid/content/Intent;
    :goto_2
    const-string v19, "com.lge.app.floating.launchAsFloating"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1474
    const-string v19, "com.lge.app.floating.returnFromFloating"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1475
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "relaunching. intent="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/app/floating/FloatableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1472
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v13, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_2

    .line 1481
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/lge/app/floating/FloatingWindow;->getContentView()Landroid/view/View;

    move-result-object v14

    .line 1482
    .local v14, "myView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1483
    .local v6, "decorView":Landroid/view/ViewGroup;
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "decor view="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->setContentView(Landroid/view/View;)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mSavedWindowBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mSavedWindowBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1488
    :cond_8
    if-eqz v14, :cond_9

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mContentViewParent:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mContentViewParent:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1491
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/app/floating/FloatableActivity;->mContentViewParent:Landroid/view/ViewGroup;

    .line 1499
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "com.lge.app.floating.launchAsFloating"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "com.lge.app.floating.returnFromFloating"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1506
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lge/app/floating/FloatableActivity$State;->RESUME:Lcom/lge/app/floating/FloatableActivity$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 1507
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "move activity "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to foreground"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const-string v19, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1509
    .local v3, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    goto/16 :goto_0

    .line 1493
    .end local v3    # "am":Landroid/app/ActivityManager;
    :cond_b
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 1517
    :cond_c
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "re-launch activity "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1520
    .restart local v13    # "intent":Landroid/content/Intent;
    :goto_4
    const/high16 v19, 0x20000000

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1521
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/app/floating/FloatableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1519
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_d
    new-instance v13, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_4

    .line 1525
    .end local v6    # "decorView":Landroid/view/ViewGroup;
    .end local v14    # "myView":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1526
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1527
    .local v15, "nullDrwable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/app/floating/FloatableActivity;->mSavedWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 1528
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1531
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0xf

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_f

    .line 1535
    const-string v19, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1536
    .restart local v3    # "am":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 1538
    .end local v3    # "am":Landroid/app/ActivityManager;
    :cond_f
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v20, "(DontFinishActivity && AutoRestart) == true , finish Activity."

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->finish()V

    goto/16 :goto_0
.end method

.method public isInFloatingMode()Z
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartedAsFloating()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 664
    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v2, "com.lge.app.floating.launchAsFloating"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSwitchingToFloatingMode()Z
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchingToFullMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 675
    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v2, "com.lge.app.floating.returnFromFloating"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isSwitchingToFloatingMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1049
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsWaitingActivityResult:Z

    .line 1050
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mHasActivityResultReceived:Z

    .line 1053
    :cond_0
    return-void
.end method

.method public onAttachedToFloatingWindow(Lcom/lge/app/floating/FloatingWindow;)V
    .locals 0
    .param p1, "w"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 1403
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1139
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1140
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on attached from window activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1390
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1391
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration is changed. newconfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 731
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 732
    invoke-static {p0}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mResources:Landroid/content/res/Resources;

    .line 733
    sget-object v8, Lcom/lge/app/floating/FloatableActivity$State;->CREATE:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 734
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    .line 735
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    .line 736
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QSlide framework version is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/lge/app/floating/Res;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " [ code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/lge/app/floating/Res;->getVersionCode(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "on create activity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "started as floating="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-static {p0}, Lcom/lge/app/floating/FloatingWindowService;->checkExistence(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 743
    const-string v8, "FloatingWindowService cannot be found. Please see logcat for further information."

    invoke-static {p0, v8, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    .line 749
    .local v6, "window":Lcom/lge/app/floating/FloatingWindow;
    if-eqz v6, :cond_3

    .line 752
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 753
    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 754
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "we already have docked floating window for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/lge/app/floating/FloatingWindow;->releaseDockInner(Ljava/lang/String;Z)V

    .line 765
    :goto_0
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v9, "There is already floating window for another activity... Finish current Activity."

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finish()V

    .line 790
    :goto_1
    return-void

    .line 757
    :cond_1
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " we already have floating window for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0a0002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 759
    .local v4, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "appName":Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f06000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 761
    .local v7, "yOffset":I
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v1, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 762
    .local v5, "toast":Landroid/widget/Toast;
    const/16 v8, 0x31

    invoke-virtual {v5, v8, v13, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 763
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 771
    .end local v1    # "appName":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/CharSequence;
    .end local v5    # "toast":Landroid/widget/Toast;
    .end local v7    # "yOffset":I
    :cond_2
    invoke-virtual {v6, v14}, Lcom/lge/app/floating/FloatingWindow;->closeInner(Z)V

    goto :goto_1

    .line 774
    :cond_3
    const-string v2, ""

    .line 776
    .local v2, "checkKids":Ljava/lang/String;
    :try_start_0
    const-string v8, "android.os.SystemProperties"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "get"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 777
    .local v3, "getSystemPropertiesMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 778
    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "service.plushome.currenthome"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v3    # "getSystemPropertiesMethod":Ljava/lang/reflect/Method;
    :goto_2
    const-string v8, "kids"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 782
    sput-boolean v14, Lcom/lge/app/floating/FloatableActivity;->mIsInGuestMode:Z

    .line 788
    :goto_3
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIsInGuestMode set :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/lge/app/floating/FloatableActivity;->mIsInGuestMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 783
    :cond_4
    const-string v8, "kids"

    const-string v9, "standard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 784
    sput-boolean v13, Lcom/lge/app/floating/FloatableActivity;->mIsInGuestMode:Z

    goto :goto_3

    .line 786
    :cond_5
    sput-boolean v13, Lcom/lge/app/floating/FloatableActivity;->mIsInGuestMode:Z

    goto :goto_3

    .line 779
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1117
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->DESTROY:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 1118
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on destroy activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1120
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-nez v0, :cond_0

    .line 1121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 1124
    :cond_0
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finishFloatingMode()V

    .line 1127
    :cond_1
    return-void
.end method

.method public onDetachedFromFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Z)Z
    .locals 1
    .param p1, "w"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "isReturningToFullScreen"    # Z

    .prologue
    .line 1566
    const/4 v0, 0x1

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1132
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1133
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on detached from window activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 886
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 888
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->NEWINTENT:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 889
    iput-object p1, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    .line 890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsRestartedOrNewIntentCalled:Z

    .line 892
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on new intent activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "started as floating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->handleStartedAsFloatingMode()V

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v0, :cond_0

    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 900
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindowManager;->removeFloatingWindow(Lcom/lge/app/floating/FloatingWindow;)V

    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 990
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->PAUSE:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 991
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on pause activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/app/floating/FloatableActivity;->fakeLoadersNotStarted(Z)V

    .line 994
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 995
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-eqz v0, :cond_1

    .line 996
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "isInFloatingMode - addFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1011
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1012
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->startFloatingService()V

    .line 1013
    return-void

    .line 1000
    :cond_1
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "!isInFloatingMode "

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    if-eqz v0, :cond_2

    .line 1002
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "addFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1006
    :cond_2
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "clearFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 796
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 797
    sget-object v1, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v2, "onPostCreate"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSetFullScreenFlag:Z

    if-nez v1, :cond_0

    .line 801
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 802
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_1

    .line 803
    sget-object v1, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v2, "FLAG_FULLSCREEN in full mode."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    .line 810
    :goto_0
    iput-boolean v3, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSetFullScreenFlag:Z

    .line 812
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 807
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    sget-object v1, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v2, "Not FLAG_FULLSCREEN in full mode."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iput-boolean v3, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 946
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 947
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostResume activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mServiceStartRequested:Z

    .line 956
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-eqz v0, :cond_0

    .line 957
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->handleDuplicatedStart()V

    .line 962
    :cond_0
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 963
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->dismissCurrentActivity()V

    .line 965
    :cond_1
    return-void
.end method

.method protected onRestart()V
    .locals 8

    .prologue
    const/16 v7, 0x400

    const/4 v6, 0x1

    .line 839
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 840
    sget-object v3, Lcom/lge/app/floating/FloatableActivity$State;->RESTART:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 841
    iput-boolean v6, p0, Lcom/lge/app/floating/FloatableActivity;->mIsRestartedOrNewIntentCalled:Z

    .line 842
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on restart activity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "started as floating="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release dock floating window for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v2

    .line 850
    .local v2, "window":Lcom/lge/app/floating/FloatingWindow;
    if-eqz v2, :cond_0

    .line 851
    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 852
    iget-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/app/floating/FloatingWindow;->releaseDockInner(Ljava/lang/String;Z)V

    .line 855
    :cond_0
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v3

    if-nez v3, :cond_1

    .line 856
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 857
    .local v1, "currentSystemUiVisibility":I
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRestart. Current flag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Unset SYSTEM_UI_FLAG_LAYOUT_STABLE flag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    and-int/lit16 v1, v1, -0x101

    .line 859
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 862
    .end local v1    # "currentSystemUiVisibility":I
    :cond_1
    iget-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-nez v3, :cond_2

    .line 863
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 864
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-ne v3, v7, :cond_4

    .line 865
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v4, "FLAG_FULLSCREEN in full mode."

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iput-boolean v6, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    .line 874
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v3

    if-nez v3, :cond_3

    .line 875
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_3

    .line 876
    iget-boolean v3, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    if-eqz v3, :cond_3

    .line 877
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v4, "addFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->addFlags(I)V

    .line 882
    :cond_3
    return-void

    .line 869
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v4, "Not FLAG_FULLSCREEN in full mode."

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 939
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->RESUME:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 940
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on resume activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 942
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 815
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 816
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->START:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 818
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on start activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "started as floating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mServiceStartRequested:Z

    .line 825
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v1, "com.lge.app.floating.restarted"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 830
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->handleStartedAsFloatingMode()V

    .line 832
    :cond_1
    return-void
.end method

.method protected onStartedAsFloatingMode()Z
    .locals 1

    .prologue
    .line 1620
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x400

    .line 1017
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->STOP:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 1018
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on stop activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-direct {p0, v4}, Lcom/lge/app/floating/FloatableActivity;->fakeLoadersNotStarted(Z)V

    .line 1021
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-eqz v0, :cond_2

    .line 1023
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "isInFloatingMode - addFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1038
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1039
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->startFloatingService()V

    .line 1040
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsAttached:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-eqz v0, :cond_1

    .line 1041
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 1043
    :cond_1
    return-void

    .line 1027
    :cond_2
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "!isInFloatingMode "

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    if-eqz v0, :cond_3

    .line 1029
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "addFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1033
    :cond_3
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "clearFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    const/4 v0, 0x0

    .line 1156
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/lge/app/floating/FloatableActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .prologue
    .line 1161
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "register receiver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " filter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " permission="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const/4 v3, 0x0

    .line 1164
    .local v3, "result":Landroid/content/Intent;
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1174
    :goto_0
    if-nez p1, :cond_1

    .line 1198
    :cond_0
    :goto_1
    return-object v3

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "IllegalStateException in registerReceiver"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " registered with differing handler."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1170
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 1171
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerReceiver Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1178
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lge/app/floating/FloatableActivity;->findRegisterInfo(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    move-result-object v1

    .line 1179
    .local v1, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    if-eqz v1, :cond_2

    iget-boolean v4, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->isRegistered:Z

    if-nez v4, :cond_0

    .line 1182
    :cond_2
    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    monitor-enter v5

    .line 1187
    if-nez v1, :cond_3

    .line 1188
    :try_start_1
    new-instance v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;-><init>(Lcom/lge/app/floating/FloatableActivity$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1189
    .end local v1    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    .local v2, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :try_start_2
    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    .line 1191
    .end local v2    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    .restart local v1    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :cond_3
    :try_start_3
    iput-object p1, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    .line 1192
    iput-object p2, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->filter:Landroid/content/IntentFilter;

    .line 1193
    iput-object p3, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->broadcastPermission:Ljava/lang/String;

    .line 1194
    iput-object p4, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->scheduler:Landroid/os/Handler;

    .line 1195
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->isRegistered:Z

    .line 1196
    iput-object v3, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->intent:Landroid/content/Intent;

    .line 1197
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .end local v1    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    .restart local v2    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    .restart local v1    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    goto :goto_2
.end method

.method restartIfNecessary(Landroid/content/res/Configuration;)V
    .locals 13
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1662
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    if-nez v8, :cond_0

    .line 1663
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    .line 1664
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1666
    :cond_0
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mOldConfig="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v12}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newConfig ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compare="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v12, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v8

    if-nez v8, :cond_2

    .line 1672
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v9, "Do not restart"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    :cond_1
    :goto_0
    return-void

    .line 1677
    :cond_2
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v11, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v8, v11, :cond_3

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v11, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v8, v11, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v11, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v8, v11, :cond_5

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v11, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v8, v11, :cond_5

    .line 1679
    :cond_4
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v9, "Do not restart for hide Navigation Bar "

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1685
    :cond_5
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iget v11, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_6

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v11, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v8, v11, :cond_7

    .line 1686
    :cond_6
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not restarting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1692
    :cond_7
    const/4 v3, 0x0

    .line 1694
    .local v3, "isGallery":Z
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1695
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 1696
    const-string v8, "FloatingGallery"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1700
    :cond_8
    if-eqz v3, :cond_9

    .line 1701
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v9, "Gallery no restarted"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v8, v8, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingDockWindow;->isDocked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1704
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v8, v8, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingDockWindow;->updateDockIcon()V

    goto/16 :goto_0

    .line 1711
    :cond_9
    iget-boolean v8, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-eqz v8, :cond_10

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v8

    if-eqz v8, :cond_10

    move v5, v9

    .line 1713
    .local v5, "needRestart":Z
    :goto_1
    if-eqz v5, :cond_a

    .line 1714
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v11, "need restart because mDontFinishActivity=true and isInFloatingMode now"

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    :cond_a
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v8, v11, :cond_11

    .line 1719
    iget v8, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0xc0

    iget-object v11, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v11, v11, 0xc0

    if-eq v8, v11, :cond_b

    .line 1720
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "need restart for layout direction change from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v12, v12, 0xc0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v12, v12, 0xc0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const/4 v5, 0x1

    .line 1733
    :cond_b
    :goto_2
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v8, v8, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    if-eqz v8, :cond_c

    .line 1734
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v8, v8, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingDockWindow;->isDocked()Z

    move-result v8

    or-int/2addr v5, v8

    .line 1739
    :cond_c
    if-eqz v5, :cond_d

    .line 1741
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v11, "needRestart. saveLowProfileRequest to restore it"

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingWindowManager;->saveLowProfileRequest()V

    .line 1744
    :cond_d
    if-eqz v5, :cond_f

    .line 1745
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restarting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v8, :cond_14

    new-instance v2, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1747
    .local v2, "intent":Landroid/content/Intent;
    :goto_3
    const-string v8, "com.lge.app.floating.launchAsFloating"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1748
    const-string v8, "com.lge.app.floating.restarted"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1749
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingWindow;->isInLowProfile()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1750
    const-string v8, "com.lge.app.floating.lowProfileRequester"

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v9

    iget-object v9, v9, Lcom/lge/app/floating/FloatingWindowManager;->mLastLowProfileRequester:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1751
    const-string v8, "com.lge.app.floating.lowProfileIsHidden"

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v9

    iget-boolean v9, v9, Lcom/lge/app/floating/FloatingWindowManager;->mLastLowProfileIsHidden:Z

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1768
    :cond_e
    :goto_4
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->getOrderingForStartActivity()I

    move-result v1

    .line 1769
    .local v1, "delay":I
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v9, "finishFloatingMode to restart"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finishFloatingMode()V

    .line 1771
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v9, "startActivity to restart"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : wait for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int/lit16 v10, v1, 0xbb8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1775
    .local v4, "msg":Landroid/os/Message;
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1776
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->restartActivityhandler:Landroid/os/Handler;

    mul-int/lit16 v9, v1, 0xbb8

    int-to-long v10, v9

    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1792
    .end local v1    # "delay":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_f
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .end local v5    # "needRestart":Z
    :cond_10
    move v5, v10

    .line 1711
    goto/16 :goto_1

    .line 1724
    .restart local v5    # "needRestart":Z
    :cond_11
    iget-object v8, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v8}, Lcom/lge/app/floating/FloatableActivity;->checkRtl(Ljava/util/Locale;)Z

    move-result v6

    .line 1725
    .local v6, "newLanguageRtl":Z
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v8}, Lcom/lge/app/floating/FloatableActivity;->checkRtl(Ljava/util/Locale;)Z

    move-result v7

    .line 1726
    .local v7, "oldLanguageRtl":Z
    if-eq v6, v7, :cond_b

    .line 1727
    sget-object v11, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "need restart for layout direction change from "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v7, :cond_12

    const-string v8, "rtl"

    :goto_5
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " to "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v6, :cond_13

    const-string v8, "rtl"

    :goto_6
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1727
    :cond_12
    const-string v8, "ltr"

    goto :goto_5

    :cond_13
    const-string v8, "ltr"

    goto :goto_6

    .line 1746
    .end local v6    # "newLanguageRtl":Z
    .end local v7    # "oldLanguageRtl":Z
    :cond_14
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1755
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_15
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v8, v8, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1756
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restarting intent contains NEED_TO_DOCK, direction of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v12}, Lcom/lge/app/floating/FloatingWindow;->getDockDirection()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    const-string v8, "com.lge.floating.NEED_TO_DOCK"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1758
    const-string v8, "com.lge.floating.DOCK_POSX"

    iget-object v11, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v11, v11, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v11}, Lcom/lge/app/floating/FloatingDockWindow;->getDockWindowPosition()[I

    move-result-object v11

    aget v10, v11, v10

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1759
    const-string v8, "com.lge.floating.DOCK_POSY"

    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v10, v10, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v10}, Lcom/lge/app/floating/FloatingDockWindow;->getDockWindowPosition()[I

    move-result-object v10

    aget v9, v10, v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1762
    :cond_16
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1763
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restarting intent contains alpha "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v10}, Lcom/lge/app/floating/FloatingWindow;->getUserOpacity()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    const-string v8, "com.lge.app.floating.opacity"

    iget-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v9}, Lcom/lge/app/floating/FloatingWindow;->getUserOpacity()F

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto/16 :goto_4
.end method

.method public setContentViewForFloatingMode(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatableActivity;->setContentViewForFloatingMode(Landroid/view/View;)V

    .line 205
    :cond_0
    return-void
.end method

.method public setContentViewForFloatingMode(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    .line 185
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->setContentView(Landroid/view/View;)V

    .line 188
    :cond_0
    return-void
.end method

.method public setDontFinishOnFloatingMode(Z)V
    .locals 3
    .param p1, "dontfinish"    # Z

    .prologue
    .line 638
    if-eqz p1, :cond_0

    .line 639
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is configured to not be destroyed when in floating mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    iput-boolean p1, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    .line 642
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v0, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public setViewForConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1576
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1060
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 1063
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/app/floating/FloatableActivity;->mIsWaitingActivityResult:Z

    .line 1064
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1065
    .local v0, "am":Landroid/app/ActivityManager;
    sget-object v2, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToFront : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget v2, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 1067
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1089
    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindowManager;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    .line 1079
    .local v1, "c":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 1080
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1082
    :cond_1
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1083
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1087
    .end local v1    # "c":Landroid/content/Context;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToFloatingMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 223
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/lge/app/floating/FloatableActivity;->switchToFloatingMode(ZZZLandroid/graphics/Rect;)V

    .line 224
    return-void
.end method

.method public switchToFloatingMode(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .prologue
    .line 280
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "Switch to floating mode requested"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->performShowToastForLockTaskMode()V

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/app/floating/FloatableActivity;->switchToFloatingMode(Lcom/lge/app/floating/FloatingWindow$LayoutParams;Z)V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    .line 285
    return-void
.end method

.method public switchToFloatingMode(ZZZLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "useOverlay"    # Z
    .param p2, "useOverlappingTitle"    # Z
    .param p3, "isResizable"    # Z
    .param p4, "initialRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 245
    new-instance v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    invoke-direct {v0, p0}, Lcom/lge/app/floating/FloatingWindow$LayoutParams;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, "params":Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    iput-boolean p1, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlay:Z

    .line 247
    iput-boolean p2, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlappingTitle:Z

    .line 248
    if-eqz p3, :cond_1

    const/4 v1, 0x3

    :goto_0
    iput v1, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->resizeOption:I

    .line 249
    if-eqz p4, :cond_0

    .line 250
    sget-object v1, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToFloatingMode in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 252
    iget v1, p4, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 253
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    .line 254
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    .line 256
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatableActivity;->switchToFloatingMode(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    .line 257
    return-void

    .line 248
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1208
    :try_start_0
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v1, Lcom/lge/app/floating/FloatableActivity$State;->STOP:Lcom/lge/app/floating/FloatableActivity$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v1, Lcom/lge/app/floating/FloatableActivity$State;->DESTROY:Lcom/lge/app/floating/FloatableActivity$State;

    if-ne v0, v1, :cond_1

    .line 1209
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/app/floating/FloatableActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V

    .line 1219
    :goto_0
    return-void

    .line 1212
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/app/floating/FloatableActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1214
    :catch_0
    move-exception v0

    goto :goto_0
.end method
