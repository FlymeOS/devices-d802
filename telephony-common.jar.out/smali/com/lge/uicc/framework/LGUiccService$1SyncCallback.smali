.class Lcom/lge/uicc/framework/LGUiccService$1SyncCallback;
.super Landroid/os/IRemoteCallback$Stub;
.source "LGUiccService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/framework/LGUiccService;->dumpIccFileIO(Ljava/lang/String;Landroid/os/Bundle;Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncCallback"
.end annotation


# instance fields
.field public notified:Z

.field public out:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/lge/uicc/framework/LGUiccService;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/LGUiccService;)V
    .locals 1

    .prologue
    .line 264
    iput-object p1, p0, Lcom/lge/uicc/framework/LGUiccService$1SyncCallback;->this$0:Lcom/lge/uicc/framework/LGUiccService;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/uicc/framework/LGUiccService$1SyncCallback;->out:Landroid/os/Bundle;

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/uicc/framework/LGUiccService$1SyncCallback;->notified:Z

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
    .line 268
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lge/uicc/framework/LGUiccService$1SyncCallback;->out:Landroid/os/Bundle;

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/uicc/framework/LGUiccService$1SyncCallback;->notified:Z

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
