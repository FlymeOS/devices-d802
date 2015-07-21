.class public Lcom/android/internal/telephony/lgdata/DataConnectionManager;
.super Ljava/lang/Object;
.source "DataConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DCM_MOBILE_NETWORK_IS_ALLOWED:I = 0x1

.field public static final DCM_MOBILE_NETWORK_IS_DISALLOWED:I = 0x2

.field public static final DCM_MOBILE_NETWORK_IS_NEED_POPUP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[LGE_DATA][DCM] "

.field private static sDataConnectionManager:Lcom/android/internal/telephony/lgdata/DataConnectionManager;


# instance fields
.field mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mPhoneMgr:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/lgdata/LgDataFeature;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "myfeature"    # Lcom/android/internal/telephony/lgdata/LgDataFeature;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "[LGE_DATA][DCM] "

    const-string v1, "LgeDataManager() has created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/DataConnectionManager;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataConnectionManager;->mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 69
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgdata/DataConnectionManager;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/lgdata/DataConnectionManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/lgdata/DataConnectionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/lgdata/LgDataFeature;)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/lgdata/DataConnectionManager;

    .line 84
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/lgdata/DataConnectionManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/lgdata/LgDataFeature;)Lcom/android/internal/telephony/lgdata/DataConnectionManager;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "myfeature"    # Lcom/android/internal/telephony/lgdata/LgDataFeature;

    .prologue
    .line 73
    sget-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/lgdata/DataConnectionManager;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/lgdata/DataConnectionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/lgdata/LgDataFeature;)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/lgdata/DataConnectionManager;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/lgdata/DataConnectionManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized IntegrationAPI(Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;Ljava/lang/String;I)I
    .locals 1
    .param p1, "funcName"    # Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;
    .param p2, "strParam"    # Ljava/lang/String;
    .param p3, "intParam"    # I

    .prologue
    .line 92
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized functionForPacketDrop(Z)V
    .locals 0
    .param p1, "ok"    # Z

    .prologue
    .line 89
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
