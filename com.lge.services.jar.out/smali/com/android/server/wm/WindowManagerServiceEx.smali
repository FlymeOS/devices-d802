.class public Lcom/android/server/wm/WindowManagerServiceEx;
.super Lcom/android/server/wm/WindowManagerService;
.source "WindowManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field static final CAPP_SPLITWINDOW:Z

.field static final DEBUG_SPLITWINDOW:Z

.field static final MIRRORING_DSDP:I = 0x1

.field static final MIRRORING_MIRRORING:I = 0x1

.field static final MIRRORING_MONITOR:I = 0x0

.field static final MIRRORING_NO_EXT:I = 0x0

.field static final MIRRORING_PRESENTATION:I = 0x2

.field private static final TAG_ALLOWED_POPUP:Ljava/lang/String; = "allowed-popup"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final TYPE_LG_SPLITWINDOW_OFFSET:I = 0x1770

.field public static final WIN_INFO_FRAME_SIZE:Ljava/lang/String; = "FRAME_SIZE"

.field public static final WIN_INFO_IS_FOCUSED:Ljava/lang/String; = "IS_FOCUSED"

.field public static final WIN_INFO_IS_VISIBLE:Ljava/lang/String; = "IS_VISIBLE"

.field public static final WIN_INFO_IS_WIN_VISIBLE:Ljava/lang/String; = "IS_WIN_VISIBLE"

.field public static final WIN_INFO_PACKAGE:Ljava/lang/String; = "PACKAGE"

.field public static final WIN_INFO_SHOWN_FRAME_SIZE:Ljava/lang/String; = "SHOWN_FRAME_SIZE"

.field public static final WIN_INFO_SURFACE_LAYER:Ljava/lang/String; = "SURFACE_LAYER"

.field public static final WIN_INFO_TITLE:Ljava/lang/String; = "TITLE"

.field public static final WIN_INFO_WIN_NUM:Ljava/lang/String; = "WIN_NUM"

.field public static mDsdpMode:I

.field public static m_ExtDisplayNum:I


# instance fields
.field private final TARGET_DEVICE:Ljava/lang/String;

.field public isMdmOn:Z

.field public final mAllowPopupLists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDisable_recent_scenario:Z

.field private mDsdpHandler:Landroid/os/Handler;

.field private mExtendedBinderInternal:Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;

.field mFocusedStackId:I

.field private mIsFocusChangingByTouch:Z

.field mIsWaitingFocusChangeWhenSplit:Z

.field private mLayoutModifiedWinByIME:Lcom/android/server/wm/WindowStateEx;

.field private mLayoutResizeWithIME:Z

.field private mNeededResizeWithIME:Z

.field private mOldRotation:I

.field private mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSplitLayoutChangeNeeded:Z

.field private mSplitSubWindowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateEx;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitUIWinList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateEx;",
            ">;"
        }
    .end annotation
.end field

.field mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

.field private mStackIdofTopSplitApp:I

