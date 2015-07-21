.class public Lcom/android/internal/telephony/SingleBinary;
.super Ljava/lang/Object;
.source "SingleBinary.java"


# static fields
.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final BROWSER_INDEX:I = 0x1

.field private static final CARRIER_APPS_INSTALL_COMPLETED:Ljava/lang/String; = "com.lge.appbox.bootinstall.completed"

.field private static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field private static final LGHOME_INDEX:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final SEARCH_INTENT:[Ljava/lang/String;

.field private static final SIM_CHANGED:Ljava/lang/String; = "com.lge.intent.action.SIM_CHANGED_INFO"

.field private static final TELEPHONY_PROVIDER_INDEX:I = 0x2

.field private static isBrowserdbDeleted:Z

.field private static isLGHomedbDeleted:Z

.field private static isMatchedStatus:Z

.field private static isTelephonydbDeleted:Z

.field private static mContext:Landroid/content/Context;

.field private static mSingleBinary:Lcom/android/internal/telephony/SingleBinary;

.field private static mTryToSwitch:Z


# instance fields
.field CARRIER_APPS_INSTALL_COMPLETED_FILTER:Landroid/content/IntentFilter;

.field private final CONFIG_MAP_FILE:Ljava/lang/String;

.field private final DATA_OPERATOR_FILE:Ljava/lang/String;

.field private final OPERATOR_DELETE_COMPLETE_INTENT:Ljava/lang/String;

.field OPERATOR_DELETE_FILTER:Landroid/content/IntentFilter;

.field OPERATOR_SWICHING_FILTER:Landroid/content/IntentFilter;

.field SIM_CHANGED_FILTER:Landroid/content/IntentFilter;

.field SIM_STATE_CHANGED_FILTER:Landroid/content/IntentFilter;

.field private appInstallCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private dialogProgress:Landroid/app/AlertDialog;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mEnableSBP:Ljava/lang/String;

.field private mEnableUI:Ljava/lang/String;

.field private mFlexText:Landroid/widget/TextView;

.field private mImsi:Ljava/lang/String;

.field private mMncLength:I

.field private mNTCodeChanged:Ljava/lang/String;

.field private mNTcodeMcc:Ljava/lang/String;

.field private mSIMChanged:Ljava/lang/String;

.field private mSIMChecked:Ljava/lang/String;

.field private mSIMMcc:Ljava/lang/String;

.field private operatorSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private setupWizardStartReceiver:Landroid/content/BroadcastReceiver;

.field private simChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    sput-boolean v2, Lcom/android/internal/telephony/SingleBinary;->mTryToSwitch:Z

    .line 115
    sput-boolean v2, Lcom/android/internal/telephony/SingleBinary;->isMatchedStatus:Z

    .line 116
    sput-boolean v2, Lcom/android/internal/telephony/SingleBinary;->isTelephonydbDeleted:Z

    .line 117
    sput-boolean v2, Lcom/android/internal/telephony/SingleBinary;->isLGHomedbDeleted:Z

    .line 118
    sput-boolean v2, Lcom/android/internal/telephony/SingleBinary;->isBrowserdbDeleted:Z

    .line 138
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.ASSIST"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "android.search.action.GLOBAL_SEARCH"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.speech.action.WEB_SEARCH"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.intent.action.WEB_SEARCH"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SingleBinary;->SEARCH_INTENT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-string v0, "F"

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChanged:Ljava/lang/String;

    .line 106
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    .line 125
    const-string v0, "/cust/cust_path_mapping.cfg"

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->CONFIG_MAP_FILE:Ljava/lang/String;

    .line 126
    const-string v0, "/data/.OP"

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->DATA_OPERATOR_FILE:Ljava/lang/String;

    .line 127
    const-string v0, "com.lge.action.CUST_DELETE_COMPLETE"

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->OPERATOR_DELETE_COMPLETE_INTENT:Ljava/lang/String;

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.setupwizard.ACTION_START_DELETE_APK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->OPERATOR_DELETE_FILTER:Landroid/content/IntentFilter;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.action.CUST_COMPLETE_INFO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->OPERATOR_SWICHING_FILTER:Landroid/content/IntentFilter;

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->SIM_STATE_CHANGED_FILTER:Landroid/content/IntentFilter;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.intent.action.SIM_CHANGED_INFO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->SIM_CHANGED_FILTER:Landroid/content/IntentFilter;

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.appbox.bootinstall.completed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->CARRIER_APPS_INSTALL_COMPLETED_FILTER:Landroid/content/IntentFilter;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/SingleBinary$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SingleBinary$1;-><init>(Lcom/android/internal/telephony/SingleBinary;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->operatorSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    new-instance v0, Lcom/android/internal/telephony/SingleBinary$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SingleBinary$2;-><init>(Lcom/android/internal/telephony/SingleBinary;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->appInstallCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v0, Lcom/android/internal/telephony/SingleBinary$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SingleBinary$3;-><init>(Lcom/android/internal/telephony/SingleBinary;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->setupWizardStartReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    new-instance v0, Lcom/android/internal/telephony/SingleBinary$4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SingleBinary$4;-><init>(Lcom/android/internal/telephony/SingleBinary;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->simChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    const-string v0, "GSM"

    const-string v1, "[LGE][SBP] Create!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v0, "ro.build.sbp"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableSBP:Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableSBP:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "persist.sys.sim-changed"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChanged:Ljava/lang/String;

    .line 432
    const-string v0, "persist.sys.ntcode-changed"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    .line 433
    const-string v0, "persist.sys.iccid-mcc"

    const-string v1, "FFF"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    .line 434
    const-string v0, "persist.sys.mcc-list"

    const-string v1, "FFF"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    .line 435
    const-string v0, "ro.build.sbp.ui"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableUI:Ljava/lang/String;

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/telephony/SingleBinary;->notifyMappingPath()V

    .line 441
    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary;->setupWizardStartReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/SingleBinary;->OPERATOR_DELETE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 443
    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary;->simChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/SingleBinary;->SIM_STATE_CHANGED_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 444
    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary;->appInstallCompletedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/SingleBinary;->CARRIER_APPS_INSTALL_COMPLETED_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 447
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/android/internal/telephony/SingleBinary;->isLGHomedbDeleted:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 98
    sput-boolean p0, Lcom/android/internal/telephony/SingleBinary;->isLGHomedbDeleted:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/android/internal/telephony/SingleBinary;->isBrowserdbDeleted:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SingleBinary;->setClientIDBySIM(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 98
    sput-boolean p0, Lcom/android/internal/telephony/SingleBinary;->isBrowserdbDeleted:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/SingleBinary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableSBP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/SingleBinary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/SingleBinary;->checkFlexEnableStatus()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/SingleBinary;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    .line 98
    iget v0, p0, Lcom/android/internal/telephony/SingleBinary;->mMncLength:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/SingleBinary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/SingleBinary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/SingleBinary;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/android/internal/telephony/SingleBinary;->isTelephonydbDeleted:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 98
    sput-boolean p0, Lcom/android/internal/telephony/SingleBinary;->isTelephonydbDeleted:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/SingleBinary;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SingleBinary;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/SingleBinary;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SingleBinary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/SingleBinary;->setPreferredSearchEngine()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/SingleBinary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChecked:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChecked:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/SingleBinary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/SingleBinary;->revenueShareClientID()V

    return-void
.end method

.method private checkFlexEnableStatus()V
    .locals 5

    .prologue
    .line 1338
    const-string v3, "GSM"

    const-string v4, "[Flex] Check Flex Enable Status"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string v3, "persist.service.flex.enable"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, "flexModeEnable":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 1342
    sget-object v3, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SingleBinary;->displayFlexInfo(Landroid/content/Context;)V

    .line 1350
    :goto_0
    return-void

    .line 1344
    :cond_0
    const-string v3, "GSM"

    const-string v4, "[Flex] updateOriginalValues entered..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-direct {p0}, Lcom/android/internal/telephony/SingleBinary;->updateOriginalSIMValues()Ljava/lang/String;

    move-result-object v1

    .line 1346
    .local v1, "openVals":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/SingleBinary;->updateOriginalSBPValues()Ljava/lang/String;

    move-result-object v2

    .line 1347
    .local v2, "sbpVals":Ljava/lang/String;
    const-string v3, "persist.radio.flex.orgVals"

    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const-string v3, "persist.radio.flex.orgSBPs"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteDummyResource(Ljava/io/File;I)Z
    .locals 17
    .param p0, "path"    # Ljava/io/File;
    .param p1, "multiSubset"    # I

    .prologue
    .line 1090
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1091
    const/4 v14, 0x0

    .line 1170
    :goto_0
    return v14

    .line 1094
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1095
    .local v6, "files":[Ljava/io/File;
    const-string v14, "ro.lge.capp_cupss.rootdir"

    const-string v15, "/cust"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1096
    .local v3, "custCurrentPath":Ljava/lang/String;
    const-string v4, "/cust"

    .line 1098
    .local v4, "custDefaultPath":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1099
    const-string v14, "GSM"

    const-string v15, "[LGE][SBP] No Files"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v14, 0x0

    goto :goto_0

    .line 1103
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1104
    const-string v14, "GSM"

    const-string v15, "[LGE][SBP] Skip to delete!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 v14, 0x0

    goto :goto_0

    .line 1108
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1109
    .local v10, "operatorPath":Ljava/lang/String;
    const-string v14, "/"

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1110
    .local v12, "subCA":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1111
    .local v9, "multiSubCA":I
    array-length v13, v12

    .line 1112
    .local v13, "subCASize":I
    move/from16 v0, p1

    .line 1113
    .local v0, "MultiSubDepth":I
    const/4 v11, 0x0

    .line 1117
    .local v11, "protectMultiSub":I
    const/4 v14, 0x1

    const-string v15, "ro.build.sbp.ui"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-ne v14, v15, :cond_3

    .line 1118
    const/4 v11, 0x1

    .line 1120
    :cond_3
    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    .line 1121
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_1
    if-ge v2, v13, :cond_4

    .line 1122
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] SUBCA_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v12, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1124
    :cond_4
    const/4 v9, 0x1

    .line 1129
    .end local v2    # "count":I
    :cond_5
    move-object v1, v6

    .local v1, "arr$":[Ljava/io/File;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_f

    aget-object v5, v1, v7

    .line 1130
    .local v5, "f":Ljava/io/File;
    const/4 v14, 0x1

    if-ne v9, v14, :cond_b

    if-nez v11, :cond_b

    .line 1131
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1132
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    aget-object v15, v12, v0

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 1133
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] Directory: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1135
    const-string v14, "GSM"

    const-string v15, "[LGE][SBP] Delete Folder"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1137
    :cond_7
    const/4 v14, 0x0

    invoke-static {v5, v14}, Lcom/android/internal/telephony/SingleBinary;->deleteDummyResource(Ljava/io/File;I)Z

    goto :goto_3

    .line 1140
    :cond_8
    add-int/lit8 v14, v13, -0x1

    if-ge v0, v14, :cond_6

    .line 1141
    add-int/lit8 v0, v0, 0x1

    .line 1142
    invoke-static {v5, v0}, Lcom/android/internal/telephony/SingleBinary;->deleteDummyResource(Ljava/io/File;I)Z

    goto :goto_3

    .line 1146
    :cond_9
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "userdata.ubid"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 1147
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1148
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] Delete File: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1151
    :cond_a
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] Protect to delete: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1154
    :cond_b
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v12, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 1155
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] Directory: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1157
    const-string v14, "GSM"

    const-string v15, "[LGE][SBP] Delete Folder"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1159
    :cond_c
    const/4 v14, 0x0

    invoke-static {v5, v14}, Lcom/android/internal/telephony/SingleBinary;->deleteDummyResource(Ljava/io/File;I)Z

    goto/16 :goto_3

    .line 1161
    :cond_d
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "userdata.ubid"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 1162
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1163
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] Delete File: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1166
    :cond_e
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] Protect to delete: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1170
    .end local v5    # "f":Ljava/io/File;
    :cond_f
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public static deleteEmptyFolder(Ljava/io/File;)V
    .locals 8
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 1187
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1192
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_2

    .line 1193
    const-string v5, "GSM"

    const-string v6, "[LGE][SBP] No Empty folder"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1197
    :cond_2
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1198
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1199
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1200
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LGE][SBP] Delete empty folder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1202
    :cond_4
    invoke-static {v1}, Lcom/android/internal/telephony/SingleBinary;->deleteEmptyFolder(Ljava/io/File;)V

    .line 1203
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method private displayFlexInfo(Landroid/content/Context;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1407
    const-string v2, "GSM"

    const-string v3, "[Flex] Display Flex Setting Info"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const-string v2, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 1409
    .local v7, "mTelephony":Landroid/telephony/TelephonyManager;
    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1410
    .local v21, "targetOperator":Ljava/lang/String;
    const-string v2, "ro.build.target_country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1413
    .local v20, "targetCountry":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v14

    .line 1414
    .local v14, "szIccid":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v15

    .line 1415
    .local v15, "szImsi":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v19

    .line 1416
    .local v19, "szSpn":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v16

    .line 1417
    .local v16, "szMccMnc":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v13

    .line 1420
    .local v13, "szGid1":Ljava/lang/String;
    const-string v2, "ro.lge.capp_cupss.rootdir"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1421
    .local v9, "szCustPath":Ljava/lang/String;
    const-string v2, "persist.sys.mccmnc-list"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1422
    .local v17, "szNTCodeMccMnc":Ljava/lang/String;
    const-string v2, "persist.sys.subset-list"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1423
    .local v18, "szNTCodeSubset":Ljava/lang/String;
    const-string v2, "persist.sys.iccid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1424
    .local v11, "szFastIccid":Ljava/lang/String;
    const-string v2, "persist.sys.iccid-mcc"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1427
    .local v12, "szFastMcc":Ljava/lang/String;
    const-string v2, "persist.service.flex.country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1430
    .local v8, "szCountry":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BUILD TARGET Info]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[OPEN API Info]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM ICCID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM IMSI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM MCC-MNC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM SPN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM GID1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM (*)Country : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[SBP Info]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CUPSS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NTCODE MCC-MNC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NTCODE SUBSET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ICCID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ICCID-MCC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1434
    .local v10, "szDisplayInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 1435
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    .line 1441
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    const v3, -0xff0001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/telephony/SingleBinary$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/SingleBinary$7;-><init>(Lcom/android/internal/telephony/SingleBinary;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/telephony/SingleBinary$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/SingleBinary$8;-><init>(Lcom/android/internal/telephony/SingleBinary;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1499
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7d8

    const v5, 0x40020

    const/4 v6, -0x3

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1509
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1510
    const-string v2, "Flex Validatation Info"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1512
    const-string v2, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    .line 1513
    .local v22, "wm":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1514
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v22    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 1437
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/SingleBinary;->removeFlexView(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1438
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/SingleBinary;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 556
    const-class v1, Lcom/android/internal/telephony/SingleBinary;

    monitor-enter v1

    .line 557
    if-eqz p0, :cond_0

    .line 558
    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    .line 561
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mSingleBinary:Lcom/android/internal/telephony/SingleBinary;

    if-nez v0, :cond_1

    .line 562
    new-instance v0, Lcom/android/internal/telephony/SingleBinary;

    invoke-direct {v0}, Lcom/android/internal/telephony/SingleBinary;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SingleBinary;->mSingleBinary:Lcom/android/internal/telephony/SingleBinary;

    .line 565
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mSingleBinary:Lcom/android/internal/telephony/SingleBinary;

    monitor-exit v1

    return-object v0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "imsiDB"    # Ljava/lang/String;
    .param p2, "imsiSIM"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 409
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 411
    .local v2, "len":I
    if-gtz v2, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v3

    .line 412
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 414
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 415
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 416
    .local v0, "c":C
    const/16 v4, 0x78

    if-eq v0, v4, :cond_2

    const/16 v4, 0x58

    if-eq v0, v4, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v0, v4, :cond_0

    .line 414
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    .end local v0    # "c":C
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private lge_set_property(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 1517
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const-string v4, "persist."

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1521
    const-string v3, "/persist-lg/property/"

    .line 1522
    .local v3, "referencePropertyDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1524
    .local v2, "persistPropFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1525
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1526
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGE][SBP] Create New property File : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1529
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGE][SBP] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " canWrite"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1532
    .local v1, "fos":Ljava/io/FileOutputStream;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGE][SBP] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "will be set as \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1534
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "persistPropFile":Ljava/io/File;
    .end local v3    # "referencePropertyDir":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1535
    .restart local v2    # "persistPropFile":Ljava/io/File;
    .restart local v3    # "referencePropertyDir":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1536
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGE][SBP] Write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Exception! : \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mvnoMatches(Lcom/android/internal/telephony/ClientIdItem;Lcom/android/internal/telephony/ClientIdItem;)Z
    .locals 10
    .param p1, "simItem"    # Lcom/android/internal/telephony/ClientIdItem;
    .param p2, "xmlItem"    # Lcom/android/internal/telephony/ClientIdItem;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 365
    invoke-virtual {p1}, Lcom/android/internal/telephony/ClientIdItem;->getMvno_type()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "mvno_type":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ClientIdItem;->getMvno_match_data()Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "sim_mvno_match_data":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/internal/telephony/ClientIdItem;->getMvno_match_data()Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, "xml_mvno_match_data":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ClientIdItem;->getMvno_type()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/internal/telephony/ClientIdItem;->getMvno_type()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 370
    const-string v8, "spn"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 371
    if-eqz v4, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 373
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGE][SBP] Match [SIM spn]:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] == [XML spn]:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/internal/telephony/ClientIdItem;->getMvno_match_data()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_0
    return v6

    .line 376
    :cond_0
    const-string v8, "imsi"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 377
    move-object v1, v4

    .line 378
    .local v1, "imsiSIM":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-direct {p0, v5, v1}, Lcom/android/internal/telephony/SingleBinary;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 379
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGE][SBP] Match [SIM imsi]:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] == [XML imsi]:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/internal/telephony/ClientIdItem;->getMvno_match_data()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    .end local v1    # "imsiSIM":Ljava/lang/String;
    :cond_1
    const-string v8, "gid"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 383
    move-object v0, v4

    .line 384
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 385
    .local v2, "mvno_match_data_length":I
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v2, :cond_4

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 387
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGE][SBP] Match [SIM gid]:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] == [XML gid]:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/internal/telephony/ClientIdItem;->getMvno_match_data()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 390
    .end local v0    # "gid1":Ljava/lang/String;
    .end local v2    # "mvno_match_data_length":I
    :cond_2
    const-string v8, ""

    if-ne v4, v8, :cond_4

    const-string v8, ""

    if-ne v5, v8, :cond_4

    .line 391
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGE][SBP] Match [SIM]:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] == [XML]:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move v6, v7

    .line 395
    goto/16 :goto_0

    :cond_4
    move v6, v7

    .line 397
    goto/16 :goto_0
