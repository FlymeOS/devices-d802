.class public Lcom/itsoninc/android/ItsOnOemApi;
.super Lcom/itsoninc/android/ItsOnOemApiBase;
.source "ItsOnOemApi.java"


# static fields
.field private static instance:Lcom/itsoninc/android/ItsOnOemApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/itsoninc/android/ItsOnOemApi;->instance:Lcom/itsoninc/android/ItsOnOemApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/itsoninc/android/ItsOnOemApiBase;-><init>()V

    .line 11
    invoke-virtual {p0}, Lcom/itsoninc/android/ItsOnOemApi;->loadOemImpl()Z

    move-result v0

    .line 12
    .local v0, "loaded":Z
    if-eqz v0, :cond_0

    .line 13
    const-string v1, "ItsOnAPI"

    const-string v2, "ItsOn is enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_0
    return-void

    .line 15
    :cond_0
    const-string v1, "ItsOnAPI"

    const-string v2, "ItsOn is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v1, Lcom/itsoninc/android/APIFailOpen;

    invoke-direct {v1}, Lcom/itsoninc/android/APIFailOpen;-><init>()V

    iput-object v1, p0, Lcom/itsoninc/android/ItsOnOemApi;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/itsoninc/android/ItsOnOemApi;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/itsoninc/android/ItsOnOemApi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/itsoninc/android/ItsOnOemApi;->instance:Lcom/itsoninc/android/ItsOnOemApi;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/itsoninc/android/ItsOnOemApi;

    invoke-direct {v0}, Lcom/itsoninc/android/ItsOnOemApi;-><init>()V

    sput-object v0, Lcom/itsoninc/android/ItsOnOemApi;->instance:Lcom/itsoninc/android/ItsOnOemApi;

    .line 24
    :cond_0
    sget-object v0, Lcom/itsoninc/android/ItsOnOemApi;->instance:Lcom/itsoninc/android/ItsOnOemApi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method loadOemImpl()Z
    .locals 7

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/itsoninc/android/ItsOnOemInterface;>;"
    :try_start_0
    new-instance v1, Ldalvik/system/BaseDexClassLoader;

    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->getJarFilePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 31
    .local v1, "dexClassLoader":Ldalvik/system/BaseDexClassLoader;
    const-string v3, "com.itsoninc.android.impl.ItsOnOem"

    invoke-virtual {v1, v3}, Ldalvik/system/BaseDexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsoninc/android/ItsOnOemInterface;

    iput-object v3, p0, Lcom/itsoninc/android/ItsOnOemApi;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    .line 34
    iget-object v3, p0, Lcom/itsoninc/android/ItsOnOemApi;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 35
    const-string v3, "ItsOnAPI"

    const-string v4, "Setting context"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v3, p0, Lcom/itsoninc/android/ItsOnOemApi;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    iget-object v4, p0, Lcom/itsoninc/android/ItsOnOemApi;->context:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/itsoninc/android/ItsOnOemInterface;->setContext(Landroid/content/Context;)V

    .line 39
    :cond_0
    iget-object v3, p0, Lcom/itsoninc/android/ItsOnOemApi;->frameworkIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    if-eqz v3, :cond_1

    .line 40
    const-string v3, "ItsOnAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting framework "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itsoninc/android/ItsOnOemApi;->frameworkIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v3, p0, Lcom/itsoninc/android/ItsOnOemApi;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    iget-object v4, p0, Lcom/itsoninc/android/ItsOnOemApi;->frameworkIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    invoke-interface {v3, v4}, Lcom/itsoninc/android/ItsOnOemInterface;->setFrameworkInterface(Lcom/itsoninc/android/ItsOnFrameworkInterface;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :cond_1
    const/4 v3, 0x1

    .line 51
    .end local v1    # "dexClassLoader":Ldalvik/system/BaseDexClassLoader;
    :goto_0
    return v3

    .line 44
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "ItsOnAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load ItsOnOemApi implementation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 48
    :catch_1
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "ItsOnAPI"

    const-string v4, "Unable to load ItsOnOemApi implementation"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
