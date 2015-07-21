.class public Lcom/lge/systemservice/core/LGDisplayManager;
.super Ljava/lang/Object;
.source "LGDisplayManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LGDisplayManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/lge/systemservice/core/ILGDisplayManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    .line 20
    iput-object v0, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mContext:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/LGDisplayManager;Lcom/lge/systemservice/core/ILGDisplayManager;)Lcom/lge/systemservice/core/ILGDisplayManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/LGDisplayManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/ILGDisplayManager;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    return-object p1
.end method

.method private final getService()Lcom/lge/systemservice/core/ILGDisplayManager;
    .locals 4

    .prologue
    .line 27
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    if-nez v1, :cond_0

    .line 28
    const-string v1, "lgdisplay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/ILGDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGDisplayManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    .line 29
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    if-eqz v1, :cond_0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGDisplayManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/LGDisplayManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/LGDisplayManager$1;-><init>(Lcom/lge/systemservice/core/LGDisplayManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/LGDisplayManager;->mService:Lcom/lge/systemservice/core/ILGDisplayManager;

    goto :goto_0
.end method


# virtual methods
.method public setColorConvert(IIFF)Z
    .locals 5
    .param p1, "hue"    # I
    .param p2, "intensity"    # I
    .param p3, "sat"    # F
    .param p4, "contrast"    # F

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGDisplayManager;->getService()Lcom/lge/systemservice/core/ILGDisplayManager;

    move-result-object v1

    .line 54
    .local v1, "service":Lcom/lge/systemservice/core/ILGDisplayManager;
    if-eqz v1, :cond_0

    .line 56
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/systemservice/core/ILGDisplayManager;->setColorConvert(IIFF)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 63
    :goto_0
    return v2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "LGDisplayManager"

    const-string v4, "Error while converting color. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "LGDisplayManager"

    const-string v4, "Service Connection is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