.end method

.method private notRevenueShareClientId()V
    .locals 2

    .prologue
    .line 1210
    const-string v0, "ro.com.google.clientidbase.am"

    const-string v1, "android-lge"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v0, "ro.com.google.clientidbase.gmm"

    const-string v1, "android-lge"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v0, "ro.com.google.clientidbase.ms"

    const-string v1, "android-lge"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const-string v0, "ro.com.google.clientidbase.yt"

    const-string v1, "android-lge"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v0, "ro.com.google.clientidbase"

    const-string v1, "android-lge"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method private nullChange(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 361
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private removeFlexView(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 1395
    if-eqz p1, :cond_0

    .line 1396
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1397
    const/4 p2, 0x0

    .line 1399
    :cond_0
    return-void
.end method

.method private revenueShareClientID()V
    .locals 4

    .prologue
    .line 1218
    const-string v2, "ro.lge.revshare"

    const-string v3, "2014"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, "contract":Ljava/lang/String;
    const-string v2, "2014"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1220
    const-string v2, "com.android.chrome"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SingleBinary;->setPreferredBrowser(Ljava/lang/String;)V

    .line 1223
    :cond_0
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1224
    .local v1, "numeric":Ljava/lang/String;
    const-string v2, "52501"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "52502"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1225
    :cond_1
    const-string v2, "ro.com.google.clientidbase.am"

    const-string v3, "android-singtel-sg"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    :goto_0
    const-string v2, "ro.com.google.clientidbase.gmm"

    const-string v3, "android-om-lge"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string v2, "ro.com.google.clientidbase.ms"

    const-string v3, "android-om-lge"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const-string v2, "ro.com.google.clientidbase.yt"

    const-string v3, "android-om-lge"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v2, "ro.com.google.clientidbase"

    const-string v3, "android-om-lge"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    return-void

    .line 1227
    :cond_2
    const-string v2, "ro.com.google.clientidbase.am"

    const-string v3, "android-om-lge"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setClientIDBySIM(Ljava/lang/String;)V
    .locals 33
    .param p1, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v11, 0x0

    .line 248
    .local v11, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/16 v29, 0x0

    .line 249
    .local v29, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 250
    .local v4, "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    const/16 v22, 0x0

    .line 252
    .local v22, "reader":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 254
    .local v10, "eventType":I
    :try_start_0
    new-instance v23, Ljava/io/BufferedReader;

    new-instance v30, Ljava/io/FileReader;

    const-string v31, "/cust/client_id.xml"

    invoke-direct/range {v30 .. v31}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .local v23, "reader":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    move-object/from16 v22, v23

    .line 261
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    .line 262
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v29

    .line 263
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 264
    .end local v4    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .local v5, "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    :try_start_2
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 265
    invoke-interface/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    .line 268
    const/4 v15, 0x0

    .line 269
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    const/4 v6, 0x0

    .line 270
    .local v6, "clientid":Lcom/android/internal/telephony/ClientIdInfo;
    const/16 v24, 0x0

    .line 272
    .local v24, "simBasedParsing":Z
    :goto_1
    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v10, v0, :cond_a

    .line 273
    invoke-interface/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 274
    .local v21, "name":Ljava/lang/String;
    packed-switch v10, :pswitch_data_0

    .line 309
    :cond_0
    :goto_2
    invoke-interface/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    .line 310
    goto :goto_1

    .line 256
    .end local v5    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .end local v6    # "clientid":Lcom/android/internal/telephony/ClientIdInfo;
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .end local v21    # "name":Ljava/lang/String;
    .end local v24    # "simBasedParsing":Z
    .restart local v4    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    :catch_0
    move-exception v7

    .line 257
    .local v7, "e":Ljava/io/FileNotFoundException;
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[LGE][SBP] FileNotFoundException Exception"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v4    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .restart local v6    # "clientid":Lcom/android/internal/telephony/ClientIdInfo;
    .restart local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v24    # "simBasedParsing":Z
    :pswitch_0
    if-eqz v21, :cond_1

    :try_start_3
    const-string v30, "clientid_sim"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 277
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .restart local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    new-instance v6, Lcom/android/internal/telephony/ClientIdInfo;

    .end local v6    # "clientid":Lcom/android/internal/telephony/ClientIdInfo;
    invoke-direct {v6}, Lcom/android/internal/telephony/ClientIdInfo;-><init>()V

    .line 279
    .restart local v6    # "clientid":Lcom/android/internal/telephony/ClientIdInfo;
    const/16 v24, 0x1

    goto :goto_2

    .line 280
    :cond_1
    if-eqz v24, :cond_8

    if-eqz v21, :cond_8

    const-string v30, "info"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 281
    const/16 v30, 0x0

    const-string v31, "mcc"

    invoke-interface/range {v29 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->nullChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 282
    .local v17, "mcc":Ljava/lang/String;
    const/16 v30, 0x0

    const-string v31, "mnc"

    invoke-interface/range {v29 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->nullChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 283
    .local v18, "mnc":Ljava/lang/String;
    const-string v30, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_7

    const-string v30, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_7

    const-string v3, ""

    .line 284
    .local v3, "MergedMccMnc":Ljava/lang/String;
    :goto_3
    const/16 v30, 0x0

    const-string v31, "mvno_type"

    invoke-interface/range {v29 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->nullChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 285
    .local v20, "mvno_type":Ljava/lang/String;
    const/16 v30, 0x0

    const-string v31, "mvno_match_data"

    invoke-interface/range {v29 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->nullChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 287
    .local v19, "mvno_match_data":Ljava/lang/String;
    new-instance v14, Lcom/android/internal/telephony/ClientIdItem;

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v30

    invoke-direct {v14, v3, v0, v1, v2}, Lcom/android/internal/telephony/ClientIdItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/ClientIdInfo;)V

    .line 288
    .local v14, "info":Lcom/android/internal/telephony/ClientIdItem;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 311
    .end local v3    # "MergedMccMnc":Ljava/lang/String;
    .end local v6    # "clientid":Lcom/android/internal/telephony/ClientIdInfo;
    .end local v14    # "info":Lcom/android/internal/telephony/ClientIdItem;
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .end local v17    # "mcc":Ljava/lang/String;
    .end local v18    # "mnc":Ljava/lang/String;
    .end local v19    # "mvno_match_data":Ljava/lang/String;
    .end local v20    # "mvno_type":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v24    # "simBasedParsing":Z
    :catch_1
    move-exception v8

    move-object v4, v5

    .line 312
    .end local v5    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .restart local v4    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .local v8, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[LGE][SBP] Main Parser Exception"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v8    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v30, "gsm.apn.sim.operator.mvno.type"

    const-string v31, ""

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 318
    .local v27, "sim_mvno_type":Ljava/lang/String;
    const-string v30, "gsm.apn.sim.operator.mvno.data"

    const-string v31, ""

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 320
    .local v26, "sim_mvno_match_data":Ljava/lang/String;
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[LGE][SBP] Main Parser MCCMNC : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[LGE][SBP] Main Parser MVNO_TYPE : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[LGE][SBP] Main Parser MVNO_DATA : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v25, Lcom/android/internal/telephony/ClientIdItem;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/ClientIdItem;-><init>()V

    .line 325
    .local v25, "sim_item":Lcom/android/internal/telephony/ClientIdItem;
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ClientIdItem;->setMccmnc(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->nullChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ClientIdItem;->setMvno_type(Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->nullChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ClientIdItem;->setMvno_match_data(Ljava/lang/String;)V

    .line 329
    const-string v30, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2

    const-string v30, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 330
    :cond_2
    const-string v30, "GSM"

    const-string v31, "[LGE][SBP] MVNO_TYPE or DATA is NULL!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_3
    const/16 v16, 0x0

    .line 334
    .local v16, "matched":Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/ClientIdItem;

    .line 335
    .local v28, "xmlItem":Lcom/android/internal/telephony/ClientIdItem;
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/ClientIdItem;->getMccmnc()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/ClientIdItem;->getMccmnc()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->mvnoMatches(Lcom/android/internal/telephony/ClientIdItem;Lcom/android/internal/telephony/ClientIdItem;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SingleBinary;->notRevenueShareClientId()V

    .line 338
    const-string v30, "persist.radio.sim-fixed"

    const-string v31, "not_rev_share"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v30, "GSM"

    const-string v31, "[LGE][SBP] Set as android-lge. Client ID fixed"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/16 v16, 0x1

    .line 346
    .end local v28    # "xmlItem":Lcom/android/internal/telephony/ClientIdItem;
    :cond_5
    if-nez v16, :cond_6

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SingleBinary;->revenueShareClientID()V

    .line 348
    const-string v30, "persist.radio.sim-fixed"

    const-string v31, "rev_share"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v30, "GSM"

    const-string v31, "[LGE][SBP] Set as android-om-lge. Client-ID fixed"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_6
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_b

    .line 354
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/telephony/ClientIdItem;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/ClientIdItem;->setClientid(Lcom/android/internal/telephony/ClientIdInfo;)V

    .line 355
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 353
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 283
    .end local v4    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .end local v12    # "i":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "matched":Z
    .end local v25    # "sim_item":Lcom/android/internal/telephony/ClientIdItem;
    .end local v26    # "sim_mvno_match_data":Ljava/lang/String;
    .end local v27    # "sim_mvno_type":Ljava/lang/String;
    .restart local v5    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .restart local v6    # "clientid":Lcom/android/internal/telephony/ClientIdInfo;
    .restart local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .restart local v17    # "mcc":Ljava/lang/String;
    .restart local v18    # "mnc":Ljava/lang/String;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v24    # "simBasedParsing":Z
    :cond_7
    :try_start_4
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 289
    .end local v17    # "mcc":Ljava/lang/String;
    .end local v18    # "mnc":Ljava/lang/String;
    :cond_8
    if-eqz v24, :cond_0

    if-eqz v21, :cond_0

    const-string v30, "prop"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 290
    const/16 v30, 0x0

    const-string v31, "clientidbase"

    invoke-interface/range {v29 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->nullChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ClientIdInfo;->setClientidbase(Ljava/lang/String;)V

    .line 291
    const/16 v30, 0x0

    const-string v31, "clientidbase_ms"

    invoke-interface/range {v29 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->nullChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ClientIdInfo;->setClientidbase_ms(Ljava/lang/String;)V

    .line 292
    const/16 v30, 0x0

    const-string v31, "clientidbase_am"

    invoke-interface/range {v29 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->nullChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ClientIdInfo;->setClientidbase_am(Ljava/lang/String;)V

    .line 293
    const/16 v30, 0x0

    const-string v31, "clientidbase_gmm"

    invoke-interface/range {v29 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->nullChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ClientIdInfo;->setClientidbase_gmm(Ljava/lang/String;)V

    .line 294
    const/16 v30, 0x0

    const-string v31, "clientidbase_yt"

    invoke-interface/range {v29 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->nullChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ClientIdInfo;->setClientidbase_yt(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 313
    .end local v6    # "clientid":Lcom/android/internal/telephony/ClientIdInfo;
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .end local v21    # "name":Ljava/lang/String;
    .end local v24    # "simBasedParsing":Z
    :catch_2
    move-exception v9

    move-object v4, v5

    .line 314
    .end local v5    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .restart local v4    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .local v9, "e2":Ljava/lang/Exception;
    :goto_7
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[LGE][SBP] Main Parser Exception"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 298
    .end local v4    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .end local v9    # "e2":Ljava/lang/Exception;
    .restart local v5    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .restart local v6    # "clientid":Lcom/android/internal/telephony/ClientIdInfo;
    .restart local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v24    # "simBasedParsing":Z
    :pswitch_1
    if-eqz v21, :cond_0

    :try_start_5
    const-string v30, "clientid_sim"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 299
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/ClientIdItem;

    .line 300
    .restart local v14    # "info":Lcom/android/internal/telephony/ClientIdItem;
    invoke-virtual {v14, v6}, Lcom/android/internal/telephony/ClientIdItem;->setClientid(Lcom/android/internal/telephony/ClientIdInfo;)V

    .line 301
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    .line 303
    .end local v14    # "info":Lcom/android/internal/telephony/ClientIdItem;
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_2

    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v21    # "name":Ljava/lang/String;
    :cond_a
    move-object v4, v5

    .line 315
    .end local v5    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .restart local v4    # "clientIdItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    goto/16 :goto_5

    .line 357
    .end local v6    # "clientid":Lcom/android/internal/telephony/ClientIdInfo;
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/ClientIdItem;>;"
    .end local v24    # "simBasedParsing":Z
    .restart local v12    # "i":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "matched":Z
    .restart local v25    # "sim_item":Lcom/android/internal/telephony/ClientIdItem;
    .restart local v26    # "sim_mvno_match_data":Ljava/lang/String;
    .restart local v27    # "sim_mvno_type":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    .line 358
    return-void

    .line 313
    .end local v12    # "i":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "matched":Z
    .end local v25    # "sim_item":Lcom/android/internal/telephony/ClientIdItem;
    .end local v26    # "sim_mvno_match_data":Ljava/lang/String;
    .end local v27    # "sim_mvno_type":Ljava/lang/String;
    :catch_3
    move-exception v9

    goto :goto_7

    .line 311
    :catch_4
    move-exception v8

    goto/16 :goto_4

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPreferredBrowser(Ljava/lang/String;)V
    .locals 14
    .param p1, "strDefaultBrowser"    # Ljava/lang/String;

    .prologue
    .line 1237
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    const-string v12, "http://www.lge.com"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1239
    .local v10, "urlIntent":Landroid/content/Intent;
    sget-object v11, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1240
    .local v5, "mPackageManager":Landroid/content/pm/PackageManager;
    const v11, 0x10040

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 1243
    .local v8, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v8, :cond_0

    .line 1244
    const-string v11, "GSM"

    const-string v12, "setPreferredBrowser() rList is NULL error!!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :goto_0
    return-void

    .line 1248
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 1250
    .local v4, "iSize":I
    const/4 v11, 0x2

    if-ge v4, v11, :cond_1

    .line 1251
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setPreferredBrowser() rList size ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " return"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1255
    :cond_1
    const/4 v2, 0x0

    .line 1256
    .local v2, "filter":Landroid/content/IntentFilter;
    new-array v9, v4, [Landroid/content/ComponentName;

    .line 1257
    .local v9, "set":[Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 1259
    .local v1, "browser":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 1261
    .local v6, "match":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1262
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1263
    .local v7, "r":Landroid/content/pm/ResolveInfo;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1264
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v9, v3

    .line 1267
    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1268
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1270
    aget-object v1, v9, v3

    .line 1271
    iget v6, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 1261
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1275
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "r":Landroid/content/pm/ResolveInfo;
    :cond_3
    if-nez v2, :cond_4

    .line 1276
    const-string v11, "GSM"

    const-string v12, "setPreferredBrowser() cannot find filter error!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1280
    :cond_4
    invoke-virtual {v5, v2, v6, v9, v1}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1281
    const-string v11, "GSM"

    const-string v12, "setPreferredBrowser() OK"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPreferredSearchEngine()V
    .locals 19

    .prologue
    .line 1285
    sget-object v2, Lcom/android/internal/telephony/SingleBinary;->SEARCH_INTENT:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v13, v2, v6

    .line 1286
    .local v13, "search":Ljava/lang/String;
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1287
    .local v15, "urlIntent":Landroid/content/Intent;
    sget-object v16, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1288
    .local v9, "mPackageManager":Landroid/content/pm/PackageManager;
    const v16, 0x10040

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 1291
    .local v12, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v12, :cond_1

    .line 1292
    const-string v16, "GSM"

    const-string v17, "[LGE][SBP] setPreferredSearchEngine() rList is NULL error!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1296
    :cond_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    .line 1297
    .local v7, "iSize":I
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[LGE][SBP] setPreferredSearchEngine() rList size ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v7, v0, :cond_0

    .line 1303
    const/4 v4, 0x0

    .line 1304
    .local v4, "filter":Landroid/content/IntentFilter;
    new-array v14, v7, [Landroid/content/ComponentName;

    .line 1305
    .local v14, "set":[Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 1307
    .local v3, "browser":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 1308
    .local v10, "match":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_3

    .line 1309
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1310
    .local v11, "r":Landroid/content/pm/ResolveInfo;
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1311
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v16, Landroid/content/ComponentName;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v16, v14, v5

    .line 1314
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "com.google.android.googlequicksearchbox"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1315
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1317
    aget-object v3, v14, v5

    .line 1318
    iget v10, v11, Landroid/content/pm/ResolveInfo;->match:I

    .line 1308
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1322
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "r":Landroid/content/pm/ResolveInfo;
    :cond_3
    if-nez v4, :cond_4

    .line 1323
    const-string v16, "GSM"

    const-string v17, "[LGE][SBP] setPreferredSearchEngine() cannot find filter error!!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1327
    :cond_4
    invoke-virtual {v9, v4, v10, v14, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1328
    const-string v16, "GSM"

    const-string v17, "[LGE][SBP] setPreferredSearchEngine() OK"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1330
    .end local v3    # "browser":Landroid/content/ComponentName;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "i":I
    .end local v7    # "iSize":I
    .end local v9    # "mPackageManager":Landroid/content/pm/PackageManager;
    .end local v10    # "match":I
    .end local v12    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "search":Ljava/lang/String;
    .end local v14    # "set":[Landroid/content/ComponentName;
    .end local v15    # "urlIntent":Landroid/content/Intent;
    :cond_5
    return-void
.end method

.method private updateOriginalSBPValues()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1376
    const-string v5, "GSM"

    const-string v6, "[Flex] update Original PRI Values"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const-string v0, ""

    .line 1380
    .local v0, "flexOrgSBPvalues":Ljava/lang/String;
    const-string v5, "ro.lge.capp_cupss.rootdir"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1381
    .local v1, "orgCustPath":Ljava/lang/String;
    const-string v5, "persist.sys.ntcode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1382
    .local v4, "orgNTCode":Ljava/lang/String;
    const-string v5, "persist.sys.iccid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1383
    .local v2, "orgFastIccid":Ljava/lang/String;
    const-string v5, "persist.sys.iccid-mcc"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1385
    .local v3, "orgFastMcc":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1387
    return-object v0
.end method

.method private updateOriginalSIMValues()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1357
    const-string v2, "GSM"

    const-string v3, "[Flex] update Original PRI Values"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    sget-object v2, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1359
    .local v1, "mTelephony":Landroid/telephony/TelephonyManager;
    const-string v0, ""

    .line 1362
    .local v0, "flexOriginalValues":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1369
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x5b

    if-ge v2, v3, :cond_0

    .line 1370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    :cond_0
    return-object v0
.end method


# virtual methods
.method public deleteOthercountryApks()V
    .locals 10

    .prologue
    .line 451
    const-string v7, "GSM"

    const-string v8, "[LGE][SBP] deleteOthercountryApks called!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v7, "true"

    const-string v8, "ro.lge.capp_del_country_apk"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/telephony/SingleBinary;->parseCarrierAppList()Ljava/util/Set;

    move-result-object v5

    .line 454
    .local v5, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    const-string v7, "/persist-lg/tmo/file_list"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v2, "file_list":Ljava/io/File;
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 456
    const-string v7, "GSM"

    const-string v8, "[LGE][SBP] list not empty!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 459
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 461
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 462
    const-string v7, "GSM"

    const-string v8, "[LGE][SBP] file_list canWrite"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 465
    .local v3, "fos2":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 467
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v3    # "fos2":Ljava/io/FileOutputStream;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "GSM"

    const-string v8, "[LGE][SBP] deleteOthercountryApks Exception!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file_list":Ljava/io/File;
    .end local v5    # "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void

    .line 469
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    .restart local v2    # "file_list":Ljava/io/File;
    .restart local v3    # "fos2":Ljava/io/FileOutputStream;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGE][SBP] list content!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 471
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 477
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v3    # "fos2":Ljava/io/FileOutputStream;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v7, "GSM"

    const-string v8, "[LGE][SBP] list empty!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public enableStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableSBP:Ljava/lang/String;

    return-object v0
.end method

.method public getFileContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "jsonFilePath"    # Ljava/lang/String;

    .prologue
    .line 536
    const/4 v5, 0x0

    .line 539
    .local v5, "jsonFromDisableAppListFile":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 540
    .local v4, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v7

    int-to-long v2, v7

    .line 541
    .local v2, "filesize":J
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 542
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "File size is something wrong"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v2    # "filesize":J
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "GSM"

    const-string v8, "[LGE][SBP] getFileContent Exception!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v5

    .line 544
    .restart local v2    # "filesize":J
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_0
    long-to-int v7, v2

    :try_start_1
    new-array v0, v7, [B

    .line 545
    .local v0, "buffer":[B
    :cond_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 548
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5    # "jsonFromDisableAppListFile":Ljava/lang/String;
    .local v6, "jsonFromDisableAppListFile":Ljava/lang/String;
    move-object v5, v6

    .line 551
    .end local v6    # "jsonFromDisableAppListFile":Ljava/lang/String;
    .restart local v5    # "jsonFromDisableAppListFile":Ljava/lang/String;
    goto :goto_0
.end method

.method public getGid(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1174
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 1175
    const-string v1, "gsm.sim.operator.gid"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    :cond_0
    :goto_0
    return-object v0

    .line 1177
    :cond_1
    new-instance v1, Lcom/lge/uicc/LGUiccCard;

    invoke-direct {v1}, Lcom/lge/uicc/LGUiccCard;-><init>()V

    invoke-virtual {v1}, Lcom/lge/uicc/LGUiccCard;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, "gid":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0
.end method

.method public notifyMappingPath()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 578
    const-string v5, "persist.sys.mccmnc-list"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "ntcodeMccMnc":Ljava/lang/String;
    const-string v5, "persist.sys.subset-list"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "ntcodeSubset":Ljava/lang/String;
    const-string v5, "persist.sys.multi-cust"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, "multiCupss":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 584
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    sget-boolean v5, Lcom/android/internal/telephony/SingleBinary;->isMatchedStatus:Z

    if-nez v5, :cond_0

    .line 589
    sget-object v5, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 590
    .local v1, "km":Landroid/app/KeyguardManager;
    const-string v5, "keyguard"

    invoke-virtual {v1, v5}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    .line 591
    .local v0, "kl":Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 593
    new-instance v5, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v6, "WARNING!"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current version is not avaiable for user. Can\'t find matched cust for NT-code mcc/mnc["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], subset["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x108008a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    .line 599
    iget-object v5, p0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 600
    iget-object v5, p0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 601
    iget-object v5, p0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 602
    iget-object v5, p0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 605
    .end local v0    # "kl":Landroid/app/KeyguardManager$KeyguardLock;
    .end local v1    # "km":Landroid/app/KeyguardManager;
    :cond_0
    return-void
.end method

.method public parseCarrierAppList()Ljava/util/Set;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    const-string v12, "persist.sys.mcc-list"

    const-string v13, "FFF"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 485
    .local v9, "ntcodeMcc":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ro.lge.capp_cupss.rootdir"

    const-string v14, "/cust"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/config/app-enabled-conf.json"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 486
    .local v7, "jsonFilePath":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/SingleBinary$5;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/SingleBinary$5;-><init>(Lcom/android/internal/telephony/SingleBinary;)V

    .line 502
    .local v4, "getPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SingleBinary;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 504
    .local v11, "response":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    const-string v12, "ApplicationEnabledSetting"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 507
    .local v3, "fullAppList":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_2

    .line 510
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 514
    .local v10, "oneSet":Lorg/json/JSONObject;
    :try_start_1
    const-string v12, "sim.mcc"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 519
    .local v8, "jsonMCC":Ljava/lang/String;
    if-eqz v8, :cond_1

    :try_start_2
    const-string v12, ""

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 521
    :cond_0
    const-string v12, "pkglist"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 522
    .local v0, "apkList":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_1

    .line 523
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 524
    .local v1, "app":Lorg/json/JSONObject;
    const-string v12, "path"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 522
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 515
    .end local v0    # "apkList":Lorg/json/JSONArray;
    .end local v1    # "app":Lorg/json/JSONObject;
    .end local v6    # "j":I
    .end local v8    # "jsonMCC":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 507
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 529
    .end local v3    # "fullAppList":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v10    # "oneSet":Lorg/json/JSONObject;
    .end local v11    # "response":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 530
    .local v2, "e":Lorg/json/JSONException;
    const-string v12, "GSM"

    const-string v13, "[LGE][SBP] parseCarrierAppList JSONException!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v4
.end method

.method public readConfigMapFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 1033
    const-string v2, "persist.radio.mvno.subset-list"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "mvno_subset":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1035
    move-object v1, v0

    .line 1039
    .local v1, "ntCodeSubsetList":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1037
    .end local v1    # "ntCodeSubsetList":Ljava/lang/String;
    :cond_0
    const-string v2, "persist.sys.subset-list"

    const-string v3, "FF"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ntCodeSubsetList":Ljava/lang/String;
    goto :goto_0
.end method

.method public readConfigMapFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "ntCodeSubsetList"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 1049
    const/4 v3, 0x0

    .line 1050
    .local v3, "displayUI":Z
    const/4 v0, 0x0

    .line 1051
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v6, "/cust"

    .line 1053
    .local v6, "matched_rootdir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v8, "/cust/cust_path_mapping.cfg"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1055
    .local v2, "cupssPathFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1057
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1062
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1063
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 1064
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1065
    .local v4, "keyValue":[Ljava/lang/String;
    array-length v8, v4

    if-le v8, v10, :cond_0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1067
    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1068
    .local v7, "subset":[Ljava/lang/String;
    array-length v8, v7

    if-le v8, v10, :cond_0

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1069
    const/4 v8, 0x1

    aget-object v6, v7, v8

    .line 1070
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/internal/telephony/SingleBinary;->isMatchedStatus:Z

    .line 1076
    .end local v4    # "keyValue":[Ljava/lang/String;
    .end local v7    # "subset":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1081
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-object v6

    .line 1077
    :catch_0
    move-exception v8

    goto :goto_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method public switchCustBaseNTCode()V
    .locals 6

    .prologue
    .line 992
    const-string v3, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableSBP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 993
    const-string v3, "persist.sys.mccmnc-list"

    const-string v4, "FFFFF"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 994
    .local v2, "ntcode_mccmnc":Ljava/lang/String;
    const-string v1, "/cust"

    .line 996
    .local v1, "mapping_rootdir":Ljava/lang/String;
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE][SBP] Try to Switch CUST based on NTCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v3, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/internal/telephony/SingleBinary;->mTryToSwitch:Z

    if-nez v3, :cond_2

    .line 1000
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/SingleBinary;->mTryToSwitch:Z

    .line 1002
    const-string v3, "FFFFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 1003
    :cond_0
    const-string v3, "persist.radio.first-mccmnc"

    const-string v4, "FFFFF"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1009
    sget-boolean v3, Lcom/android/internal/telephony/SingleBinary;->isMatchedStatus:Z

    if-eqz v3, :cond_3

    .line 1010
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE][SBP] Mapping CUST Dir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const-string v3, "persist.radio.first-mccmnc"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    sget-object v3, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SingleBinary;->operatorSwitchReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/internal/telephony/SingleBinary;->OPERATOR_SWICHING_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1015
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lge.action.CUST_CHANGED_INFO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "cust_old_path"

    const-string v4, "persist.sys.cupss.prev-rootdir"

    const-string v5, "/cust"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    sget-object v3, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1023
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mapping_rootdir":Ljava/lang/String;
    .end local v2    # "ntcode_mccmnc":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1020
    .restart local v1    # "mapping_rootdir":Ljava/lang/String;
    .restart local v2    # "ntcode_mccmnc":Ljava/lang/String;
    :cond_3
    const-string v3, "persist.radio.first-mccmnc"

    const-string v4, "FFFFF"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchCustBaseUI(Ljava/lang/String;I)V
    .locals 38
    .param p1, "Imsi"    # Ljava/lang/String;
    .param p2, "mncLength"    # I

    .prologue
    .line 747
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;

    .line 748
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SingleBinary;->mMncLength:I

    .line 750
    const-string v35, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->mEnableUI:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    const-string v35, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_9

    const-string v35, "persist.radio.first-mccmnc"

    const-string v36, ""

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_9

    .line 751
    const-string v27, "FFFFF"

    .line 752
    .local v27, "sim_mccmnc":Ljava/lang/String;
    const-string v19, "/cust"

    .line 753
    .local v19, "mapping_rootdir":Ljava/lang/String;
    const-string v35, "ro.lge.capp_cupss.rootdir"

    const-string v36, "/cust"

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 755
    .local v5, "cupss_rootdir":Ljava/lang/String;
    const/4 v7, 0x1

    .line 757
    .local v7, "displayUI":Z
    const-string v35, "GSM"

    const-string v36, "[LGE][SBP] Try to Switch CUST based on the Cust confirmed UI"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    .line 762
    const-string v35, "3"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SingleBinary;->mMncLength:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x6

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 769
    :cond_0
    :goto_0
    const-string v35, "GSM"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[LGE][SBP] sim_mccmnc: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v35, "gsm.sim.operator.alpha"

    const-string v36, ""

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 773
    .local v28, "spn":Ljava/lang/String;
    const-string v35, "GSM"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[LGE][SBP] spn: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v35, "persist.sys.mccmnc-list"

    const-string v36, ""

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 775
    .local v22, "ntCodeMccMnc":Ljava/lang/String;
    const-string v35, "GSM"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[LGE][SBP] ntCodeMccMnc: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v9, 0x0

    .line 777
    .local v9, "gidProperty":Ljava/lang/String;
    const/4 v15, 0x0

    .line 778
    .local v15, "isSpnMatched":Z
    const/4 v14, 0x0

    .line 781
    .local v14, "isSimMccMncInNTCode":Z
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_3

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 784
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ro.config.spnnamelist_"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 785
    .local v30, "spnProperties":Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ro.config.spnsubsetlist_"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 786
    .local v32, "spnSubsetProperties":Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ro.config.cupss_gid_"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 787
    const/4 v14, 0x1

    .line 788
    const-string v35, "GSM"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[LGE][SBP] spnProperties: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v35, "GSM"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[LGE][SBP] spnSubsetProperties: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    if-eqz v30, :cond_3

    const-string v35, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_3

    .line 791
    const-string v35, ","

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 792
    .local v29, "spnList":[Ljava/lang/String;
    const-string v35, ","

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 793
    .local v31, "spnSubsetList":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v11, v0, :cond_2

    .line 794
    aget-object v35, v29, v11

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 795
    aget-object v35, v31, v11

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    const-string v36, "FF"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_1

    .line 796
    const-string v35, "persist.radio.mvno.subset-list"

    aget-object v36, v31, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v35, "GSM"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[LGE][SBP] mvno set other sim: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    aget-object v37, v31, v11

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_1
    const/4 v15, 0x1

    .line 803
    :cond_2
    const-string v35, "GSM"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[LGE][SBP] isSpnMatched : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    if-nez v15, :cond_3

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ro.config.spnopenui_"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, "0"

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "1"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 806
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ro.config.spnopensubset_"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, "01"

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 807
    .local v33, "spnopenuisubset":Ljava/lang/String;
    const-string v35, "persist.radio.mvno.subset-list"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v35, "GSM"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[LGE][SBP] mvno set open ui : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    .end local v11    # "i":I
    .end local v29    # "spnList":[Ljava/lang/String;
    .end local v30    # "spnProperties":Ljava/lang/String;
    .end local v31    # "spnSubsetList":[Ljava/lang/String;
    .end local v32    # "spnSubsetProperties":Ljava/lang/String;
    .end local v33    # "spnopenuisubset":Ljava/lang/String;
    :cond_3
    const-string v35, "GSM"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[LGE][SBP] isSimMccMncInNTCode : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    if-eqz v14, :cond_e

    .line 816
    if-eqz v9, :cond_c

    const-string v35, ""

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_c

    const-string v35, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->getGid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_c

    .line 817
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ro.config.gidsubset_"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, "FF"

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 818
    .local v10, "gidsubset":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 819
    const-string v35, "/cust"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_4

    .line 820
    const-string v35, "persist.radio.mvno.subset-list"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    .end local v10    # "gidsubset":Ljava/lang/String;
    :cond_4
    :goto_2
    const-string v35, "/cust"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 845
    move-object/from16 v19, v5

    .line 849
    :cond_5
    move-object/from16 v8, v19

    .line 852
    .local v8, "finalMapping_rootdir":Ljava/lang/String;
    const-string v35, "persist.sys.backup-status"

    const-string v36, "F"

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "1"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 853
    const-string v35, "GSM"

    const-string v36, "[LGE][SBP] RESTORE Mode support!!"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v7, 0x0

    .line 859
    :cond_6
    const-string v35, "persist.radio.first-mccmnc"

    const-string v36, ""

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_10

    .line 860
    const-string v35, "GSM"

    const-string v36, "[LGE][SBP] CUST locked!!"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v7, 0x0

    .line 869
    :goto_3
    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v7, v0, :cond_9

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_9

    .line 870
    const-string v35, "GSM"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[LGE][SBP] CUST setting MCC,MNC :"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    sget-object v35, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    const-string v36, "keyguard"

    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/KeyguardManager;

    .line 874
    .local v17, "km":Landroid/app/KeyguardManager;
    const-string v35, "keyguard"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v16

    .line 875
    .local v16, "kl":Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual/range {v16 .. v16}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 878
    sget-object v35, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->operatorSwitchReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->OPERATOR_SWICHING_FILTER:Landroid/content/IntentFilter;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 880
    new-instance v18, Lcom/android/internal/telephony/SingleBinary$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/SingleBinary$6;-><init>(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;)V

    .line 917
    .local v18, "listener":Landroid/content/DialogInterface$OnClickListener;
    const-string v35, "persist.radio.mvno.subset-list"

    const-string v36, ""

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 919
    .local v21, "mvno_subset":Ljava/lang/String;
    const-string v35, "ro.lge.sbp.block-popup"

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 920
    .local v13, "isOkCancelNotRequired":Ljava/lang/Boolean;
    const-string v35, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    if-nez v14, :cond_7

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    if-eqz v35, :cond_13

    .line 921
    :cond_7
    new-instance v12, Landroid/content/Intent;

    const-string v35, "com.lge.action.CUST_CHANGED_INFO"

    move-object/from16 v0, v35

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 922
    .local v12, "intent":Landroid/content/Intent;
    const-string v35, "cust_old_path"

    const-string v36, "ro.lge.capp_cupss.rootdir"

    const-string v37, "/cust"

    invoke-static/range {v36 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    sget-object v35, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 924
    const-string v35, "persist.radio.cupss.next-root"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    if-nez v14, :cond_8

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    if-eqz v35, :cond_11

    .line 926
    :cond_8
    const-string v35, "persist.radio.first-mccmnc"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :goto_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v25

    .line 935
    .local v25, "r":Landroid/content/res/Resources;
    sget v35, Lcom/lge/internal/R$string;->sim_change_please_wait:I

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 936
    .local v34, "title":Ljava/lang/String;
    sget v35, Lcom/lge/internal/R$string;->sim_change_automatically_update_settings:I

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 937
    .local v20, "message":Ljava/lang/String;
    new-instance v35, Landroid/app/AlertDialog$Builder;

    sget-object v36, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    invoke-direct/range {v35 .. v36}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v35

    const/16 v36, 0x7d3

    invoke-virtual/range {v35 .. v36}, Landroid/view/Window;->setType(I)V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/app/AlertDialog;->show()V

    .line 984
    .end local v5    # "cupss_rootdir":Ljava/lang/String;
    .end local v7    # "displayUI":Z
    .end local v8    # "finalMapping_rootdir":Ljava/lang/String;
    .end local v9    # "gidProperty":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "isOkCancelNotRequired":Ljava/lang/Boolean;
    .end local v14    # "isSimMccMncInNTCode":Z
    .end local v15    # "isSpnMatched":Z
    .end local v16    # "kl":Landroid/app/KeyguardManager$KeyguardLock;
    .end local v17    # "km":Landroid/app/KeyguardManager;
    .end local v18    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v19    # "mapping_rootdir":Ljava/lang/String;
    .end local v20    # "message":Ljava/lang/String;
    .end local v21    # "mvno_subset":Ljava/lang/String;
    .end local v22    # "ntCodeMccMnc":Ljava/lang/String;
    .end local v25    # "r":Landroid/content/res/Resources;
    .end local v27    # "sim_mccmnc":Ljava/lang/String;
    .end local v28    # "spn":Ljava/lang/String;
    .end local v34    # "title":Ljava/lang/String;
    :cond_9
    :goto_5
    return-void

    .line 766
    .restart local v5    # "cupss_rootdir":Ljava/lang/String;
    .restart local v7    # "displayUI":Z
    .restart local v19    # "mapping_rootdir":Ljava/lang/String;
    .restart local v27    # "sim_mccmnc":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x5

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 793
    .restart local v9    # "gidProperty":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v14    # "isSimMccMncInNTCode":Z
    .restart local v15    # "isSpnMatched":Z
    .restart local v22    # "ntCodeMccMnc":Ljava/lang/String;
    .restart local v28    # "spn":Ljava/lang/String;
    .restart local v29    # "spnList":[Ljava/lang/String;
    .restart local v30    # "spnProperties":Ljava/lang/String;
    .restart local v31    # "spnSubsetList":[Ljava/lang/String;
    .restart local v32    # "spnSubsetProperties":Ljava/lang/String;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 822
    .end local v11    # "i":I
    .end local v29    # "spnList":[Ljava/lang/String;
    .end local v30    # "spnProperties":Ljava/lang/String;
    .end local v31    # "spnSubsetList":[Ljava/lang/String;
    .end local v32    # "spnSubsetProperties":Ljava/lang/String;
    :cond_c
    if-nez v15, :cond_d

    const-string v35, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 824
    const/16 v35, 0x3

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 825
    .local v26, "simMNC":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 826
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_4

    const-string v35, "/cust"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_4

    .line 827
    const-string v35, "persist.radio.mvno.subset-list"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 830
    .end local v26    # "simMNC":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 834
    :cond_e
    if-eqz v22, :cond_f

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_f

    const-string v35, "persist.sys.mcc-list"

    const-string v36, ""

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "FFF"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_f

    .line 837
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ro.config.spnopensubset_"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    aget-object v36, v36, v37

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, "FF"

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 838
    .local v24, "openSubset":Ljava/lang/String;
    const-string v35, "persist.radio.mvno.subset-list"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v35, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    aget-object v35, v35, v36

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 840
    goto/16 :goto_2

    .line 841
    .end local v24    # "openSubset":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 865
    .restart local v8    # "finalMapping_rootdir":Ljava/lang/String;
    :cond_10
    const-string v35, "persist.radio.first-mccmnc"

    const-string v36, "FFFFF"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 928
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "isOkCancelNotRequired":Ljava/lang/Boolean;
    .restart local v16    # "kl":Landroid/app/KeyguardManager$KeyguardLock;
    .restart local v17    # "km":Landroid/app/KeyguardManager;
    .restart local v18    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v21    # "mvno_subset":Ljava/lang/String;
    :cond_11
    if-eqz v22, :cond_12

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_12

    .line 929
    const-string v35, "persist.radio.first-mccmnc"

    const-string v36, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    aget-object v36, v36, v37

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 931
    :cond_12
    const-string v35, "persist.radio.first-mccmnc"

    const-string v36, "FFFFFF"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 950
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_13
    const-string v34, "Warning"

    .line 951
    .restart local v34    # "title":Ljava/lang/String;
    const-string v20, "New SIM Detected. Need to apply new settings, require reboot. Do you want to reboot now?"

    .line 952
    .restart local v20    # "message":Ljava/lang/String;
    const-string v4, "Ok"

    .line 953
    .local v4, "buttonOkTxt":Ljava/lang/String;
    const-string v3, "Cancel"

    .line 956
    .local v3, "buttonCancelTxt":Ljava/lang/String;
    const-string v35, "gsm.sim.operator.numeric"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 957
    .local v23, "numeric":Ljava/lang/String;
    const-string v35, "52501"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_14

    const-string v35, "52502"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_15

    .line 958
    :cond_14
    new-instance v35, Landroid/app/AlertDialog$Builder;

    sget-object v36, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    invoke-direct/range {v35 .. v36}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 964
    .local v6, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v35

    const/16 v36, 0x7d3

    invoke-virtual/range {v35 .. v36}, Landroid/view/Window;->setType(I)V

    .line 965
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 966
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 967
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    .line 969
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    :cond_15
    new-instance v35, Landroid/app/AlertDialog$Builder;

    sget-object v36, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    invoke-direct/range {v35 .. v36}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 976
    .restart local v6    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v35

    const/16 v36, 0x7d3

    invoke-virtual/range {v35 .. v36}, Landroid/view/Window;->setType(I)V

    .line 977
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 978
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 979
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5
.end method

.method public updateSystemLanguage()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x3

    .line 612
    const-string v7, "1"

    iget-object v8, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableSBP:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 614
    const-string v7, "persist.sys.cust.iccid_lang"

    invoke-static {v7, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 615
    const-string v5, ""

    .line 616
    .local v5, "language":Ljava/lang/String;
    const-string v2, ""

    .line 617
    .local v2, "country":Ljava/lang/String;
    const-string v7, "persist.radio.first-set"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, "firstSetLang":Ljava/lang/String;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGE][SBP] SIM Changed status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChanged:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v7, "1"

    iget-object v8, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChanged:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 624
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGE][SBP] ICCID-MCC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v7, "FFF"

    iget-object v8, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v10, :cond_5

    .line 631
    const-string v7, "ro.build.default_country"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ZA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ro.build.target_country"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ZA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 633
    :cond_0
    const-string v7, "655"

    iput-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    .line 637
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v5

    .line 638
    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 639
    if-nez v5, :cond_3

    .line 640
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGE][SBP] No match language: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    .end local v2    # "country":Ljava/lang/String;
    .end local v4    # "firstSetLang":Ljava/lang/String;
    .end local v5    # "language":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 645
    .restart local v2    # "country":Ljava/lang/String;
    .restart local v4    # "firstSetLang":Ljava/lang/String;
    .restart local v5    # "language":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 647
    if-nez v2, :cond_4

    .line 648
    const-string v2, ""

    .line 651
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 654
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 655
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 656
    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 657
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 658
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 660
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGE][SBP] PhoneBase locale set to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " base SIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 663
    const-string v7, "persist.radio.first-set"

    const-string v8, "1"

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 725
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "country":Ljava/lang/String;
    .end local v4    # "firstSetLang":Ljava/lang/String;
    .end local v5    # "language":Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v7, "ro.build.target_country"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "IL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 728
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 729
    .restart local v0    # "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 731
    .restart local v1    # "config":Landroid/content/res/Configuration;
    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "iw_IL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 732
    const-string v7, "GSM"

    const-string v8, "[LGE][SBP] iw_IL case and change locale to en_GB"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v6, Ljava/util/Locale;

    const-string v7, "en"

    const-string v8, "GB"

    invoke-direct {v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .local v6, "locale":Ljava/util/Locale;
    invoke-virtual {v1, v6}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 735
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 737
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v6    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 666
    .restart local v2    # "country":Ljava/lang/String;
    .restart local v4    # "firstSetLang":Ljava/lang/String;
    .restart local v5    # "language":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 667
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "GSM"

    const-string v8, "[LGE][SBP] Can\'t update system language base on SIM-ICCID MCC"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 673
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v7, "F"

    iget-object v8, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChanged:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "2"

    iget-object v8, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChanged:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_7
    const-string v7, "persist.sys.ntcode_lang"

    invoke-static {v7, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 675
    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    const-string v8, "F"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 677
    :cond_8
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGE][SBP] NTCODE-MCC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_9

    .line 681
    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    .line 684
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    if-eqz v7, :cond_5

    const-string v7, "FFF"

    iget-object v8, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_5

    .line 686
    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v5

    .line 687
    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 689
    if-nez v5, :cond_a

    .line 690
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGE][SBP] No match language: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 695
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 697
    if-nez v2, :cond_b

    .line 698
    const-string v2, ""

    .line 702
    :cond_b
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 703
    .restart local v0    # "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 704
    .restart local v1    # "config":Landroid/content/res/Configuration;
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 705
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 706
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 708
    const-string v7, "persist.radio.first-set"

    const-string v8, "1"

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LGE][SBP] Just 1-time update to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " base on NT-Code"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 712
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :catch_2
    move-exception v3

    .line 713
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v7, "GSM"

    const-string v8, "[LGE][SBP] Can\'t update system lang base on NT-Code MCC"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 721
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_c
    const-string v7, "GSM"

    const-string v8, "[LGE][SBP] The inserted SIM is same!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
