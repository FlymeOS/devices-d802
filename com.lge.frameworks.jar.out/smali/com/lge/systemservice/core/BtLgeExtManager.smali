.class public Lcom/lge/systemservice/core/BtLgeExtManager;
.super Ljava/lang/Object;
.source "BtLgeExtManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "BtLgeExt"

.field private static final TAG:Ljava/lang/String; = "BtLgeExtManager"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mService:Lcom/lge/systemservice/core/IBtLgeExtManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/BtLgeExtManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/BtLgeExtManager;Lcom/lge/systemservice/core/IBtLgeExtManager;)Lcom/lge/systemservice/core/IBtLgeExtManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/BtLgeExtManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/IBtLgeExtManager;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lge/systemservice/core/BtLgeExtManager;->mService:Lcom/lge/systemservice/core/IBtLgeExtManager;

    return-object p1
.end method

.method private final getService()Lcom/lge/systemservice/core/IBtLgeExtManager;
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lcom/lge/systemservice/core/BtLgeExtManager;->mService:Lcom/lge/systemservice/core/IBtLgeExtManager;

    if-nez v1, :cond_0

    .line 47
    const-string v1, "BtLgeExt"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/IBtLgeExtManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IBtLgeExtManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/BtLgeExtManager;->mService:Lcom/lge/systemservice/core/IBtLgeExtManager;

    .line 48
    iget-object v1, p0, Lcom/lge/systemservice/core/BtLgeExtManager;->mService:Lcom/lge/systemservice/core/IBtLgeExtManager;

    if-eqz v1, :cond_0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/BtLgeExtManager;->mService:Lcom/lge/systemservice/core/IBtLgeExtManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/IBtLgeExtManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/BtLgeExtManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/BtLgeExtManager$1;-><init>(Lcom/lge/systemservice/core/BtLgeExtManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/BtLgeExtManager;->mService:Lcom/lge/systemservice/core/IBtLgeExtManager;

    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/BtLgeExtManager;->mService:Lcom/lge/systemservice/core/IBtLgeExtManager;

    goto :goto_0
.end method
