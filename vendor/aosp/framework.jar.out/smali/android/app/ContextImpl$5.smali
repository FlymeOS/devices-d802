.class final Landroid/app/ContextImpl$5;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 8
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .line 412
    .local v1, "activityManagerEx":Landroid/app/ActivityManager;
    :try_start_0
    const-string v5, "android.app.ActivityManagerEx"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 413
    .local v2, "c":Ljava/lang/Class;
    if-eqz v2, :cond_0

    .line 414
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Handler;

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 415
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v3, :cond_0

    .line 416
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v7}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "activityManagerEx":Landroid/app/ActivityManager;
    check-cast v1, Landroid/app/ActivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v2    # "c":Ljava/lang/Class;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v1    # "activityManagerEx":Landroid/app/ActivityManager;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    new-instance v0, Landroid/app/ActivityManager;

    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v6}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/app/ActivityManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 424
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    :goto_1
    return-object v0

    .line 419
    .end local v1    # "activityManagerEx":Landroid/app/ActivityManager;
    :catch_0
    move-exception v4

    .line 420
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "ContextImpl"

    const-string v6, "Error while loading mActirityManagerEx."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    const/4 v1, 0x0

    .restart local v1    # "activityManagerEx":Landroid/app/ActivityManager;
    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v0, v1

    .line 423
    goto :goto_1
.end method
