.class Lcom/lge/uicc/LGUiccManager$1SyncCallback;
.super Landroid/os/IRemoteCallback$Stub;
.source "LGUiccManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/LGUiccManager;->iccFileIO(Landroid/os/Bundle;Landroid/os/IRemoteCallback;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncCallback"
.end annotation


# instance fields
.field public notified:Z

.field public out:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/uicc/LGUiccManager$1SyncCallback;->out:Landroid/os/Bundle;

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/uicc/LGUiccManager$1SyncCallback;->notified:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized sendResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lge/uicc/LGUiccManager$1SyncCallback;->out:Landroid/os/Bundle;

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/uicc/LGUiccManager$1SyncCallback;->notified:Z

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
