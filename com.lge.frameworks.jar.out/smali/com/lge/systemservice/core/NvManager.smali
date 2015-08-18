.class public Lcom/lge/systemservice/core/NvManager;
.super Ljava/lang/Object;
.source "NvManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "nvitemservice"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/lge/systemservice/core/INvManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/lge/systemservice/core/NvManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lge/systemservice/core/NvManager;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/NvManager;Lcom/lge/systemservice/core/INvManager;)Lcom/lge/systemservice/core/INvManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/NvManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/INvManager;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lge/systemservice/core/NvManager;->mService:Lcom/lge/systemservice/core/INvManager;

    return-object p1
.end method

.method private final getService()Lcom/lge/systemservice/core/INvManager;
    .locals 4

    .prologue
    .line 40
    iget-object v1, p0, Lcom/lge/systemservice/core/NvManager;->mService:Lcom/lge/systemservice/core/INvManager;

    if-nez v1, :cond_0

    .line 41
    const-string v1, "nvitemservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/INvManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/INvManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/NvManager;->mService:Lcom/lge/systemservice/core/INvManager;

    .line 42
    iget-object v1, p0, Lcom/lge/systemservice/core/NvManager;->mService:Lcom/lge/systemservice/core/INvManager;

    if-eqz v1, :cond_0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/NvManager;->mService:Lcom/lge/systemservice/core/INvManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/INvManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/NvManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/NvManager$1;-><init>(Lcom/lge/systemservice/core/NvManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/NvManager;->mService:Lcom/lge/systemservice/core/INvManager;

    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/NvManager;->mService:Lcom/lge/systemservice/core/INvManager;

    goto :goto_0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "nvitemservice"

    return-object v0
.end method


# virtual methods
.method public getServiceCommand(I)Ljava/lang/String;
    .locals 6
    .param p1, "itemID"    # I

    .prologue
    .line 110
    const-string v1, ""

    .line 113
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 114
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/INvManager;->getServiceCommand(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getServiceCommand: ID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceCommandModemDB(I)Ljava/lang/String;
    .locals 6
    .param p1, "itemID"    # I

    .prologue
    .line 157
    const-string v1, ""

    .line 160
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 161
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/INvManager;->getServiceCommandModemDB(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-object v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getServiceCommandModemDB: ID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceCommandValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "itemID"    # I

    .prologue
    .line 65
    const-string v1, ""

    .line 68
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 69
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/INvManager;->getServiceCommandValue(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getServiceCommandValue: ID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceItems(I)Ljava/lang/String;
    .locals 6
    .param p1, "itemId"    # I

    .prologue
    .line 274
    const-string v1, ""

    .line 277
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 279
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/INvManager;->getServiceItems(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 284
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-object v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getServiceItems: ID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceItemsCommandValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "itemID"    # I

    .prologue
    .line 513
    const-string v1, ""

    .line 516
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 517
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/INvManager;->getServiceItemsCommandValue(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 522
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-object v1

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getServiceItemsCommandValue: itemID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceItemsCommands(I)Ljava/lang/String;
    .locals 6
    .param p1, "commandId"    # I

    .prologue
    .line 346
    const-string v1, ""

    .line 349
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 350
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/INvManager;->getServiceItemsCommands(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 355
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-object v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getServiceItemsCommands: commandId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceItemsModemDB(I)Ljava/lang/String;
    .locals 6
    .param p1, "commandId"    # I

    .prologue
    .line 393
    const-string v1, ""

    .line 396
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 397
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/INvManager;->getServiceItemsModemDB(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 402
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-object v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getServiceItemsModemDB: commandId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceNvItem(I)[B
    .locals 6
    .param p1, "itemID"    # I

    .prologue
    .line 466
    const/4 v3, 0x0

    new-array v1, v3, [B

    .line 469
    .local v1, "res":[B
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 470
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/INvManager;->getServiceNvItem(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 475
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-object v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getServiceNvItem: itemID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceStatus()Z
    .locals 5

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 253
    .local v1, "res":Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 255
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/lge/systemservice/core/INvManager;->getServiceStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 260
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to getServiceStatus"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public queryServiceCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "itemID"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v1, ""

    .line 208
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 209
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INvManager;->queryServiceCommand(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 214
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-object v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to queryServiceCommand: ID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Value- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public queryServiceItemsCommandValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "itemID"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 561
    const-string v1, ""

    .line 564
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 565
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INvManager;->queryServiceItemsCommandValue(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 570
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-object v1

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to queryServiceItemsCommandValue: itemID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public queryServiceItemsCommands(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "commandId"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v1, ""

    .line 446
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 447
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INvManager;->queryServiceItemsCommands(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 452
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-object v1

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to queryServiceItemsCommands: commandId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " itemValue- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendServiceCommandOperationtMode(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 231
    .local v1, "res":Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 232
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/INvManager;->sendServiceCommandOperationtMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 237
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to sendServiceCommandOperationtMode: mode-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendServiceItemsOperationtMode(I)Z
    .locals 6
    .param p1, "oprt_mode"    # I

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 325
    .local v1, "res":Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 327
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/INvManager;->sendServiceItemsOperationtMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 332
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to sendServiceItemsOperationtMode: oprt_mode-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServiceCommand(ILjava/lang/String;)I
    .locals 6
    .param p1, "itemID"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 137
    .local v1, "res":I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 138
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INvManager;->setServiceCommand(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 143
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setServiceCommand: ID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Value- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServiceCommandModemDB(ILjava/lang/String;)I
    .locals 6
    .param p1, "itemID"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 184
    .local v1, "res":I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 185
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INvManager;->setServiceCommandModemDB(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 190
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setServiceCommandModemDB: ID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Value- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServiceCommandValue(ILjava/lang/String;)V
    .locals 5
    .param p1, "itemID"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v1

    .line 92
    .local v1, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/INvManager;->setServiceCommandValue(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to setServiceCommandValue: ID-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Value- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServiceItems(ILjava/lang/String;)Z
    .locals 6
    .param p1, "itemId"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 302
    .local v1, "res":Z
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 303
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INvManager;->setServiceItems(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 308
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setServiceItems: ID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " itemValue- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServiceItemsCommandValue(ILjava/lang/String;)I
    .locals 6
    .param p1, "itemID"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 537
    const/4 v1, 0x0

    .line 540
    .local v1, "res":I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 541
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INvManager;->setServiceItemsCommandValue(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 546
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return v1

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setServiceItemsCommandValue: itemID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServiceItemsCommands(ILjava/lang/String;)I
    .locals 6
    .param p1, "commandId"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 370
    const/4 v1, 0x0

    .line 373
    .local v1, "res":I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 374
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INvManager;->setServiceItemsCommands(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 379
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setServiceItemsCommands: commandId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " itemValue- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServiceItemsModemDB(ILjava/lang/String;)I
    .locals 6
    .param p1, "commandId"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 420
    .local v1, "res":I
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 421
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INvManager;->setServiceItemsModemDB(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 426
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return v1

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setServiceItemsModemDB: commandId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " itemValue- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServiceNvItem(I[B)[B
    .locals 6
    .param p1, "itemID"    # I
    .param p2, "item_value"    # [B

    .prologue
    .line 490
    const/4 v3, 0x0

    new-array v1, v3, [B

    .line 493
    .local v1, "res":[B
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;

    move-result-object v2

    .line 494
    .local v2, "service":Lcom/lge/systemservice/core/INvManager;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/INvManager;->setServiceNvItem(I[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 499
    .end local v2    # "service":Lcom/lge/systemservice/core/INvManager;
    :cond_0
    :goto_0
    return-object v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/NvManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setServiceNvItem: itemID-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item_value- [byte]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
