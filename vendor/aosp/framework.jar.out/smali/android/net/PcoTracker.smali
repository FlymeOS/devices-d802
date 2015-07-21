.class public Landroid/net/PcoTracker;
.super Lcom/android/internal/util/StateMachine;
.source "PcoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/PcoTracker$PcoFiveState;,
        Landroid/net/PcoTracker$PcoFourState;,
        Landroid/net/PcoTracker$PcoThreeState;,
        Landroid/net/PcoTracker$PcoTwoState;,
        Landroid/net/PcoTracker$PcoOneState;,
        Landroid/net/PcoTracker$PcoDefaultState;
    }
.end annotation


# static fields
.field private static final ACTION_FINISHED_VERIZONE_PORTAL:Ljava/lang/String; = "com.mediatek.server.action.ACTION_FINISHED_VERIZONE_PORTAL"

.field private static final ACTION_LTE_PCO:Ljava/lang/String; = "com.lge.android.LTE_PCO"

.field private static final ACTION_LTE_PCO_NOTIFICATION_CLICK:Ljava/lang/String; = "com.lge.android.pco.notification.click"

.field private static final ACTION_LTE_PCO_NOTIFICATION_DELETE:Ljava/lang/String; = "com.lge.android.pco.notification.delete"

.field private static final BBPortal_URL:Ljava/lang/String; = "https://quickaccess.verizonwireless.com/bbportal/oem/start.do"

.field private static final CMD_RECEIVED_PCO:I = 0x0

.field private static final CMD_TRANSITIONTO_FIVESTATE:I = 0x5

.field private static final DBG:Z = true

.field private static final EXTRA_PCO_PROFILE_NUM:Ljava/lang/String; = "extra_pco_profile_num"

.field private static final EXTRA_PCO_VALUE:Ljava/lang/String; = "extra_pco_value"

.field private static final FINISHED_CAUSE:Ljava/lang/String; = "cause"

.field private static final GET_DATA_NOTI_ID:I

.field private static final SETUP_WIZARD_PACKAGE:Ljava/lang/String; = "com.android.LGSetupWizard"

.field private static final TAG:Ljava/lang/String; = "PcoTracker"

.field private static pcoInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static radio_off_flag:Z


# instance fields
.field private isFirstBooting:Z

.field private mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPcoDefaultState:Lcom/android/internal/util/State;

.field private mPcoFiveState:Lcom/android/internal/util/State;

.field private mPcoFourState:Lcom/android/internal/util/State;

.field private mPcoOneState:Lcom/android/internal/util/State;

.field private mPcoThreeState:Lcom/android/internal/util/State;

