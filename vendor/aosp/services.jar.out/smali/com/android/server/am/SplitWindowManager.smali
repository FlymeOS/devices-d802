.class public Lcom/android/server/am/SplitWindowManager;
.super Ljava/lang/Object;
.source "SplitWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SplitWindowManager$1;,
        Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;,
        Lcom/android/server/am/SplitWindowManager$SplitActivity;,
        Lcom/android/server/am/SplitWindowManager$State;
    }
.end annotation


# static fields
.field static final CANCEL_SPLIT_MODE_MSG:I = 0x1f7

.field static final DEBUG:Z = false

.field static final DEBUG_LIGHT:Z

.field static final DEBUG_MULTIPLE:Z = true

.field static final EXTRA_SPLIT_WINDOW_OPTION_LAUNCH_SCREEN:Ljava/lang/String; = "com.lge.intent.extra.SPLIT_WINDOW_LAUNCH_SCREEN"

.field static final MAX_MULTIPLE_INSTANCE_COUNT:I = 0x2

.field static final PUT_STATE_TO_LOG_MSG:I = 0x1f6

.field static final STACK_ID_HOME:I = 0x0

.field static final STACK_ID_INVALID:I = -0x1

.field static final SUPPORT_MULTIPLE_INSTANCE:Z = false

.field static final TAG:Ljava/lang/String; = "SplitWindowManager"

.field static final UNSPLIT_PREVIOUS_ACTIVITIES_MSG:I = 0x1f8

.field static final UPDATE_ACTIVITY_STATE_MSG:I = 0x1f5


# instance fields
.field final mHandler:Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;

.field mHistorySplit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SplitWindowManager$SplitActivity;",
            ">;"
        }
    .end annotation
.end field

.field mPreparedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSplitActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SplitWindowManager$SplitActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitPolicy:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

.field private mState:Lcom/android/server/am/SplitWindowManager$State;

