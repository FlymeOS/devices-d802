.class Lcom/lge/android/atservice/client/LGATCMDClient$1;
.super Ljava/lang/Object;
.source "LGATCMDClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/client/LGATCMDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/client/LGATCMDClient;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/client/LGATCMDClient;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 64
    const-string v0, "LGATCMDClient"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    # getter for: Lcom/lge/android/atservice/client/LGATCMDClient;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$000(Lcom/lge/android/atservice/client/LGATCMDClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    const/4 v2, 0x1

    # setter for: Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z
    invoke-static {v0, v2}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$102(Lcom/lge/android/atservice/client/LGATCMDClient;Z)Z

    .line 67
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-static {p2}, Lcom/lge/android/atservice/client/ILGATCMDService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/android/atservice/client/ILGATCMDService;

    move-result-object v2

    # setter for: Lcom/lge/android/atservice/client/LGATCMDClient;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;
    invoke-static {v0, v2}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$202(Lcom/lge/android/atservice/client/LGATCMDClient;Lcom/lge/android/atservice/client/ILGATCMDService;)Lcom/lge/android/atservice/client/ILGATCMDService;

    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 72
    const-string v0, "LGATCMDClient"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    # getter for: Lcom/lge/android/atservice/client/LGATCMDClient;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$000(Lcom/lge/android/atservice/client/LGATCMDClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    const/4 v2, 0x0

    # setter for: Lcom/lge/android/atservice/client/LGATCMDClient;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;
    invoke-static {v0, v2}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$202(Lcom/lge/android/atservice/client/LGATCMDClient;Lcom/lge/android/atservice/client/ILGATCMDService;)Lcom/lge/android/atservice/client/ILGATCMDService;

    .line 75
    iget-object v0, p0, Lcom/lge/android/atservice/client/LGATCMDClient$1;->this$0:Lcom/lge/android/atservice/client/LGATCMDClient;

    const/4 v2, 0x0

    # setter for: Lcom/lge/android/atservice/client/LGATCMDClient;->mBound:Z
    invoke-static {v0, v2}, Lcom/lge/android/atservice/client/LGATCMDClient;->access$102(Lcom/lge/android/atservice/client/LGATCMDClient;Z)Z

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
