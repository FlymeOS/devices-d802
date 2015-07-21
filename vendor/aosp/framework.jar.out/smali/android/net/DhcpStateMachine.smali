.class public Landroid/net/DhcpStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;,
        Landroid/net/DhcpStateMachine$RunningState;,
        Landroid/net/DhcpStateMachine$WaitBeforeStartState;,
        Landroid/net/DhcpStateMachine$StoppedState;,
        Landroid/net/DhcpStateMachine$DefaultState;,
        Landroid/net/DhcpStateMachine$DhcpAction;
    }
.end annotation


# static fields
.field private static final ACTION_DHCP_RENEW:Ljava/lang/String; = "android.net.wifi.DHCP_RENEW"

.field private static final BASE:I = 0x30000

.field public static final CMD_ON_QUIT:I = 0x30006

.field public static final CMD_POST_DHCP_ACTION:I = 0x30005

.field public static final CMD_PRE_DHCP_ACTION:I = 0x30004

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x30007

.field public static final CMD_RELEASE_DHCP:I = 0x3000a

.field public static final CMD_RENEW_DHCP:I = 0x30003

.field public static final CMD_SET_DHCPV6:I = 0x30008

.field public static final CMD_START_DHCP:I = 0x30001

.field public static final CMD_STOP_DHCP:I = 0x30002

.field private static final DBG:Z = true

.field public static final DHCPV4:I = 0x0

.field public static final DHCPV6:I = 0x1

.field public static final DHCP_FAILURE:I = 0x2

.field private static final DHCP_RENEW:I = 0x0

.field public static final DHCP_SUCCESS:I = 0x1

.field private static final MIN_RENEWAL_TIME_SECS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "DhcpStateMachine"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DHCP"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/util/StateMachine;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDhcpRenewalIntent:Landroid/app/PendingIntent;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mInterfaceName:Ljava/lang/String;

.field private mIsDhcpV6:Z

.field private mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

.field private mRegisteredForPreDhcpNotification:Z

.field private mRunningState:Lcom/android/internal/util/State;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p3, "intf"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 134
    const-string v2, "DhcpStateMachine"

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 86
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 117
    new-instance v2, Landroid/net/DhcpStateMachine$DefaultState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$DefaultState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 118
    new-instance v2, Landroid/net/DhcpStateMachine$StoppedState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$StoppedState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    .line 119
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeStartState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeStartState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    .line 120
    new-instance v2, Landroid/net/DhcpStateMachine$RunningState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$RunningState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    .line 121
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    .line 126
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    .line 130
    iput-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    .line 136
    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    .line 138
    iput-object p3, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 140
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.DHCP_RENEW"

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .local v0, "dhcpRenewalIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    .line 144
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 145
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "DHCP"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 146
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 148
    new-instance v2, Landroid/net/DhcpStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$1;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.DHCP_RENEW"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 175
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 176
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 177
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 178
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 180
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 183
    new-instance v2, Landroid/net/LgDhcpStateMachineHelper;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, p0}, Landroid/net/LgDhcpStateMachineHelper;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    .line 186
    return-void
.end method

