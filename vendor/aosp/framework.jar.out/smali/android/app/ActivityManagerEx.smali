.class public Landroid/app/ActivityManagerEx;
.super Landroid/app/ActivityManager;
.source "ActivityManagerEx.java"


# static fields
.field public static final BLOCK_SCREEN_SHOT:I = 0x1

.field private static final TAG_EX:Ljava/lang/String; = "ActivityManagerEx"

.field public static final UNBLOCK_SCREEN_SHOT:I

.field private static localLOGV:Z

.field private static sService:Landroid/app/IActivityManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerEx;->localLOGV:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 44
    return-void
.end method

.method private static getServiceEx()Landroid/app/IActivityManagerEx;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Landroid/app/ActivityManagerEx;->sService:Landroid/app/IActivityManagerEx;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManagerEx;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityManagerEx;->sService:Landroid/app/IActivityManagerEx;

    .line 49
    sget-object v0, Landroid/app/ActivityManagerEx;->sService:Landroid/app/IActivityManagerEx;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "ActivityManagerEx"

    const-string v1, "ActivityManagerEx is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    sget-object v0, Landroid/app/ActivityManagerEx;->sService:Landroid/app/IActivityManagerEx;

    return-object v0
.end method


# virtual methods
.method public registerActivityTrigger(Lcom/lge/frameworks/IActivityTrigger;)V
    .locals 2
    .param p1, "trigger"    # Lcom/lge/frameworks/IActivityTrigger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerEx;->getServiceEx()Landroid/app/IActivityManagerEx;

    move-result-object v0

    .line 89
    .local v0, "mAmEx":Landroid/app/IActivityManagerEx;
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Landroid/app/IActivityManagerEx;->registerActivityTrigger(Lcom/lge/frameworks/IActivityTrigger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "mAmEx":Landroid/app/IActivityManagerEx;
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public showLockTaskToastEx()V
    .locals 4

    .prologue
    .line 97
    invoke-static {}, Landroid/app/ActivityManagerEx;->getServiceEx()Landroid/app/IActivityManagerEx;

    move-result-object v0

    .line 98
    .local v0, "amEx":Landroid/app/IActivityManagerEx;
    if-nez v0, :cond_0

    .line 99
    const-string v2, "ActivityManagerEx"

    const-string v3, "cannot get ActivityManagerEx"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManagerEx;->showLockTaskToastEx()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityManagerEx"

    const-string v3, "RemoteException for showLockTaskToastEx"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateFlag(II)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "taskId"    # I

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerEx;->getServiceEx()Landroid/app/IActivityManagerEx;

    move-result-object v0

    .line 68
    .local v0, "mAmEx":Landroid/app/IActivityManagerEx;
    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManagerEx;->updateFlag(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "mAmEx":Landroid/app/IActivityManagerEx;
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    goto :goto_0
.end method
