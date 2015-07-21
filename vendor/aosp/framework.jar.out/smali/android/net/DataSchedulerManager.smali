.class public Landroid/net/DataSchedulerManager;
.super Ljava/lang/Object;
.source "DataSchedulerManager.java"


# static fields
.field public static final INTENT_LLKKLK_ENABED_CHANGED:Ljava/lang/String; = "com.lge.android.intent.action.ACTION_LLKKLK_ENABED_CHANGED"

.field public static final LG_DATASCHEDULER_SERVICE:Ljava/lang/String; = "lgdatascheduler"

.field private static final TAG:Ljava/lang/String; = "DataSchedulerService"

.field private static sInstance:Landroid/net/DataSchedulerManager;


# instance fields
.field private mService:Landroid/net/IDataSchedulerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Landroid/net/DataSchedulerManager;->sInstance:Landroid/net/DataSchedulerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DataSchedulerManager;->mService:Landroid/net/IDataSchedulerManager;

    .line 30
    return-void
.end method

.method public static getDataSchedulerEnabled()Z
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "persist.lg.data.llkklk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/net/DataSchedulerManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/net/DataSchedulerManager;->sInstance:Landroid/net/DataSchedulerManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/net/DataSchedulerManager;

    invoke-direct {v0}, Landroid/net/DataSchedulerManager;-><init>()V

    sput-object v0, Landroid/net/DataSchedulerManager;->sInstance:Landroid/net/DataSchedulerManager;

    .line 36
    :cond_0
    sget-object v0, Landroid/net/DataSchedulerManager;->sInstance:Landroid/net/DataSchedulerManager;

    return-object v0
.end method

.method private final getService()Landroid/net/IDataSchedulerManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/net/DataSchedulerManager;->mService:Landroid/net/IDataSchedulerManager;

    if-nez v0, :cond_0

    .line 42
    const-string v0, "lgdatascheduler"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IDataSchedulerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IDataSchedulerManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DataSchedulerManager;->mService:Landroid/net/IDataSchedulerManager;

    .line 44
    :cond_0
    iget-object v0, p0, Landroid/net/DataSchedulerManager;->mService:Landroid/net/IDataSchedulerManager;

    return-object v0
.end method


# virtual methods
.method public getPolicy(ILjava/lang/String;JJ)Landroid/net/DataSchedulerPolicy;
    .locals 9
    .param p1, "uid"    # I
    .param p2, "alarm"    # Ljava/lang/String;
    .param p3, "repeat"    # J
    .param p5, "triggerAt"    # J

    .prologue
    .line 56
    :try_start_0
    invoke-direct {p0}, Landroid/net/DataSchedulerManager;->getService()Landroid/net/IDataSchedulerManager;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/net/IDataSchedulerManager;->getPolicy(ILjava/lang/String;JJ)Landroid/net/DataSchedulerPolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataSchedulerService"

    const-string v2, "getPolicy failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 61
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataSchedulerEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 87
    :try_start_0
    invoke-direct {p0}, Landroid/net/DataSchedulerManager;->getService()Landroid/net/IDataSchedulerManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/IDataSchedulerManager;->setDataSchedulerEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataSchedulerService"

    const-string v2, "llkklk Enabled failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateAppInfo([Landroid/net/DataSchedulerAppInfo;)V
    .locals 3
    .param p1, "appInfos"    # [Landroid/net/DataSchedulerAppInfo;

    .prologue
    .line 72
    :try_start_0
    invoke-direct {p0}, Landroid/net/DataSchedulerManager;->getService()Landroid/net/IDataSchedulerManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/IDataSchedulerManager;->updateAppInfo([Landroid/net/DataSchedulerAppInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataSchedulerService"

    const-string/jumbo v2, "updateAppInfo failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
