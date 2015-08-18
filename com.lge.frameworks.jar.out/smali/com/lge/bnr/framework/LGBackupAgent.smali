.class public abstract Lcom/lge/bnr/framework/LGBackupAgent;
.super Ljava/lang/Object;
.source "LGBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;
    }
.end annotation


# static fields
.field public static final MAX_BUFF_BYTE:I = 0x7d000

.field public static isCancle:Z


# instance fields
.field private bnrapi:Lcom/lge/bnr/framework/IBNRFrameworkAPI;

.field private conn:Landroid/content/ServiceConnection;

.field private filePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupFileName:Ljava/lang/String;

.field private mBackupThread:Ljava/lang/Thread;

.field private mBnrmode:I

.field private mCallback:Lcom/lge/bnr/remote/IRemoteBackupCallback;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mOffset:J

.field private mProductInfo:Ljava/lang/String;

.field private mSize:J

.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;

.field private mode:I

.field private remoteService:Lcom/lge/bnr/remote/IRemoteBackup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mContext:Landroid/content/Context;

    .line 29
    iput-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;

    .line 30
    new-instance v0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;

    invoke-direct {v0, p0}, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;-><init>(Lcom/lge/bnr/framework/LGBackupAgent;)V

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->bnrapi:Lcom/lge/bnr/framework/IBNRFrameworkAPI;

    .line 35
    iput v2, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mode:I

    .line 39
    iput v2, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mBnrmode:I

    .line 40
    iput-wide v4, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mOffset:J

    .line 41
    iput-wide v4, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mSize:J

    .line 43
    iput v2, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mVersionCode:I

    .line 44
    iput-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mVersionName:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mProductInfo:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/lge/bnr/framework/LGBackupAgent$1;

    invoke-direct {v0, p0}, Lcom/lge/bnr/framework/LGBackupAgent$1;-><init>(Lcom/lge/bnr/framework/LGBackupAgent;)V

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mCallback:Lcom/lge/bnr/remote/IRemoteBackupCallback;

    .line 126
    new-instance v0, Lcom/lge/bnr/framework/LGBackupAgent$3;

    invoke-direct {v0, p0}, Lcom/lge/bnr/framework/LGBackupAgent$3;-><init>(Lcom/lge/bnr/framework/LGBackupAgent;)V

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->conn:Landroid/content/ServiceConnection;

    .line 192
    new-instance v0, Lcom/lge/bnr/framework/LGBackupAgent$4;

    invoke-direct {v0, p0}, Lcom/lge/bnr/framework/LGBackupAgent$4;-><init>(Lcom/lge/bnr/framework/LGBackupAgent;)V

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;

    .line 54
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mIntent:Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "LBF_PATH_AND_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mBackupFileName:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BNR_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mBnrmode:I

    .line 61
    iget v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mBnrmode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ITEM_OFFSET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mOffset:J

    .line 63
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ITEM_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mSize:J

    .line 65
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "nVersionCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mVersionCode:I

    .line 67
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sVersionName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mVersionName:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mVersionName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mVersionName:Ljava/lang/String;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sProductInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mProductInfo:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mProductInfo:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mProductInfo:Ljava/lang/String;

    .line 81
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/lge/bnr/framework/LGBackupAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/bnr/framework/LGBackupAgent;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lge/bnr/framework/LGBackupAgent;->stopBNRService()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/bnr/framework/LGBackupAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/bnr/framework/LGBackupAgent;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lge/bnr/framework/LGBackupAgent;->asyncBackupCancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/framework/IBNRFrameworkAPI;
    .locals 1
    .param p0, "x0"    # Lcom/lge/bnr/framework/LGBackupAgent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->bnrapi:Lcom/lge/bnr/framework/IBNRFrameworkAPI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;
    .locals 1
    .param p0, "x0"    # Lcom/lge/bnr/framework/LGBackupAgent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lge/bnr/framework/LGBackupAgent;Lcom/lge/bnr/remote/IRemoteBackup;)Lcom/lge/bnr/remote/IRemoteBackup;
    .locals 0
    .param p0, "x0"    # Lcom/lge/bnr/framework/LGBackupAgent;
    .param p1, "x1"    # Lcom/lge/bnr/remote/IRemoteBackup;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackupCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lge/bnr/framework/LGBackupAgent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mCallback:Lcom/lge/bnr/remote/IRemoteBackupCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/lge/bnr/framework/LGBackupAgent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/bnr/framework/LGBackupAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/bnr/framework/LGBackupAgent;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lge/bnr/framework/LGBackupAgent;->runTask()V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/bnr/framework/LGBackupAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/bnr/framework/LGBackupAgent;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lge/bnr/framework/LGBackupAgent;->endTask()V

    return-void
.end method

