.class public Lcom/lge/systemservice/core/LogCatcherManager;
.super Ljava/lang/Object;
.source "LogCatcherManager.java"


# static fields
.field public static final COPY_LEVEL_ALL:I = 0x1

.field public static final COPY_LEVEL_DEFAULT:I = 0x0

.field public static final COPY_LEVEL_FUT:I = 0x9

.field public static final ID_STORAGE_EXTERNAL:I = 0x1

.field public static final ID_STORAGE_INTERNAL:I = 0x0

.field public static final INTENT_COPYLOGS_COMPLETED:Ljava/lang/String; = "com.lge.android.digicl.intent.COPYLOGS_COMPLETED"

.field public static final INTENT_COPYLOGS_FAILED:Ljava/lang/String; = "com.lge.android.digicl.intent.COPYLOGS_FAILED"

.field public static final INTENT_LOGCATCHER_COPYLOGS_COMPLETED:Ljava/lang/String; = "com.lge.android.logcatcher.intent.COPYLOGS_COMPLETED"

.field public static final INTENT_LOGCATCHER_COPYLOGS_FAILED:Ljava/lang/String; = "com.lge.android.logcatcher.intent.COPYLOGS_FAILED"

.field public static final INTENT_LOGCATCHER_QUICKDUMP_COMPLETED:Ljava/lang/String; = "com.lge.android.logcatcher.intent.QUICKDUMP_COMPLETED"

.field public static final INTENT_LOGCATCHER_QUICKDUMP_FAILED:Ljava/lang/String; = "com.lge.android.logcatcher.intent.QUICKDUMP_FAILED"

.field public static final INTENT_QUICKDUMP_COMPLETED:Ljava/lang/String; = "com.lge.android.quickdump.intent.QUICKDUMP_COMPLETED"

.field public static final INTENT_QUICKDUMP_FAILED:Ljava/lang/String; = "com.lge.android.quickdump.intent.QUICKDUMP_FAILED"

.field public static final INTENT_RUN_APP_SERVICE_QUICKDUMP_COMPLETED:Ljava/lang/String; = "com.lge.android.logcatcher.intent.action.RUN_APP_SERVICE_QUICKDUMP_COMPLETED"

.field public static final INTENT_RUN_APP_SERVICE_QUICKDUMP_FAILED:Ljava/lang/String; = "com.lge.android.logcatcher.intent.action.RUN_APP_SERVICE_QUICKDUMP_FAILED"

.field public static final RELEASE:Ljava/lang/String;

.field public static final SERVICE_NAME_COPYLOGS:Ljava/lang/String; = "digicl"

.field public static final SERVICE_NAME_QUICKDUMP:Ljava/lang/String; = "quickdump"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/ILogCatcherManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".1.1.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/LogCatcherManager;->RELEASE:Ljava/lang/String;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogCatcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/systemservice/core/LogCatcherManager;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/LogCatcherManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/LogCatcherManager;Lcom/lge/systemservice/core/ILogCatcherManager;)Lcom/lge/systemservice/core/ILogCatcherManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/LogCatcherManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/ILogCatcherManager;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lge/systemservice/core/LogCatcherManager;->mService:Lcom/lge/systemservice/core/ILogCatcherManager;

    return-object p1
.end method

.method private final getService()Lcom/lge/systemservice/core/ILogCatcherManager;
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/lge/systemservice/core/LogCatcherManager;->mService:Lcom/lge/systemservice/core/ILogCatcherManager;

    if-nez v1, :cond_0

    .line 223
    const-string v1, "logcatcher"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/ILogCatcherManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILogCatcherManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LogCatcherManager;->mService:Lcom/lge/systemservice/core/ILogCatcherManager;

    .line 224
    iget-object v1, p0, Lcom/lge/systemservice/core/LogCatcherManager;->mService:Lcom/lge/systemservice/core/ILogCatcherManager;

    if-eqz v1, :cond_0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LogCatcherManager;->mService:Lcom/lge/systemservice/core/ILogCatcherManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILogCatcherManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/LogCatcherManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/LogCatcherManager$1;-><init>(Lcom/lge/systemservice/core/LogCatcherManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LogCatcherManager;->mService:Lcom/lge/systemservice/core/ILogCatcherManager;

    return-object v1

    .line 230
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/LogCatcherManager;->mService:Lcom/lge/systemservice/core/ILogCatcherManager;

    goto :goto_0
.end method


# virtual methods
.method public cancelCopyLogs()I
    .locals 4

    .prologue
    .line 306
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LogCatcherManager;->getService()Lcom/lge/systemservice/core/ILogCatcherManager;

    move-result-object v1

    .line 307
    .local v1, "service":Lcom/lge/systemservice/core/ILogCatcherManager;
    if-eqz v1, :cond_0

    .line 308
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILogCatcherManager;->cancelCopyLogs()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 313
    .end local v1    # "service":Lcom/lge/systemservice/core/ILogCatcherManager;
    :goto_0
    return v2

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/LogCatcherManager;->TAG:Ljava/lang/String;

    const-string v3, "cancelCopyLogs() : exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public cancelQuickDump()I
    .locals 4

    .prologue
    .line 264
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LogCatcherManager;->getService()Lcom/lge/systemservice/core/ILogCatcherManager;

    move-result-object v1

    .line 265
    .local v1, "service":Lcom/lge/systemservice/core/ILogCatcherManager;
    if-eqz v1, :cond_0

    .line 266
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILogCatcherManager;->cancelQuickDump()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 271
    .end local v1    # "service":Lcom/lge/systemservice/core/ILogCatcherManager;
    :goto_0
    return v2

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/LogCatcherManager;->TAG:Ljava/lang/String;

    const-string v3, "cancelQuickDump() : exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public copyLogsToStorage(II)I
    .locals 4
    .param p1, "id_storage"    # I
    .param p2, "copy_level"    # I

    .prologue
    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LogCatcherManager;->getService()Lcom/lge/systemservice/core/ILogCatcherManager;

    move-result-object v1

    .line 288
    .local v1, "service":Lcom/lge/systemservice/core/ILogCatcherManager;
    if-eqz v1, :cond_0

    .line 289
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/ILogCatcherManager;->copyLogsToStorage(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 294
    .end local v1    # "service":Lcom/lge/systemservice/core/ILogCatcherManager;
    :goto_0
    return v2

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/LogCatcherManager;->TAG:Ljava/lang/String;

    const-string v3, "copyLogsToStorage() : exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public startQuickDump()I
    .locals 4

    .prologue
    .line 245
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LogCatcherManager;->getService()Lcom/lge/systemservice/core/ILogCatcherManager;

    move-result-object v1

    .line 246
    .local v1, "service":Lcom/lge/systemservice/core/ILogCatcherManager;
    if-eqz v1, :cond_0

    .line 247
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILogCatcherManager;->startQuickDump()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 252
    .end local v1    # "service":Lcom/lge/systemservice/core/ILogCatcherManager;
    :goto_0
    return v2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/LogCatcherManager;->TAG:Ljava/lang/String;

    const-string v3, "startQuickDump() : exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method