.field mTaskWaitToMove:Lcom/android/server/am/TaskRecord;

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-class v1, Lcom/android/server/am/SplitWindowManager;

    monitor-enter v1

    .line 70
    :try_start_0
    const-string v0, "SplitWindowManager"

    const-string v2, "SplitWindowManager has been created..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p1, p0, Lcom/android/server/am/SplitWindowManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 72
    iput-object p2, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 73
    iput-object p3, p0, Lcom/android/server/am/SplitWindowManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 74
    new-instance v0, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;

    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;-><init>(Lcom/android/server/am/SplitWindowManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mHandler:Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;

    .line 76
    sget-object v0, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    iput-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mState:Lcom/android/server/am/SplitWindowManager$State;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mHistorySplit:Ljava/util/ArrayList;

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/am/SplitWindowManager;Lcom/android/server/am/ActivityRecord;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/SplitWindowManager;
    .param p1, "x1"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "x2"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SplitWindowManager;->updateActivityToSplitPolicyService(Lcom/android/server/am/ActivityRecord;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/SplitWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/SplitWindowManager;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->realPutLogState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/SplitWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/SplitWindowManager;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->cancelSplitWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/SplitWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/SplitWindowManager;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->unsplitPreviousActivities()V

    return-void
.end method

.method private activitiesToUnSplited()V
    .locals 4

    .prologue
    .line 1822
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1823
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1825
    .local v1, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_0

    .line 1826
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setUnSplit(Z)V

    goto :goto_0

    .line 1829
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1830
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    iget-object v2, v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_2

    .line 1831
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setUnSplit(Z)V

    .line 1832
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    invoke-virtual {v2}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setNative()V

    .line 1836
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mHandler:Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;

    const/16 v3, 0x1f8

    invoke-virtual {v2, v3}, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;->sendEmptyMessage(I)Z

    .line 1838
    sget-boolean v2, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v2, :cond_3

    const-string v2, "SplitWindowManager"

    const-string v3, "remove mPreparedActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1841
    sget-object v2, Lcom/android/server/am/SplitWindowManager$State;->FINISHING:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0, v2}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    .line 1842
    return-void
.end method

.method private attachSplitInfo(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;Lcom/android/server/am/ActivityRecord;)Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 449
    if-nez p3, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/android/server/am/SplitWindowManager;->checkScreen(Landroid/content/Intent;Landroid/content/Intent;)Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;

    move-result-object v0

    .line 450
    .local v0, "screen":Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;
    new-instance v1, Lcom/android/server/am/ActivitySplitInfo;

    invoke-direct {v1, v0}, Lcom/android/server/am/ActivitySplitInfo;-><init>(Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;)V

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    .line 452
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "android"

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivitySplitInfo;->setSupportAsSource(Z)V

    .line 455
    :cond_0
    return-object v0

    .line 449
    .end local v0    # "screen":Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;
    :cond_1
    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private cancelSplitWindow()V
    .locals 2

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2211
    :goto_0
    return-void

    .line 2208
    :cond_0
    const-string v0, "SplitWindowManager"

    const-string v1, "exit splitWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/SplitWindowManager;->moveStackToFront(Lcom/android/server/am/ActivityStack;)Z

    .line 2210
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->activitiesToUnSplited()V

    goto :goto_0
.end method

.method private checkAndSetCurrentStateIfNeeded(Z)V
    .locals 5
    .param p1, "forceNormal"    # Z

    .prologue
    const/4 v4, 0x2

    .line 1486
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/SplitWindowManager$State;->REQUESTED:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v2, v3}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/SplitWindowManager$State;->PREPARED:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v2, v3}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1488
    :cond_0
    const-string v2, "SplitWindowManager"

    const-string v3, "SOMETHING WRONG, RESET FOR HOME COMMING!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1490
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1491
    .local v1, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setUnSplit(Z)V

    goto :goto_0

    .line 1493
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1494
    sget-object v2, Lcom/android/server/am/SplitWindowManager$State;->FINISHING:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0, v2}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    .line 1497
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    sget-object v2, Lcom/android/server/am/SplitWindowManager$1;->$SwitchMap$com$android$server$am$SplitWindowManager$State:[I

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/SplitWindowManager$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1529
    :cond_3
    :goto_1
    :pswitch_0
    return-void

    .line 1501
    :pswitch_1
    if-eqz p1, :cond_3

    .line 1502
    sget-object v2, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0, v2}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    goto :goto_1

    .line 1506
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitedActivityCount()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1507
    sget-object v2, Lcom/android/server/am/SplitWindowManager$State;->SPLITED:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0, v2}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    .line 1508
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->letPolicyPrepareSplitMode()V

    .line 1509
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->makeBothActivityOnTopOfHome()V

    goto :goto_1

    .line 1513
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitedActivityCount()I

    move-result v2

    if-ge v2, v4, :cond_3

    .line 1514
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->activitiesToUnSplited()V

    goto :goto_1

    .line 1518
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1519
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1520
    .restart local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getState()Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    move-result-object v2

    sget-object v4, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->UN_SPLITING:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    if-ne v2, v4, :cond_4

    .line 1521
    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setNative()V

    goto :goto_2

    .line 1524
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1525
    sget-object v2, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0, v2}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    .line 1526
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->letPolicyCancelSplitMode()V

    goto :goto_1

    .line 1497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private checkMultipleInstanceTaskInStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)I
    .locals 6
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2067
    const/4 v1, 0x0

    .line 2068
    .local v1, "count":I
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 2069
    .local v0, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_1

    .line 2070
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 2071
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2072
    .local v4, "taskRealActivity":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2073
    add-int/lit8 v1, v1, 0x1

    .line 2069
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2076
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "taskRealActivity":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private checkScreen(Landroid/content/Intent;Landroid/content/Intent;)Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sourceIntent"    # Landroid/content/Intent;

    .prologue
    .line 459
    const/4 v2, 0x0

    .line 460
    .local v2, "screen":Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitWindowPolicy()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v1

    .line 461
    .local v1, "policy":Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    if-nez v1, :cond_0

    .line 462
    const/4 v3, 0x0

    .line 480
    :goto_0
    return-object v3

    .line 466
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->checkScreen(Landroid/content/Intent;Landroid/content/Intent;)Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 473
    :goto_1
    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 475
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mSplitPolicy:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v3, p1, p2}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->checkScreen(Landroid/content/Intent;Landroid/content/Intent;)Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_1
    :goto_2
    move-object v3, v2

    .line 480
    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SplitWindowManager"

    const-string v4, "checkScreen Failed."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->recoverSplitService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v1

    goto :goto_1

    .line 476
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 477
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "SplitWindowManager"

    const-string v4, "checkScreen Failed."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private checkSplitActivityList(Lcom/android/server/am/ActivityRecord;)V
    .locals 13
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1639
    if-eqz p1, :cond_0

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v10, :cond_2

    .line 1640
    :cond_0
    const-string v10, "SplitWindowManager"

    const-string v11, "checkSplitActivityList do nothing due to lack of top ActivityRecord"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_1
    :goto_0
    return-void

    .line 1644
    :cond_2
    move-object v1, p1

    .line 1645
    .local v1, "currentTop":Lcom/android/server/am/ActivityRecord;
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1646
    .local v0, "currentStack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x0

    .line 1647
    .local v3, "isSplitActivityExist":Z
    const/4 v9, -0x1

    .line 1649
    .local v9, "stackIdToRemove":I
    const/4 v7, 0x0

    .line 1651
    .local v7, "splitActivityToAdd":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    iget-object v10, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1653
    .local v6, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    iget v10, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget v11, v6, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    if-ne v10, v11, :cond_6

    .line 1654
    const/4 v3, 0x1

    .line 1655
    iget-object v10, v6, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1657
    const-string v10, "SplitWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Need to update "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget v9, v6, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    .line 1659
    new-instance v7, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .end local v7    # "splitActivityToAdd":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    invoke-direct {v7, p0, p1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;-><init>(Lcom/android/server/am/SplitWindowManager;Lcom/android/server/am/ActivityRecord;)V

    .line 1685
    .end local v6    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .restart local v7    # "splitActivityToAdd":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_4
    :goto_1
    if-lez v9, :cond_5

    .line 1686
    invoke-direct {p0, v9}, Lcom/android/server/am/SplitWindowManager;->removeSplitActivityForStackIdLocked(I)Z

    .line 1689
    :cond_5
    if-eqz v7, :cond_9

    .line 1690
    iget-object v10, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1664
    .restart local v6    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_6
    iget-object v10, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v11, v6, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 1665
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v8, :cond_7

    .line 1666
    iget v9, v6, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    .line 1671
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7
    iget-object v10, v6, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget v11, v6, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    if-eq v10, v11, :cond_3

    .line 1672
    const-string v10, "SplitWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Need to update new top to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget v9, v6, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    .line 1674
    iget-object v10, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v11, v6, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1675
    .local v4, "oppositeStack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1677
    .local v5, "oppositeTop":Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-eqz v5, :cond_4

    .line 1678
    new-instance v7, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .end local v7    # "splitActivityToAdd":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    invoke-direct {v7, p0, v5}, Lcom/android/server/am/SplitWindowManager$SplitActivity;-><init>(Lcom/android/server/am/SplitWindowManager;Lcom/android/server/am/ActivityRecord;)V

    .line 1679
    .restart local v7    # "splitActivityToAdd":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    const/4 v3, 0x1

    goto :goto_1

    .line 1675
    .end local v5    # "oppositeTop":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    .line 1691
    .end local v4    # "oppositeStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_9
    if-nez v3, :cond_1

    .line 1692
    iget-object v10, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    invoke-direct {v11, p0, p1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;-><init>(Lcom/android/server/am/SplitWindowManager;Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private checkSplitInfoToRecover(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 788
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v0, v1}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v0}, Lcom/android/server/am/ActivitySplitInfo;->isNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    const-string v0, "SplitWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need recover for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v0}, Lcom/android/server/am/ActivitySplitInfo;->setNative()Z

    goto :goto_0
.end method

.method private createStack()Lcom/android/server/am/ActivityStack;
    .locals 5

    .prologue
    .line 616
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v1

    .line 617
    .local v1, "stackId":I
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplayForSplitWindow(II)V

    .line 618
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 619
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    const-string v2, "SplitWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " -> create stack to be splited: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-object v0
.end method

.method private ensureFocusedStackVisible(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "starting"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 637
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 638
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/am/SplitWindowManager;->getSplitActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v4

    .line 639
    .local v4, "startingActivity":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-nez v5, :cond_1

    .line 640
    :cond_0
    const-string v5, "SplitWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startingActivity is null or s.t: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    monitor-exit v6

    .line 697
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 646
    const/4 v2, 0x0

    .line 647
    .local v2, "prev":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 648
    .local v3, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    iget v5, v3, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    iget v7, v4, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    if-ne v5, v7, :cond_2

    .line 649
    move-object v2, v3

    goto :goto_1

    .line 652
    .end local v3    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_3
    if-nez v2, :cond_4

    .line 653
    const-string v5, "SplitWindowManager"

    const-string v7, "ensureActivitiesVisibleLocked couldn\'t find previous splited activity"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    monitor-exit v6

    goto :goto_0

    .line 696
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "prev":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .end local v4    # "startingActivity":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 657
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "prev":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .restart local v4    # "startingActivity":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_4
    :try_start_1
    iget-object v5, v4, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v2}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getCurrentScreenZone()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivitySplitInfo;->setScreenZone(I)V

    .line 659
    iget-object v5, v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->isSupportSplit(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 660
    invoke-virtual {v4}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setSplit()V

    .line 662
    iget-object v5, v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v5}, Lcom/android/server/am/ActivitySplitInfo;->isFullScreen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 663
    invoke-direct {p0, p2}, Lcom/android/server/am/SplitWindowManager;->findOppositeActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v1

    .line 664
    .local v1, "opposite":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getState()Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    move-result-object v5

    sget-object v7, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_INVISIBLE:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 665
    const-string v5, "SplitWindowManager"

    const-string v7, "WAIT TO BE SPLIT AGAIN. do this for his turn."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "opposite":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .end local v2    # "prev":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    if-nez v5, :cond_9

    .line 690
    iput-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 696
    :goto_3
    monitor-exit v6

    goto :goto_0

    .line 669
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "prev":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setFull()V

    .line 670
    const-string v5, "SplitWindowManager"

    const-string v7, "WAIT TO BE INVISIBLE. do this for his turn."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 672
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "prev":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->isRequested()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 673
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v5

    sget-object v7, Lcom/android/server/am/SplitWindowManager$State;->PREPARED:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v5, v7}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 675
    const-string v5, "SplitWindowManager"

    const-string v7, "startingActivity is REQUESTED but something wrong. cancel it"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {v4}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setNative()V

    .line 677
    invoke-direct {p0, p2}, Lcom/android/server/am/SplitWindowManager;->findOppositeActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v1

    .line 678
    .restart local v1    # "opposite":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_5

    .line 679
    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setNative()V

    goto :goto_2

    .line 683
    .end local v1    # "opposite":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setSplit()V

    goto :goto_2

    .line 692
    :cond_9
    iget-object v7, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    :try_start_2
    iput-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 694
    monitor-exit v7

    goto :goto_3

    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private ensureOppositeStackVisible(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "starting"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 700
    const/4 v3, 0x0

    .line 701
    .local v3, "unSplitAndFocusTo":Lcom/android/server/am/ActivityStack;
    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 702
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/am/SplitWindowManager;->getSplitActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v0

    .line 706
    .local v0, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    if-eqz v6, :cond_0

    if-nez v0, :cond_4

    .line 707
    :cond_0
    const-string v6, "SplitWindowManager"

    const-string v7, "mStartingActivity or sa for top is null: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v6}, Lcom/android/server/am/ActivitySplitInfo;->isSplitNormal()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v6, :cond_1

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivitySplitInfo;->isSupportSplit(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 711
    const-string v6, "SplitWindowManager"

    const-string v7, "Focused top is normal but starting on opposit is noSupport then.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v6, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 748
    .end local v0    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_1
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    if-eqz v3, :cond_2

    .line 750
    invoke-direct {p0, v3}, Lcom/android/server/am/SplitWindowManager;->moveStackToFront(Lcom/android/server/am/ActivityStack;)Z

    .line 751
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->activitiesToUnSplited()V

    .line 753
    :cond_2
    return-void

    .restart local v0    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_3
    move-object v3, v4

    .line 712
    goto :goto_0

    .line 715
    :cond_4
    :try_start_1
    const-string v6, "SplitWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mStartingActivity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    invoke-virtual {v6}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getState()Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    move-result-object v1

    .line 717
    .local v1, "startingState":Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;
    invoke-virtual {v0}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getState()Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    move-result-object v2

    .line 719
    .local v2, "topState":Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;
    sget-object v6, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_NORMAL:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    if-ne v1, v6, :cond_5

    sget-object v6, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_INVISIBLE:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    if-ne v2, v6, :cond_5

    .line 721
    const-string v4, "SplitWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startingAct goes FULL to NORMAL. so also change "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {v0}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setSplit()V

    .line 724
    iget-object v4, v0, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    .line 748
    .end local v0    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .end local v1    # "startingState":Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;
    .end local v2    # "topState":Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 725
    .restart local v0    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .restart local v1    # "startingState":Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;
    .restart local v2    # "topState":Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;
    :cond_5
    :try_start_2
    sget-object v6, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_FULL:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    if-ne v1, v6, :cond_6

    sget-object v6, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_NORMAL:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    if-ne v2, v6, :cond_6

    .line 727
    const-string v4, "SplitWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startingAct goes NORMAL to FULL. so also change "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {v0}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setInvisible()V

    goto/16 :goto_0

    .line 729
    :cond_6
    sget-object v6, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_NORMAL:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    if-ne v1, v6, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivitySplitInfo;->isSupportSplit(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 731
    const-string v6, "SplitWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current top is not support split: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v6, :cond_7

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    :goto_1
    goto/16 :goto_0

    :cond_7
    move-object v3, v4

    goto :goto_1

    .line 736
    .end local v0    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .end local v1    # "startingState":Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;
    .end local v2    # "topState":Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;
    :cond_8
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/SplitWindowManager$State;->PREPARED:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v6, v7}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 738
    invoke-direct {p0, p1}, Lcom/android/server/am/SplitWindowManager;->setSplitForResumedActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 739
    const-string v4, "SplitWindowManager"

    const-string v6, "opposite top splited."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 741
    :cond_9
    const-string v6, "SplitWindowManager"

    const-string v7, "Opposite top could not be splited."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v6, :cond_a

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    :goto_2
    goto/16 :goto_0

    :cond_a
    move-object v3, v4

    goto :goto_2

    .line 744
    :cond_b
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v4

    sget-object v6, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v4, v6}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 746
    invoke-direct {p0, p1}, Lcom/android/server/am/SplitWindowManager;->checkSplitActivityList(Lcom/android/server/am/ActivityRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private findActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .locals 3
    .param p1, "resumed"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1353
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1354
    .local v1, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1358
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findActivityOnStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .locals 4
    .param p1, "resumed"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1370
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1

    .line 1371
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1372
    .local v1, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v2, v3, :cond_0

    .line 1378
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findOppositeActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .locals 5
    .param p1, "component"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    .line 1339
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 1349
    :goto_0
    return-object v1

    .line 1342
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1343
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1344
    .local v1, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_2

    iget v3, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v3, v4, :cond_2

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_3
    move-object v1, v2

    .line 1349
    goto :goto_0
.end method

.method private findTopSplitActivity()Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 331
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-nez v6, :cond_1

    .line 332
    const-string v6, "SplitWindowManager"

    const-string v7, "mStackSupervisor is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    :goto_0
    return v5

    .line 336
    :cond_1
    const/4 v0, 0x0

    .line 337
    .local v0, "numSplitable":I
    iget-object v7, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 338
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 339
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 341
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_5

    .line 342
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 343
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_3

    iget v6, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eqz v6, :cond_3

    .line 344
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 345
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityStack$ActivityState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 347
    new-instance v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    invoke-direct {v2, p0, v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;-><init>(Lcom/android/server/am/SplitWindowManager;Lcom/android/server/am/ActivityRecord;)V

    .line 349
    .local v2, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v8, "SplitWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " + "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/ state="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/ splitable="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-nez v6, :cond_4

    move v6, v5

    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivitySplitInfo;->isSupportSplit(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 356
    add-int/lit8 v0, v0, 0x1

    .line 341
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 351
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_4
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/server/am/ActivitySplitInfo;->isSupportSplit(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    goto :goto_2

    .line 361
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    const-string v6, "SplitWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "findTopSplitActivity found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " apps can be splitable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 361
    .end local v4    # "stackNdx":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private getDumpstate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1868
    .local v3, "string":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitWindowPolicy()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v1

    .line 1870
    .local v1, "policy":Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    const-string v4, "SplitWindowManager dumpstate."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    const-string v4, "(_mState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mState:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v4}, Lcom/android/server/am/SplitWindowManager$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    const-string v4, ")\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    const-string v4, "_mSplitActivityList("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1876
    const-string v4, ")_______\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1878
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1879
    .local v2, "split":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    const-string v4, " * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    invoke-virtual {v2}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1883
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "split":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1884
    const-string v4, "_mPreparedActivity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_1

    .line 1886
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1887
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v5}, Lcom/android/server/am/ActivitySplitInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    :cond_1
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1887
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getFocusedTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private getFocusedTopActivitySplitInfo()Lcom/android/server/am/ActivitySplitInfo;
    .locals 2

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getFocusedTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 441
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMultipleTaskCountInTaskHistory(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2086
    const/4 v1, 0x0

    .line 2088
    .local v1, "multipleCount":I
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "stackNdx":I
    :goto_0
    if-ltz v3, :cond_0

    .line 2089
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2090
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_2

    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eqz v4, :cond_2

    .line 2091
    invoke-direct {p0, v2, p1}, Lcom/android/server/am/SplitWindowManager;->checkMultipleInstanceTaskInStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)I

    move-result v0

    .line 2092
    .local v0, "getHistoryCount":I
    const/4 v4, 0x2

    if-le v0, v4, :cond_1

    .line 2093
    const/4 v1, -0x1

    .line 2099
    .end local v0    # "getHistoryCount":I
    .end local v1    # "multipleCount":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return v1

    .line 2095
    .restart local v0    # "getHistoryCount":I
    .restart local v1    # "multipleCount":I
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/2addr v1, v0

    .line 2088
    .end local v0    # "getHistoryCount":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method private getOtherStack(I)Lcom/android/server/am/ActivityStack;
    .locals 4
    .param p1, "currentStackId"    # I

    .prologue
    .line 2178
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2179
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 2180
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget v1, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 2181
    .local v1, "stackId":I
    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 2185
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "stackId":I
    :goto_1
    return-object v0

    .line 2178
    .restart local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v1    # "stackId":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2185
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "stackId":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getScreenForZone(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    .locals 3
    .param p1, "zone"    # I

    .prologue
    .line 1996
    const/4 v1, 0x0

    .line 1997
    .local v1, "info":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitWindowPolicy()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v2

    .line 1999
    .local v2, "policy":Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getScreenInfoForZone(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2004
    :goto_0
    return-object v1

    .line 2000
    :catch_0
    move-exception v0

    .line 2002
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSplitActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .locals 5
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 820
    const/4 v2, 0x0

    .line 821
    .local v2, "splitActivity":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 822
    .local v1, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v4, :cond_0

    .line 824
    move-object v2, v1

    .line 829
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_1
    if-nez v2, :cond_2

    .line 830
    new-instance v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .end local v2    # "splitActivity":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    invoke-direct {v2, p0, p1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;-><init>(Lcom/android/server/am/SplitWindowManager;Lcom/android/server/am/ActivityRecord;)V

    .line 833
    .restart local v2    # "splitActivity":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_2
    return-object v2
.end method

.method private getSplitState()Lcom/android/server/am/SplitWindowManager$State;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mState:Lcom/android/server/am/SplitWindowManager$State;

    return-object v0
.end method

.method private getSplitedActivityCount()I
    .locals 5

    .prologue
    .line 1532
    const/4 v2, 0x0

    .line 1533
    .local v2, "splitedActivity":I
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1534
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1535
    .local v1, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->isSplited()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1536
    :cond_0
    goto :goto_0

    .line 1537
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_1
    monitor-exit v4

    .line 1538
    return v2

    .line 1537
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isNativeMode()Z
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v0, v1}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private letPolicyCancelSplitMode()V
    .locals 5

    .prologue
    .line 1577
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitWindowPolicy()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v1

    .line 1578
    .local v1, "policy":Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    if-eqz v1, :cond_0

    .line 1580
    :try_start_0
    invoke-interface {v1}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->cancelSplitMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SplitWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelSplitMode occured exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private letPolicyPrepareSplitMode()V
    .locals 5

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitWindowPolicy()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v1

    .line 1567
    .local v1, "policy":Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    if-eqz v1, :cond_0

    .line 1569
    :try_start_0
    invoke-interface {v1}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->prepareSplitMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    :cond_0
    :goto_0
    return-void

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SplitWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preprareSplitMode occured exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logStackStatus(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V
    .locals 6
    .param p1, "stacks"    # Lcom/android/server/am/ActivityStack;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1048
    const-string v3, "SplitWindowManager"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const-string v3, "SplitWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFocusedStack: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v0, 0x0

    .line 1051
    .local v0, "i":I
    if-nez p1, :cond_1

    .line 1056
    :cond_0
    return-void

    .line 1052
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1053
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    const-string v3, "SplitWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    add-int/lit8 v0, v0, 0x1

    .line 1055
    goto :goto_0
.end method

.method private makeBothActivityOnTopOfHome()V
    .locals 5

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1552
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1553
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1554
    .local v1, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_0

    .line 1555
    iget-object v2, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1556
    iget-object v2, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v2, :cond_0

    .line 1557
    iget-object v2, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivitySplitInfo;->setScreenZone(I)V

    goto :goto_0

    .line 1561
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1563
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private moveStackToFront(Lcom/android/server/am/ActivityStack;)Z
    .locals 9
    .param p1, "toFront"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v5, 0x1

    .line 1018
    iget-object v1, p1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1019
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 1020
    .local v3, "topNdx":I
    if-gtz v3, :cond_1

    .line 1021
    const/4 v5, 0x0

    .line 1044
    :cond_0
    :goto_0
    return v5

    .line 1027
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 1028
    .local v4, "topStack":Lcom/android/server/am/ActivityStack;
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityStackSupervisor;->setLastFocusedStackForSplitWindow(Lcom/android/server/am/ActivityStack;)V

    .line 1029
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1030
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1031
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 1032
    .local v0, "stackToFocus":Lcom/android/server/am/ActivityStack;
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusedStackForSplitWindow(Lcom/android/server/am/ActivityStack;)V

    .line 1035
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1036
    .local v2, "topActivityToFront":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    .line 1037
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/wm/WindowManagerService;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 1040
    :cond_2
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1043
    sget-boolean v6, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v6, :cond_0

    const-string v6, "SplitWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "move "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to front and set focus to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private moveTaskToStack(IIZ)Z
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 1314
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1315
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1316
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-direct {p0, v1, v0, p3}, Lcom/android/server/am/SplitWindowManager;->moveTaskToStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Z

    move-result v2

    return v2
.end method

.method private moveTaskToStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Z
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "toTop"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1320
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1321
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1322
    :cond_0
    const-string v1, "SplitWindowManager"

    const-string v3, "SplitWindowManager does not move any task to HomeStack or move non-application tasks to any"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1335
    :goto_0
    return v1

    .line 1325
    :cond_1
    const-string v2, "SplitWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move T#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to S#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v0, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1328
    .local v0, "oldStackId":I
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->tempararyStoreTaskToAddAgain(I)Z

    .line 1329
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;)V

    .line 1330
    invoke-virtual {p2, p1, p3, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 1331
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v4, p2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v2, v3, v4, p3}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZ)V

    .line 1332
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v4, p2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wm/WindowManagerService;->removeTaskFromStackIfNeeded(III)V

    goto :goto_0

    .end local v0    # "oldStackId":I
    :cond_2
    move v1, v2

    .line 1335
    goto :goto_0
.end method

.method private putLogState()V
    .locals 4

    .prologue
    const/16 v1, 0x1f6

    .line 800
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mHandler:Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;->removeMessages(I)V

    .line 802
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mHandler:Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 804
    :cond_0
    return-void
.end method

.method private realPutLogState()V
    .locals 2

    .prologue
    .line 807
    const-string v0, "SplitWindowManager"

    const-string v1, "stack"

    invoke-direct {p0, v1}, Lcom/android/server/am/SplitWindowManager;->getDumpstate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void
.end method

.method private recoverSplitService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    .locals 2

    .prologue
    .line 1416
    invoke-static {}, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->recoverService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mSplitPolicy:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 1417
    const-string v0, "SplitWindowManager"

    const-string v1, "recover SplitWindowPolicyService."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mSplitPolicy:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    return-object v0
.end method

.method private removeSplitActivityForStackIdLocked(I)Z
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 1697
    const/4 v1, 0x0

    .line 1698
    .local v1, "removed":Z
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/SplitWindowManager$SplitActivity;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1699
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1700
    .local v2, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    if-ne v3, p1, :cond_0

    .line 1702
    invoke-virtual {v2}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getState()Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->NORMAL_REQUESTED:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getState()Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->UN_SPLITING:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    if-ne v3, v4, :cond_2

    .line 1704
    :cond_1
    const-string v3, "SplitWindowManager"

    const-string v4, "recover before remove"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object v3, v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ActivitySplitInfo;->setNative()Z

    .line 1708
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1709
    const/4 v1, 0x1

    goto :goto_0

    .line 1712
    .end local v2    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_3
    return v1
.end method

.method private setSplitForResumedActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 10
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 848
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    if-nez v6, :cond_0

    .line 849
    const-string v5, "SplitWindowManager"

    const-string v6, "setSplitForResumedActivity: mStartingActivity in not ready."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :goto_0
    return v4

    .line 853
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    invoke-virtual {v6}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getRequstedScreenZone()I

    move-result v3

    .line 854
    .local v3, "zone":I
    if-eq v3, v5, :cond_1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    .line 855
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/SplitWindowManager;->findActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v1

    .line 856
    .local v1, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-nez v1, :cond_3

    .line 858
    invoke-direct {p0, p1}, Lcom/android/server/am/SplitWindowManager;->findActivityOnStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v0

    .line 859
    .local v0, "oldSplitActivity":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v0, :cond_3

    iget-object v6, v0, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_3

    .line 860
    invoke-virtual {v0}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->isRequested()Z

    move-result v6

    if-nez v6, :cond_2

    .line 863
    const-string v6, "SplitWindowManager"

    const-string v7, "old activity has not been requested. it would be REQUESTED forcefully"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const-string v6, "SplitWindowManager"

    invoke-direct {p0, v9}, Lcom/android/server/am/SplitWindowManager;->getDumpstate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const-string v6, "SplitWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_mStartingActivity : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/SplitWindowManager;->updateStartActivityToListLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v1

    .line 871
    iget-object v6, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v6}, Lcom/android/server/am/ActivitySplitInfo;->setRequested()Z

    .line 872
    const-string v6, "SplitWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update mSplitActivityList for current topActivity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .end local v0    # "oldSplitActivity":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->isRequested()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 877
    rsub-int/lit8 v2, v3, 0x3

    .line 878
    .local v2, "targetZone":I
    invoke-virtual {v1, v2}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setScreenZone(I)V

    .line 879
    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setSplit()V

    move v4, v5

    .line 881
    goto/16 :goto_0

    .line 884
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .end local v2    # "targetZone":I
    :cond_4
    const-string v5, "SplitWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSplitForResumedActivity not worked... for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string v5, "SplitWindowManager"

    invoke-direct {p0, v9}, Lcom/android/server/am/SplitWindowManager;->getDumpstate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string v5, "SplitWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_mStartingActivity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/server/am/SplitWindowManager$State;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mState:Lcom/android/server/am/SplitWindowManager$State;

    .line 296
    .local v0, "_old":Lcom/android/server/am/SplitWindowManager$State;
    iget-object v1, p0, Lcom/android/server/am/SplitWindowManager;->mState:Lcom/android/server/am/SplitWindowManager$State;

    if-eq v1, p1, :cond_0

    .line 297
    iput-object p1, p0, Lcom/android/server/am/SplitWindowManager;->mState:Lcom/android/server/am/SplitWindowManager$State;

    .line 298
    const-string v1, "SplitWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSplitMode changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mState:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    return-void
.end method

.method private unsplitPreviousActivities()V
    .locals 6

    .prologue
    .line 1846
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mHistorySplit:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1847
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mHistorySplit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1848
    monitor-exit v3

    .line 1864
    :goto_0
    return-void

    .line 1850
    :cond_0
    sget-boolean v2, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v2, :cond_1

    const-string v2, "SplitWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHistorySplit has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mHistorySplit:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mHistorySplit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1852
    .local v1, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getState()Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    move-result-object v2

    sget-object v4, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->UN_SPLITING:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    if-eq v2, v4, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getState()Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    move-result-object v2

    sget-object v4, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->NATIVE:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    if-eq v2, v4, :cond_2

    .line 1856
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setUnSplit(Z)V

    .line 1857
    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->setNative()V

    goto :goto_1

    .line 1863
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1862
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mHistorySplit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1863
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private updateActivityToSplitPolicyService(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 10
    .param p1, "component"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resumed"    # Z

    .prologue
    .line 1716
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1718
    .local v9, "pkgName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1719
    .local v2, "stackId":I
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1720
    .local v5, "taskId":I
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v1}, Lcom/android/server/am/ActivitySplitInfo;->isFullScreen()Z

    move-result v3

    .line 1722
    .local v3, "bIsScreenFull":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitWindowPolicy()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v0

    .line 1723
    .local v0, "splitWindowPolicy":Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    if-nez v0, :cond_1

    .line 1724
    const-string v1, "SplitWindowManager"

    const-string v4, "cant get splitWindowPolicy binder..."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :goto_1
    return-void

    .line 1720
    .end local v0    # "splitWindowPolicy":Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    .end local v3    # "bIsScreenFull":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1729
    .restart local v0    # "splitWindowPolicy":Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    .restart local v3    # "bIsScreenFull":Z
    :cond_1
    :try_start_0
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, p1, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v7

    move v1, p2

    invoke-interface/range {v0 .. v7}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->updateActivityStateChanged(ZIZLandroid/content/pm/ActivityInfo;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1734
    :catch_0
    move-exception v8

    .line 1735
    .local v8, "e":Landroid/os/RemoteException;
    const-string v1, "SplitWindowManager"

    const-string v4, "updateActivityStateChanged Failed..., need to recoverSplitService"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->recoverSplitService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    goto :goto_1
.end method

.method private updateStartActivityToListLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .locals 4
    .param p1, "component"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    .line 1596
    const-string v2, "SplitWindowManager"

    const-string v3, "updateStartActivityToList"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1606
    :goto_0
    return-object v0

    .line 1601
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/SplitWindowManager;->getSplitActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v0

    .line 1602
    .local v0, "splitComp":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1603
    invoke-direct {p0, v0}, Lcom/android/server/am/SplitWindowManager;->updateStartActivityToListLocked(Lcom/android/server/am/SplitWindowManager$SplitActivity;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1606
    goto :goto_0
.end method

.method private updateStartActivityToListLocked(Lcom/android/server/am/SplitWindowManager$SplitActivity;)V
    .locals 2
    .param p1, "splitActivity"    # Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .prologue
    .line 1617
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    :cond_0
    :goto_0
    return-void

    .line 1621
    :cond_1
    iget v0, p1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/SplitWindowManager;->removeSplitActivityForStackIdLocked(I)Z

    .line 1622
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    iget-object v1, p0, Lcom/android/server/am/SplitWindowManager;->mHistorySplit:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1624
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mHistorySplit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2017
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_2

    .line 2018
    :cond_0
    const-string v4, "SplitWindowManager"

    const-string v5, "adjustFocusedActivityLocked returns by null variable"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    :cond_1
    :goto_0
    return v3

    .line 2021
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2030
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_5

    .line 2036
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 2037
    .local v0, "launchFlags":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, v6, :cond_4

    .line 2038
    const-string v3, "SplitWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is finishing, but it comes in same task: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2039
    goto :goto_0

    .end local v0    # "launchFlags":I
    :cond_3
    move v0, v3

    .line 2036
    goto :goto_1

    .line 2040
    .restart local v0    # "launchFlags":I
    :cond_4
    const/high16 v5, 0x4000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2044
    const-string v3, "SplitWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is finishing, but coming activity will replace it: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2045
    goto/16 :goto_0

    .line 2049
    .end local v0    # "launchFlags":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/SplitWindowManager;->findOppositeActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v1

    .line 2050
    .local v1, "opposite":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_1

    .line 2051
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2052
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-direct {p0, v2}, Lcom/android/server/am/SplitWindowManager;->moveStackToFront(Lcom/android/server/am/ActivityStack;)Z

    .line 2053
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->activitiesToUnSplited()V

    move v3, v4

    .line 2054
    goto/16 :goto_0
.end method

.method public adjustStackFocus(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 21
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 494
    if-eqz p1, :cond_15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivitySplitInfo;->isRequested()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 498
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 499
    .local v4, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 500
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivitySplitInfo;->getScreenZone()I

    move-result v17

    .line 501
    .local v17, "zone":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/am/SplitWindowManager;->getScreenForZone(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;

    move-result-object v7

    .line 502
    .local v7, "info":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenId()I

    move-result v9

    .line 505
    .local v9, "stackId":I
    :goto_0
    if-lez v9, :cond_4

    .line 506
    iget-object v0, v4, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    .line 507
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    iget v0, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v9, :cond_1

    .line 508
    const-string v18, "SplitWindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "adjustStackFocus returns "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v4    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "info":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "stackId":I
    .end local v17    # "zone":I
    :cond_2
    :goto_1
    return-object v8

    .line 502
    .restart local v4    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .restart local v7    # "info":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    .restart local v17    # "zone":I
    :cond_3
    const/4 v9, -0x1

    goto :goto_0

    .line 514
    .restart local v9    # "stackId":I
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 515
    .local v5, "focusedTopTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v18, v0

    if-lez v18, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v18, v0

    iget v0, v5, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 516
    const-string v18, "SplitWindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "caller is not matched. caller= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/ focusedTop= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, v4, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    .line 521
    .restart local v8    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v16

    .line 522
    .local v16, "topTask":Lcom/android/server/am/TaskRecord;
    :goto_3
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v18

    if-nez v18, :cond_5

    .line 524
    :cond_6
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 527
    const-string v18, "SplitWindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found caller! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 529
    const-string v18, "SplitWindowManager"

    const-string v19, "Found but it\'s currently focused. keep focused stack"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 521
    .end local v16    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    .line 535
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_8
    const-string v18, "SplitWindowManager"

    const-string v19, "no caller found on stacks. keep focused stack"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_9
    const-string v18, "SplitWindowManager"

    const-string v19, "adjustStackFocus returns null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 543
    .end local v5    # "focusedTopTask":Lcom/android/server/am/TaskRecord;
    .end local v7    # "info":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    .end local v9    # "stackId":I
    .end local v17    # "zone":I
    :cond_a
    const/4 v3, 0x0

    .line 544
    .local v3, "existStack":Lcom/android/server/am/ActivityStack;
    const/4 v13, 0x0

    .line 545
    .local v13, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 546
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 547
    .local v14, "taskStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 548
    const-string v18, "SplitWindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " existStack = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-eqz v3, :cond_b

    .line 552
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 554
    const-string v18, "SplitWindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " -> task was on hidden stack = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    move-object v13, v3

    .line 562
    .end local v14    # "taskStack":Lcom/android/server/am/ActivityStack;
    :cond_b
    if-nez v13, :cond_11

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v12

    .line 564
    .local v12, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    const/4 v10, -0x1

    .line 565
    .local v10, "stackIdEmpty":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v11, v18, -0x1

    .local v11, "stackIdx":I
    :goto_4
    if-ltz v11, :cond_f

    .line 566
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    .line 568
    .restart local v8    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v18

    if-nez v18, :cond_c

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 570
    iget-object v0, v8, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_e

    .line 571
    if-lez v10, :cond_d

    .line 565
    :cond_c
    :goto_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 571
    :cond_d
    iget v10, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_5

    .line 573
    :cond_e
    move-object v13, v8

    .line 574
    const-string v18, "SplitWindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " -> found stack that can be splited: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_f
    if-nez v13, :cond_10

    if-lez v10, :cond_10

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v13

    .line 582
    const-string v18, "SplitWindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "use empty stack "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_10
    if-nez v13, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SplitWindowManager;->createStack()Lcom/android/server/am/ActivityStack;

    move-result-object v13

    .line 589
    .end local v10    # "stackIdEmpty":I
    .end local v11    # "stackIdx":I
    .end local v12    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/am/SplitWindowManager;->moveTaskToStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Z

    .line 592
    if-eqz v13, :cond_12

    .line 594
    sget-object v18, Lcom/android/server/am/SplitWindowManager$State;->PREPARED:Lcom/android/server/am/SplitWindowManager$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    :goto_6
    move-object v8, v13

    .line 608
    goto/16 :goto_1

    .line 596
    :cond_12
    const-string v18, "SplitWindowManager"

    const-string v19, "adjustStackFocus cancel split request"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivitySplitInfo;->isRequested()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 598
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivitySplitInfo;->setNative()Z

    .line 600
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SplitWindowManager;->getFocusedTopActivitySplitInfo()Lcom/android/server/am/ActivitySplitInfo;

    move-result-object v15

    .line 601
    .local v15, "top":Lcom/android/server/am/ActivitySplitInfo;
    if-eqz v15, :cond_14

    invoke-virtual {v15}, Lcom/android/server/am/ActivitySplitInfo;->isRequested()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 602
    invoke-virtual {v15}, Lcom/android/server/am/ActivitySplitInfo;->setNative()Z

    .line 604
    :cond_14
    sget-object v18, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    goto :goto_6

    .line 612
    .end local v3    # "existStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "top":Lcom/android/server/am/ActivitySplitInfo;
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method public bringStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 23
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1192
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1193
    :cond_0
    const/16 v19, 0x0

    .line 1310
    :goto_0
    return v19

    .line 1195
    :cond_1
    const-string v19, "SplitWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bringStackToFront : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    if-eqz p1, :cond_2

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 1197
    :cond_2
    const-string v19, "SplitWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bringStackToFront got wrong variable: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/16 v19, 0x0

    goto :goto_0

    .line 1206
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    .line 1208
    .local v15, "startComp":Landroid/content/ComponentName;
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1210
    .local v6, "existComp":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {v15, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1211
    const-string v19, "SplitWindowManager"

    const-string v20, "Find same component but different activity when start"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const-string v19, "SplitWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\t-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/ "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const-string v19, "SplitWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\t-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/ "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/am/ActivitySplitInfo;->inheritRequestedScreenZone(Lcom/android/server/am/ActivitySplitInfo;)V

    .line 1215
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1216
    const-string v19, "SplitWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " -> "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/ "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    .end local v6    # "existComp":Landroid/content/ComponentName;
    .end local v15    # "startComp":Landroid/content/ComponentName;
    :cond_4
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    .line 1221
    .local v10, "info":Lcom/android/server/am/ActivitySplitInfo;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v19

    sget-object v20, Lcom/android/server/am/SplitWindowManager$State;->REQUESTED:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual {v10}, Lcom/android/server/am/ActivitySplitInfo;->isRequested()Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v11, 0x1

    .line 1222
    .local v11, "isRequestedFromNATIVE":Z
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v19

    sget-object v20, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1223
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1224
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1207
    .end local v10    # "info":Lcom/android/server/am/ActivitySplitInfo;
    .end local v11    # "isRequestedFromNATIVE":Z
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1208
    .restart local v15    # "startComp":Landroid/content/ComponentName;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1221
    .end local v15    # "startComp":Landroid/content/ComponentName;
    .restart local v10    # "info":Lcom/android/server/am/ActivitySplitInfo;
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 1227
    .restart local v11    # "isRequestedFromNATIVE":Z
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1228
    .local v4, "currentStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 1230
    .local v7, "focuedStack":Lcom/android/server/am/ActivityStack;
    if-nez p2, :cond_a

    move-object/from16 v17, v7

    .line 1231
    .local v17, "targetStack":Lcom/android/server/am/ActivityStack;
    :goto_4
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v19

    if-nez v19, :cond_9

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 1232
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/SplitWindowManager;->moveTaskToStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Z

    .line 1310
    .end local v4    # "currentStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "focuedStack":Lcom/android/server/am/ActivityStack;
    .end local v17    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_9
    :goto_5
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1230
    .restart local v4    # "currentStack":Lcom/android/server/am/ActivityStack;
    .restart local v7    # "focuedStack":Lcom/android/server/am/ActivityStack;
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    goto :goto_4

    .line 1234
    .end local v4    # "currentStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "focuedStack":Lcom/android/server/am/ActivityStack;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v19

    if-nez v19, :cond_c

    if-eqz v11, :cond_9

    .line 1239
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1240
    .local v5, "currentStackId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SplitWindowManager;->getFocusedTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    .line 1241
    .local v18, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v18, :cond_d

    .line 1242
    const-string v19, "SplitWindowManager"

    const-string v20, "bringStackToFront could not get FocusedTopActivity. cancel it"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1246
    :cond_d
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_15

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1247
    .local v8, "focusedStackId":I
    :goto_6
    if-eqz p2, :cond_16

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1249
    .local v13, "sourceRecordStackId":I
    :goto_7
    const/16 v16, 0x0

    .line 1250
    .local v16, "targetSplitAct":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1251
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1252
    .local v12, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v19

    if-eqz v19, :cond_17

    invoke-virtual {v12}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getCurrentScreenZone()I

    move-result v19

    invoke-virtual {v10}, Lcom/android/server/am/ActivitySplitInfo;->getScreenZone()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 1254
    sget-boolean v19, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v19, :cond_f

    const-string v19, "SplitWindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " exists and has zone number to come over "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_f
    move-object/from16 v16, v12

    .line 1265
    .end local v12    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_10
    :goto_8
    if-nez v16, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1267
    .restart local v12    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    iget v0, v12, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v13, :cond_11

    .line 1269
    sget-boolean v19, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v19, :cond_12

    const-string v19, "SplitWindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " exists and just follow source record or focused stack"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_12
    move-object/from16 v16, v12

    .line 1276
    .end local v12    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_13
    if-eqz v16, :cond_1a

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1279
    .restart local v4    # "currentStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 1280
    const-string v19, "SplitWindowManager"

    const-string v21, "just move task to front on same stack."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    if-eqz v11, :cond_14

    .line 1284
    sget-object v19, Lcom/android/server/am/SplitWindowManager$State;->PREPARED:Lcom/android/server/am/SplitWindowManager$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    .line 1286
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 1287
    const/16 v19, 0x1

    monitor-exit v20

    goto/16 :goto_0

    .line 1308
    .end local v4    # "currentStack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 1246
    .end local v8    # "focusedStackId":I
    .end local v13    # "sourceRecordStackId":I
    .end local v16    # "targetSplitAct":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_15
    const/4 v8, -0x1

    goto/16 :goto_6

    .restart local v8    # "focusedStackId":I
    :cond_16
    move v13, v8

    .line 1247
    goto/16 :goto_7

    .line 1257
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .restart local v13    # "sourceRecordStackId":I
    .restart local v16    # "targetSplitAct":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_17
    if-eqz v11, :cond_e

    :try_start_1
    iget v0, v12, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v8, :cond_e

    .line 1258
    const-string v19, "SplitWindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "find "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " as opposite screen to be split for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    move-object/from16 v16, v12

    .line 1261
    goto/16 :goto_8

    .line 1289
    .end local v12    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .restart local v4    # "currentStack":Lcom/android/server/am/ActivityStack;
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/SplitWindowManager;->moveTaskToStack(IIZ)Z

    .line 1292
    if-eqz v11, :cond_19

    .line 1293
    sget-object v19, Lcom/android/server/am/SplitWindowManager$State;->PREPARED:Lcom/android/server/am/SplitWindowManager$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    .line 1295
    :cond_19
    const/16 v19, 0x1

    monitor-exit v20

    goto/16 :goto_0

    .line 1296
    .end local v4    # "currentStack":Lcom/android/server/am/ActivityStack;
    :cond_1a
    if-eqz v11, :cond_1c

    .line 1297
    const-string v19, "SplitWindowManager"

    const-string v21, "then we need to create stack and move task to there."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SplitWindowManager;->createStack()Lcom/android/server/am/ActivityStack;

    move-result-object v14

    .line 1299
    .local v14, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v14, :cond_1b

    .line 1300
    const-string v19, "SplitWindowManager"

    const-string v21, "Unable to create stack"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/16 v19, 0x0

    monitor-exit v20

    goto/16 :goto_0

    .line 1304
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/am/SplitWindowManager;->moveTaskToStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Z

    .line 1305
    sget-object v19, Lcom/android/server/am/SplitWindowManager$State;->PREPARED:Lcom/android/server/am/SplitWindowManager$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    .line 1306
    const/16 v19, 0x1

    monitor-exit v20

    goto/16 :goto_0

    .line 1308
    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1c
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5
.end method

.method public checkIsMultipleInstanceStart(Lcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2109
    const/4 v0, 0x0

    .line 2112
    .local v0, "bIsMultipleReady":Z
    const-string v1, "SplitWindowManager"

    const-string v2, "splitInfo null, check multiple instance start false."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    const/4 v1, 0x0

    return v1
.end method

.method public checkPauseBackStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 8
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v3, 0x0

    .line 1068
    iget v4, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v4, :cond_1

    .line 1069
    iget-object v1, p1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1070
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/SplitWindowManager$State;->RECENTAPP:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1071
    const-string v4, "SplitWindowManager"

    const-string v5, "recent is going down..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    sget-object v4, Lcom/android/server/am/SplitWindowManager$State;->SPLITED:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0, v4}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    .line 1102
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    return v3

    .line 1077
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/SplitWindowManager$State;->PREPARED:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v4, v5}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/SplitWindowManager$State;->REQUESTED:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v4, v5}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1080
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1081
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1082
    .local v2, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    iget v5, v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    iget v6, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v5, v6, :cond_3

    invoke-virtual {v2}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->isRequested()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->isSplited()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1086
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_6

    .line 1087
    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivitySplitInfo;->isSupportSplit(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1088
    const-string v5, "SplitWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FullScreen is coming, go PAUSE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    monitor-exit v4

    goto :goto_0

    .line 1099
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1090
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_5
    :try_start_1
    sget-object v5, Lcom/android/server/am/SplitWindowManager$State;->RECENTAPP:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1091
    const-string v5, "SplitWindowManager"

    const-string v6, "RecentApp is coming"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    monitor-exit v4

    goto/16 :goto_0

    .line 1095
    :cond_6
    const-string v3, "SplitWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a part of split screen. It would not be paused"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const/4 v3, 0x1

    monitor-exit v4

    goto/16 :goto_0

    .line 1099
    .end local v2    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public completePause(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "pausedActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 996
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mTaskWaitToMove:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 997
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1000
    .local v1, "pausedTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mTaskWaitToMove:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1001
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1002
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mTaskWaitToMove:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v2, :cond_1

    .line 1003
    const-string v2, "SplitWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task of paused "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is moving to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/am/SplitWindowManager;->moveTaskToStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Z

    .line 1008
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mTaskWaitToMove:Lcom/android/server/am/TaskRecord;

    .line 1013
    .end local v0    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "pausedTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_1
    return-void

    .line 1006
    .restart local v0    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .restart local v1    # "pausedTask":Lcom/android/server/am/TaskRecord;
    :cond_1
    const-string v2, "SplitWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task of paused "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is on focused stack. skip moving."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1010
    .end local v0    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :cond_2
    const-string v2, "SplitWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mTaskWaitToMove:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is still wait to be paused"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dumpStackTrace()V
    .locals 7

    .prologue
    .line 1914
    const-string v4, "SplitWindowManager"

    const-string v5, " # getStackTrace of current thread for debug (THIS IS NOT AN EXCEPTION!)"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1916
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string v4, "SplitWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1918
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;I)V
    .locals 4
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "configChanges"    # I

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->isNativeMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "SplitWindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureVisible on stack#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/starting:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    const-string v0, "SplitWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mismatch mPreparedActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    .line 778
    :cond_1
    if-ne p1, p2, :cond_4

    .line 779
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SplitWindowManager;->ensureFocusedStackVisible(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 785
    :cond_2
    :goto_1
    return-void

    .line 769
    :cond_3
    const-string v0, "-1 "

    goto :goto_0

    .line 780
    :cond_4
    if-eqz p2, :cond_2

    .line 781
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SplitWindowManager;->ensureOppositeStackVisible(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_1
.end method

.method public exitSplitWindow()V
    .locals 2

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mHandler:Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;->sendEmptyMessage(I)Z

    .line 2215
    return-void
.end method

.method final getSplitWindowPolicy()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mSplitPolicy:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mSplitPolicy:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 1411
    :goto_0
    return-object v0

    .line 1410
    :cond_0
    invoke-static {}, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->getPolicyService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mSplitPolicy:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 1411
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mSplitPolicy:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    goto :goto_0
.end method

.method public isMultipleStartedActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2196
    const/4 v0, 0x0

    return v0
.end method

.method public isSplitMode()Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/am/SplitWindowManager;->mState:Lcom/android/server/am/SplitWindowManager$State;

    sget-object v1, Lcom/android/server/am/SplitWindowManager$State;->SPLITED:Lcom/android/server/am/SplitWindowManager$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStackNeedResumed(Lcom/android/server/am/ActivityStack;)Z
    .locals 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v2, 0x0

    .line 1959
    if-nez p1, :cond_0

    .line 1992
    :goto_0
    return v2

    .line 1963
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1964
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1965
    .local v1, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v4, v5}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    iget v5, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->isSplited()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->isRequested()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1970
    :cond_2
    sget-object v4, Lcom/android/server/am/SplitWindowManager$State;->RECENTAPP:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1971
    const-string v4, "SplitWindowManager"

    const-string v5, "isStackNeedResumed - false, RECENTAPP is on Top."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    monitor-exit v3

    goto :goto_0

    .line 1990
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1973
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_3
    :try_start_1
    sget-object v4, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_INVISIBLE:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getState()Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1974
    const-string v4, "SplitWindowManager"

    const-string v5, "isStackNeedResumed - false, it\'s INVISIBLE."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    monitor-exit v3

    goto :goto_0

    .line 1976
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivitySplitInfo;->isSupportSplit(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1978
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_6

    .line 1979
    const-string v2, "SplitWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPreparedActivity is finishing. ignore and remove... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1987
    :cond_5
    const/4 v2, 0x1

    monitor-exit v3

    goto/16 :goto_0

    .line 1982
    :cond_6
    const-string v4, "SplitWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isStackNeedResumed - false, fullScreen is coming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    monitor-exit v3

    goto/16 :goto_0

    .line 1990
    .end local v1    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public isStackVisible(Lcom/android/server/am/ActivityStack;)Z
    .locals 9
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v5, 0x0

    .line 1929
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v6, v7}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v5

    .line 1955
    :cond_0
    :goto_0
    return v2

    .line 1933
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/SplitWindowManager;->isStackNeedResumed(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    .line 1934
    .local v2, "needResume":Z
    if-nez v2, :cond_0

    .line 1935
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1937
    .local v1, "focusTopActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v6, :cond_0

    .line 1938
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v6, :cond_0

    .line 1939
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1940
    .local v4, "stackTopActivity":Lcom/android/server/am/ActivityRecord;
    if-eq v1, v4, :cond_0

    .line 1941
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1943
    .local v0, "focusTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1944
    .local v3, "sourceActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v6}, Lcom/android/server/am/ActivitySplitInfo;->getState()Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_FULL:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1946
    const-string v6, "SplitWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "source activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is SPLITED_FULL. Does not need show "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 1947
    goto :goto_0

    .line 1949
    :cond_2
    const-string v5, "SplitWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not full screen Activity case. focusTopActivity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", stackTopActivity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method isSupportSplit(Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 1388
    const/4 v0, 0x0

    .line 1389
    .local v0, "bIsSupportSplit":Z
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitWindowPolicy()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v2

    .line 1390
    .local v2, "splitWindowPolicy":Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    if-eqz v2, :cond_0

    .line 1392
    :try_start_0
    invoke-interface {v2, p1}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->supportSplitWindowByClass(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1399
    :goto_0
    return v0

    .line 1393
    :catch_0
    move-exception v1

    .line 1394
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SplitWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t find SplitWindowPolicyService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1397
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "SplitWindowManager"

    const-string v4, "can\'t find SplitWindowPolicyService."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public moveTaskToFrontByApp(ILcom/android/server/am/TaskRecord;I)Z
    .locals 8
    .param p1, "callingPid"    # I
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 2223
    const/4 v0, 0x0

    .line 2224
    .local v0, "didSomething":Z
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2225
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2227
    .local v2, "focusedTopActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p1, :cond_0

    .line 2230
    invoke-direct {p0, v2}, Lcom/android/server/am/SplitWindowManager;->findActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v1

    .line 2231
    .local v1, "focusedSplitActivity":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    iget-object v4, p2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget v5, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    if-eq v4, v5, :cond_0

    .line 2233
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x1

    invoke-direct {p0, p2, v4, v5}, Lcom/android/server/am/SplitWindowManager;->moveTaskToStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Z

    move-result v0

    .line 2234
    const/4 v0, 0x1

    .line 2239
    .end local v1    # "focusedSplitActivity":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    .end local v2    # "focusedTopActivity":Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v0, :cond_1

    .line 2240
    invoke-virtual {p2, v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 2241
    .local v3, "nextTop":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-nez v4, :cond_1

    .line 2243
    const-string v4, "SplitWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nextTop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not have SplitInfo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {p0, v3, v4, v7}, Lcom/android/server/am/SplitWindowManager;->attachSplitInfo(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;Lcom/android/server/am/ActivityRecord;)Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;

    .line 2248
    .end local v3    # "nextTop":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return v0
.end method

.method public prepareSplitWindowLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SplitWindowManager;->attachSplitInfo(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;Lcom/android/server/am/ActivityRecord;)Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;

    move-result-object v1

    .line 378
    .local v1, "screen":Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;
    if-nez v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    const-string v2, "SplitWindowManager"

    const-string v3, "it\'s LockTaskMode."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_2
    sget-object v2, Lcom/android/server/am/SplitWindowManager$State;->RECENTAPP:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 389
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 390
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->activitiesToUnSplited()V

    .line 396
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 397
    sget-boolean v2, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v2, :cond_4

    const-string v2, "SplitWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mPreparedActivity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_4
    iput-object p1, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    .line 400
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    const-string v2, "SplitWindowManager"

    const-string v3, "GET READY FOR RECENT!____"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sget-object v2, Lcom/android/server/am/SplitWindowManager$State;->RECENTAPP:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0, v2}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    goto :goto_0

    .line 391
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v2

    if-nez v2, :cond_3

    .line 392
    sget-object v2, Lcom/android/server/am/SplitWindowManager$State;->SPLITED:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0, v2}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    goto :goto_1

    .line 404
    :cond_6
    invoke-interface {v1}, Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;->getScreenZone()I

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getFocusedTopActivitySplitInfo()Lcom/android/server/am/ActivitySplitInfo;

    move-result-object v0

    .line 410
    .local v0, "currentTopInfo":Lcom/android/server/am/ActivitySplitInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivitySplitInfo;->canBeSplited()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    sget-object v2, Lcom/android/server/am/SplitWindowManager$State;->REQUESTED:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0, v2}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    .line 412
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v2}, Lcom/android/server/am/ActivitySplitInfo;->setRequested()Z

    .line 413
    invoke-virtual {v0}, Lcom/android/server/am/ActivitySplitInfo;->setRequested()Z

    .line 414
    sget-boolean v2, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v2, :cond_0

    .line 415
    const-string v2, "SplitWindowManager"

    const-string v3, "GET READY FOR SPLIT!____"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v2, "SplitWindowManager"

    const-string v3, "stack"

    invoke-direct {p0, v3}, Lcom/android/server/am/SplitWindowManager;->getDumpstate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1804
    invoke-direct {p0, p1}, Lcom/android/server/am/SplitWindowManager;->findActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v1

    .line 1805
    .local v1, "dying":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    invoke-direct {p0, p1}, Lcom/android/server/am/SplitWindowManager;->findOppositeActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v0

    .line 1806
    .local v0, "alive":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1808
    :cond_0
    const/4 v4, 0x0

    .line 1818
    :goto_0
    return v4

    .line 1812
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1813
    .local v2, "frontStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1814
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v0, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1815
    .local v3, "toFront":Lcom/android/server/am/ActivityStack;
    invoke-direct {p0, v3}, Lcom/android/server/am/SplitWindowManager;->moveStackToFront(Lcom/android/server/am/ActivityStack;)Z

    .line 1817
    .end local v3    # "toFront":Lcom/android/server/am/ActivityStack;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->activitiesToUnSplited()V

    .line 1818
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public removeStackAndNeedHomeResume(Lcom/android/server/am/ActivityStack;)Z
    .locals 8
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 1771
    const/4 v2, 0x1

    .line 1772
    .local v2, "needResumeHome":Z
    const/4 v1, 0x0

    .line 1773
    .local v1, "isSplitActivityRemoved":Z
    sget-boolean v4, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v4, :cond_0

    const-string v4, "SplitWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeStackAndNeedHomeResume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1775
    if-eqz p1, :cond_1

    .line 1776
    :try_start_0
    iget v4, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-direct {p0, v4}, Lcom/android/server/am/SplitWindowManager;->removeSplitActivityForStackIdLocked(I)Z

    move-result v1

    .line 1779
    :cond_1
    if-eqz v1, :cond_2

    sget-object v4, Lcom/android/server/am/SplitWindowManager$State;->RECENTAPP:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1781
    const-string v4, "SplitWindowManager"

    const-string v6, "it\'s splited but, a split-activity has been removed."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->activitiesToUnSplited()V

    .line 1783
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/am/SplitWindowManager;->checkAndSetCurrentStateIfNeeded(Z)V

    .line 1785
    const/4 v4, 0x0

    monitor-exit v5

    .line 1800
    :goto_0
    return v4

    .line 1789
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1790
    .local v3, "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    invoke-virtual {v3}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getState()Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    move-result-object v4

    sget-object v6, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->UN_SPLITING:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    if-ne v4, v6, :cond_4

    .line 1791
    const-string v4, "SplitWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is UN_SPLITING... not resume home"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const/4 v2, 0x0

    goto :goto_1

    .line 1793
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->isNative()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_3

    .line 1795
    const-string v4, "SplitWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is NATIVE and RESUMED now, not sure that home should not be resumed..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/4 v2, 0x0

    goto :goto_1

    .line 1799
    .end local v3    # "sa":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_5
    monitor-exit v5

    move v4, v2

    .line 1800
    goto :goto_0

    .line 1799
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public replaceExistActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 9
    .param p1, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "exist"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1119
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1120
    :cond_0
    sget-boolean v5, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->isNativeMode()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "SplitWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replaceExistActivity has null as arg: source= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ exist= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_1
    :goto_0
    return v4

    .line 1124
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1125
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1126
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_7

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1127
    const-string v6, "SplitWindowManager"

    const-string v7, "already resumed, but keep it for later"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    .end local v3    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1138
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1139
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v6}, Lcom/android/server/am/ActivitySplitInfo;->getScreenZone()I

    move-result v2

    .line 1140
    .local v2, "targetZone":I
    if-eq v2, v5, :cond_4

    const/4 v6, 0x2

    if-ne v2, v6, :cond_8

    .line 1141
    :cond_4
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivitySplitInfo;->setScreenZone(I)V

    .line 1176
    .end local v2    # "targetZone":I
    :cond_5
    :goto_2
    sget-boolean v4, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v4, :cond_6

    const-string v4, "SplitWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findTaskLocked set "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v4, v5

    .line 1177
    goto :goto_0

    .line 1129
    .restart local v3    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_7
    const-string v6, "SplitWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "change mPreparedActivity("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to exist("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iput-object p2, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 1143
    .end local v3    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "targetZone":I
    :cond_8
    iget-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1144
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/am/SplitWindowManager;->findActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v1

    .line 1145
    .local v1, "splitTop":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/server/am/SplitWindowManager$SplitActivity;->getCurrentScreenZone()I

    move-result v2

    .line 1146
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivitySplitInfo;->setScreenZone(I)V

    goto :goto_2

    :cond_9
    move v2, v4

    .line 1145
    goto :goto_3

    .line 1146
    .end local v1    # "splitTop":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1149
    .end local v2    # "targetZone":I
    :cond_a
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/SplitWindowManager$State;->REQUESTED:Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v6, v7}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1151
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getFocusedTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1152
    .local v0, "currentTop":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/am/SplitWindowManager;->isMultipleStartedActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1154
    sget-object v5, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0, v5}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    .line 1155
    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v5}, Lcom/android/server/am/ActivitySplitInfo;->setNative()Z

    .line 1156
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v5}, Lcom/android/server/am/ActivitySplitInfo;->setNative()Z

    goto/16 :goto_0

    .line 1163
    :cond_b
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v4, :cond_c

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivitySplitInfo;->isSupportSplit(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1164
    const-string v4, "SplitWindowManager"

    const-string v6, "exist top is not support split. cancel it"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    sget-object v4, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0, v4}, Lcom/android/server/am/SplitWindowManager;->setSplitMode(Lcom/android/server/am/SplitWindowManager$State;)V

    .line 1166
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v4}, Lcom/android/server/am/ActivitySplitInfo;->setNative()Z

    .line 1167
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v4}, Lcom/android/server/am/ActivitySplitInfo;->setNative()Z

    .line 1169
    :cond_c
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v4}, Lcom/android/server/am/ActivitySplitInfo;->isRequested()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1172
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v6}, Lcom/android/server/am/ActivitySplitInfo;->getScreenZone()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivitySplitInfo;->setScreenZone(I)V

    .line 1173
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->splitInfo:Lcom/android/server/am/ActivitySplitInfo;

    invoke-virtual {v4}, Lcom/android/server/am/ActivitySplitInfo;->setRequested()Z

    goto/16 :goto_2
