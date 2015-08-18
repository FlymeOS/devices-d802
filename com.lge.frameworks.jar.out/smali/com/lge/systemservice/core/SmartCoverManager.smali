.class public Lcom/lge/systemservice/core/SmartCoverManager;
.super Ljava/lang/Object;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/SmartCoverManager$FolderCallback;,
        Lcom/lge/systemservice/core/SmartCoverManager$PenCallback;,
        Lcom/lge/systemservice/core/SmartCoverManager$SubCoverCallback;,
        Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;,
        Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;
    }
.end annotation


# static fields
.field public static final COVER_CLOSED:I = 0x1

.field public static final COVER_EVENT:I = 0x1

.field public static final COVER_HALF_OPENED:I = 0x2

.field public static final COVER_OPENED:I = 0x0

.field public static final COVER_TYPE_CIRCLE:I = 0x3

.field public static final COVER_TYPE_COVER:I = 0x0

.field public static final COVER_TYPE_DISNEY:I = 0x6

.field public static final COVER_TYPE_LOLLIPOP:I = 0x2

.field public static final COVER_TYPE_NONE:I = 0x5

.field public static final COVER_TYPE_SLIDE:I = 0x4

.field public static final COVER_TYPE_VIEW:I = 0x1

.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.smartcover"

.field public static final FOLDER_CLOSED:I = 0x1

.field public static final FOLDER_EVENT:I = 0x4

.field public static final FOLDER_OPENED:I = 0x0

.field public static final PEN_DETACHED:I = 0x0

.field public static final PEN_DOCKED:I = 0x1

.field public static final PEN_EVENT:I = 0x2

.field public static final SUBCOVER_EVENT:I = 0x3

.field public static final SUBCOVER_TYPE_NONE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

.field private mService:Lcom/lge/systemservice/core/ISmartCoverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/lge/systemservice/core/SmartCoverManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;-><init>(Lcom/lge/systemservice/core/SmartCoverManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    .line 59
    return-void
.end method

.method static synthetic access$200(Lcom/lge/systemservice/core/SmartCoverManager;)Lcom/lge/systemservice/core/ISmartCoverManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/core/SmartCoverManager;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final getService()Lcom/lge/systemservice/core/ISmartCoverManager;
    .locals 4

    .prologue
    .line 62
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mService:Lcom/lge/systemservice/core/ISmartCoverManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mService:Lcom/lge/systemservice/core/ISmartCoverManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    :cond_0
    const-string v1, "smartcover"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/ISmartCoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mService:Lcom/lge/systemservice/core/ISmartCoverManager;

    .line 64
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mService:Lcom/lge/systemservice/core/ISmartCoverManager;

    if-eqz v1, :cond_1

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mService:Lcom/lge/systemservice/core/ISmartCoverManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mService:Lcom/lge/systemservice/core/ISmartCoverManager;

    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getCoverType()I
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v1

    .line 90
    .local v1, "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    invoke-interface {v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->getCoverType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 98
    :goto_0
    return v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get cover type!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v2, 0x5

    goto :goto_0
.end method

.method public getSubCoverType()I
    .locals 4

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v1

    .line 103
    .local v1, "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    invoke-interface {v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->getSubCoverType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 111
    :goto_0
    return v2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get sub cover type!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z
    .locals 1
    .param p1, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    # invokes: Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->register(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z
    invoke-static {v0, p1}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->access$000(Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unRegisterCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;)V
    .locals 1
    .param p1, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager;->mCallbackRegister:Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;

    # invokes: Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->unRegister(Lcom/lge/systemservice/core/ISmartCoverCallback;)V
    invoke-static {v0, p1}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->access$100(Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;Lcom/lge/systemservice/core/ISmartCoverCallback;)V

    .line 86
    :cond_0
    return-void
.end method