.method static synthetic access$000(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    return v0
.end method

.method static synthetic access$002(Landroid/net/DhcpStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    return p1
.end method

.method static synthetic access$100(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine$DhcpAction;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/net/DhcpStateMachine;->runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/DhcpStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/DhcpStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/DhcpStateMachine;Landroid/net/ILgDhcpStateMachineHelper;)Landroid/net/ILgDhcpStateMachineHelper;
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Landroid/net/ILgDhcpStateMachineHelper;

    .prologue
    .line 55
    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    return v0
.end method

.method static synthetic access$700(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method public static makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p2, "intf"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v0, Landroid/net/DhcpStateMachine;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/DhcpStateMachine;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    .line 191
    .local v0, "dsm":Landroid/net/DhcpStateMachine;
    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->start()V

    .line 192
    return-object v0
.end method

.method private runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 14
    .param p1, "dhcpAction"    # Landroid/net/DhcpStateMachine$DhcpAction;

    .prologue
    const v13, 0x30005

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 452
    const/4 v4, 0x0

    .line 453
    .local v4, "success":Z
    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    .line 456
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_0

    .line 457
    const-string v5, "DhcpStateMachine"

    const-string v8, "DHCP Start wake lock is acquired."

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 461
    :cond_0
    sget-object v5, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v5, :cond_d

    .line 463
    iget-boolean v5, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v5, :cond_a

    .line 464
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 470
    :goto_0
    const-string v8, "DhcpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DHCP"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v5, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v5, :cond_b

    const-string v5, "V6"

    :goto_1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " request on "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    invoke-interface {v5}, Landroid/net/ILgDhcpStateMachineHelper;->ReplaceDhcpLeaseFileWithBackupLeaseFile()V

    .line 476
    :cond_1
    iget-boolean v5, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v5, :cond_c

    .line 477
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v4

    .line 483
    :goto_2
    iput-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 489
    :cond_2
    :goto_3
    if-eqz v4, :cond_10

    .line 490
    const-string v8, "DhcpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DHCP"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v5, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v5, :cond_e

    const-string v5, "V6"

    :goto_4
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " succeeded on "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    invoke-interface {v5}, Landroid/net/ILgDhcpStateMachineHelper;->getDLNAEnabled()Z

    move-result v5

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    invoke-interface {v5, v0}, Landroid/net/ILgDhcpStateMachineHelper;->checkAutoIpWithDhcpInfo(Landroid/net/DhcpResults;)I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 495
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.wifi.AUTOIP_CONNECTION_NOTIFICATION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 496
    const v5, 0xa8c00

    iput v5, v0, Landroid/net/DhcpResults;->leaseDuration:I

    .line 497
    const-string v5, "DhcpStateMachine"

    const-string v8, "AUTOIP is allowed for DLNA"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_3
    iget v5, v0, Landroid/net/DhcpResults;->leaseDuration:I

    int-to-long v2, v5

    .line 504
    .local v2, "leaseDuration":J
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-ltz v5, :cond_5

    iget-boolean v5, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v5, :cond_5

    .line 507
    const-wide/16 v8, 0x12c

    cmp-long v5, v2, v8

    if-gez v5, :cond_4

    .line 508
    const-wide/16 v2, 0x12c

    .line 513
    :cond_4
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x1e0

    mul-long/2addr v10, v2

    add-long/2addr v8, v10

    iget-object v10, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v12, v8, v9, v10}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 522
    :cond_5
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    invoke-interface {v5}, Landroid/net/ILgDhcpStateMachineHelper;->StoreDhcpBackupLeaseFileWithCurrentLeaseFile()V

    .line 526
    :cond_6
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    invoke-interface {v5, v0}, Landroid/net/ILgDhcpStateMachineHelper;->AddDhcpInfoCache(Landroid/net/DhcpResults;)Z

    move-result v5

    if-ne v5, v6, :cond_8

    .line 530
    :cond_7
    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    iget-boolean v5, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v5, :cond_f

    move v5, v6

    :goto_5
    invoke-virtual {v8, v13, v6, v5, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 531
    .local v1, "msg":Landroid/os/Message;
    if-eqz v1, :cond_8

    .line 532
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 572
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "leaseDuration":J
    :cond_8
    :goto_6
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 573
    const-string v5, "DhcpStateMachine"

    const-string v6, "DHCP Start/Renew wake lock is released."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 576
    :cond_9
    return v4

    .line 467
    :cond_a
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/NetworkUtils;->stopDhcpv6(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 470
    :cond_b
    const-string v5, "V4"

    goto/16 :goto_1

    .line 480
    :cond_c
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/net/NetworkUtils;->runDhcpv6(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v4

    goto/16 :goto_2

    .line 484
    :cond_d
    sget-object v5, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v5, :cond_2

    .line 485
    const-string v5, "DhcpStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DHCP renewal on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v4

    .line 487
    if-eqz v4, :cond_2

    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0, v5}, Landroid/net/DhcpResults;->updateFromDhcpRequest(Landroid/net/DhcpResults;)V

    goto/16 :goto_3

    .line 490
    :cond_e
    const-string v5, "V4"

    goto/16 :goto_4

    .restart local v2    # "leaseDuration":J
    :cond_f
    move v5, v7

    .line 530
    goto :goto_5

    .line 537
    .end local v2    # "leaseDuration":J
    :cond_10
    sget-object v5, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    if-eq p1, v5, :cond_14

    .line 538
    const-string v5, "DhcpStateMachine"

    const-string v8, "Don\'t need to check [bssid + ssid] hash key, dhcpAction != DhcpAction.START."

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_11
    :goto_7
    if-nez v4, :cond_8

    .line 548
    iget-boolean v5, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v5, :cond_15

    .line 549
    const-string v5, "DhcpStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DHCP failed on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 561
    :goto_8
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    if-eqz v5, :cond_12

    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    invoke-interface {v5}, Landroid/net/ILgDhcpStateMachineHelper;->RemoveDhcpInfoCache()V

    .line 565
    :cond_12
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v8, "p2p"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v6, :cond_13

    sget-object v5, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    if-eq p1, v5, :cond_8

    .line 566
    :cond_13
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    iget-boolean v8, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v8, :cond_16

    :goto_9
    invoke-virtual {v5, v13, v12, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_6

    .line 540
    :cond_14
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    if-eqz v5, :cond_11

    .line 541
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    invoke-interface {v5}, Landroid/net/ILgDhcpStateMachineHelper;->CheckSustainCurrentDhcpInfoCache()Z

    move-result v4

    goto :goto_7

    .line 554
    :cond_15
    const-string v5, "DhcpStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DHCPV6 failed on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpv6Error()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/NetworkUtils;->stopDhcpv6(Ljava/lang/String;)Z

    goto :goto_8

    :cond_16
    move v6, v7

    .line 566
    goto :goto_9
.end method


# virtual methods
.method public CheckDhcpInfoCacheList(Landroid/util/LruCache;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/DhcpResults;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "dhcpResultsCacheList":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Landroid/net/DhcpResults;>;"
    const/4 v0, 0x0

    .line 582
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    if-nez v1, :cond_0

    .line 583
    const-string v1, "DhcpStateMachine"

    const-string v2, "mLgDhcpSMHelper is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :goto_0
    return v0

    .line 587
    :cond_0
    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->isWaitBeforeStartState()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->isStoppedState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 588
    const-string v1, "DhcpStateMachine"

    const-string v2, "Don\'t need to check [bssid + ssid] hash key, Current State is not mWaitBeforeStartState."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mLgDhcpSMHelper:Landroid/net/ILgDhcpStateMachineHelper;

    invoke-interface {v0, p1}, Landroid/net/ILgDhcpStateMachineHelper;->CheckDhcpInfoCacheList(Landroid/util/LruCache;)Z

    move-result v0

    goto :goto_0
.end method

.method public doQuit()V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->quit()V

    .line 215
    return-void
.end method

.method public isStoppedState()Z
    .locals 3

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 610
    .local v0, "bRet":Z
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    if-ne v1, v2, :cond_0

    .line 611
    const-string v1, "DhcpStateMachine"

    const-string v2, "Current State is mStoppedState."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v0, 0x1

    .line 615
    :cond_0
    return v0
.end method

.method public isWaitBeforeStartState()Z
    .locals 3

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 599
    .local v0, "bRet":Z
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    if-ne v1, v2, :cond_0

    .line 600
    const-string v1, "DhcpStateMachine"

    const-string v2, "Current State is mWaitBeforeStartState."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x1

    .line 604
    :cond_0
    return v0
.end method

.method protected onQuitting()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    const v3, 0x30006

    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 222
    return-void

    :cond_0
    move v0, v1

    .line 220
    goto :goto_0
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 206
    return-void
.end method