.method private asyncBackupCancel()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/bnr/framework/LGBackupAgent$2;

    invoke-direct {v1, p0}, Lcom/lge/bnr/framework/LGBackupAgent$2;-><init>(Lcom/lge/bnr/framework/LGBackupAgent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    return-void
.end method

.method private bindBNRService()V
    .locals 4

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.bnr.service.REMOTE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.lge.bnr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 265
    return-void
.end method

.method private endTask()V
    .locals 1

    .prologue
    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/lge/bnr/framework/LGBackupAgent;->stopBNRService()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private runTask()V
    .locals 4

    .prologue
    .line 205
    iget v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 206
    const-string v0, "LGBackupAgent"

    const-string v1, "Call onBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->bnrapi:Lcom/lge/bnr/framework/IBNRFrameworkAPI;

    invoke-virtual {p0, v0}, Lcom/lge/bnr/framework/LGBackupAgent;->onBackup(Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V

    .line 208
    const-string v0, "LGBackupAgent"

    const-string v1, "Return onBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 211
    const-string v0, "LGBackupAgent"

    const-string v1, "Call onRestore()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->bnrapi:Lcom/lge/bnr/framework/IBNRFrameworkAPI;

    iget v1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mVersionCode:I

    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mVersionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mProductInfo:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupAgent;->onRestore(Lcom/lge/bnr/framework/IBNRFrameworkAPI;ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "LGBackupAgent"

    const-string v1, "Return onRestore()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_2
    iget v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 216
    const-string v0, "LGBackupAgent"

    const-string v1, "Call onRestoreOld()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->bnrapi:Lcom/lge/bnr/framework/IBNRFrameworkAPI;

    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->filePathList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/lge/bnr/framework/LGBackupAgent;->onRestoreOld(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Ljava/util/ArrayList;)V

    .line 218
    const-string v0, "LGBackupAgent"

    const-string v1, "Return onRestoreOld()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized stopBNRService()V
    .locals 2

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 285
    :goto_0
    monitor-exit p0

    return-void

    .line 274
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;

    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mCallback:Lcom/lge/bnr/remote/IRemoteBackupCallback;

    invoke-interface {v0, v1}, Lcom/lge/bnr/remote/IRemoteBackup;->unregisterCallback(Lcom/lge/bnr/remote/IRemoteBackupCallback;)V

    .line 275
    const-string v0, "LGBackupAgent"

    const-string v1, "unregister Callback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mode:I

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;

    .line 283
    const-string v0, "LGBackupAgent"

    const-string v1, "unBind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 276
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public abstract onBackup(Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
.end method

.method public abstract onBackupCancel(Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
.end method

.method public abstract onRestore(Lcom/lge/bnr/framework/IBNRFrameworkAPI;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRestoreOld(Lcom/lge/bnr/framework/IBNRFrameworkAPI;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/bnr/framework/IBNRFrameworkAPI;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public startBackup()V
    .locals 2

    .prologue
    .line 236
    const-string v0, "LGBackupAgent Ver18"

    const-string v1, "startBackup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mode:I

    .line 239
    invoke-direct {p0}, Lcom/lge/bnr/framework/LGBackupAgent;->bindBNRService()V

    .line 241
    return-void
.end method

.method public startRestore()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "LGBackupAgent Ver18"

    const-string v1, "startRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mode:I

    .line 248
    invoke-direct {p0}, Lcom/lge/bnr/framework/LGBackupAgent;->bindBNRService()V

    .line 249
    return-void
.end method

.method public startRestoreOld(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "LGBackupAgent Ver18"

    const-string v1, "startRestoreOld"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mode:I

    .line 255
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->filePathList:Ljava/util/ArrayList;

    .line 256
    invoke-direct {p0}, Lcom/lge/bnr/framework/LGBackupAgent;->bindBNRService()V

    .line 257
    return-void
.end method

.method public writeUnzip(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "unZipPrefixPath"    # Ljava/lang/String;
    .param p3, "startProgress"    # I
    .param p4, "endProgress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/bnr/framework/LGBackupException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v1, Lcom/lge/bnr/framework/LGBackupZip;

    invoke-direct {v1}, Lcom/lge/bnr/framework/LGBackupZip;-><init>()V

    .line 308
    .local v1, "lgZip":Lcom/lge/bnr/framework/LGBackupZip;
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mBackupFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/bnr/framework/LGBackupAgent;->bnrapi:Lcom/lge/bnr/framework/IBNRFrameworkAPI;

    iget-wide v6, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mOffset:J

    iget-wide v8, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mSize:J

    move-object v3, p2

    move-object v5, p1

    move v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v1 .. v11}, Lcom/lge/bnr/framework/LGBackupZip;->unzip(Ljava/lang/String;Ljava/lang/String;Lcom/lge/bnr/framework/IBNRFrameworkAPI;Ljava/lang/String;JJII)Ljava/util/ArrayList;

    move-result-object v0

    .line 311
    .local v0, "filePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0
.end method

.method public writeZip(Ljava/lang/String;Ljava/util/ArrayList;II)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p3, "startProgress"    # I
    .param p4, "endProgress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/bnr/framework/LGBackupException;
        }
    .end annotation

    .prologue
    .line 290
    .local p2, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Lcom/lge/bnr/framework/LGBackupZip;

    invoke-direct {v0}, Lcom/lge/bnr/framework/LGBackupZip;-><init>()V

    .line 292
    .local v0, "lgZip":Lcom/lge/bnr/framework/LGBackupZip;
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mBackupFileName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/bnr/framework/LGBackupAgent;->bnrapi:Lcom/lge/bnr/framework/IBNRFrameworkAPI;

    move-object v2, p2

    move-object v5, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/lge/bnr/framework/LGBackupZip;->zipAIDL(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/lge/bnr/framework/IBNRFrameworkAPI;Ljava/lang/String;II)V

    .line 293
    return-void
.end method

.method public writeZipRootPath(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p3, "rootPath"    # Ljava/lang/String;
    .param p4, "startProgress"    # I
    .param p5, "endProgress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/bnr/framework/LGBackupException;
        }
    .end annotation

    .prologue
    .line 298
    .local p2, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Lcom/lge/bnr/framework/LGBackupZip;

    invoke-direct {v0}, Lcom/lge/bnr/framework/LGBackupZip;-><init>()V

    .line 300
    .local v0, "lgZip":Lcom/lge/bnr/framework/LGBackupZip;
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent;->mBackupFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/bnr/framework/LGBackupAgent;->bnrapi:Lcom/lge/bnr/framework/IBNRFrameworkAPI;

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lge/bnr/framework/LGBackupZip;->zipAIDL(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/lge/bnr/framework/IBNRFrameworkAPI;Ljava/lang/String;II)V

    .line 302
    return-void
.end method
