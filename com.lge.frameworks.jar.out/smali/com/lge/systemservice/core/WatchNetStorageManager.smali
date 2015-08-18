.class public Lcom/lge/systemservice/core/WatchNetStorageManager;
.super Ljava/lang/Object;
.source "WatchNetStorageManager.java"


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.nfs"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/lge/systemservice/core/WatchNetStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/WatchNetStorageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/WatchNetStorageManager;Lcom/lge/systemservice/core/IWatchNetStorageManager;)Lcom/lge/systemservice/core/IWatchNetStorageManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/WatchNetStorageManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/IWatchNetStorageManager;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    return-object p1
.end method

.method private final getService()Lcom/lge/systemservice/core/IWatchNetStorageManager;
    .locals 4

    .prologue
    .line 25
    iget-object v1, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    if-nez v1, :cond_0

    .line 26
    const-string v1, "watchnetstorage"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/IWatchNetStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWatchNetStorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    .line 27
    iget-object v1, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    if-eqz v1, :cond_0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/IWatchNetStorageManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/WatchNetStorageManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/WatchNetStorageManager$1;-><init>(Lcom/lge/systemservice/core/WatchNetStorageManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    goto :goto_0
.end method


# virtual methods
.method public requestMediaScanFile(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/WatchNetStorageManager;->getService()Lcom/lge/systemservice/core/IWatchNetStorageManager;

    move-result-object v1

    .line 56
    .local v1, "service":Lcom/lge/systemservice/core/IWatchNetStorageManager;
    if-eqz v1, :cond_0

    .line 57
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IWatchNetStorageManager;->requestMediaScanFile(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 62
    .end local v1    # "service":Lcom/lge/systemservice/core/IWatchNetStorageManager;
    :goto_0
    return v2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/WatchNetStorageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to request scan file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