.end method

.method public setFocusedStack(Z)V
    .locals 2
    .param p1, "homeToFront"    # Z

    .prologue
    .line 1749
    if-eqz p1, :cond_0

    .line 1750
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1751
    sget-object v0, Lcom/android/server/am/SplitWindowManager$State;->RECENTAPP:Lcom/android/server/am/SplitWindowManager$State;

    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->getSplitState()Lcom/android/server/am/SplitWindowManager$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/SplitWindowManager$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1756
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->activitiesToUnSplited()V

    goto :goto_0
.end method

.method public shouldResumeHome(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)Z
    .locals 13
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "taskToBack"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 904
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v10

    if-nez v10, :cond_1

    if-nez p2, :cond_1

    .line 992
    :cond_0
    :goto_0
    return v8

    .line 906
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v10

    if-nez v10, :cond_a

    .line 908
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v10

    if-nez v10, :cond_0

    .line 913
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 914
    .local v6, "topActivity":Lcom/android/server/am/ActivityRecord;
    :goto_1
    if-eqz v6, :cond_4

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 917
    .local v7, "topTask":Lcom/android/server/am/TaskRecord;
    :goto_2
    if-eqz v6, :cond_0

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v10, :cond_0

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v10

    if-nez v10, :cond_0

    .line 919
    const/4 v3, 0x0

    .line 920
    .local v3, "stackIdToFront":I
    iget-object v10, p1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "stackNdx":I
    :goto_3
    if-ltz v4, :cond_6

    .line 921
    iget-object v10, p1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 922
    .local v0, "nextStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_5

    .line 920
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .end local v0    # "nextStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackIdToFront":I
    .end local v4    # "stackNdx":I
    .end local v6    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    move-object v6, v5

    .line 913
    goto :goto_1

    .restart local v6    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    move-object v7, v5

    .line 914
    goto :goto_2

    .line 928
    .restart local v0    # "nextStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackIdToFront":I
    .restart local v4    # "stackNdx":I
    .restart local v7    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_5
    if-lez v3, :cond_8

    .line 932
    .end local v0    # "nextStack":Lcom/android/server/am/ActivityStack;
    :cond_6
    :goto_4
    iget-object v10, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 933
    .restart local v0    # "nextStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v10

    if-nez v10, :cond_0

    .line 935
    iget-object v10, p1, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v8, :cond_7

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 937
    iget-object v8, p1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_9

    iget-object v8, p1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v8, :cond_9

    iget-object v8, p1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v10, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v8, v10, :cond_9

    .line 939
    const-string v8, "SplitWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is only task but it\'s PAUSING now."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iput-object p2, p0, Lcom/android/server/am/SplitWindowManager;->mTaskWaitToMove:Lcom/android/server/am/TaskRecord;

    .line 946
    :cond_7
    :goto_5
    invoke-direct {p0, v0}, Lcom/android/server/am/SplitWindowManager;->moveStackToFront(Lcom/android/server/am/ActivityStack;)Z

    move v8, v9

    .line 947
    goto/16 :goto_0

    .line 928
    :cond_8
    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_4

    .line 942
    :cond_9
    const-string v8, "SplitWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is only task on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", to move it back to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-direct {p0, p2, v0, v9}, Lcom/android/server/am/SplitWindowManager;->moveTaskToStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Z

    goto :goto_5

    .line 958
    .end local v0    # "nextStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackIdToFront":I
    .end local v4    # "stackNdx":I
    .end local v6    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_a
    iget-object v10, p1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_b

    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 959
    .local v2, "prev":Lcom/android/server/am/ActivityRecord;
    :goto_6
    if-nez v2, :cond_c

    .line 960
    const-string v9, "SplitWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "shouldResumeHome doesnt know what to do... with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Just go home."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 958
    .end local v2    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_b
    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_6

    .line 964
    .restart local v2    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_c
    sget-boolean v10, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v10, :cond_d

    .line 965
    const-string v10, "SplitWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "shouldResumeHome for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->putLogState()V

    .line 969
    :cond_d
    invoke-direct {p0, v2}, Lcom/android/server/am/SplitWindowManager;->findActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 971
    invoke-direct {p0, v2}, Lcom/android/server/am/SplitWindowManager;->findOppositeActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v1

    .line 972
    .local v1, "opposite":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v1, :cond_e

    iget-object v10, p0, Lcom/android/server/am/SplitWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v11, v1, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 973
    .local v5, "stackToFront":Lcom/android/server/am/ActivityStack;
    :cond_e
    if-eqz v5, :cond_10

    .line 974
    invoke-direct {p0, v5}, Lcom/android/server/am/SplitWindowManager;->moveStackToFront(Lcom/android/server/am/ActivityStack;)Z

    .line 976
    if-eqz p2, :cond_f

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v10, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v8, v10, :cond_f

    .line 977
    iput-object p2, p0, Lcom/android/server/am/SplitWindowManager;->mTaskWaitToMove:Lcom/android/server/am/TaskRecord;

    .line 978
    const-string v8, "SplitWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "waiting pause "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to move to other stack."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_f
    const-string v8, "SplitWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setFocusedStack for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->activitiesToUnSplited()V

    move v8, v9

    .line 987
    goto/16 :goto_0

    .line 982
    :cond_10
    sget-boolean v9, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v9, :cond_0

    const-string v9, "SplitWindowManager"

    const-string v10, "top activity found on list, but couldn\'t find opposite, then bring Home front."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public startActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 634
    return-void
