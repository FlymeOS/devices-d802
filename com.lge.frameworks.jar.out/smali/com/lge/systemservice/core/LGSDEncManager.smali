.class public Lcom/lge/systemservice/core/LGSDEncManager;
.super Ljava/lang/Object;
.source "LGSDEncManager.java"


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.sdencryption"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/ILGSDEncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/lge/systemservice/core/LGSDEncManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/LGSDEncManager;Lcom/lge/systemservice/core/ILGSDEncManager;)Lcom/lge/systemservice/core/ILGSDEncManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/LGSDEncManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/ILGSDEncManager;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    return-object p1
.end method

.method public static getSDEncSupportStatus(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nosdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_sd_encrypt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    :cond_0
    const/4 v0, 0x0

    .line 431
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final getService()Lcom/lge/systemservice/core/ILGSDEncManager;
    .locals 4

    .prologue
    .line 28
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 29
    const-string v1, "lgsdencryption"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 30
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/LGSDEncManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/LGSDEncManager$1;-><init>(Lcom/lge/systemservice/core/LGSDEncManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    goto :goto_0
.end method


# virtual methods
.method public MDMStorageEncryptionStatus()Z
    .locals 3

    .prologue
    .line 401
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 405
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->MDMStorageEncryptionStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 412
    :goto_0
    return v1

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 411
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public StorageEncryptionStatus()I
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 337
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->StorageEncryptionStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 344
    :goto_0
    return v1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public changepw(Ljava/lang/String;)I
    .locals 3
    .param p1, "passwd"    # Ljava/lang/String;

    .prologue
    .line 508
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 512
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 513
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->changepw(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 519
    :goto_0
    return v1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 518
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardCheckMemory()I
    .locals 3

    .prologue
    .line 443
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 447
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardCheckMemory()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 454
    :goto_0
    return v1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 453
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardDeleteMetaDir()I
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 135
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardDeleteMetaDir()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 143
    :goto_0
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardDisableEncryption(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 113
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardDisableEncryption(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardEnableEncryption(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 59
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardEnableEncryption(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardEnableEncryptionUserPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 86
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardEnableEncryptionUserPassword(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 94
    :goto_0
    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardFullDisableEncryption(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 190
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardFullDisableEncryption(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 198
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardFullEnableEncryption(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 163
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardFullEnableEncryption(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    :goto_0
    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardFullTotalMemory(J)I
    .locals 3
    .param p1, "totalMemory"    # J

    .prologue
    .line 210
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 214
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardFullTotalMemory(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 221
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardMediaDisableEncryption()I
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 258
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardMediaDisableEncryption()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 265
    :goto_0
    return v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardMediaDisableEncryption(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->externalSDCardMediaDisableEncryption()I

    move-result v0

    return v0
.end method

.method public externalSDCardMediaEnableEncryption()I
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 236
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardMediaEnableEncryption()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 243
    :goto_0
    return v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public externalSDCardMediaEnableEncryption(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->externalSDCardMediaEnableEncryption()I

    move-result v0

    return v0
.end method

.method public externalSDCardMountComplete(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 312
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->externalSDCardMountComplete(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 319
    :goto_0
    return v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getExternalSDCardMountPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 381
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->getExternalSDCardMountPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 388
    :goto_0
    return-object v1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInternalSDCardMountPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 355
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 359
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->getInternalSDCardMountPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 366
    :goto_0
    return-object v1

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 365
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExistSDEncMetaFile()Z
    .locals 3

    .prologue
    .line 573
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 578
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->isExistSDEncMetaFile()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 584
    :goto_0
    return v1

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 583
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProgressing()Z
    .locals 3

    .prologue
    .line 486
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 490
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->isProgressing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 497
    :goto_0
    return v1

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 496
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lockDevice()I
    .locals 3

    .prologue
    .line 529
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGSDEncManager;->lockDevice()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 540
    :goto_0
    return v1

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 539
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setProgressing(Z)I
    .locals 3
    .param p1, "isProgressing"    # Z

    .prologue
    .line 464
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 468
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->setProgressing(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 475
    :goto_0
    return v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 474
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public unlockDevice(Ljava/lang/String;)I
    .locals 3
    .param p1, "passwd"    # Ljava/lang/String;

    .prologue
    .line 551
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-nez v1, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_1

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGSDEncManager;->unlockDevice(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 562
    :goto_0
    return v1

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 561
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/LGSDEncManager;->TAG:Ljava/lang/String;

    const-string v2, "LGSDEncService connection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v1, -0x1

    goto :goto_0
.end method
