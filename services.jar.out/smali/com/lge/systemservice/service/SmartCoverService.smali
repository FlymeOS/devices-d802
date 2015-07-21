.class public final Lcom/lge/systemservice/service/SmartCoverService;
.super Lcom/lge/systemservice/core/ISmartCoverManager$Stub;
.source "SmartCoverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/service/SmartCoverService$LGMiniViewReceiver;,
        Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_MINIVIEW_SETTINGS_CHANGED:Ljava/lang/String; = "com.lge.android.intent.action.MINIVIEW_SETTINGS_CHANGED"

.field private static final FOLDER_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/folderstatus/state"

.field private static final FOLDER_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/folderstatus"

.field private static final INTENT_EXTRA_MINIVIEW_ALIVE:Ljava/lang/String; = "com.lge.intent.extra.MINIVIEW_ALIVE"

.field private static final LASTCOVER_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/lastcover/state"

.field private static final MSG_ACCESSORY_COVER_STATE_CHANGED:I = 0x1

.field private static final MSG_ACCESSORY_COVER_TYPE_CHANGED:I = 0x2

.field private static final MSG_ACCESSORY_FOLDER_STATE_CHANGED:I = 0x4

.field private static final MSG_ACCESSORY_PEN_STATE_CHANGED:I = 0xb

.field private static final MSG_ACCESSORY_SUBCOVER_STATE_CHANGED:I = 0x15

.field private static final MSG_ACCESSORY_SUBCOVER_TYPE_CHANGED:I = 0x16

.field private static final PEN_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/pen_state/state"

.field private static final PEN_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/pen_state"

.field private static final SMARTCOVER_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/smartcover/state"

.field private static final SMARTCOVER_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/smartcover"

.field private static final SUBCOVER_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/backcover/state"

.field private static final SUBCOVER_TYPE_PATH:Ljava/lang/String; = "/sys/class/switch/backcover/state"

.field private static final SUBCOVER_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/backcover"

.field private static final TAG:Ljava/lang/String;

.field private static final TOUCH_FILTERING_PATH:Ljava/lang/String; = "/sys/devices/virtual/input/lge_touch/quick_cover_status"


# instance fields
.field private callbackDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mContext:Landroid/content/Context;

.field private mCoverCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/ISmartCoverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredCoverType:I

.field private mFolderCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/ISmartCoverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolderEventObserver:Landroid/os/UEventObserver;

.field private mFolderState:I

.field private final mHandler:Landroid/os/Handler;

.field mHelperBoost:Lcom/lge/loader/LGContextHelper;

.field mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

.field private final mLockFolder:Ljava/lang/Object;

.field private final mLockPen:Ljava/lang/Object;

.field private final mLockSmartCover:Ljava/lang/Object;

.field private final mLockSubCover:Ljava/lang/Object;

.field private mMiniviewAlive:Z

.field private mPenCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/ISmartCoverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPenEnabled:Z

.field private final mPenEventObserver:Landroid/os/UEventObserver;

.field private mPenEventState:I

.field private mServiceEnabled:Z

.field private mSettingsObserver:Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;

.field private mSmartCoverEnabled:Z

.field private final mSmartCoverEventObserver:Landroid/os/UEventObserver;

.field private mSmartCoverState:I

.field private mSmartCoverType:I

.field private mSubCoverCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/ISmartCoverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSubCoverEnabled:Z

.field private final mSubCoverEventObserver:Landroid/os/UEventObserver;

.field private mSubCoverState:I

.field private mSubCoverType:I