.end method

.method public switchUser()V
    .locals 2

    .prologue
    .line 2218
    const-string v0, "SplitWindowManager"

    const-string v1, "switchUser causes exitSplitWindow..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    invoke-virtual {p0}, Lcom/android/server/am/SplitWindowManager;->exitSplitWindow()V

    .line 2220
    return-void
.end method

.method updateActivityState(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 7
    .param p1, "component"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resumed"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1432
    if-nez p1, :cond_0

    .line 1482
    :goto_0
    return-void

    .line 1436
    :cond_0
    if-eqz p2, :cond_5

    .line 1437
    const/4 v0, 0x0

    .line 1438
    .local v0, "forceNormal":Z
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    iget-object v3, v3, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    iget-object v3, v3, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1440
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1442
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    invoke-direct {p0, v3}, Lcom/android/server/am/SplitWindowManager;->updateStartActivityToListLocked(Lcom/android/server/am/SplitWindowManager$SplitActivity;)V

    .line 1443
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    iget-object v3, v3, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v3}, Lcom/android/server/am/SplitWindowManager;->findOppositeActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    move-result-object v2

    .line 1444
    .local v2, "opposite":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    iget-object v3, v3, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;->ar:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1445
    iget v3, v2, Lcom/android/server/am/SplitWindowManager$SplitActivity;->stackId:I

    invoke-direct {p0, v3}, Lcom/android/server/am/SplitWindowManager;->removeSplitActivityForStackIdLocked(I)Z

    .line 1450
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mStartingActivity:Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1451
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    .end local v2    # "opposite":Lcom/android/server/am/SplitWindowManager$SplitActivity;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4

    .line 1464
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1465
    sget-boolean v3, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v3, :cond_3

    const-string v3, "SplitWindowManager"

    const-string v4, "remove mPreparedActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_3
    iput-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1474
    :cond_4
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/am/SplitWindowManager;->checkAndSetCurrentStateIfNeeded(Z)V

    .line 1476
    .end local v0    # "forceNormal":Z
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mHandler:Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;

    const/16 v4, 0x1f5

    invoke-virtual {v3, v4}, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1477
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1478
    if-eqz p2, :cond_a

    const/4 v3, 0x1

    :goto_3
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1479
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mHandler:Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1481
    invoke-direct {p0}, Lcom/android/server/am/SplitWindowManager;->putLogState()V

    goto :goto_0

    .line 1451
    .end local v1    # "msg":Landroid/os/Message;
    .restart local v0    # "forceNormal":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1452
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1454
    const/4 v0, 0x1

    goto :goto_1

    .line 1455
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack$ActivityState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1457
    iget-object v4, p0, Lcom/android/server/am/SplitWindowManager;->mSplitActivityList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1459
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/am/SplitWindowManager;->updateStartActivityToListLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/SplitWindowManager$SplitActivity;

    .line 1460
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 1467
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, v4, :cond_4

    .line 1468
    sget-boolean v3, Lcom/android/server/am/SplitWindowManager;->DEBUG_LIGHT:Z

    if-eqz v3, :cond_9

    const-string v3, "SplitWindowManager"

    const-string v4, "remove mPreparedActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_9
    iput-object v6, p0, Lcom/android/server/am/SplitWindowManager;->mPreparedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_2

    .line 1478
    .end local v0    # "forceNormal":Z
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_a
    const/4 v3, 0x0

    goto :goto_3
.end method