.field mTempararyArrayTaskIdToTask:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 523
    sput v0, Lcom/android/server/wm/WindowManagerServiceEx;->m_ExtDisplayNum:I

    .line 525
    sput v0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    .line 838
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    sput-boolean v1, Lcom/android/server/wm/WindowManagerServiceEx;->CAPP_SPLITWINDOW:Z

    .line 839
    sget-boolean v1, Lcom/android/server/wm/WindowManagerServiceEx;->CAPP_SPLITWINDOW:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    .line 842
    sget-boolean v0, Lcom/android/server/wm/WindowManagerServiceEx;->CAPP_SPLITWINDOW:Z

    if-eqz v0, :cond_1

    .line 844
    const v0, 0x3a83126f    # 0.001f

    sput v0, Lcom/android/server/wm/WindowManagerServiceEx;->STACK_WEIGHT_MIN:F

    .line 845
    const v0, 0x3f7fbe77    # 0.999f

    sput v0, Lcom/android/server/wm/WindowManagerServiceEx;->STACK_WEIGHT_MAX:F

    .line 851
    :goto_0
    return-void

    .line 848
    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/android/server/wm/WindowManagerServiceEx;->STACK_WEIGHT_MIN:F

    .line 849
    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lcom/android/server/wm/WindowManagerServiceEx;->STACK_WEIGHT_MAX:F

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "haveInputMethods"    # Z
    .param p4, "showBootMsgs"    # Z
    .param p5, "onlyCore"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V

    .line 86
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mExtendedBinderInternal:Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;

    .line 447
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->isMdmOn:Z

    .line 449
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    .line 528
    new-instance v1, Lcom/android/server/wm/WindowManagerServiceEx$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceEx$1;-><init>(Lcom/android/server/wm/WindowManagerServiceEx;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpHandler:Landroid/os/Handler;

    .line 854
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mTempararyArrayTaskIdToTask:Landroid/util/SparseArray;

    .line 856
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    .line 857
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsWaitingFocusChangeWhenSplit:Z

    .line 859
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    .line 860
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    .line 861
    iput v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mStackIdofTopSplitApp:I

    .line 862
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitLayoutChangeNeeded:Z

    .line 863
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mLayoutResizeWithIME:Z

    .line 864
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mLayoutModifiedWinByIME:Lcom/android/server/wm/WindowStateEx;

    .line 865
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsFocusChangingByTouch:Z

    .line 866
    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    iput v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mOldRotation:I

    .line 868
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mNeededResizeWithIME:Z

    .line 871
    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->TARGET_DEVICE:Ljava/lang/String;

    .line 872
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDisable_recent_scenario:Z

    .line 2711
    new-instance v1, Lcom/android/server/wm/WindowManagerServiceEx$3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceEx$3;-><init>(Lcom/android/server/wm/WindowManagerServiceEx;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    const-string v1, "sys.lge.dsdp.mode"

    const-string v2, "stop"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, "dragfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->readForceAllowPopupListLPr()V

    .line 98
    new-instance v1, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;

    invoke-direct {v1, p0, v3}, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/wm/WindowManagerServiceEx;Lcom/android/server/wm/WindowManagerServiceEx$1;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mExtendedBinderInternal:Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;

    .line 99
    return-void
.end method

.method static synthetic access$102(Lcom/android/server/wm/WindowManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsFocusChangingByTouch:Z

    return p1
.end method

.method private castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2531
    :try_start_0
    check-cast p1, Lcom/android/server/wm/WindowStateEx;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2535
    .end local p1    # "win":Lcom/android/server/wm/WindowState;
    :goto_0
    return-object p1

    .line 2532
    .restart local p1    # "win":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v0

    .line 2533
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v1, "SplitWindowState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowState cannot be casted to WindowStateEx.. win = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getReferenceSplitSubWindowLocked()Lcom/android/server/wm/WindowState;
    .locals 18

    .prologue
    .line 1031
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v12, v15, -0x1

    .line 1032
    .local v12, "totalSub":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v5, 0x1

    .line 1033
    .local v5, "isIMEvisible":Z
    :goto_0
    if-gez v12, :cond_2

    if-nez v5, :cond_2

    .line 1034
    const/4 v8, 0x0

    .line 1122
    :cond_0
    :goto_1
    return-object v8

    .line 1032
    .end local v5    # "isIMEvisible":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1036
    .restart local v5    # "isIMEvisible":Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v14

    .line 1037
    .local v14, "windows":Lcom/android/server/wm/WindowList;
    if-nez v14, :cond_3

    .line 1038
    const/4 v8, 0x0

    goto :goto_1

    .line 1040
    :cond_3
    const/4 v11, 0x0

    .line 1041
    .local v11, "topSubWindow":Lcom/android/server/wm/WindowState;
    const/4 v9, 0x0

    .line 1042
    .local v9, "refWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v15, :cond_9

    const/16 v1, 0x3e8

    .line 1043
    .local v1, "InputMethodWinPos":I
    :goto_2
    invoke-virtual {v14}, Lcom/android/server/wm/WindowList;->size()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    .line 1044
    .local v7, "pos":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getStackIdOfFocusedWin()I

    move-result v10

    .line 1045
    .local v10, "stackId":I
    if-nez v10, :cond_4

    .line 1047
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mStackIdofTopSplitApp:I

    .line 1050
    :cond_4
    sget-boolean v15, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v15, :cond_5

    .line 1051
    const-string v15, "SplitWindow"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "check stackId.. of focusedWin = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_5
    :goto_3
    if-ltz v7, :cond_c

    .line 1054
    invoke-virtual {v14, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    .line 1055
    .local v13, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, v13, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1056
    .local v2, "attached":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_a

    const/4 v4, 0x0

    .line 1058
    .local v4, "isAttachedToFloating":Z
    :goto_4
    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v15

    iget v15, v15, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v15, :cond_6

    if-nez v4, :cond_6

    .line 1059
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v15

    iget v15, v15, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v15, v10, :cond_b

    .line 1060
    move-object v11, v13

    .line 1061
    sget-boolean v15, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v15, :cond_6

    .line 1062
    const-string v15, "SplitWindow"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "subwindow.. top sub window found.. top subwin = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " of pos "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_6
    if-eqz v11, :cond_8

    .line 1069
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v15

    iget v15, v15, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v15, v10, :cond_8

    .line 1070
    sget-boolean v15, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v15, :cond_7

    .line 1071
    const-string v15, "SplitWindow"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "subwindow.. this subwindow is having same splitstackId.. win = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " of stackId "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_7
    move-object v9, v13

    .line 1075
    :cond_8
    add-int/lit8 v7, v7, -0x1

    .line 1076
    goto/16 :goto_3

    .line 1042
    .end local v1    # "InputMethodWinPos":I
    .end local v2    # "attached":Lcom/android/server/wm/WindowState;
    .end local v4    # "isAttachedToFloating":Z
    .end local v7    # "pos":I
    .end local v10    # "stackId":I
    .end local v13    # "win":Lcom/android/server/wm/WindowState;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14, v15}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto/16 :goto_2

    .line 1056
    .restart local v1    # "InputMethodWinPos":I
    .restart local v2    # "attached":Lcom/android/server/wm/WindowState;
    .restart local v7    # "pos":I
    .restart local v10    # "stackId":I
    .restart local v13    # "win":Lcom/android/server/wm/WindowState;
    :cond_a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Floating:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto/16 :goto_4

    .line 1064
    .restart local v4    # "isAttachedToFloating":Z
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1078
    .end local v2    # "attached":Lcom/android/server/wm/WindowState;
    .end local v4    # "isAttachedToFloating":Z
    .end local v13    # "win":Lcom/android/server/wm/WindowState;
    :cond_c
    if-nez v11, :cond_e

    .line 1079
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v15

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_d

    .line 1080
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v16, 0x7d2

    invoke-interface/range {v15 .. v16}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v15

    mul-int/lit16 v15, v15, 0x2710

    add-int/lit16 v6, v15, 0x3e8

    .line 1081
    .local v6, "phoneTypeLayer":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget v15, v15, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v15, v6, :cond_d

    .line 1082
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    goto/16 :goto_1

    .line 1084
    .end local v6    # "phoneTypeLayer":I
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1087
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-virtual {v14, v9}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    if-ge v1, v15, :cond_15

    .line 1088
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d0

    move/from16 v0, v16

    if-lt v15, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 1092
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d2

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Floating"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "DockView"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 1095
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14, v15}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1096
    .local v3, "floatingIndex":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1097
    .local v8, "refFloatingWin":Lcom/android/server/wm/WindowState;
    add-int/lit8 v3, v3, -0x1

    .line 1098
    :goto_5
    if-ltz v3, :cond_0

    .line 1099
    invoke-virtual {v14, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    .line 1101
    .restart local v13    # "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d2

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Floating"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "DockView"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 1103
    :cond_10
    move-object v8, v13

    .line 1104
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1106
    :cond_11
    iget-object v2, v13, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1107
    .restart local v2    # "attached":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Floating"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_12

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "DockView"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1109
    :cond_12
    move-object v8, v13

    .line 1110
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1118
    .end local v2    # "attached":Lcom/android/server/wm/WindowState;
    .end local v3    # "floatingIndex":I
    .end local v8    # "refFloatingWin":Lcom/android/server/wm/WindowState;
    .end local v13    # "win":Lcom/android/server/wm/WindowState;
    :cond_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_1

    .line 1120
    :cond_14
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    goto/16 :goto_1

    :cond_15
    move-object v8, v9

    .line 1122
    goto/16 :goto_1
.end method

.method private getStackIdOfNotFocusedWin()I
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getStackIdOfFocusedWin()I

    move-result v3

    .line 1541
    .local v3, "focusedStackId":I
    if-nez v3, :cond_0

    move v5, v9

    .line 1561
    :goto_0
    return v5

    .line 1543
    :cond_0
    const/4 v5, 0x0

    .line 1544
    .local v5, "notFocusedStackId":I
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 1545
    :try_start_0
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1546
    .local v6, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_1
    if-ge v2, v6, :cond_6

    .line 1547
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1548
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_3

    const/4 v8, 0x0

    .line 1549
    .local v8, "windows":Lcom/android/server/wm/WindowList;
    :goto_2
    if-eqz v8, :cond_2

    .line 1550
    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_2

    .line 1551
    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 1552
    .local v7, "win":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v11

    if-nez v11, :cond_4

    :cond_1
    move v0, v9

    .line 1553
    .local v0, "currentStackId":I
    :goto_4
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_5

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1554
    move v5, v0

    .line 1546
    .end local v0    # "currentStackId":I
    .end local v4    # "i":I
    .end local v7    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1548
    .end local v8    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v8

    goto :goto_2

    .line 1552
    .restart local v4    # "i":I
    .restart local v7    # "win":Lcom/android/server/wm/WindowState;
    .restart local v8    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v11

    iget v0, v11, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_4

    .line 1550
    .restart local v0    # "currentStackId":I
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1560
    .end local v0    # "currentStackId":I
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "i":I
    .end local v7    # "win":Lcom/android/server/wm/WindowState;
    .end local v8    # "windows":Lcom/android/server/wm/WindowList;
    :cond_6
    monitor-exit v10

    goto :goto_0

    .end local v2    # "displayNdx":I
    .end local v6    # "numDisplays":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private getTopTokenOfStackId(I)Lcom/android/server/wm/AppWindowToken;
    .locals 12
    .param p1, "stackId"    # I

    .prologue
    const/4 v8, 0x0

    .line 1515
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 1516
    .local v4, "tStack":Lcom/android/server/wm/TaskStack;
    if-nez v4, :cond_0

    move-object v1, v8

    .line 1536
    :goto_0
    return-object v1

    .line 1518
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1520
    .local v0, "aTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 1521
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "taskNdx":I
    :goto_1
    if-ltz v6, :cond_5

    .line 1522
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    iget-object v3, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1523
    .local v3, "awTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "awTokenNdx":I
    :goto_2
    if-ltz v2, :cond_4

    .line 1524
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 1525
    .local v1, "awToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mTaskIdToTask:Landroid/util/SparseArray;

    iget v10, v1, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 1526
    .local v5, "task":Lcom/android/server/wm/Task;
    sget-boolean v7, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v7, :cond_1

    .line 1527
    const-string v7, "SplitWindow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TOP token taskNdx = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", of size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", awTokenNdx = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " of size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_1
    if-eqz v5, :cond_3

    iget-object v7, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v7, v7, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v7, p1, :cond_3

    .line 1529
    sget-boolean v7, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v7, :cond_2

    .line 1530
    const-string v7, "SplitWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "return TOP token "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " of screenId "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_2
    monitor-exit v9

    goto/16 :goto_0

    .line 1535
    .end local v1    # "awToken":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "awTokenNdx":I
    .end local v3    # "awTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "taskNdx":I
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1523
    .restart local v1    # "awToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v2    # "awTokenNdx":I
    .restart local v3    # "awTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v6    # "taskNdx":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    .line 1521
    .end local v1    # "awToken":Lcom/android/server/wm/AppWindowToken;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 1535
    .end local v2    # "awTokenNdx":I
    .end local v3    # "awTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    :cond_5
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v8

    .line 1536
    goto/16 :goto_0
.end method


# virtual methods
.method protected canBeImeTargetInSplit(Lcom/android/server/wm/WindowState;)Z
    .locals 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1643
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1644
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 1665
    :goto_0
    return v4

    .line 1647
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getStackIdOfFocusedWin()I

    move-result v1

    .line 1648
    .local v1, "focusedStackId":I
    const/4 v2, 0x0

    .line 1649
    .local v2, "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    const/4 v3, -0x1

    .line 1651
    .local v3, "screenZone":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v6, v1}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getScreenInfo(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1652
    if-nez v2, :cond_2

    move v3, v4

    .line 1659
    :goto_1
    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_3

    .line 1660
    sget-boolean v4, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v4, :cond_1

    .line 1661
    const-string v4, "SplitWindow"

    const-string v5, "currently.. split ui may not be visible but set as ime targetable because it will be visible soon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1652
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenZone()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_1

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "SplitWindow"

    const-string v7, "RemoteException occured.."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1655
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1656
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v6, "SplitWindow"

    const-string v7, "NullPointerException occured.."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v1    # "focusedStackId":I
    .end local v2    # "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    .end local v3    # "screenZone":I
    :cond_3
    move v4, v5

    .line 1665
    goto :goto_0
.end method

.method checkIsSplitFullscreen(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2494
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v0

    .line 2495
    .local v0, "winex":Lcom/android/server/wm/WindowStateEx;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateEx;->isSplitFullScreen()Z

    move-result v1

    goto :goto_0
.end method

.method checkIsSplitFullscreen(Lcom/android/server/wm/WindowToken;)Z
    .locals 6
    .param p1, "wtoken"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 2499
    const/4 v1, 0x0

    .line 2501
    .local v1, "appWtoken":Lcom/android/server/wm/AppWindowTokenEx;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/AppWindowTokenEx;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2505
    :goto_0
    if-nez v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 2502
    :catch_0
    move-exception v2

    .line 2503
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "SplitWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WindowToken cannot be casted to AppWindowTokenEx.. token = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2505
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_0
    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowTokenEx;->isSplitFullScreen:Z

    goto :goto_1
.end method

.method protected checkOrientationAndNotifyIfNeeded()V
    .locals 5

    .prologue
    .line 1964
    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mOldRotation:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    if-eq v2, v3, :cond_1

    .line 1965
    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    iput v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mOldRotation:I

    .line 1966
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v2, :cond_1

    .line 1968
    const/4 v1, 0x1

    .line 1969
    .local v1, "rotation":I
    :try_start_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    if-nez v2, :cond_2

    .line 1970
    const/4 v1, 0x1

    .line 1973
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->notifyOrientationChagned(ILandroid/graphics/Rect;)V

    .line 1980
    .end local v1    # "rotation":I
    :cond_1
    :goto_1
    return-void

    .line 1971
    .restart local v1    # "rotation":I
    :cond_2
    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1972
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 1975
    :catch_0
    move-exception v0

    .line 1976
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SplitWidow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null pointer exception has occured.. mSplitWindowManager is null? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1974
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected checkSplitRelatedWindowAndReorderLocked(Lcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/16 v8, 0x7d2

    .line 1790
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v8, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LG_split"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1791
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1792
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1797
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1798
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1800
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->isInSplitMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1801
    sget-boolean v5, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v5, :cond_1

    .line 1802
    const-string v5, "SplitWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " removed window = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    const-string v5, "SplitWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mSplitSubWindowList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SplitUIWinNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const-string v5, "SplitWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " inputMethodWin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", inputMethodTarget = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_1

    .line 1806
    const-string v5, "SplitWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " inputMethod visible? = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", visibility = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_1
    const/4 v1, 0x0

    .line 1810
    .local v1, "needReorder":Z
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v5, :cond_4

    .line 1811
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_4

    .line 1812
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Floating"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DockView"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1815
    :cond_2
    sget-boolean v5, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v5, :cond_3

    .line 1816
    const-string v5, "SplitWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inputMethod window target is not floating or Dock.. Reorder needed for IME target.. title = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_3
    const/4 v1, 0x1

    .line 1822
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v1, :cond_7

    .line 1823
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 1824
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1825
    .local v3, "splitBarWinNum":I
    new-array v2, v3, [I

    .line 1826
    .local v2, "splitBarPos":[I
    if-lez v3, :cond_6

    .line 1827
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_5

    .line 1828
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    aput v5, v2, v0

    .line 1829
    aget v6, v2, v0

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v6, v5}, Lcom/android/server/wm/WindowManagerServiceEx;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result v5

    aput v5, v2, v0

    .line 1830
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerServiceEx;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    .line 1827
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1832
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerServiceEx;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    .line 1839
    .end local v0    # "i":I
    .end local v1    # "needReorder":Z
    .end local v2    # "splitBarPos":[I
    .end local v3    # "splitBarWinNum":I
    .end local v4    # "windows":Lcom/android/server/wm/WindowList;
    :cond_6
    :goto_1
    return-void

    .line 1835
    .restart local v1    # "needReorder":Z
    :cond_7
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerServiceEx;->reOrderSubWindowsAboveSplitWin(Z)Z

    goto :goto_1
.end method

.method protected checkSplitSubWindowLocked(Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;I)V
    .locals 6
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .param p3, "type"    # I

    .prologue
    const/4 v5, -0x1

    .line 1734
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v2

    .line 1735
    .local v2, "winEx":Lcom/android/server/wm/WindowStateEx;
    if-nez v2, :cond_1

    .line 1786
    :cond_0
    :goto_0
    return-void

    .line 1741
    :cond_1
    const/16 v3, 0x3e8

    if-ne p3, v3, :cond_2

    :try_start_0
    const-string v3, "SurfaceView"

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/16 v3, 0x3ea

    if-eq p3, v3, :cond_3

    const/16 v3, 0x3eb

    if-ne p3, v3, :cond_5

    :cond_3
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_5

    .line 1746
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v3, v4, :cond_4

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_4

    .line 1748
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->isSplitAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v3}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1752
    iget-object v3, v2, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    check-cast v3, Lcom/android/server/wm/WindowStateEx;

    move-object v0, v3

    check-cast v0, Lcom/android/server/wm/WindowStateEx;

    move-object v1, v0

    .line 1753
    .local v1, "attached":Lcom/android/server/wm/WindowStateEx;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateEx;->isSplitFullScreen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1755
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateEx;->isSplitFullScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowStateEx;->setSplitFullscreen(Z)V

    .line 1756
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerServiceEx;->reOrderSubWindowsAboveSplitWin(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1757
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowsChanged:Z

    goto/16 :goto_0

    .line 1783
    .end local v1    # "attached":Lcom/android/server/wm/WindowStateEx;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 1761
    :cond_5
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v3, v5, :cond_6

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v3, v5, :cond_6

    const/16 v3, 0x7d2

    if-lt p3, v3, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.internal.app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1766
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1767
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->isSplitAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v3}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1771
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v3, :cond_0

    .line 1772
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerServiceEx;->reOrderSubWindowsAboveSplitWin(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1773
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowsChanged:Z

    goto/16 :goto_0

    .line 1784
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 1778
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->isSplitAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v3}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1779
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerServiceEx;->reOrderSubWindowsAboveSplitWin(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1780
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowsChanged:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0
.end method

.method protected checkSplitUiWindowLocked(Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowToken;)V
    .locals 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .param p3, "token"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 1705
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v1

    .line 1706
    .local v1, "winEx":Lcom/android/server/wm/WindowStateEx;
    if-nez v1, :cond_1

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1711
    :cond_1
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d2

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LG_split"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1714
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1715
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    :cond_2
    iget-object v0, p3, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    check-cast v0, Lcom/android/server/wm/AppWindowTokenEx;

    .line 1720
    .local v0, "atoken":Lcom/android/server/wm/AppWindowTokenEx;
    if-eqz v0, :cond_3

    .line 1721
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowTokenEx;->isSplitFullScreen:Z

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowStateEx;->setSplitFullscreen(Z)V

    .line 1724
    :cond_3
    iget-object v3, v1, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_0

    .line 1725
    iget-object v3, v1, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v2

    .line 1726
    .local v2, "winpEx":Lcom/android/server/wm/WindowStateEx;
    if-eqz v2, :cond_0

    .line 1727
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateEx;->isSplitFullScreen()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowStateEx;->setSplitFullscreen(Z)V

    goto :goto_0
.end method

.method public cropSplitWindowIfNeeded(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 2046
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v5

    .line 2047
    .local v5, "w":Lcom/android/server/wm/WindowStateEx;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateEx;->isSplitFullScreen()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2048
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SurfaceView"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2049
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v9, :cond_0

    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v8, :cond_0

    .line 2051
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_0

    .line 2053
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iput v6, p2, Landroid/graphics/Rect;->right:I

    .line 2055
    :cond_0
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v9, :cond_1

    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v8, :cond_1

    .line 2057
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_1

    .line 2059
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iput v6, p2, Landroid/graphics/Rect;->bottom:I

    .line 2064
    :cond_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerServiceEx;->isSplitSubWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2065
    iget-boolean v6, v5, Lcom/android/server/wm/WindowStateEx;->mIsSplitFullScreen:Z

    if-eqz v6, :cond_4

    iget-boolean v6, v5, Lcom/android/server/wm/WindowStateEx;->mSplitable:Z

    if-eqz v6, :cond_4

    .line 2067
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2069
    iget-object v3, v5, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2070
    .local v3, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v6, p2, Landroid/graphics/Rect;->left:I

    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/graphics/Rect;->left:I

    .line 2071
    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/graphics/Rect;->top:I

    .line 2072
    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, p2, Landroid/graphics/Rect;->right:I

    .line 2073
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, p2, Landroid/graphics/Rect;->bottom:I

    .line 2092
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    :goto_0
    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SurfaceView"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_3

    .line 2093
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v2

    .line 2094
    .local v2, "attached":Lcom/android/server/wm/WindowStateEx;
    iget-boolean v6, v2, Lcom/android/server/wm/WindowStateEx;->mSplitable:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v2, Lcom/android/server/wm/WindowStateEx;->mIsSplitFullScreen:Z

    if-eqz v6, :cond_3

    .line 2095
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2099
    .end local v2    # "attached":Lcom/android/server/wm/WindowStateEx;
    :cond_3
    return-void

    .line 2074
    :cond_4
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_2

    .line 2075
    const/4 v1, 0x0

    .line 2077
    .local v1, "aWinToken":Lcom/android/server/wm/AppWindowTokenEx;
    :try_start_0
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v0, v6

    check-cast v0, Lcom/android/server/wm/AppWindowTokenEx;

    move-object v1, v0

    .line 2078
    iget-boolean v6, v1, Lcom/android/server/wm/AppWindowTokenEx;->isSplitFullScreen:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v1, Lcom/android/server/wm/AppWindowTokenEx;->mWasSplited:Z

    if-eqz v6, :cond_2

    .line 2079
    iget-object v6, v5, Lcom/android/server/wm/WindowStateEx;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2081
    iget-object v3, v5, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2082
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v6, p2, Landroid/graphics/Rect;->left:I

    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/graphics/Rect;->left:I

    .line 2083
    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/graphics/Rect;->top:I

    .line 2084
    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, p2, Landroid/graphics/Rect;->right:I

    .line 2085
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, p2, Landroid/graphics/Rect;->bottom:I

    .line 2086
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/WindowStateEx;->mSplitable:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2088
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v4

    .line 2089
    .local v4, "e":Ljava/lang/ClassCastException;
    const-string v6, "SplitWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppWindowToken cannot be casted to AppWindowTokenEx.. w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public findFromAllowPopupList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2551
    const/4 v0, 0x1

    .line 2553
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputMethodTargetWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1597
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_1

    .line 1603
    :cond_0
    :goto_0
    return-object v0

    .line 1600
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    goto :goto_0
.end method

.method public getLayoutModifiedWinByIME()Lcom/android/server/wm/WindowStateEx;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mLayoutModifiedWinByIME:Lcom/android/server/wm/WindowStateEx;

    return-object v0
.end method

.method public getOrientationFromWindowsLocked()I
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 664
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDisplayFrozen:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 670
    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mLastWindowForcedOrientation:I

    .line 715
    :goto_0
    return v1

    .line 674
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 675
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 676
    .local v0, "pos":I
    :cond_2
    :goto_1
    if-ltz v0, :cond_6

    .line 677
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 678
    .local v2, "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    .line 679
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_3

    .line 682
    iput v4, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mLastWindowForcedOrientation:I

    move v1, v4

    goto :goto_0

    .line 690
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->hasNavigationBar()Z

    move-result v5

    if-nez v5, :cond_5

    sget v5, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    if-eqz v2, :cond_5

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_5

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_5

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_5

    .line 693
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_4

    .line 694
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v5, :cond_2

    .line 704
    :cond_4
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 705
    .local v1, "req":I
    if-eq v1, v4, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    .line 713
    iput v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mLastWindowForcedOrientation:I

    goto :goto_0

    .line 700
    .end local v1    # "req":I
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-nez v5, :cond_4

    goto :goto_1

    .line 715
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_6
    iput v4, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mLastWindowForcedOrientation:I

    move v1, v4

    goto :goto_0
.end method

.method protected getSplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1611
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v8, :cond_0

    .line 1612
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 1638
    :goto_0
    return-object v8

    .line 1614
    :cond_0
    invoke-static {}, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->getPolicyService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 1615
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 1617
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1618
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    if-eq v8, v7, :cond_1

    iget v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_2

    :cond_1
    move v6, v7

    .line 1620
    .local v6, "rotated":Z
    :cond_2
    if-eqz v6, :cond_4

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1622
    .local v5, "realdw":I
    :goto_1
    if-eqz v6, :cond_5

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1624
    .local v4, "realdh":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v10, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    invoke-interface {v8, v5, v4, v10}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v1

    .line 1625
    .local v1, "appWidth":I
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v10, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    invoke-interface {v8, v5, v4, v10}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v0

    .line 1627
    .local v0, "appHeight":I
    sget-boolean v8, Lcom/android/server/wm/WindowManagerServiceEx;->CAPP_SPLITWINDOW:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_3

    .line 1629
    if-gt v5, v4, :cond_6

    .line 1630
    .local v7, "rotation":I
    :goto_3
    :try_start_1
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v8, v7, v10}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->notifyOrientationChagned(ILandroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1636
    .end local v7    # "rotation":I
    :cond_3
    :goto_4
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1638
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    goto :goto_0

    .line 1620
    .end local v0    # "appHeight":I
    .end local v1    # "appWidth":I
    .end local v4    # "realdh":I
    .end local v5    # "realdw":I
    :cond_4
    :try_start_3
    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_1

    .line 1622
    .restart local v5    # "realdw":I
    :cond_5
    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_2

    .line 1629
    .restart local v0    # "appHeight":I
    .restart local v1    # "appWidth":I
    .restart local v4    # "realdh":I
    :cond_6
    const/4 v7, 0x2

    goto :goto_3

    .line 1632
    .restart local v7    # "rotation":I
    :catch_0
    move-exception v3

    .line 1633
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v8, "SplitWidow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Null pointer exception has occured.. mSplitWindowManager is null? = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1636
    .end local v0    # "appHeight":I
    .end local v1    # "appWidth":I
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "realdh":I
    .end local v5    # "realdw":I
    .end local v6    # "rotated":Z
    .end local v7    # "rotation":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 1631
    .restart local v0    # "appHeight":I
    .restart local v1    # "appWidth":I
    .restart local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v4    # "realdh":I
    .restart local v5    # "realdw":I
    .restart local v6    # "rotated":Z
    .restart local v7    # "rotation":I
    :catch_1
    move-exception v8

    goto :goto_4
.end method

.method public getStackIdOfFocusedWin()I
    .locals 3

    .prologue
    .line 757
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 758
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 759
    .local v0, "focusedWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    monitor-exit v2

    .line 763
    :goto_0
    return v1

    .line 762
    :cond_0
    monitor-exit v2

    .line 763
    const/4 v1, 0x0

    goto :goto_0

    .line 762
    .end local v0    # "focusedWin":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected globalSplitLayoutChanged()Z
    .locals 1

    .prologue
    .line 2486
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitLayoutChangeNeeded:Z

    return v0
.end method

.method public handleDisplayAdded(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 593
    const-string v0, "WindowManager"

    const-string v1, "WindowManagerServiceEx::handleDisplayAdded"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 596
    return-void
.end method

.method protected handleMoveScreenTaskToFront(I)V
    .locals 8
    .param p1, "focusChangeType"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1478
    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 1480
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsWaitingFocusChangeWhenSplit:Z

    .line 1481
    iput v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    .line 1482
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsFocusChangingByTouch:Z

    .line 1512
    :goto_0
    return-void

    .line 1486
    :cond_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerServiceEx;->getTopTokenOfStackId(I)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1487
    .local v0, "awtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_2

    .line 1489
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v2, :cond_1

    .line 1490
    const-string v2, "SplitWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMoveScreenTaskToFront.. Task of stackId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " would be moved to Front.. focus changetype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mActivityManager:Landroid/app/IActivityManager;

    iget v3, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1492
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mActivityManager:Landroid/app/IActivityManager;

    iget v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->setFocusedStack(I)V

    .line 1493
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v2, :cond_2

    .line 1494
    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    iput v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mStackIdofTopSplitApp:I

    .line 1495
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    iget v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    invoke-interface {v2, v3, p1}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->notifyScreenFocusChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v3, Lcom/android/server/wm/WindowManagerServiceEx$2;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerServiceEx$2;-><init>(Lcom/android/server/wm/WindowManagerServiceEx;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1510
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsWaitingFocusChangeWhenSplit:Z

    .line 1511
    iput v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    goto :goto_0

    .line 1497
    :catch_0
    move-exception v1

    .line 1498
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "mActivityManager biner proxy is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isInFocusChangingByTouch()Z
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsFocusChangingByTouch:Z

    return v0
.end method

.method protected isInSplitMode()Z
    .locals 2

    .prologue
    .line 1952
    const/4 v0, 0x0

    .line 1954
    .local v0, "isSplitSubwinExist":Z
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerServiceEx;->CAPP_SPLITWINDOW:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->isSplitAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v1}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1960
    :goto_0
    return v0

    .line 1954
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1958
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected isInSplitUiWin(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2468
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2470
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputMethodWindowVisibleOnDocked(Landroid/graphics/Rect;)Z
    .locals 14
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1565
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1566
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_1

    .line 1593
    :cond_0
    :goto_0
    return v8

    .line 1569
    :cond_1
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1570
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 1571
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1572
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v11, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    if-eq v11, v9, :cond_2

    iget v11, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    :cond_2
    move v7, v9

    .line 1574
    .local v7, "rotated":Z
    :goto_1
    if-eqz v7, :cond_5

    iget v6, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1576
    .local v6, "realdw":I
    :goto_2
    if-eqz v7, :cond_6

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1578
    .local v5, "realdh":I
    :goto_3
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v12, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    invoke-interface {v11, v6, v5, v12}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v1

    .line 1579
    .local v1, "decorWidth":I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v12, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mRotation:I

    invoke-interface {v11, v6, v5, v12}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v0

    .line 1580
    .local v0, "decorHeight":I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1582
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v3

    .line 1583
    .local v3, "imeInset":Landroid/graphics/Rect;
    const/16 v4, 0x64

    .line 1584
    .local v4, "minimumImeOffset":I
    sget-boolean v11, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v11, :cond_3

    .line 1585
    const-string v11, "SplitIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mInputMethodWindow = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", decorWidth = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", decorHeight = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", inset = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_3
    add-int/lit8 v11, v0, -0x64

    iget v12, v3, Landroid/graphics/Rect;->top:I

    if-ge v11, v12, :cond_7

    .line 1588
    monitor-exit v10

    goto/16 :goto_0

    .line 1589
    .end local v0    # "decorHeight":I
    .end local v1    # "decorWidth":I
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "imeInset":Landroid/graphics/Rect;
    .end local v4    # "minimumImeOffset":I
    .end local v5    # "realdh":I
    .end local v6    # "realdw":I
    .end local v7    # "rotated":Z
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_4
    move v7, v8

    .line 1572
    goto :goto_1

    .line 1574
    .restart local v7    # "rotated":Z
    :cond_5
    :try_start_1
    iget v6, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_2

    .line 1576
    .restart local v6    # "realdw":I
    :cond_6
    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_3

    .line 1589
    .restart local v0    # "decorHeight":I
    .restart local v1    # "decorWidth":I
    .restart local v3    # "imeInset":Landroid/graphics/Rect;
    .restart local v4    # "minimumImeOffset":I
    .restart local v5    # "realdh":I
    :cond_7
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v9

    .line 1590
    goto/16 :goto_0
.end method

.method protected isSplitAvailable()Z
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-nez v0, :cond_1

    .line 877
    :cond_0
    const/4 v0, 0x0

    .line 879
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSplitLayoutChanged(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2474
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v0

    .line 2475
    .local v0, "w":Lcom/android/server/wm/WindowStateEx;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateEx;->mSplitLayoutChanged:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSplitSubWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 1149
    if-nez p1, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return v0

    .line 1153
    :cond_1
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    const-string v2, "SurfaceView"

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_3

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3eb

    if-ne v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 1156
    goto :goto_0

    .line 1159
    :cond_4
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, v4, :cond_5

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, v4, :cond_5

    move v0, v1

    .line 1160
    goto :goto_0

    .line 1162
    :cond_5
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1163
    goto :goto_0
.end method

.method protected isSplitSubWindowExist()Z
    .locals 1

    .prologue
    .line 1948
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->isInSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWindowSplit(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/graphics/Rect;)Z
    .locals 11
    .param p1, "Isession"    # Landroid/view/IWindowSession;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "outDisplayFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 769
    sget-boolean v7, Lcom/android/server/wm/WindowManagerServiceEx;->CAPP_SPLITWINDOW:Z

    if-nez v7, :cond_0

    .line 770
    const/4 v7, 0x0

    .line 829
    :goto_0
    return v7

    .line 772
    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 773
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v4

    .line 774
    .local v4, "win":Lcom/android/server/wm/WindowStateEx;
    if-eqz v4, :cond_1

    if-nez p1, :cond_3

    .line 775
    :cond_1
    sget-boolean v7, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v7, :cond_2

    .line 776
    const-string v7, "SplitRect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isWindowSplit..  win is null with this client "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 778
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 828
    .end local v4    # "win":Lcom/android/server/wm/WindowStateEx;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 781
    .restart local v4    # "win":Lcom/android/server/wm/WindowStateEx;
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v2, 0x0

    .line 783
    .local v2, "stackId":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v7, :cond_e

    if-eqz v2, :cond_e

    .line 784
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateEx;->isSplitFullScreen()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 785
    sget-boolean v7, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v7, :cond_4

    .line 786
    const-string v7, "SplitRect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isWindowSplit this win is split full screenIsession = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", session = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/wm/WindowStateEx;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v10}, Lcom/android/server/wm/Session;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_4
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 781
    .end local v2    # "stackId":I
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    iget v2, v7, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_1

    .line 790
    .restart local v2    # "stackId":I
    :cond_6
    iget-object v7, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_8

    iget-object v7, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v9, 0x10000

    and-int/2addr v7, v9

    if-eqz v7, :cond_8

    .line 791
    iget-object v7, v4, Lcom/android/server/wm/WindowStateEx;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 826
    :cond_7
    :goto_2
    const/4 v7, 0x1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 793
    :cond_8
    const/4 v1, 0x0

    .line 794
    .local v1, "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    const/4 v5, 0x0

    .line 795
    .local v5, "zoneAScrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    const/4 v6, 0x0

    .line 797
    .local v6, "zoneBScrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    :try_start_2
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v7, v2}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getScreenInfo(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;

    move-result-object v1

    .line 798
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    const/4 v9, 0x1

    invoke-interface {v7, v9}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getScreenInfoForZone(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;

    move-result-object v5

    .line 799
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    const/4 v9, 0x2

    invoke-interface {v7, v9}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getScreenInfoForZone(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 805
    if-eqz v1, :cond_9

    if-eqz v5, :cond_9

    if-nez v6, :cond_b

    .line 806
    :cond_9
    :try_start_3
    sget-boolean v7, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v7, :cond_a

    .line 807
    const-string v7, "SplitRect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isWindowSplit something wrong.. one of the scrInfos are null scrInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", zoneA = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", zoneB = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_a
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 809
    const/4 v7, 0x0

    monitor-exit v8

    goto/16 :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 802
    const/4 v7, 0x0

    monitor-exit v8

    goto/16 :goto_0

    .line 812
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_b
    invoke-interface {v1}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenZone()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_d

    iget-object v7, v4, Lcom/android/server/wm/WindowStateEx;->mDisplayFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-interface {v6}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-eq v7, v9, :cond_d

    .line 814
    new-instance v3, Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowStateEx;->mContentFrame:Landroid/graphics/Rect;

    invoke-direct {v3, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 816
    .local v3, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {p3, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 823
    .end local v3    # "tmpRect":Landroid/graphics/Rect;
    :cond_c
    :goto_3
    sget-boolean v7, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v7, :cond_7

    .line 824
    const-string v7, "SplitRect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " check outDisplayFrame = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", displayFrm = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/wm/WindowStateEx;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", contentFrm = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/wm/WindowStateEx;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 818
    :cond_d
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateEx;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 819
    sget-boolean v7, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v7, :cond_c

    .line 820
    const-string v7, "SplitRect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "this is normal split window.. rect of policy = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rect of mFrame = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateEx;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 828
    .end local v1    # "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    .end local v5    # "zoneAScrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    .end local v6    # "zoneBScrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    :cond_e
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 829
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public modifyFramesForSplitWindow(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V
    .locals 27
    .param p1, "nativeWinState"    # Lcom/android/server/wm/WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "of"    # Landroid/graphics/Rect;
    .param p5, "cf"    # Landroid/graphics/Rect;
    .param p6, "vf"    # Landroid/graphics/Rect;
    .param p7, "dcf"    # Landroid/graphics/Rect;
    .param p8, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2102
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v23

    .line 2103
    .local v23, "windowState":Lcom/android/server/wm/WindowStateEx;
    if-nez v23, :cond_1

    .line 2448
    :cond_0
    :goto_0
    return-void

    .line 2107
    :cond_1
    const/16 v17, 0x0

    .line 2108
    .local v17, "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    const/16 v18, 0x0

    .line 2109
    .local v18, "screenZone":I
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    move/from16 v19, v0

    .line 2114
    .local v19, "stackId":I
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v24

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->height()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    const/4 v14, 0x1

    .line 2116
    .local v14, "orientation":I
    :goto_1
    const/4 v10, 0x0

    .line 2117
    .local v10, "isOverlaySubWin":Z
    const/4 v7, 0x0

    .line 2119
    .local v7, "isApplicationWindow":Z
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_2

    .line 2120
    const-string v24, "SplitLayout"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "modify layout.. stackId = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", rotation = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", mContainingFrm = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " of win "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_2
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x63

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_3

    .line 2126
    const/4 v7, 0x1

    .line 2127
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2128
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2130
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v24, v0

    const/high16 v25, 0x10000

    and-int v24, v24, v25

    if-nez v24, :cond_3

    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerServiceEx;->isInputMethodWindowVisibleOnDocked(Landroid/graphics/Rect;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 2131
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xf0

    move/from16 v24, v0

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 2132
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p6

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2136
    :cond_3
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x63

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_8

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v24, v0

    const/high16 v25, 0x10000

    and-int v24, v24, v25

    if-nez v24, :cond_5

    :cond_4
    invoke-virtual/range {p8 .. p8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "com.android.internal.app"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_8

    :cond_5
    const/4 v10, 0x1

    .line 2142
    :goto_2
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3e9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3ec

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 2144
    :cond_6
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 2145
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2114
    .end local v7    # "isApplicationWindow":Z
    .end local v10    # "isOverlaySubWin":Z
    .end local v14    # "orientation":I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 2136
    .restart local v7    # "isApplicationWindow":Z
    .restart local v10    # "isOverlaySubWin":Z
    .restart local v14    # "orientation":I
    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .line 2150
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-object/from16 v24, v0

    if-nez v24, :cond_a

    .line 2151
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getSplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 2155
    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getScreenInfo(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;

    move-result-object v17

    .line 2156
    invoke-interface/range {v17 .. v17}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenZone()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    .line 2166
    if-eqz v18, :cond_0

    .line 2171
    invoke-interface/range {v17 .. v17}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenState()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 2172
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateEx;->mIsTouchDisabled:Z

    move/from16 v24, v0

    if-nez v24, :cond_b

    .line 2173
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x10

    if-nez v24, :cond_b

    .line 2174
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x10

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2175
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateEx;->mIsTouchDisabled:Z

    .line 2197
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getLayoutModifiedWinByIME()Lcom/android/server/wm/WindowStateEx;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_11

    :cond_c
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xf0

    move/from16 v24, v0

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    const/4 v12, 0x1

    .line 2199
    .local v12, "needIMEResize":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mLastFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerServiceEx;->isInFocusChangingByTouch()Z

    move-result v24

    if-nez v24, :cond_12

    const/16 v24, 0x1

    :goto_5
    and-int v12, v12, v24

    .line 2209
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2210
    .local v6, "inputMethodRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerServiceEx;->isInputMethodWindowVisibleOnDocked(Landroid/graphics/Rect;)Z

    move-result v24

    and-int v12, v12, v24

    .line 2212
    if-eqz v12, :cond_d

    .line 2213
    const/high16 v20, 0x42400000    # 48.0f

    .line 2214
    .local v20, "topWhenIMEisOnInDp":F
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x43200000    # 160.0f

    div-float v3, v24, v25

    .line 2215
    .local v3, "densityRatio":F
    const/high16 v24, 0x42400000    # 48.0f

    mul-float v24, v24, v3

    move/from16 v0, v24

    float-to-int v13, v0

    .line 2216
    .local v13, "offsetTopWhenIMEisOnInPixel":I
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowStateEx;->getDecorFullscreenFrame()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 2218
    .local v21, "topmost":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_13

    if-eqz v7, :cond_13

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v25, v21, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_13

    const/4 v9, 0x1

    .line 2223
    .local v9, "isFullscreenWindow":Z
    :goto_6
    if-nez v14, :cond_16

    if-nez v9, :cond_16

    .line 2225
    if-eqz v10, :cond_14

    .line 2226
    const-string v24, "SplitIME"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ime.. resize.. set top as dcf.top "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    move-object/from16 v1, p6

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2228
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2246
    .end local v3    # "densityRatio":F
    .end local v9    # "isFullscreenWindow":Z
    .end local v13    # "offsetTopWhenIMEisOnInPixel":I
    .end local v20    # "topWhenIMEisOnInDp":F
    .end local v21    # "topmost":I
    :cond_d
    :goto_7
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3e8

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_20

    invoke-virtual/range {p8 .. p8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "PopupWindow"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_20

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_20

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateEx;->mLayoutAttached:Z

    move/from16 v24, v0

    if-eqz v24, :cond_20

    .line 2249
    const/4 v11, 0x0

    .line 2250
    .local v11, "menu_type":Z
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3e8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 2251
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_e

    .line 2252
    const-string v24, "SplitLayout"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "this is menu type popupWindow.. .. attached.. = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_e
    const/4 v11, 0x1

    .line 2262
    :cond_f
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2264
    packed-switch v14, :pswitch_data_0

    .line 2285
    :pswitch_0
    const/16 v24, 0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    .line 2286
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_0

    .line 2287
    const-string v24, "SplitLayout"

    const-string v25, "this is popupwindow .. portrait and zone A.. modify layout"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2157
    .end local v6    # "inputMethodRect":Landroid/graphics/Rect;
    .end local v11    # "menu_type":Z
    .end local v12    # "needIMEResize":Z
    :catch_0
    move-exception v4

    .line 2158
    .local v4, "e":Landroid/os/RemoteException;
    const-string v24, "SplitLayout"

    const-string v25, "RemoteException occured.. need policy service recovering"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerServiceEx;->recoverSplitPolicyService()V

    goto/16 :goto_0

    .line 2161
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 2163
    .local v4, "e":Ljava/lang/NullPointerException;
    goto/16 :goto_0

    .line 2188
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :cond_10
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateEx;->mIsTouchDisabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 2189
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x10

    if-eqz v24, :cond_b

    .line 2190
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, -0x11

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2191
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateEx;->mIsTouchDisabled:Z

    goto/16 :goto_3

    .line 2197
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 2199
    .restart local v12    # "needIMEResize":Z
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 2218
    .restart local v3    # "densityRatio":F
    .restart local v6    # "inputMethodRect":Landroid/graphics/Rect;
    .restart local v13    # "offsetTopWhenIMEisOnInPixel":I
    .restart local v20    # "topWhenIMEisOnInDp":F
    .restart local v21    # "topmost":I
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 2233
    .restart local v9    # "isFullscreenWindow":Z
    :cond_14
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_15

    .line 2234
    const-string v24, "SplitIME"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "this is focused.. upper side in portrait and need IME resize.. top is now = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_15
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x63

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_d

    .line 2237
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerServiceEx;->stackBoxModifiedWithIME(ZLcom/android/server/wm/WindowStateEx;)V

    goto/16 :goto_7

    .line 2241
    :cond_16
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerServiceEx;->stackBoxModifiedWithIME(ZLcom/android/server/wm/WindowStateEx;)V

    goto/16 :goto_7

    .line 2268
    .end local v3    # "densityRatio":F
    .end local v9    # "isFullscreenWindow":Z
    .end local v13    # "offsetTopWhenIMEisOnInPixel":I
    .end local v20    # "topWhenIMEisOnInDp":F
    .end local v21    # "topmost":I
    .restart local v11    # "menu_type":Z
    :pswitch_1
    const/16 v24, 0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 2269
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_0

    .line 2270
    const-string v24, "SplitLayout"

    const-string v25, "this is popupwindow .. landscape and zone A"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2271
    :cond_17
    const/16 v24, 0x2

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    .line 2272
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_18

    .line 2273
    const-string v24, "SplitLayout"

    const-string v25, "this is popupwindow .. landscape and zone B"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_18
    if-eqz v11, :cond_19

    .line 2275
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p6

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v0, v24

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v0, v24

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2276
    :cond_19
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1a

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    :goto_8
    move/from16 v0, v24

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2277
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1b

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    :goto_9
    move/from16 v0, v24

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 2276
    :cond_1a
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    goto :goto_8

    .line 2277
    :cond_1b
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    goto :goto_9

    .line 2279
    :cond_1c
    const-string v24, "SplitLayout"

    const-string v25, "Something wrong.. screen zone of windowState is not in normal status"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2288
    :cond_1d
    const/16 v24, 0x2

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    .line 2289
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_1e

    .line 2290
    const-string v24, "SplitLayout"

    const-string v25, "this is popupwindow .. portrait and zone B"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    :cond_1e
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v24

    if-eqz v24, :cond_0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "com.android.chrome"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-virtual/range {p8 .. p8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "SplitWindow"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3e8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2297
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, -0x31

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2298
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x50

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2300
    const/high16 v15, 0x41200000    # 10.0f

    .line 2301
    .local v15, "paddingInDp":F
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x43200000    # 160.0f

    div-float v3, v24, v25

    .line 2302
    .restart local v3    # "densityRatio":F
    const/high16 v24, 0x41200000    # 10.0f

    mul-float v24, v24, v3

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2303
    .local v16, "paddingInPixel":I
    rsub-int/lit8 v24, v16, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    .line 2306
    .end local v3    # "densityRatio":F
    .end local v15    # "paddingInDp":F
    .end local v16    # "paddingInPixel":I
    :cond_1f
    const-string v24, "SplitLayout"

    const-string v25, "Something wrong.. screen zone of windowState is not in normal status"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2313
    .end local v11    # "menu_type":Z
    :cond_20
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3eb

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_24

    .line 2314
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_21

    .line 2315
    const-string v24, "SplitLayout"

    const-string v25, "this is overflow menu popup.. .. modify uppper side window.. "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    :cond_21
    packed-switch v14, :pswitch_data_1

    .line 2335
    :pswitch_2
    const/16 v24, 0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_2d

    .line 2336
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_22

    .line 2337
    const-string v24, "SplitLayout"

    const-string v25, "this is menu window.. portrait and zone A.. modify layout"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :cond_22
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p6

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v24

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v24

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2347
    :cond_23
    :goto_a
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v24, v0

    const/high16 v25, 0x10000

    and-int v24, v24, v25

    if-eqz v24, :cond_0

    .line 2354
    :cond_24
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_25

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_25

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v24, v0

    const/high16 v25, 0x10000

    and-int v24, v24, v25

    if-nez v24, :cond_26

    :cond_25
    invoke-virtual/range {p8 .. p8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "com.android.internal.app"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_39

    .line 2357
    :cond_26
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_27

    .line 2358
    const-string v24, "SplitLayout"

    const-string v25, "dialog type application widget.. or internal activity like resolver or chooser"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    const-string v24, "SplitLayout"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "check current size of window.. pf = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", df = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", cf = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", vf = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", containing = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    :cond_27
    packed-switch v14, :pswitch_data_2

    .line 2403
    :pswitch_3
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 2404
    .local v5, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_34

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_34

    const/4 v8, 0x1

    .line 2407
    .local v8, "isBelowInputMethod":Z
    :goto_b
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_28

    .line 2408
    const-string v24, "SplitLayout"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "check frameHeight.. mContainingHeight = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", mRequestedHeight = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateEx;->mRequestedHeight:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    :cond_28
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "inputMethodRect":Landroid/graphics/Rect;
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2410
    .restart local v6    # "inputMethodRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerServiceEx;->isInputMethodWindowVisibleOnDocked(Landroid/graphics/Rect;)Z

    move-result v24

    if-eqz v24, :cond_35

    if-eqz v8, :cond_35

    .line 2411
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2412
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v25

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2413
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, -0x8

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2414
    const/16 v24, 0x11

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 2320
    .end local v5    # "height":I
    .end local v8    # "isBelowInputMethod":Z
    :pswitch_4
    const/16 v24, 0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_2a

    .line 2321
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_29

    .line 2322
    const-string v24, "SplitLayout"

    const-string v25, "this is menu window.. landscape and zone A"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_29
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p6

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v0, v24

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v0, v24

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_a

    .line 2324
    :cond_2a
    const/16 v24, 0x2

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_2c

    .line 2325
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_2b

    .line 2326
    const-string v24, "SplitLayout"

    const-string v25, "this is menu window.. landscape and zone B"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_2b
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p6

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v0, v24

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v0, v24

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_a

    .line 2329
    :cond_2c
    const-string v24, "SplitLayout"

    const-string v25, "Something wrong.. screen zone of windowState is not in normal status"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2339
    :cond_2d
    const/16 v24, 0x2

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_2e

    .line 2340
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_23

    .line 2341
    const-string v24, "SplitLayout"

    const-string v25, "this is menu window.. portrait and zone B"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2343
    :cond_2e
    const-string v24, "SplitLayout"

    const-string v25, "Something wrong.. screen zone of windowState is not in normal status"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2371
    :pswitch_5
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v22

    .line 2372
    .local v22, "width":I
    sget-boolean v24, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v24, :cond_2f

    .line 2373
    const-string v24, "SplitLayout"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "check frameWidth.. mContainingWidth = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", mRequestedWidth = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateEx;->mRequestedWidth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    :cond_2f
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateEx;->mRequestedWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v22

    if-le v0, v1, :cond_32

    .line 2375
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2376
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2377
    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2378
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2380
    const/16 v24, 0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_30

    .line 2381
    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2391
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerServiceEx;->isInputMethodWindowVisibleOnDocked(Landroid/graphics/Rect;)Z

    move-result v24

    if-eqz v24, :cond_33

    .line 2392
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2393
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 2382
    :cond_30
    const/16 v24, 0x2

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    .line 2383
    const/16 v24, 0x5

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_c

    .line 2385
    :cond_31
    const-string v24, "SplitLayout"

    const-string v25, "Something wrong.. screen zone of windowState is not in normal status"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 2387
    :cond_32
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, -0x8

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2388
    const/16 v24, 0x11

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_c

    .line 2394
    :cond_33
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 2395
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 2404
    .end local v22    # "width":I
    .restart local v5    # "height":I
    :cond_34
    const/4 v8, 0x0

    goto/16 :goto_b

    .line 2419
    .restart local v8    # "isBelowInputMethod":Z
    :cond_35
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateEx;->mRequestedHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v5, :cond_38

    .line 2420
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateEx;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2421
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2422
    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2423
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2425
    const/16 v24, 0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_36

    .line 2426
    const/16 v24, 0x30

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 2427
    :cond_36
    const/16 v24, 0x2

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_37

    .line 2428
    const/16 v24, 0x50

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 2430
    :cond_37
    const-string v24, "SplitLayout"

    const-string v25, "Something wrong.. screen zone of windowState is not in normal status"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2432
    :cond_38
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, -0x71

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2433
    const/16 v24, 0x11

    move/from16 v0, v24

    move-object/from16 v1, p8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 2443
    .end local v5    # "height":I
    .end local v8    # "isBelowInputMethod":Z
    :cond_39
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3e8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3ea

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3eb

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2316
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 2366
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method protected modifyParamsToSplitWindow(Lcom/android/server/wm/WindowState;)V
    .locals 10
    .param p1, "nativeWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v5, 0x0

    const v9, -0x840801

    const/high16 v8, -0x40000000    # -2.0f

    .line 1842
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v4

    .line 1843
    .local v4, "win":Lcom/android/server/wm/WindowStateEx;
    if-nez v4, :cond_1

    .line 1914
    :cond_0
    :goto_0
    return-void

    .line 1848
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    if-nez v6, :cond_5

    move v3, v5

    .line 1850
    .local v3, "stackId":I
    :goto_1
    const v0, 0x840800

    .line 1854
    .local v0, "forceSetFlags":I
    const/high16 v1, -0x40000000    # -2.0f

    .line 1856
    .local v1, "forceUnSetFlags":I
    const v2, -0x3ffffdf9    # -2.0001237f

    .line 1863
    .local v2, "ignoreSysFlags":I
    if-eqz v3, :cond_8

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateEx;->isSplitFullScreen()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1864
    sget-boolean v5, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v5, :cond_2

    .line 1865
    const-string v5, "SplitFlag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "relayout.. setflags.. flags = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sysflags = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    :cond_2
    iget v5, v4, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    if-nez v5, :cond_6

    .line 1869
    iget-object v5, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    .line 1877
    :cond_3
    :goto_2
    iget-object v5, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, 0x840800

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1878
    iget-object v5, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, 0x3fffffff    # 1.9999999f

    and-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1880
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerServiceEx;->isSplitSubWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1881
    iget-object v5, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1886
    :cond_4
    iget v5, v4, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    const v6, -0x3ffffdf9    # -2.0001237f

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    iget v5, v4, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    :goto_3
    iput v5, v4, Lcom/android/server/wm/WindowStateEx;->mSavedSysFlags:I

    .line 1888
    iget v5, v4, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    const v6, 0x3ffffdf8    # 1.999938f

    and-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    goto/16 :goto_0

    .line 1848
    .end local v0    # "forceSetFlags":I
    .end local v1    # "forceUnSetFlags":I
    .end local v2    # "ignoreSysFlags":I
    .end local v3    # "stackId":I
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    iget v3, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto/16 :goto_1

    .line 1871
    .restart local v0    # "forceSetFlags":I
    .restart local v1    # "forceUnSetFlags":I
    .restart local v2    # "ignoreSysFlags":I
    .restart local v3    # "stackId":I
    :cond_6
    iget-object v5, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v5, v9

    and-int/2addr v5, v8

    iget v6, v4, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    xor-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_3

    .line 1872
    const-string v5, "SplitFlagCheck"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "some flag changed.. mSavedWLFlags = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    xor-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", merge = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v7, v9

    and-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    iget-object v5, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v5, v9

    and-int/2addr v5, v8

    xor-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    goto/16 :goto_2

    .line 1886
    :cond_7
    iget v5, v4, Lcom/android/server/wm/WindowStateEx;->mSavedSysFlags:I

    goto :goto_3

    .line 1895
    :cond_8
    sget-boolean v6, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v6, :cond_9

    .line 1896
    const-string v6, "SplitFlag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "relayout.. reset flags.. flags = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sysflags = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " of win "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_9
    iget v6, v4, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    if-eqz v6, :cond_a

    .line 1900
    iget-object v6, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v8, v4, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    xor-int/lit8 v8, v8, -0x1

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1901
    iget-object v6, v4, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, -0x801

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1902
    iput v5, v4, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    .line 1904
    :cond_a
    iget v6, v4, Lcom/android/server/wm/WindowStateEx;->mSavedSysFlags:I

    if-eqz v6, :cond_0

    .line 1906
    iget v6, v4, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    iget v7, v4, Lcom/android/server/wm/WindowStateEx;->mSavedSysFlags:I

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    .line 1907
    iput v5, v4, Lcom/android/server/wm/WindowStateEx;->mSavedSysFlags:I

    goto/16 :goto_0
.end method

.method public modifyTouchableRegionOfSplitWindow(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;)V
    .locals 6
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1983
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v3

    .line 1985
    .local v3, "winEx":Lcom/android/server/wm/WindowStateEx;
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v4, :cond_3

    .line 1986
    const/4 v1, 0x0

    .line 1988
    .local v1, "isSplitMode":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v4}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1992
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1993
    .local v0, "attr":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateEx;->isSplitFullScreen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1994
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerServiceEx;->isSplitSubWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1995
    iget-object v4, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateEx;->getDecorFullscreenFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2025
    .end local v0    # "attr":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "isSplitMode":Z
    :goto_1
    return-void

    .line 1997
    .restart local v0    # "attr":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "isSplitMode":Z
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1998
    .local v2, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 1999
    iget-object v4, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 2002
    .end local v2    # "tmpRect":Landroid/graphics/Rect;
    :cond_1
    if-nez v1, :cond_2

    .line 2003
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2004
    .restart local v2    # "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 2005
    iget-object v4, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 2016
    .end local v2    # "tmpRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v4, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateEx;->getDecorFullscreenFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 2020
    .end local v0    # "attr":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "isSplitMode":Z
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2021
    .restart local v2    # "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 2022
    iget-object v4, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 1989
    .end local v2    # "tmpRect":Landroid/graphics/Rect;
    .restart local v1    # "isSplitMode":Z
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected notifyFocusChangedToSplitService()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1917
    const/4 v2, 0x0

    .line 1918
    .local v2, "win":Lcom/android/server/wm/WindowStateEx;
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1919
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v2

    .line 1920
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    if-eqz v2, :cond_3

    .line 1923
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-nez v5, :cond_1

    move v1, v4

    .line 1924
    .local v1, "stackId":I
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateEx;->isSplitFullScreen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1925
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v5, :cond_0

    .line 1926
    const/4 v0, 0x0

    .line 1928
    .local v0, "isSplitMode":Z
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->notifyScreenFocusChanged(II)V

    .line 1929
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v5}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitSubWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-lez v5, :cond_2

    move v0, v3

    .line 1935
    :goto_1
    if-eqz v0, :cond_0

    .line 1936
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerServiceEx;->isSplitSubWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1937
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerServiceEx;->reOrderSubWindowsAboveSplitWin(Z)Z

    .line 1945
    .end local v0    # "isSplitMode":Z
    .end local v1    # "stackId":I
    :cond_0
    :goto_2
    return-void

    .line 1920
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1923
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget v1, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    .restart local v0    # "isSplitMode":Z
    .restart local v1    # "stackId":I
    :cond_2
    move v0, v4

    .line 1929
    goto :goto_1

    .line 1943
    .end local v0    # "isSplitMode":Z
    .end local v1    # "stackId":I
    :cond_3
    const-string v3, "WindowManager"

    const-string v4, "WindowState is null. Can\'t call notifyScreenFocusChanged()."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1932
    .restart local v0    # "isSplitMode":Z
    .restart local v1    # "stackId":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    const/4 v1, 0x1

    .line 424
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 428
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mExtendedBinderInternal:Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mExtendedBinderInternal:Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerServiceEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 434
    :goto_0
    return v1

    .line 431
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method

.method protected reOrderSubWindowsAboveSplitWin(Z)Z
    .locals 10
    .param p1, "forceAssignLayers"    # Z

    .prologue
    const/4 v7, 0x1

    .line 997
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 998
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 999
    .local v0, "focusedWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_4

    .line 1001
    if-eqz v0, :cond_4

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 1003
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1004
    .local v4, "splitBarWinNum":I
    new-array v3, v4, [I

    .line 1005
    .local v3, "splitBarPos":[I
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getReferenceSplitSubWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 1006
    .local v2, "refSubWin":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_4

    if-lez v4, :cond_4

    .line 1007
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1008
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    aput v6, v3, v1

    .line 1009
    aget v9, v3, v1

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v9, v6}, Lcom/android/server/wm/WindowManagerServiceEx;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result v6

    aput v6, v3, v1

    .line 1010
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v2, v6}, Lcom/android/server/wm/WindowManagerServiceEx;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1013
    :cond_0
    sget-boolean v6, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v6, :cond_1

    .line 1014
    const-string v6, "SplitWindow"

    const-string v9, "app windows are rebuilt. change z-order of split bar again.... "

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_1
    if-eqz p1, :cond_2

    .line 1016
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1017
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerServiceEx;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 1022
    :cond_2
    :goto_1
    monitor-exit v8

    move v6, v7

    .line 1027
    .end local v1    # "i":I
    .end local v2    # "refSubWin":Lcom/android/server/wm/WindowState;
    .end local v3    # "splitBarPos":[I
    .end local v4    # "splitBarWinNum":I
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :goto_2
    return v6

    .line 1019
    .restart local v1    # "i":I
    .restart local v2    # "refSubWin":Lcom/android/server/wm/WindowState;
    .restart local v3    # "splitBarPos":[I
    .restart local v4    # "splitBarWinNum":I
    .restart local v5    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerServiceEx;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    goto :goto_1

    .line 1026
    .end local v0    # "focusedWin":Lcom/android/server/wm/WindowState;
    .end local v1    # "i":I
    .end local v2    # "refSubWin":Lcom/android/server/wm/WindowState;
    .end local v3    # "splitBarPos":[I
    .end local v4    # "splitBarWinNum":I
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0    # "focusedWin":Lcom/android/server/wm/WindowState;
    :cond_4
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public readForceAllowPopupListLPr()V
    .locals 14

    .prologue
    .line 2557
    const/4 v7, 0x0

    .line 2558
    .local v7, "str":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "system"

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2560
    .local v2, "dataSystemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v11, "allow-popup.xml"

    invoke-direct {v0, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2561
    .local v0, "allowPopupListFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v11, "allow-popup-backup.xml"

    invoke-direct {v1, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2562
    .local v1, "backupAllowPopupListFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2564
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2565
    .end local v7    # "str":Ljava/io/FileInputStream;
    .local v8, "str":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2566
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 2573
    :cond_0
    :goto_0
    if-nez v8, :cond_d

    .line 2574
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v11

    if-nez v11, :cond_4

    .line 2617
    if-eqz v8, :cond_1

    .line 2618
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    move-object v7, v8

    .line 2624
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    return-void

    .line 2568
    :catch_0
    move-exception v3

    .line 2569
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    move-object v8, v7

    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    goto :goto_0

    .line 2620
    :catch_1
    move-exception v3

    .line 2621
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2577
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_4
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2579
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    :goto_4
    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 2580
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v6, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2583
    :cond_5
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_6

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 2586
    :cond_6
    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    .line 2587
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2617
    if-eqz v7, :cond_2

    .line 2618
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 2620
    :catch_2
    move-exception v3

    .line 2621
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2590
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_7
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 2591
    .local v4, "outerDepth":I
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    monitor-enter v12
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2593
    :cond_8
    :goto_5
    :try_start_8
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_b

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v4, :cond_b

    .line 2594
    :cond_9
    const/4 v11, 0x3

    if-eq v10, v11, :cond_8

    const/4 v11, 0x4

    if-eq v10, v11, :cond_8

    .line 2597
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2598
    .local v9, "tagName":Ljava/lang/String;
    const-string v11, "package"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2599
    const/4 v11, 0x0

    const-string v13, "name"

    invoke-interface {v6, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2601
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 2602
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    invoke-virtual {v11, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2608
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v9    # "tagName":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v11
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2611
    .end local v4    # "outerDepth":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "type":I
    :catch_3
    move-exception v3

    .line 2612
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_a
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2617
    if-eqz v7, :cond_2

    .line 2618
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_2

    .line 2620
    :catch_4
    move-exception v3

    .line 2621
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2605
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "outerDepth":I
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "tagName":Ljava/lang/String;
    .restart local v10    # "type":I
    :cond_a
    :try_start_c
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 2608
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_b
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2609
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 2617
    if-eqz v7, :cond_2

    .line 2618
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_2

    .line 2620
    :catch_5
    move-exception v3

    .line 2621
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 2613
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "outerDepth":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "str":Ljava/io/FileInputStream;
    .end local v10    # "type":I
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v7, v8

    .line 2614
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    :goto_7
    :try_start_f
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 2617
    if-eqz v7, :cond_2

    .line 2618
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_2

    .line 2620
    :catch_7
    move-exception v3

    .line 2621
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 2616
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .line 2617
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    :goto_8
    if-eqz v7, :cond_c

    .line 2618
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 2622
    :cond_c
    :goto_9
    throw v11

    .line 2620
    :catch_8
    move-exception v3

    .line 2621
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 2616
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v11

    goto :goto_8

    .line 2613
    :catch_9
    move-exception v3

    goto :goto_7

    .line 2611
    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto :goto_6

    .line 2568
    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catch_b
    move-exception v3

    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :cond_d
    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method

.method protected rebuildWindowsIfNeededWhenSplitLocked(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "lastFocus"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x0

    .line 2451
    const/4 v0, 0x0

    .line 2453
    .local v0, "isSplitMode":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v2}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_2

    const/4 v0, 0x1

    .line 2458
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LG_AppDrawer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2459
    sget-boolean v2, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v2, :cond_0

    .line 2460
    const-string v2, "SplitWindow"

    const-string v3, "since current focus is null in split mode.. rebuild app windows again.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->rebuildAppWindowListLocked()V

    .line 2462
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowManagerServiceEx;->updateFocusedWindowLocked(IZ)Z

    .line 2464
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 2453
    goto :goto_0

    .line 2456
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public recoverSplitPolicyService()V
    .locals 1

    .prologue
    .line 1607
    invoke-static {}, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->recoverService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 1608
    return-void
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .locals 6
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "seq"    # I
    .param p4, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "requestedWidth"    # I
    .param p6, "requestedHeight"    # I
    .param p7, "viewVisibility"    # I
    .param p8, "flags"    # I
    .param p9, "outFrame"    # Landroid/graphics/Rect;
    .param p10, "outOverscanInsets"    # Landroid/graphics/Rect;
    .param p11, "outContentInsets"    # Landroid/graphics/Rect;
    .param p12, "outVisibleInsets"    # Landroid/graphics/Rect;
    .param p13, "outStableInsets"    # Landroid/graphics/Rect;
    .param p14, "outConfig"    # Landroid/content/res/Configuration;
    .param p15, "outSurface"    # Landroid/view/Surface;

    .prologue
    .line 624
    if-eqz p4, :cond_0

    .line 625
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->isMdmOn:Z

    if-eqz v3, :cond_0

    .line 626
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    iget-object v4, p4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 627
    iget v3, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 628
    iget v3, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x80001

    and-int/2addr v3, v4

    iput v3, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 629
    const-string v3, "DISA_WM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Blocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'s popup !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, "mSystemUiVisibilityLG":I
    const/4 v3, 0x0

    :try_start_0
    invoke-super {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 640
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_2

    .line 641
    const/4 v1, 0x0

    monitor-exit v4

    .line 659
    :cond_1
    :goto_0
    return v1

    .line 643
    :cond_2
    if-eqz p4, :cond_3

    .line 644
    iget v0, p4, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibilityLG:I

    .line 646
    :cond_3
    if-eqz p4, :cond_4

    iget v3, v2, Lcom/android/server/wm/WindowState;->mSeq:I

    if-ne p3, v3, :cond_4

    .line 647
    iput v0, v2, Lcom/android/server/wm/WindowState;->mSystemUiVisibilityLG:I

    .line 649
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    invoke-super/range {p0 .. p15}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v1

    .line 656
    .local v1, "res":I
    sget v3, Lcom/android/server/wm/WindowManagerServiceEx;->m_ExtDisplayNum:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 657
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 649
    .end local v1    # "res":I
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public removeTaskFromStackIfNeeded(III)V
    .locals 7
    .param p1, "taskId"    # I
    .param p2, "oldStackId"    # I
    .param p3, "newStackId"    # I

    .prologue
    .line 1169
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1170
    :try_start_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v3, :cond_0

    .line 1171
    const-string v3, "SplitTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") of stack("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") might be moved to the another stack("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") remove task if needed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1175
    .local v1, "oldStack":Lcom/android/server/wm/TaskStack;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1176
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 1178
    .local v0, "newStack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eq p2, p3, :cond_1

    .line 1179
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1180
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    .line 1183
    :cond_1
    monitor-exit v4

    .line 1184
    return-void

    .line 1183
    .end local v0    # "newStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "oldStack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 609
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 610
    sget v0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 613
    :cond_0
    return-void
.end method

.method protected restoreTaskOfTaskIdFromTemparary(I)Lcom/android/server/wm/Task;
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 2519
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mTempararyArrayTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 2520
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 2521
    const-string v1, "SplitTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task of taskId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") restored from temp array"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2523
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mTempararyArrayTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2526
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :goto_0
    return-object v0

    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendSplitWindowFocusChanged(Landroid/os/IBinder;Z)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "getFocus"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getSplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1368
    const-string v6, "SplitTouch"

    const-string v10, "SplitWindowManagerPolicy is not created yet.. this is not possible.. check service routine."

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_0
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 1376
    if-nez p1, :cond_4

    move-object v4, v7

    .line 1377
    .local v4, "win":Lcom/android/server/wm/WindowStateEx;
    :goto_0
    const/4 v5, 0x0

    .line 1379
    .local v5, "wtoken":Lcom/android/server/wm/WindowToken;
    const/4 v0, 0x0

    .line 1380
    .local v0, "awtoken":Lcom/android/server/wm/AppWindowTokenEx;
    if-eqz v4, :cond_1

    .line 1381
    :try_start_0
    iget-object v5, v4, Lcom/android/server/wm/WindowStateEx;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1382
    if-nez v5, :cond_5

    move-object v0, v7

    .line 1385
    :cond_1
    :goto_1
    if-eqz v0, :cond_a

    .line 1386
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mTaskIdToTask:Landroid/util/SparseArray;

    iget v7, v0, Lcom/android/server/wm/AppWindowTokenEx;->groupId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1387
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v6, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 1389
    .local v2, "stackId":I
    if-eqz v2, :cond_3

    iget-boolean v6, v0, Lcom/android/server/wm/AppWindowTokenEx;->isSplitFullScreen:Z

    if-nez v6, :cond_3

    .line 1390
    if-nez p2, :cond_7

    .line 1392
    iget v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    move v6, v8

    :goto_2
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsWaitingFocusChangeWhenSplit:Z

    .line 1393
    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsWaitingFocusChangeWhenSplit:Z

    if-nez v6, :cond_3

    .line 1394
    sget-boolean v6, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v6, :cond_2

    .line 1395
    const-string v6, "SplitTouch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ready to move task to top case 1.. stackId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsFocusChangingByTouch:Z

    .line 1397
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x63

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1398
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x63

    const/4 v9, 0x2

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v11}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1436
    .end local v2    # "stackId":I
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_3
    :goto_3
    monitor-exit v10

    .line 1437
    return-void

    .line 1376
    .end local v0    # "awtoken":Lcom/android/server/wm/AppWindowTokenEx;
    .end local v4    # "win":Lcom/android/server/wm/WindowStateEx;
    .end local v5    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v4

    goto :goto_0

    .line 1382
    .restart local v0    # "awtoken":Lcom/android/server/wm/AppWindowTokenEx;
    .restart local v4    # "win":Lcom/android/server/wm/WindowStateEx;
    .restart local v5    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_5
    iget-object v6, v5, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    check-cast v6, Lcom/android/server/wm/AppWindowTokenEx;

    move-object v0, v6

    goto :goto_1

    .restart local v2    # "stackId":I
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    :cond_6
    move v6, v9

    .line 1392
    goto :goto_2

    .line 1401
    :cond_7
    if-eqz v2, :cond_8

    .line 1402
    iput v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    .line 1403
    :cond_8
    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsWaitingFocusChangeWhenSplit:Z

    if-eqz v6, :cond_3

    .line 1404
    sget-boolean v6, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v6, :cond_9

    .line 1405
    const-string v6, "SplitTouch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ready to move task to top case 2.. stackId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_9
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsFocusChangingByTouch:Z

    .line 1407
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x63

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1408
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x63

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 1436
    .end local v0    # "awtoken":Lcom/android/server/wm/AppWindowTokenEx;
    .end local v2    # "stackId":I
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "win":Lcom/android/server/wm/WindowStateEx;
    .end local v5    # "wtoken":Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v6

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1414
    .restart local v0    # "awtoken":Lcom/android/server/wm/AppWindowTokenEx;
    .restart local v4    # "win":Lcom/android/server/wm/WindowStateEx;
    .restart local v5    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_a
    if-eqz p2, :cond_3

    .line 1415
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getStackIdOfNotFocusedWin()I

    move-result v1

    .line 1417
    .local v1, "notFocusedStackId":I
    sget-boolean v6, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v6, :cond_b

    .line 1418
    const-string v6, "SplitTouch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "awtoken is null... check notfocusedStackId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", and mFocusedStackId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_b
    if-eqz v1, :cond_c

    .line 1420
    iput v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    .line 1421
    :cond_c
    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsWaitingFocusChangeWhenSplit:Z

    if-eqz v6, :cond_e

    .line 1422
    sget-boolean v6, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v6, :cond_d

    .line 1423
    const-string v6, "SplitTouch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ready to move task to top case 2.. stackId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mFocusedStackId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_d
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsFocusChangingByTouch:Z

    .line 1425
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x63

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1426
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x63

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 1428
    :cond_e
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d2

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Floating"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DockView"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1432
    :cond_f
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mIsWaitingFocusChangeWhenSplit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method public setFocusedAsStackId(I)Z
    .locals 7
    .param p1, "stackId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1456
    if-nez p1, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return v2

    .line 1459
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceEx;->getTopTokenOfStackId(I)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1460
    .local v0, "awtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 1462
    :try_start_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v3, :cond_2

    .line 1463
    const-string v3, "SplitWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFocusedAsStackId.. Task of stackId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " would be moved to Front"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mActivityManager:Landroid/app/IActivityManager;

    iget v4, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1465
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v3, :cond_0

    .line 1466
    iput p1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mStackIdofTopSplitApp:I

    .line 1467
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v3, p1}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->notifyScreenFocusChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    const/4 v2, 0x1

    goto :goto_0

    .line 1470
    :catch_0
    move-exception v1

    .line 1471
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "mActivityManager biner proxy is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setGlobalSplitLayoutChangedNeeded(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 2490
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitLayoutChangeNeeded:Z

    .line 2491
    return-void
.end method

.method protected setSplitBoundsForInitialWindow(Lcom/android/server/wm/WindowState;)V
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1669
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v4

    .line 1670
    .local v4, "winEx":Lcom/android/server/wm/WindowStateEx;
    if-nez v4, :cond_1

    .line 1701
    :cond_0
    :goto_0
    return-void

    .line 1674
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 1675
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_0

    .line 1679
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateEx;->isSplitFullScreen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1683
    const/4 v1, 0x0

    .line 1684
    .local v1, "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    const/4 v2, 0x0

    .line 1687
    .local v2, "screenZone":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    iget v6, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-interface {v5, v6}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getScreenInfo(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;

    move-result-object v1

    .line 1688
    invoke-interface {v1}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenZone()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1698
    if-nez v2, :cond_0

    goto :goto_0

    .line 1689
    :catch_0
    move-exception v0

    .line 1690
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "SplitLayout"

    const-string v6, "RemoteException occured.. need policy service recovery.. split rect can not be preserved"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->recoverSplitPolicyService()V

    goto :goto_0

    .line 1693
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1694
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "SplitLayout"

    const-string v6, "NullPointerException occured.. SplitWindowService is not available not..  split rect can not be preserved"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSplitFullscreenToWindow(Landroid/view/IApplicationToken;Z)V
    .locals 21
    .param p1, "token"    # Landroid/view/IApplicationToken;
    .param p2, "isFullscreen"    # Z

    .prologue
    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1188
    const/4 v9, 0x0

    .line 1189
    .local v9, "relayoutNeeded":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowToken;

    .line 1191
    .local v16, "wtoken":Lcom/android/server/wm/WindowToken;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1192
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    check-cast v3, Lcom/android/server/wm/AppWindowTokenEx;

    .line 1194
    .local v3, "awtoken":Lcom/android/server/wm/AppWindowTokenEx;
    move/from16 v0, p2

    iput-boolean v0, v3, Lcom/android/server/wm/AppWindowTokenEx;->isSplitFullScreen:Z

    .line 1195
    const-string v17, "SplitWindow"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setSplitFullscreenToWindow.. wtoken = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getSplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v17

    if-nez v17, :cond_0

    .line 1198
    const-string v17, "SplitWindow"

    const-string v19, "SplitWindowManagerPolicy is not created yet.. this is not possible.. check service routine."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_1

    .line 1202
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v15

    .line 1203
    .local v15, "win":Lcom/android/server/wm/WindowStateEx;
    if-nez v15, :cond_4

    .line 1354
    .end local v15    # "win":Lcom/android/server/wm/WindowStateEx;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerServiceEx;->updateSubWinAsSplitLocked()V

    .line 1357
    .end local v3    # "awtoken":Lcom/android/server/wm/AppWindowTokenEx;
    .end local v7    # "i":I
    :cond_2
    if-eqz v9, :cond_3

    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerServiceEx;->requestTraversal()V

    .line 1360
    :cond_3
    monitor-exit v18

    .line 1361
    :goto_1
    return-void

    .line 1205
    .restart local v3    # "awtoken":Lcom/android/server/wm/AppWindowTokenEx;
    .restart local v7    # "i":I
    .restart local v15    # "win":Lcom/android/server/wm/WindowStateEx;
    :cond_4
    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v17

    if-nez v17, :cond_6

    const/4 v13, 0x0

    .line 1207
    .local v13, "stackId":I
    :goto_2
    if-eqz v15, :cond_c

    .line 1208
    sget-boolean v17, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v17, :cond_5

    .line 1209
    const-string v17, "SplitWindow"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "is about to set window flags in setSplitFullscreenToWindow.. token = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", stackId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", isFullscreen = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_5
    move/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/android/server/wm/WindowStateEx;->setSplitFullscreen(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    const/4 v10, 0x0

    .line 1214
    .local v10, "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    const/4 v11, 0x0

    .line 1217
    .local v11, "screenZone":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getScreenInfo(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;

    move-result-object v10

    .line 1218
    invoke-interface {v10}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenZone()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    .line 1229
    const v5, 0x840800

    .line 1233
    .local v5, "forceSetFlags":I
    const/high16 v6, -0x40000000    # -2.0f

    .line 1235
    .local v6, "forceUnSetFlags":I
    if-eqz v13, :cond_10

    if-nez p2, :cond_10

    .line 1236
    const/16 v17, 0x1

    :try_start_2
    move/from16 v0, v17

    iput-boolean v0, v15, Lcom/android/server/wm/WindowStateEx;->mSplitable:Z

    .line 1237
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v3, Lcom/android/server/wm/AppWindowTokenEx;->mWasSplited:Z

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceEx;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/TaskStack;

    .line 1243
    .local v12, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v12, :cond_7

    .line 1244
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "resizeStack: stackId "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not found."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1360
    .end local v3    # "awtoken":Lcom/android/server/wm/AppWindowTokenEx;
    .end local v5    # "forceSetFlags":I
    .end local v6    # "forceUnSetFlags":I
    .end local v7    # "i":I
    .end local v10    # "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    .end local v11    # "screenZone":I
    .end local v12    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v13    # "stackId":I
    .end local v15    # "win":Lcom/android/server/wm/WindowStateEx;
    .end local v16    # "wtoken":Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 1205
    .restart local v3    # "awtoken":Lcom/android/server/wm/AppWindowTokenEx;
    .restart local v7    # "i":I
    .restart local v15    # "win":Lcom/android/server/wm/WindowStateEx;
    .restart local v16    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_6
    :try_start_3
    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v17

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto/16 :goto_2

    .line 1219
    .restart local v10    # "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    .restart local v11    # "screenZone":I
    .restart local v13    # "stackId":I
    :catch_0
    move-exception v4

    .line 1220
    .local v4, "e":Landroid/os/RemoteException;
    const-string v17, "SplitLayout"

    const-string v19, "RemoteException occured.. need policy service recovery.. split rect can not be preserved"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerServiceEx;->recoverSplitPolicyService()V

    .line 1222
    monitor-exit v18

    goto/16 :goto_1

    .line 1223
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1224
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v17, "SplitLayout"

    const-string v19, "NullPointerException occured.. SplitWindowService is not available not..  split rect can not be preserved"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    monitor-exit v18

    goto/16 :goto_1

    .line 1247
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "forceSetFlags":I
    .restart local v6    # "forceUnSetFlags":I
    .restart local v12    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_7
    invoke-interface {v10}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1248
    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 1249
    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v17

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1253
    :cond_8
    sget-boolean v17, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v17, :cond_9

    .line 1254
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_d

    .line 1255
    const-string v17, "SplitTemp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setBounds for screenZone A rect = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_9
    :goto_3
    sget-boolean v17, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v17, :cond_a

    .line 1262
    const-string v17, "SplitFlag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setSplitFullscreen.. setfullscreen flags = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", sysflags = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v15, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " of win "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_a
    iget v0, v15, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    move/from16 v17, v0

    if-nez v17, :cond_e

    .line 1267
    iget-object v0, v15, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    xor-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    .line 1272
    :goto_4
    iget-object v0, v15, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    const v20, 0x840800

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1273
    iget-object v0, v15, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    const v20, 0x3fffffff    # 1.9999999f

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1275
    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerServiceEx;->isSplitSubWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 1276
    iget-object v0, v15, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1280
    :cond_b
    const v8, -0x3ffffff9    # -2.0000017f

    .line 1290
    .local v8, "ignoreSysFlags":I
    iget v0, v15, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    move/from16 v17, v0

    const v19, 0x3ffffff8    # 1.999999f

    and-int v17, v17, v19

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    .line 1297
    const/4 v9, 0x1

    .line 1201
    .end local v5    # "forceSetFlags":I
    .end local v6    # "forceUnSetFlags":I
    .end local v8    # "ignoreSysFlags":I
    .end local v10    # "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    .end local v11    # "screenZone":I
    .end local v12    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_c
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1256
    .restart local v5    # "forceSetFlags":I
    .restart local v6    # "forceUnSetFlags":I
    .restart local v10    # "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    .restart local v11    # "screenZone":I
    .restart local v12    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_d
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v11, v0, :cond_9

    .line 1257
    const-string v17, "SplitTemp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setBounds for screenZone B rect = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1269
    :cond_e
    iget v0, v15, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    move/from16 v17, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    and-int v17, v17, v19

    if-eqz v17, :cond_f

    iget-object v0, v15, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    xor-int/lit8 v17, v17, -0x1

    :goto_6
    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    goto/16 :goto_4

    :cond_f
    iget v0, v15, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    move/from16 v17, v0

    goto :goto_6

    .line 1301
    .end local v12    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_10
    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v17

    if-nez v17, :cond_1a

    const/4 v12, 0x0

    .line 1302
    .restart local v12    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_7
    if-eqz v12, :cond_12

    .line 1303
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 1304
    .local v14, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1305
    sget-boolean v17, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v17, :cond_11

    .line 1306
    const-string v17, "SplitWindow"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setSplitFullscreen.. win("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") is about to set as fullscreen.. logical display Rect = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_11
    invoke-virtual {v12, v14}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1309
    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 1310
    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v17

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1315
    .end local v14    # "tmpRect":Landroid/graphics/Rect;
    :cond_12
    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1316
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz v2, :cond_15

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v17, v0

    if-eqz v17, :cond_15

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v19, 0x7cf

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_15

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v19, "com.muvee"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_15

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v17, v0

    const/high16 v19, 0x10000

    and-int v17, v17, v19

    if-eqz v17, :cond_13

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v17, v0

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    :cond_13
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v19, "com.android.internal.app"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 1322
    :cond_14
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1330
    :cond_15
    iget v0, v15, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 1332
    iget-object v0, v15, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    iget v0, v15, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    move/from16 v20, v0

    xor-int/lit8 v20, v20, -0x1

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1334
    iget-object v0, v15, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, -0x801

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1336
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/wm/WindowStateEx;->mSavedWLFlags:I

    .line 1338
    :cond_16
    iget v0, v15, Lcom/android/server/wm/WindowStateEx;->mSavedSysFlags:I

    move/from16 v17, v0

    if-eqz v17, :cond_17

    .line 1340
    iget v0, v15, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    move/from16 v17, v0

    iget v0, v15, Lcom/android/server/wm/WindowStateEx;->mSavedSysFlags:I

    move/from16 v19, v0

    or-int v17, v17, v19

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    .line 1341
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/server/wm/WindowStateEx;->mSavedSysFlags:I

    .line 1343
    :cond_17
    if-eqz v2, :cond_18

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x10

    if-eqz v17, :cond_18

    .line 1344
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x11

    move/from16 v0, v17

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1346
    :cond_18
    sget-boolean v17, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v17, :cond_19

    .line 1347
    const-string v17, "SplitFlag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setSplitFullscreen.. final flags = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Lcom/android/server/wm/WindowStateEx;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", sysflags = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v15, Lcom/android/server/wm/WindowStateEx;->mSystemUiVisibility:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_19
    const/4 v9, 0x1

    .line 1350
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitLayoutChangeNeeded:Z

    goto/16 :goto_5

    .line 1301
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1a
    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateEx;->getStack()Lcom/android/server/wm/TaskStack;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    goto/16 :goto_7
.end method

.method protected setSplitLayoutChanged(Lcom/android/server/wm/WindowState;Z)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "set"    # Z

    .prologue
    .line 2479
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v0

    .line 2480
    .local v0, "w":Lcom/android/server/wm/WindowStateEx;
    if-eqz v0, :cond_0

    .line 2481
    iput-boolean p2, v0, Lcom/android/server/wm/WindowStateEx;->mSplitLayoutChanged:Z

    .line 2483
    :cond_0
    return-void
.end method

.method public skipAnimationNeededWhenSplit(Lcom/android/server/wm/TaskStack;)Z
    .locals 4
    .param p1, "taskStack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 2028
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v2, :cond_0

    .line 2029
    const/4 v0, 0x0

    .line 2032
    .local v0, "isSplitMode":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v2}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v0

    .line 2033
    if-eqz v0, :cond_0

    .line 2034
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    iget v3, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-interface {v2, v3}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getScreenInfo(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;

    move-result-object v1

    .line 2035
    .local v1, "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    invoke-interface {v1}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenZone()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2036
    const/4 v2, 0x1

    .line 2042
    .end local v0    # "isSplitMode":Z
    .end local v1    # "scrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    :goto_0
    return v2

    .line 2039
    .restart local v0    # "isSplitMode":Z
    :catch_0
    move-exception v2

    .line 2042
    .end local v0    # "isSplitMode":Z
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2038
    .restart local v0    # "isSplitMode":Z
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public stackBoxModifiedWithIME(ZLcom/android/server/wm/WindowStateEx;)V
    .locals 3
    .param p1, "resized"    # Z
    .param p2, "changedWin"    # Lcom/android/server/wm/WindowStateEx;

    .prologue
    .line 887
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mLayoutResizeWithIME:Z

    .line 889
    if-eqz p1, :cond_1

    .line 890
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mLayoutModifiedWinByIME:Lcom/android/server/wm/WindowStateEx;

    .line 894
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v0, :cond_0

    .line 895
    const-string v0, "SplitWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set modify layout with IME.. as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    return-void

    .line 892
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mLayoutModifiedWinByIME:Lcom/android/server/wm/WindowStateEx;

    goto :goto_0
.end method

.method public tempararyStoreTaskToAddAgain(I)Z
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 2509
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 2510
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 2511
    const-string v1, "SplitTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task of taskId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") stored in temp array"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mTempararyArrayTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2513
    const/4 v1, 0x1

    .line 2515
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSplitWindowLayout()V
    .locals 5

    .prologue
    .line 1440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1442
    .local v0, "origId":J
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerServiceEx;->CAPP_SPLITWINDOW:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v2}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1443
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1444
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitLayoutChangeNeeded:Z

    .line 1445
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1446
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->performLayoutAndPlaceSurfacesLocked()V

    .line 1447
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1448
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->sendNewConfiguration()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1453
    :goto_0
    return-void

    .line 1447
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1449
    :catch_0
    move-exception v2

    .line 1451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method updateStatusBarVisibilityLocked(I)V
    .locals 9
    .param p1, "visibility"    # I

    .prologue
    .line 720
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v7, p1}, Lcom/android/server/input/InputManagerService;->setSystemUiVisibility(I)V

    .line 721
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 722
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 723
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 724
    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 725
    .local v6, "ws":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_1

    const-string v7, "com.lge.findlostphone"

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 723
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 729
    :cond_1
    :try_start_0
    iget v1, v6, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 730
    .local v1, "curValue":I
    xor-int v2, v1, p1

    .line 733
    .local v2, "diff":I
    and-int/lit8 v2, v2, 0x7

    .line 735
    xor-int/lit8 v7, p1, -0x1

    and-int/2addr v2, v7

    .line 736
    xor-int/lit8 v7, v2, -0x1

    and-int/2addr v7, v1

    and-int v8, p1, v2

    or-int v4, v7, v8

    .line 737
    .local v4, "newValue":I
    if-eq v4, v1, :cond_2

    .line 738
    iget v7, v6, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 739
    iput v4, v6, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 741
    :cond_2
    if-ne v4, v1, :cond_3

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v7, v7, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v7, :cond_0

    .line 742
    :cond_3
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v8, v6, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v7, v8, p1, v4, v2}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 745
    .end local v1    # "curValue":I
    .end local v2    # "diff":I
    .end local v4    # "newValue":I
    :catch_0
    move-exception v7

    goto :goto_1

    .line 749
    .end local v6    # "ws":Lcom/android/server/wm/WindowState;
    :cond_4
    return-void
.end method

.method protected updateSubWinAsSplitLocked()V
    .locals 9

    .prologue
    .line 1126
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1127
    .local v2, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1128
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 1129
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_1

    const/4 v7, 0x0

    .line 1130
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    :goto_1
    if-eqz v7, :cond_2

    .line 1131
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 1132
    .local v3, "pos":I
    :goto_2
    if-ltz v3, :cond_2

    .line 1133
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 1135
    .local v5, "win":Lcom/android/server/wm/WindowState;
    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_0

    .line 1136
    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v6

    .line 1137
    .local v6, "winEx":Lcom/android/server/wm/WindowStateEx;
    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v4

    .line 1138
    .local v4, "tmpWin":Lcom/android/server/wm/WindowStateEx;
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 1139
    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateEx;->isSplitFullScreen()Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowStateEx;->setSplitFullscreen(Z)V

    .line 1142
    .end local v4    # "tmpWin":Lcom/android/server/wm/WindowStateEx;
    .end local v6    # "winEx":Lcom/android/server/wm/WindowStateEx;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 1143
    goto :goto_2

    .line 1129
    .end local v3    # "pos":I
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v7

    goto :goto_1

    .line 1127
    .restart local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1146
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    return-void
.end method

.method protected validateSplitUiVisibility()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 903
    const/4 v3, 0x0

    .line 905
    .local v3, "isSplitMode":Z
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-nez v6, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->getSplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 910
    :cond_0
    :try_start_0
    sget-boolean v6, Lcom/android/server/wm/WindowManagerServiceEx;->CAPP_SPLITWINDOW:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceEx;->isSplitAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v6}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-lez v6, :cond_3

    move v3, v7

    .line 917
    :goto_0
    const/4 v5, 0x0

    .line 918
    .local v5, "splitBarWin":Lcom/android/server/wm/WindowStateEx;
    const/4 v4, 0x0

    .line 920
    .local v4, "splitBarHoldWin":Lcom/android/server/wm/WindowStateEx;
    if-eqz v3, :cond_a

    .line 921
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 922
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowStateEx;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowStateEx;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "LG_splitbutton"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 923
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "splitBarWin":Lcom/android/server/wm/WindowStateEx;
    check-cast v5, Lcom/android/server/wm/WindowStateEx;

    .line 925
    .restart local v5    # "splitBarWin":Lcom/android/server/wm/WindowStateEx;
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowStateEx;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowStateEx;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateEx;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "LG_splitbutton_hold"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 926
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitUIWinList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "splitBarHoldWin":Lcom/android/server/wm/WindowStateEx;
    check-cast v4, Lcom/android/server/wm/WindowStateEx;

    .line 921
    .restart local v4    # "splitBarHoldWin":Lcom/android/server/wm/WindowStateEx;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v4    # "splitBarHoldWin":Lcom/android/server/wm/WindowStateEx;
    .end local v5    # "splitBarWin":Lcom/android/server/wm/WindowStateEx;
    :cond_3
    move v3, v8

    .line 910
    goto :goto_0

    .line 931
    .restart local v1    # "i":I
    .restart local v4    # "splitBarHoldWin":Lcom/android/server/wm/WindowStateEx;
    .restart local v5    # "splitBarWin":Lcom/android/server/wm/WindowStateEx;
    :cond_4
    if-eqz v5, :cond_8

    .line 958
    const/4 v2, 0x0

    .line 959
    .local v2, "isIMEVisible":Z
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerServiceEx;->castingToWindowStateEx(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowStateEx;

    move-result-object v0

    .line 960
    .local v0, "currentFocusWin":Lcom/android/server/wm/WindowStateEx;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateEx;->isSplitFullScreen()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_7

    .line 964
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x63

    if-gt v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-gtz v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerServiceEx;->isSplitSubWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 968
    :cond_6
    const/4 v2, 0x1

    .line 971
    :cond_7
    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mNeededResizeWithIME:Z

    if-nez v6, :cond_9

    if-eqz v2, :cond_9

    .line 972
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mNeededResizeWithIME:Z

    .line 973
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->setShowSlidingIME(Z)V

    .line 974
    sget-boolean v6, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v6, :cond_8

    .line 975
    const-string v6, "SplitWindow"

    const-string v7, "setShowSlidingIME true.. "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 993
    .end local v0    # "currentFocusWin":Lcom/android/server/wm/WindowStateEx;
    .end local v1    # "i":I
    .end local v2    # "isIMEVisible":Z
    :cond_8
    :goto_2
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mLayoutResizeWithIME:Z

    .line 994
    return-void

    .line 978
    .restart local v0    # "currentFocusWin":Lcom/android/server/wm/WindowStateEx;
    .restart local v1    # "i":I
    .restart local v2    # "isIMEVisible":Z
    :cond_9
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mNeededResizeWithIME:Z

    if-eqz v6, :cond_8

    if-nez v2, :cond_8

    .line 979
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mNeededResizeWithIME:Z

    .line 980
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->setShowSlidingIME(Z)V

    .line 981
    sget-boolean v6, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v6, :cond_8

    .line 982
    const-string v6, "SplitWindow"

    const-string v7, "setShowSlidingIME false.. "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 987
    .end local v0    # "currentFocusWin":Lcom/android/server/wm/WindowStateEx;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 991
    .end local v1    # "i":I
    .end local v2    # "isIMEVisible":Z
    :cond_a
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mNeededResizeWithIME:Z

    goto :goto_2

    .line 914
    .end local v4    # "splitBarHoldWin":Lcom/android/server/wm/WindowStateEx;
    .end local v5    # "splitBarWin":Lcom/android/server/wm/WindowStateEx;
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method public writeAllowPopupList()V
    .locals 15

    .prologue
    .line 2628
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "system"

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2630
    .local v2, "dataSystemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v11, "allow-popup.xml"

    invoke-direct {v0, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2631
    .local v0, "allowPopupListFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v11, "allow-popup-backup.xml"

    invoke-direct {v1, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2632
    .local v1, "backupAllowPopupListFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2633
    new-instance v11, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 2635
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2636
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 2637
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 2706
    :cond_1
    :goto_0
    return-void

    .line 2641
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2644
    :cond_3
    const/4 v4, 0x0

    .line 2645
    .local v4, "fstr":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 2647
    .local v9, "str":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2648
    .end local v4    # "fstr":Ljava/io/FileOutputStream;
    .local v5, "fstr":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2650
    .end local v9    # "str":Ljava/io/BufferedOutputStream;
    .local v10, "str":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2651
    .local v8, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v11, "utf-8"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2652
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2653
    const-string v11, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v12, 0x1

    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2655
    const/4 v11, 0x0

    const-string v12, "allowed-popup"

    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2656
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    monitor-enter v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2657
    :try_start_3
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx;->mAllowPopupLists:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2658
    .local v6, "its":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2659
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2660
    .local v7, "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v13, "package"

    invoke-interface {v8, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2661
    const/4 v11, 0x0

    const-string v13, "name"

    invoke-interface {v8, v11, v13, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2662
    const/4 v11, 0x0

    const-string v13, "package"

    invoke-interface {v8, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 2664
    .end local v6    # "its":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2681
    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v3

    move-object v9, v10

    .end local v10    # "str":Ljava/io/BufferedOutputStream;
    .restart local v9    # "str":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 2682
    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v4    # "fstr":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2687
    if-eqz v9, :cond_4

    .line 2688
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2694
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 2695
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 2702
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2703
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_0

    .line 2664
    .end local v4    # "fstr":Ljava/io/FileOutputStream;
    .end local v9    # "str":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "its":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10    # "str":Ljava/io/BufferedOutputStream;
    :cond_6
    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2665
    const/4 v11, 0x0

    :try_start_9
    const-string v12, "allowed-popup"

    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2666
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2668
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2669
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2670
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 2671
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 2676
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2677
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1b0

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2687
    if-eqz v10, :cond_7

    .line 2688
    :try_start_a
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 2694
    :cond_7
    :goto_5
    if-eqz v5, :cond_1

    .line 2695
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 2697
    :catch_1
    move-exception v3

    .line 2698
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 2690
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 2691
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2690
    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .end local v6    # "its":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v10    # "str":Ljava/io/BufferedOutputStream;
    .restart local v4    # "fstr":Ljava/io/FileOutputStream;
    .restart local v9    # "str":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v3

    .line 2691
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2697
    :catch_4
    move-exception v3

    .line 2698
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2683
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 2684
    .local v3, "e":Ljava/lang/IllegalStateException;
    :goto_6
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2687
    if-eqz v9, :cond_8

    .line 2688
    :try_start_d
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 2694
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_8
    :goto_7
    if-eqz v4, :cond_5

    .line 2695
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_4

    .line 2697
    :catch_6
    move-exception v3

    .line 2698
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2690
    .local v3, "e":Ljava/lang/IllegalStateException;
    :catch_7
    move-exception v3

    .line 2691
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 2686
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v11

    .line 2687
    :goto_8
    if-eqz v9, :cond_9

    .line 2688
    :try_start_f
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 2694
    :cond_9
    :goto_9
    if-eqz v4, :cond_a

    .line 2695
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 2699
    :cond_a
    :goto_a
    throw v11

    .line 2690
    :catch_8
    move-exception v3

    .line 2691
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 2697
    .end local v3    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 2698
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 2686
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fstr":Ljava/io/FileOutputStream;
    .restart local v5    # "fstr":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v4    # "fstr":Ljava/io/FileOutputStream;
    .end local v9    # "str":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fstr":Ljava/io/FileOutputStream;
    .restart local v10    # "str":Ljava/io/BufferedOutputStream;
    :catchall_3
    move-exception v11

    move-object v9, v10

    .end local v10    # "str":Ljava/io/BufferedOutputStream;
    .restart local v9    # "str":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 2683
    .end local v4    # "fstr":Ljava/io/FileOutputStream;
    .restart local v5    # "fstr":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v3

    move-object v4, v5

    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v4    # "fstr":Ljava/io/FileOutputStream;
    .end local v9    # "str":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fstr":Ljava/io/FileOutputStream;
    .restart local v10    # "str":Ljava/io/BufferedOutputStream;
    :catch_b
    move-exception v3

    move-object v9, v10

    .end local v10    # "str":Ljava/io/BufferedOutputStream;
    .restart local v9    # "str":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 2681
    :catch_c
    move-exception v3

    goto/16 :goto_2

    .end local v4    # "fstr":Ljava/io/FileOutputStream;
    .restart local v5    # "fstr":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v3

    move-object v4, v5

    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method
