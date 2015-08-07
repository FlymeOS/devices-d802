.class public Lcom/android/server/notification/NotificationManagerServiceEx;
.super Lcom/android/server/notification/NotificationManagerService;
.source "NotificationManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;,
        Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;,
        Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;
    }
.end annotation


# static fields
.field private static final MESSAGE_EXCESS_SPC_FAIL_POWER_OFF:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NotificationServiceEx"


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private mBackPulseEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mEmotionalEnabled:Z

.field private mHandler:Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;

.field private mIntentReceiverEx:Landroid/content/BroadcastReceiver;

.field private mLightPulseExceptionalPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserverEx:Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mBackPulseEnabled:Z

    .line 44
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mEmotionalEnabled:Z

    .line 45
    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLightPulseExceptionalPackages:Ljava/util/List;

    .line 191
    new-instance v2, Lcom/android/server/notification/NotificationManagerServiceEx$1;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationManagerServiceEx$1;-><init>(Lcom/android/server/notification/NotificationManagerServiceEx;)V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;

    .line 52
    new-instance v2, Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;

    invoke-direct {v2, p0, v3}, Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;-><init>(Lcom/android/server/notification/NotificationManagerServiceEx;Lcom/android/server/notification/NotificationManagerServiceEx$1;)V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mHandler:Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;

    .line 55
    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLights:Ljava/util/ArrayList;

    .line 56
    new-instance v2, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;

    invoke-direct {v2, p0, v3}, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;-><init>(Lcom/android/server/notification/NotificationManagerServiceEx;Lcom/android/server/notification/NotificationManagerServiceEx$1;)V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLights:Ljava/util/ArrayList;

    .line 59
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$bool;->config_spc_check:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 61
    .local v0, "mIsUseSpc":Z
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$array;->config_light_pulse_exceptional_packages:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLightPulseExceptionalPackages:Ljava/util/List;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.lge.android.intent.action.EXCESS_SPC_FAIL_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, "spcfailNoti":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    .end local v1    # "spcfailNoti":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$1000(IIZIIILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static/range {p0 .. p6}, Lcom/android/server/notification/NotificationManagerServiceEx;->updateLightList_native(IIZIIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationManagerServiceEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/NotificationManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mEmotionalEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/notification/NotificationManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mEmotionalEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mBackPulseEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/notification/NotificationManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mBackPulseEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/notification/NotificationManagerServiceEx;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/notification/NotificationManagerServiceEx;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/notification/NotificationManagerServiceEx;)Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mHandler:Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/NotificationManagerServiceEx;)Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mSettingsObserverEx:Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$900()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceEx;->updateLightRestart_native()V

    return-void
.end method

.method private isLightPulsePackage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    if-eqz v1, :cond_0

    .line 126
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mEmotionalEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    iget-object v1, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerServiceEx;->isLightPulsePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 128
    :cond_0
    return v0
.end method

.method private isLightPulsePackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "val":Z
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLightPulseExceptionalPackages:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLightPulseExceptionalPackages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    :cond_0
    return v0
.end method

.method private static native updateLightList_native(IIZIIILjava/lang/String;)V
.end method

.method private static native updateLightRestart_native()V
.end method


# virtual methods
.method protected buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "arg0"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 99
    return-void
.end method

.method protected cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 104
    return-void
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->onBootPhase(I)V

    .line 89
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mSettingsObserverEx:Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;->observe()V

    .line 94
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/server/notification/NotificationManagerService;->onStart()V

    .line 75
    new-instance v1, Lcom/android/server/notification/NotificationVibrator;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationVibrator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mVibrator:Landroid/os/Vibrator;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.media.STOP_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "stopNoti":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    new-instance v1, Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mHandler:Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerServiceEx;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mSettingsObserverEx:Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;

    .line 84
    return-void
.end method

.method updateLightsLocked()V
    .locals 4

    .prologue
    .line 109
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mNotificationPulseEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mBackPulseEnabled:Z

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mNotificationPulseEnabled:Z

    .line 111
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 112
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLights:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerServiceEx;->isLightPulsePackage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLightPulse:Z

    .line 120
    :goto_0
    invoke-super {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 121
    return-void

    .line 118
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLightPulse:Z

    goto :goto_0
.end method
