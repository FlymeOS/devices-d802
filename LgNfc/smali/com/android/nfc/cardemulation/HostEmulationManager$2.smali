.class Lcom/android/nfc/cardemulation/HostEmulationManager$2;
.super Ljava/lang/Object;
.source "HostEmulationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/HostEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    .line 441
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    .line 442
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iput-object p1, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 443
    const-string v0, "HostEmulationManager"

    const-string v2, "Service bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x4

    iput v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 446
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    invoke-virtual {v0, v2, v3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    .line 448
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 450
    :cond_0
    monitor-exit v1

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    const-string v0, "HostEmulationManager"

    const-string v2, "Service unbound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    .line 458
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    .line 459
    monitor-exit v1

    .line 460
    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