.field private final mTouchFilteringFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/lge/systemservice/service/SmartCoverService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 135
    invoke-direct {p0}, Lcom/lge/systemservice/core/ISmartCoverManager$Stub;-><init>()V

    .line 85
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/input/lge_touch/quick_cover_status"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mTouchFilteringFile:Ljava/io/File;

    .line 99
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;

    .line 100
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockPen:Ljava/lang/Object;

    .line 101
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockFolder:Ljava/lang/Object;

    .line 102
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;

    .line 104
    iput v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I

    .line 105
    const/4 v2, 0x1

    iput v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I

    .line 106
    iput v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I

    .line 107
    iput v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I

    .line 113
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;

    .line 114
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;

    .line 115
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderCallbacks:Ljava/util/List;

    .line 116
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;

    .line 118
    iput-boolean v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mServiceEnabled:Z

    .line 119
    iput-boolean v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEnabled:Z

    .line 120
    iput-boolean v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEnabled:Z

    .line 121
    iput-boolean v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEnabled:Z

    .line 123
    iput v6, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I

    .line 124
    iput v6, p0, Lcom/lge/systemservice/service/SmartCoverService;->mDesiredCoverType:I

    .line 125
    iput v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I

    .line 130
    iput-boolean v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mMiniviewAlive:Z

    .line 132
    iput-object v5, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    .line 133
    iput-object v5, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 234
    new-instance v2, Lcom/lge/systemservice/service/SmartCoverService$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/service/SmartCoverService$1;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEventObserver:Landroid/os/UEventObserver;

    .line 297
    new-instance v2, Lcom/lge/systemservice/service/SmartCoverService$2;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/service/SmartCoverService$2;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderEventObserver:Landroid/os/UEventObserver;

    .line 327
    new-instance v2, Lcom/lge/systemservice/service/SmartCoverService$3;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/service/SmartCoverService$3;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventObserver:Landroid/os/UEventObserver;

    .line 378
    new-instance v2, Lcom/lge/systemservice/service/SmartCoverService$4;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/service/SmartCoverService$4;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEventObserver:Landroid/os/UEventObserver;

    .line 564
    new-instance v2, Lcom/lge/systemservice/service/SmartCoverService$5;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/service/SmartCoverService$5;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    .line 909
    new-instance v2, Lcom/lge/systemservice/service/SmartCoverService$6;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/service/SmartCoverService$6;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->callbackDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 136
    iput-object p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;

    .line 138
    new-instance v2, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;

    invoke-direct {v2, p0, v5}, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;-><init>(Lcom/lge/systemservice/service/SmartCoverService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSettingsObserver:Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;

    .line 139
    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSettingsObserver:Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;

    invoke-virtual {v2}, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->observe()V

    .line 142
    :try_start_0
    new-instance v2, Lcom/lge/loader/LGContextHelper;

    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 143
    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    const-string v3, "lgpowermanagerhelper"

    invoke-virtual {v2, v3}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/loader/power/ILGPowerManagerLoader;

    iput-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->setUSBSound()V

    .line 152
    invoke-virtual {p0}, Lcom/lge/systemservice/service/SmartCoverService;->getCoverType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 153
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.lge.android.intent.action.MINIVIEW_SETTINGS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/lge/systemservice/service/SmartCoverService$LGMiniViewReceiver;

    invoke-direct {v3, p0, v5}, Lcom/lge/systemservice/service/SmartCoverService$LGMiniViewReceiver;-><init>(Lcom/lge/systemservice/service/SmartCoverService;Lcom/lge/systemservice/service/SmartCoverService$1;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    const-string v3, "can\'t get boost loader!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/systemservice/service/SmartCoverService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockPen:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/systemservice/service/SmartCoverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/lge/systemservice/service/SmartCoverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/systemservice/service/SmartCoverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I

    return v0
.end method

.method static synthetic access$1502(Lcom/lge/systemservice/service/SmartCoverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I

    return p1
.end method

.method static synthetic access$1600(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockFolder:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/systemservice/service/SmartCoverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/lge/systemservice/service/SmartCoverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/systemservice/service/SmartCoverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/lge/systemservice/service/SmartCoverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/lge/systemservice/service/SmartCoverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/systemservice/service/SmartCoverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I

    return v0
.end method

.method static synthetic access$2202(Lcom/lge/systemservice/service/SmartCoverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I

    return p1
.end method

.method static synthetic access$2300(Lcom/lge/systemservice/service/SmartCoverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->setUSBSound()V

    return-void
.end method

.method static synthetic access$2402(Lcom/lge/systemservice/service/SmartCoverService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEnabled:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/lge/systemservice/service/SmartCoverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverType(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/lge/systemservice/service/SmartCoverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent()V

    return-void
.end method

.method static synthetic access$2702(Lcom/lge/systemservice/service/SmartCoverService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEnabled:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/lge/systemservice/service/SmartCoverService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEnabled:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/lge/systemservice/service/SmartCoverService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mServiceEnabled:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/lge/systemservice/service/SmartCoverService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mServiceEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/systemservice/service/SmartCoverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->updateFolderEvent(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/lge/systemservice/service/SmartCoverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->stopObserving()V

    return-void
.end method

.method static synthetic access$3100(Lcom/lge/systemservice/service/SmartCoverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->startService()V

    return-void
.end method

.method static synthetic access$3200(Lcom/lge/systemservice/service/SmartCoverService;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/lge/systemservice/service/SmartCoverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->updatePenEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/systemservice/service/SmartCoverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverType(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/systemservice/service/SmartCoverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverEvent(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/systemservice/service/SmartCoverService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mMiniviewAlive:Z

    return v0
.end method

.method static synthetic access$802(Lcom/lge/systemservice/service/SmartCoverService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mMiniviewAlive:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lge/systemservice/service/SmartCoverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I

    return v0
.end method

.method static synthetic access$902(Lcom/lge/systemservice/service/SmartCoverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I

    return p1
.end method

.method private getCurrentFolderState()I
    .locals 9

    .prologue
    .line 264
    new-instance v5, Ljava/io/File;

    const-string v7, "/sys/class/switch/folderstatus/state"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v5, "mFolderStateFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 266
    .local v6, "state":I
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 267
    const/16 v7, 0xa

    new-array v0, v7, [B

    .line 268
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 270
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    :try_start_1
    array-length v8, v0

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 272
    .local v4, "len":I
    if-lez v4, :cond_0

    .line 274
    :try_start_2
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    .line 284
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 286
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 294
    .end local v0    # "buf":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    :cond_1
    :goto_1
    return v6

    .line 275
    .restart local v0    # "buf":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 279
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "len":I
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 280
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 284
    if-eqz v2, :cond_1

    .line 286
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 287
    :catch_2
    move-exception v1

    .line 288
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 287
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    :catch_3
    move-exception v1

    .line 288
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 281
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .line 282
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 284
    if-eqz v2, :cond_1

    .line 286
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 287
    :catch_5
    move-exception v1

    .line 288
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 284
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_2

    .line 286
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 289
    :cond_2
    :goto_5
    throw v7

    .line 287
    :catch_6
    move-exception v1

    .line 288
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 284
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 281
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 279
    :catch_8
    move-exception v1

    goto :goto_2
.end method

.method private getCurrentValueWithFile(Ljava/lang/String;I)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 391
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .local v5, "mFile":Ljava/io/File;
    move v6, p2

    .line 393
    .local v6, "state":I
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 394
    const/16 v7, 0xa

    new-array v0, v7, [B

    .line 395
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 397
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    :try_start_1
    array-length v8, v0

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 399
    .local v4, "len":I
    if-lez v4, :cond_0

    .line 401
    :try_start_2
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    .line 411
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 413
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 421
    .end local v0    # "buf":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    :cond_1
    :goto_1
    return v6

    .line 402
    .restart local v0    # "buf":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 406
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "len":I
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 407
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 411
    if-eqz v2, :cond_1

    .line 413
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 414
    :catch_2
    move-exception v1

    .line 415
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 414
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    :catch_3
    move-exception v1

    .line 415
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 408
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .line 409
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 411
    if-eqz v2, :cond_1

    .line 413
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 414
    :catch_5
    move-exception v1

    .line 415
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 411
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_2

    .line 413
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 416
    :cond_2
    :goto_5
    throw v7

    .line 414
    :catch_6
    move-exception v1

    .line 415
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 411
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 408
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 406
    :catch_8
    move-exception v1

    goto :goto_2
.end method

.method private final initFolder()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/folderstatus"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updateFolderEvent()V

    .line 247
    return-void
.end method

.method private final initPen()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/pen_state"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updatePenEvent()V

    .line 311
    return-void
.end method

.method private final initSmartCover()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/smartcover"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent()V

    .line 197
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverType()V

    .line 198
    return-void
.end method

.method private final initSubCover()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/backcover"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverEvent()V

    .line 340
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverType()V

    .line 341
    return-void
.end method

.method private isServiceEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 748
    iget-boolean v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mServiceEnabled:Z

    if-nez v1, :cond_0

    .line 769
    :goto_0
    return v0

    .line 752
    :cond_0
    const-string v1, "ro.factorytest"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 753
    sget-object v1, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    const-string v2, "On FTM test, skipping accessory broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 757
    :cond_1
    const-string v1, "sys.allautotest.run"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 758
    sget-object v1, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    const-string v2, "On AAT test, skipping accessory broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 762
    :cond_2
    const-string v1, "true"

    const-string v2, "gsm.lge.ota_is_running"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "true"

    const-string v2, "gsm.lge.ota_ignoreKey"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    const-string v2, "persist.radio.ota_download"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 765
    :cond_3
    sget-object v1, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    const-string v2, "On OTA, skipping accessory broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 769
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyCurrentStateAtRegisterLocked(ILcom/lge/systemservice/core/ISmartCoverCallback;)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 527
    iget-boolean v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEnabled:Z

    if-eqz v2, :cond_0

    .line 530
    iget v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I

    .line 531
    .local v1, "type":I
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I

    .line 551
    .local v0, "state":I
    :goto_1
    invoke-interface {p2, v1}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onTypeChanged(I)V

    .line 552
    invoke-interface {p2, v0}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onStateChanged(I)V

    goto :goto_0

    .line 532
    .end local v0    # "state":I
    .end local v1    # "type":I
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 533
    iget-boolean v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEnabled:Z

    if-eqz v2, :cond_0

    .line 536
    const/4 v1, 0x0

    .line 537
    .restart local v1    # "type":I
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I

    .restart local v0    # "state":I
    goto :goto_1

    .line 538
    .end local v0    # "state":I
    .end local v1    # "type":I
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 539
    const/4 v1, 0x0

    .line 540
    .restart local v1    # "type":I
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I

    .restart local v0    # "state":I
    goto :goto_1

    .line 541
    .end local v0    # "state":I
    .end local v1    # "type":I
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 542
    iget-boolean v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEnabled:Z

    if-eqz v2, :cond_0

    .line 545
    iget v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I

    .line 546
    .restart local v1    # "type":I
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I

    .restart local v0    # "state":I
    goto :goto_1
.end method

.method private setTouchFilteringLocked(I)V
    .locals 6
    .param p1, "coverState"    # I

    .prologue
    .line 773
    iget-object v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mTouchFilteringFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    const/16 v3, 0x30

    .line 779
    .local v3, "state":C
    iget v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 780
    const/16 v3, 0x30

    .line 789
    :goto_1
    const/4 v1, 0x0

    .line 791
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mTouchFilteringFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 796
    if-eqz v2, :cond_5

    .line 798
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 801
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 782
    .end local v1    # "out":Ljava/io/OutputStream;
    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    .line 783
    const/16 v3, 0x31

    goto :goto_1

    .line 785
    :cond_3
    const/16 v3, 0x30

    goto :goto_1

    .line 799
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 801
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 793
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 794
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 796
    if-eqz v1, :cond_0

    .line 798
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 799
    :catch_2
    move-exception v0

    .line 800
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 796
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_4

    .line 798
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 801
    :cond_4
    :goto_4
    throw v4

    .line 799
    :catch_3
    move-exception v0

    .line 800
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 796
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 793
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :cond_5
    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method private setUSBSound()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 960
    const-string v5, "aka"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 961
    const-string v5, "/sys/class/switch/backcover/state"

    invoke-direct {p0, v5, v7}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v4

    .line 962
    .local v4, "subCoverType":I
    const/4 v2, 0x0

    .line 963
    .local v2, "lastCoverType":I
    const-string v3, "/system/media/audio/ui/LG_Cable_Connect.ogg"

    .line 964
    .local v3, "normalSound":Ljava/lang/String;
    const-string v0, "/data/LGCover/ui/aka_cable.ogg"

    .line 965
    .local v0, "aksSound":Ljava/lang/String;
    const/4 v1, 0x1

    .line 967
    .local v1, "isExist":Z
    if-nez v4, :cond_0

    .line 968
    const-string v5, "/sys/class/switch/lastcover/state"

    invoke-direct {p0, v5, v7}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v2

    .line 969
    if-nez v2, :cond_2

    .line 970
    const/4 v1, 0x0

    .line 976
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 977
    iget-object v5, p0, Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_connected_sound"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 982
    .end local v0    # "aksSound":Ljava/lang/String;
    .end local v1    # "isExist":Z
    .end local v2    # "lastCoverType":I
    .end local v3    # "normalSound":Ljava/lang/String;
    .end local v4    # "subCoverType":I
    :cond_1
    :goto_1
    return-void

    .line 972
    .restart local v0    # "aksSound":Ljava/lang/String;
    .restart local v1    # "isExist":Z
    .restart local v2    # "lastCoverType":I
    .restart local v3    # "normalSound":Ljava/lang/String;
    .restart local v4    # "subCoverType":I
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0

    .line 979
    :cond_3
    iget-object v5, p0, Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_connected_sound"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private startService()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->initSmartCover()V

    .line 162
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->initPen()V

    .line 163
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->initFolder()V

    .line 164
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->initSubCover()V

    .line 165
    return-void
.end method

.method private stopObserving()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent(I)V

    .line 172
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockPen:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updatePenEvent(I)V

    .line 178
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockFolder:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/switch/folderstatus/state"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateFolderEvent(I)V

    .line 186
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 187
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_3
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverEvent(I)V

    .line 191
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 192
    return-void

    .line 172
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 178
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 186
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 191
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method private updateFolderEvent()V
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentFolderState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateFolderEvent(I)V

    .line 251
    return-void
.end method

.method private updateFolderEvent(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x4

    .line 254
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updatePenEvent()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "/sys/class/switch/pen_state/state"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updatePenEvent(I)V

    .line 315
    return-void
.end method

.method private updatePenEvent(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/16 v3, 0xb

    .line 318
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEnabled:Z

    if-nez v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 324
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateSmartCoverEvent()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "/sys/class/switch/smartcover/state"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent(I)V

    .line 203
    return-void
.end method

.method private updateSmartCoverEvent(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x1

    .line 208
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->setTouchFilteringLocked(I)V

    .line 210
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEnabled:Z

    if-nez v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 216
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateSmartCoverType()V
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mDesiredCoverType:I

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverType(I)V

    .line 221
    return-void
.end method

.method private updateSmartCoverType(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x2

    .line 224
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mDesiredCoverType:I

    .line 225
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEnabled:Z

    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mDesiredCoverType:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 231
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateSubCoverEvent()V
    .locals 2

    .prologue
    .line 344
    const-string v0, "/sys/class/switch/backcover/state"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverEvent(I)V

    .line 345
    return-void
.end method

.method private updateSubCoverEvent(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/16 v3, 0x15

    .line 348
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEnabled:Z

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    if-nez p1, :cond_2

    .line 353
    const/4 p1, 0x0

    .line 358
    :goto_1
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 360
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 355
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    const/4 p1, 0x1

    goto :goto_1
.end method

.method private updateSubCoverType()V
    .locals 2

    .prologue
    .line 364
    const-string v0, "/sys/class/switch/backcover/state"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverType(I)V

    .line 365
    return-void
.end method

.method private updateSubCoverType(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/16 v3, 0x16

    .line 368
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEnabled:Z

    if-nez v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 374
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCoverType()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I

    return v0
.end method

.method public getSubCoverType()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I

    return v0
.end method

.method public registerCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;I)Z
    .locals 12
    .param p1, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;
    .param p2, "eventType"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", binder="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "callbackInfo":Ljava/lang/String;
    sget-object v6, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "register callback: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    if-ne p2, v5, :cond_0

    .line 436
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;

    .line 448
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :goto_0
    monitor-enter v1

    .line 449
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 450
    sget-object v5, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "already added this callback, callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :goto_1
    return v4

    .line 437
    :cond_0
    if-ne p2, v9, :cond_1

    .line 438
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;

    .restart local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    goto :goto_0

    .line 439
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :cond_1
    if-ne p2, v11, :cond_2

    .line 440
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderCallbacks:Ljava/util/List;

    .restart local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    goto :goto_0

    .line 441
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :cond_2
    if-ne p2, v10, :cond_3

    .line 442
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;

    .restart local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    goto :goto_0

    .line 444
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :cond_3
    sget-object v5, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Callback is wrong, callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 454
    .restart local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :cond_4
    :try_start_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 455
    sget-object v5, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t add callback!, callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    monitor-exit v1

    goto :goto_1

    .line 458
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    :try_start_3
    invoke-interface {p1}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService;->callbackDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 468
    :goto_2
    if-ne p2, v5, :cond_6

    .line 469
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;

    .line 480
    .local v3, "mLock":Ljava/lang/Object;
    :goto_3
    monitor-enter v3

    .line 482
    :try_start_4
    invoke-direct {p0, p2, p1}, Lcom/lge/systemservice/service/SmartCoverService;->notifyCurrentStateAtRegisterLocked(ILcom/lge/systemservice/core/ISmartCoverCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 486
    :goto_4
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v4, v5

    .line 488
    goto :goto_1

    .line 462
    .end local v3    # "mLock":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 463
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 470
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6
    if-ne p2, v9, :cond_7

    .line 471
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockPen:Ljava/lang/Object;

    .restart local v3    # "mLock":Ljava/lang/Object;
    goto :goto_3

    .line 472
    .end local v3    # "mLock":Ljava/lang/Object;
    :cond_7
    if-ne p2, v11, :cond_8

    .line 473
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockFolder:Ljava/lang/Object;

    .restart local v3    # "mLock":Ljava/lang/Object;
    goto :goto_3

    .line 474
    .end local v3    # "mLock":Ljava/lang/Object;
    :cond_8
    if-ne p2, v10, :cond_9

    .line 475
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;

    .restart local v3    # "mLock":Ljava/lang/Object;
    goto :goto_3

    .end local v3    # "mLock":Ljava/lang/Object;
    :cond_9
    move v4, v5

    .line 477
    goto/16 :goto_1

    .line 483
    .restart local v3    # "mLock":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 484
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_6
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Catch RemoteException, callback:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 486
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4
.end method

.method public unRegisterCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;I)V
    .locals 7
    .param p1, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;
    .param p2, "eventType"    # I

    .prologue
    .line 495
    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    .line 496
    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;

    .line 497
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;

    .line 509
    .local v3, "mLock":Ljava/lang/Object;
    :goto_0
    monitor-enter v3

    .line 510
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 511
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;

    .line 512
    .local v0, "item":Lcom/lge/systemservice/core/ISmartCoverCallback;
    invoke-interface {p1}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v0}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 513
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregister SubCoverCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 517
    .end local v0    # "item":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 498
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    .end local v3    # "mLock":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 499
    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;

    .line 500
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockPen:Ljava/lang/Object;

    .restart local v3    # "mLock":Ljava/lang/Object;
    goto :goto_0

    .line 501
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    .end local v3    # "mLock":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    .line 502
    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;

    .line 503
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;

    .restart local v3    # "mLock":Ljava/lang/Object;
    goto :goto_0

    .line 505
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    .end local v3    # "mLock":Ljava/lang/Object;
    :cond_3
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback is wrong, callback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_2
    return-void

    .line 517
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    .restart local v3    # "mLock":Ljava/lang/Object;
    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