.field private mPcoTwoState:Lcom/android/internal/util/State;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;

    .line 105
    sget-object v0, Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;

    const-string v1, "last_ims_pco"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;

    const-string v1, "last_internet_pco"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget v0, Lcom/lge/internal/R$drawable;->ic_stat_notify_adddata:I

    sput v0, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/PcoTracker;->radio_off_flag:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cs"    # Landroid/net/IConnectivityManager;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 130
    const-string v1, "PcoTracker"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/PcoTracker;->isFirstBooting:Z

    .line 120
    new-instance v1, Landroid/net/PcoTracker$PcoDefaultState;

    invoke-direct {v1, p0, v2}, Landroid/net/PcoTracker$PcoDefaultState;-><init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    .line 121
    new-instance v1, Landroid/net/PcoTracker$PcoOneState;

    invoke-direct {v1, p0, v2}, Landroid/net/PcoTracker$PcoOneState;-><init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mPcoOneState:Lcom/android/internal/util/State;

    .line 122
    new-instance v1, Landroid/net/PcoTracker$PcoTwoState;

    invoke-direct {v1, p0, v2}, Landroid/net/PcoTracker$PcoTwoState;-><init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mPcoTwoState:Lcom/android/internal/util/State;

    .line 123
    new-instance v1, Landroid/net/PcoTracker$PcoThreeState;

    invoke-direct {v1, p0, v2}, Landroid/net/PcoTracker$PcoThreeState;-><init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mPcoThreeState:Lcom/android/internal/util/State;

    .line 124
    new-instance v1, Landroid/net/PcoTracker$PcoFourState;

    invoke-direct {v1, p0, v2}, Landroid/net/PcoTracker$PcoFourState;-><init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mPcoFourState:Lcom/android/internal/util/State;

    .line 125
    new-instance v1, Landroid/net/PcoTracker$PcoFiveState;

    invoke-direct {v1, p0, v2}, Landroid/net/PcoTracker$PcoFiveState;-><init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mPcoFiveState:Lcom/android/internal/util/State;

    .line 161
    new-instance v1, Landroid/net/PcoTracker$1;

    invoke-direct {v1, p0}, Landroid/net/PcoTracker$1;-><init>(Landroid/net/PcoTracker;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iput-object p1, p0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Landroid/net/PcoTracker;->mConnService:Landroid/net/IConnectivityManager;

    .line 134
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 135
    const-string/jumbo v1, "netpolicy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager;

    iput-object v1, p0, Landroid/net/PcoTracker;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 136
    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Landroid/net/PcoTracker;->mUserManager:Landroid/os/UserManager;

    .line 137
    iget-object v1, p0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Landroid/net/PcoTracker;->mNotificationManager:Landroid/app/NotificationManager;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.android.LTE_PCO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "com.lge.android.pco.notification.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "com.lge.android.pco.notification.delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "com.mediatek.server.action.ACTION_FINISHED_VERIZONE_PORTAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/PcoTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    sget-object v1, Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;

    const-string v2, "last_ims_pco"

    const-string/jumbo v3, "persist.lg.data.ims_pco"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;

    const-string v2, "last_internet_pco"

    const-string/jumbo v3, "persist.lg.data.internet_pco"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/PcoTracker;->addState(Lcom/android/internal/util/State;)V

    .line 152
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoOneState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/PcoTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 153
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoTwoState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/PcoTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 154
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoThreeState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/PcoTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 155
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoFourState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/PcoTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 156
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoFiveState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/PcoTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 157
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/PcoTracker;->setInitialState(Lcom/android/internal/util/State;)V

    .line 159
    return-void
.end method

.method static synthetic access$1000(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/PcoTracker;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/PcoTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/PcoTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/net/PcoTracker;->isFirstBooting:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/net/PcoTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/net/PcoTracker;->isFirstBooting:Z

    return p1
.end method

.method static synthetic access$1700(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 87
    sget v0, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    return v0
.end method

.method static synthetic access$2000(Landroid/net/PcoTracker;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 87
    sput-boolean p0, Landroid/net/PcoTracker;->radio_off_flag:Z

    return p0
.end method

.method static synthetic access$3100(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mPcoFiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mPcoOneState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mPcoTwoState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mPcoThreeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mPcoFourState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5000(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/net/PcoTracker;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8400(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static makePcoTracker(Landroid/content/Context;Landroid/net/IConnectivityManager;)Landroid/net/PcoTracker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cs"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 284
    new-instance v0, Landroid/net/PcoTracker;

    invoke-direct {v0, p0, p1}, Landroid/net/PcoTracker;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    .line 285
    .local v0, "pcotr":Landroid/net/PcoTracker;
    invoke-virtual {v0}, Landroid/net/PcoTracker;->start()V

    .line 286
    return-object v0
.end method


# virtual methods
.method public NotificationAlertMsg(I)V
    .locals 16
    .param p1, "pco_value"    # I

    .prologue
    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationAlertMsg :: pco_value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 665
    .local v9, "mNotificationManager":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 666
    .local v15, "r":Landroid/content/res/Resources;
    new-instance v8, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 669
    .local v8, "builder":Landroid/app/Notification$Builder;
    new-instance v13, Landroid/content/Intent;

    const-string v1, "com.lge.android.pco.notification.click"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v13, "notificationIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v13, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 673
    .local v14, "notificationPending":Landroid/app/PendingIntent;
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.settings.USER_SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v3, "SettingUserMenuIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 676
    .local v7, "SettingUserMenuPending":Landroid/app/PendingIntent;
    sget v1, Lcom/lge/internal/R$drawable;->ic_stat_notify_adddata:I

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 677
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 679
    packed-switch p1, :pswitch_data_0

    .line 764
    :goto_0
    :pswitch_0
    return-void

    .line 683
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v2, Lcom/lge/internal/R$string;->pco_noti_title_pco_two:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$string;->pco_noti_text_pco_two:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 688
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, v8}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$string;->pco_noti_text_pco_two:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v12

    .line 692
    .local v12, "nTwo":Landroid/app/Notification;
    const/4 v1, 0x0

    sget v2, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v2, v12, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 697
    .end local v12    # "nTwo":Landroid/app/Notification;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v2, Lcom/lge/internal/R$string;->pco_noti_ticker:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$string;->pco_noti_title:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 703
    invoke-virtual/range {p0 .. p0}, Landroid/net/PcoTracker;->isOwnerUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v2, Lcom/lge/internal/R$string;->pco_noti_ticker:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 706
    invoke-virtual {v8, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 708
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, v8}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$string;->pco_noti_text_big_owner:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v11

    .line 711
    .local v11, "nThree":Landroid/app/Notification;
    const/4 v1, 0x0

    sget v2, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v2, v11, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 715
    .end local v11    # "nThree":Landroid/app/Notification;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v2, Lcom/lge/internal/R$string;->pco_noti_text_small_secondary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 718
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 719
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, v8}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$string;->pco_noti_text_big_secondary:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v11

    .line 722
    .restart local v11    # "nThree":Landroid/app/Notification;
    const/4 v1, 0x0

    sget v2, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v2, v11, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 729
    .end local v11    # "nThree":Landroid/app/Notification;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v2, Lcom/lge/internal/R$string;->pco_noti_ticker:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$string;->pco_noti_title:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/net/PcoTracker;->isOwnerUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v2, Lcom/lge/internal/R$string;->pco_noti_ticker:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 738
    invoke-virtual {v8, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 740
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, v8}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$string;->pco_noti_text_big_owner:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v10

    .line 743
    .local v10, "nFive":Landroid/app/Notification;
    const/4 v1, 0x0

    sget v2, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v2, v10, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 747
    .end local v10    # "nFive":Landroid/app/Notification;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v2, Lcom/lge/internal/R$string;->pco_noti_text_small_secondary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 750
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 751
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, v8}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$string;->pco_noti_text_big_secondary:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v10

    .line 754
    .restart local v10    # "nFive":Landroid/app/Notification;
    const/4 v1, 0x0

    sget v2, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v2, v10, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public dataBlock(Z)V
    .locals 7
    .param p1, "block"    # Z

    .prologue
    .line 611
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataBlock set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 612
    new-instance v3, Lcom/lge/systemservice/core/LGContext;

    iget-object v5, p0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 613
    .local v3, "lgContext":Lcom/lge/systemservice/core/LGContext;
    const-string v5, "lgnetworkmanagementservice"

    invoke-virtual {v3, v5}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/systemservice/core/LGNetworkManager;

    .line 614
    .local v4, "lgNetworkMgr":Lcom/lge/systemservice/core/LGNetworkManager;
    const/4 v0, 0x0

    .line 618
    .local v0, "default_iface":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Landroid/net/PcoTracker;->mConnService:Landroid/net/IConnectivityManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 621
    .local v1, "default_linkProp":Landroid/net/LinkProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 625
    :cond_0
    if-nez v4, :cond_1

    .line 626
    const-string/jumbo v5, "service is null, just return"

    invoke-virtual {p0, v5}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 656
    .end local v1    # "default_linkProp":Landroid/net/LinkProperties;
    :goto_0
    return-void

    .line 631
    .restart local v1    # "default_linkProp":Landroid/net/LinkProperties;
    :cond_1
    if-eqz p1, :cond_2

    .line 632
    const-string v5, "dataBlock Blocked"

    invoke-virtual {p0, v5}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 634
    const-string v5, "-F oem_out"

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 635
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-A oem_out -o "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -j DROP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 636
    const-string v5, "-F oem_fwd"

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 637
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-A oem_fwd -i "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -j DROP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 648
    .end local v1    # "default_linkProp":Landroid/net/LinkProperties;
    :catch_0
    move-exception v2

    .line 650
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "[getLinkPropertiesForType] RemoteException"

    invoke-virtual {p0, v5}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "default_linkProp":Landroid/net/LinkProperties;
    :cond_2
    :try_start_1
    const-string v5, "dataBlock Unblocked"

    invoke-virtual {p0, v5}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 644
    const-string v5, "-F oem_out"

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 645
    const-string v5, "-F oem_fwd"

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 652
    .end local v1    # "default_linkProp":Landroid/net/LinkProperties;
    :catch_1
    move-exception v2

    .line 653
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MdmInit] Fail to runDataCommand %s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isOwnerUser()Z
    .locals 3

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 570
    .local v0, "value":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    .line 572
    const/4 v0, 0x1

    .line 575
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOwnerUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 577
    return v0
.end method

.method public isRemainRadio()V
    .locals 2

    .prologue
    .line 587
    const-string v0, "isRemainRadio"

    invoke-virtual {p0, v0}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM LOADED :: persist.radio.iccid-changed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "persist.radio.iccid-changed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM LOADED :: persist.lg.data.ims_pco = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "persist.lg.data.ims_pco"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 592
    const-string v0, "5"

    const-string/jumbo v1, "persist.lg.data.ims_pco"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    const-string/jumbo v1, "persist.radio.iccid-changed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    const-string v0, "SIM LOADED :: remain the cellular radio off !!"

    invoke-virtual {p0, v0}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 596
    const-string v0, "SIM LOADED :: transitionTo PcoFiveState!!! "

    invoke-virtual {p0, v0}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Landroid/net/PcoTracker;->isRunningSetupWizard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/PcoTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/PcoTracker;->sendMessage(Landroid/os/Message;)V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    const-string v0, "SIM LOADED :: the cellular radio on !!"

    invoke-virtual {p0, v0}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setRadioPower(Z)Z

    goto :goto_0
.end method

.method public isRunningSetupWizard()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 550
    iget-object v3, p0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 553
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.android.LGSetupWizard"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 555
    const-string v3, "LGSetupWizard is alive"

    invoke-virtual {p0, v3}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    const/4 v2, 0x1

    .line 561
    :cond_0
    :goto_0
    return v2

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "cannot disable setup wizard"

    invoke-virtual {p0, v3}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeNotification()V
    .locals 4

    .prologue
    .line 581
    const-string v0, "Remove current notification"

    invoke-virtual {p0, v0}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Landroid/net/PcoTracker;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    sget v2, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 584
    return-void
.end method
