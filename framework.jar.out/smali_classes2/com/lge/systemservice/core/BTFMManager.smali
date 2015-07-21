.class public Lcom/lge/systemservice/core/BTFMManager;
.super Ljava/lang/Object;
.source "BTFMManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "BTFM"

.field private static final TAG:Ljava/lang/String; = "BTFMManager"

.field private static final TITLE:Ljava/lang/String; = "BTFMManager"


# instance fields
.field private mService:Lcom/lge/systemservice/core/IBTFMManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/BTFMManager;Lcom/lge/systemservice/core/IBTFMManager;)Lcom/lge/systemservice/core/IBTFMManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/BTFMManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/IBTFMManager;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    return-object p1
.end method

.method private final getService()Lcom/lge/systemservice/core/IBTFMManager;
    .locals 4

    .prologue
    .line 31
    iget-object v1, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    if-nez v1, :cond_0

    .line 32
    const-string v1, "BTFM"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/IBTFMManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IBTFMManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    .line 33
    iget-object v1, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/IBTFMManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/BTFMManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/BTFMManager$1;-><init>(Lcom/lge/systemservice/core/BTFMManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    goto :goto_0
.end method


# virtual methods
.method public Finalize()V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    const-string v1, "BTFMManager"

    const-string v2, "[BTFMManager] Finalize"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/lge/systemservice/core/BTFMManager;->getService()Lcom/lge/systemservice/core/IBTFMManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IBTFMManager;->Finalize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public Initialize()V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    const-string v1, "BTFMManager"

    const-string v2, "[BTFMManager] nitialize"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/lge/systemservice/core/BTFMManager;->getService()Lcom/lge/systemservice/core/IBTFMManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IBTFMManager;->Initialize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
