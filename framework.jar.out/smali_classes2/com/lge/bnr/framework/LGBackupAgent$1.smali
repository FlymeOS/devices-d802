.class Lcom/lge/bnr/framework/LGBackupAgent$1;
.super Lcom/lge/bnr/remote/IRemoteBackupCallback$Stub;
.source "LGBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bnr/framework/LGBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/bnr/framework/LGBackupAgent;


# direct methods
.method constructor <init>(Lcom/lge/bnr/framework/LGBackupAgent;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupAgent$1;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    invoke-direct {p0}, Lcom/lge/bnr/remote/IRemoteBackupCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public BackupCancle()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "LGBackupAgent"

    const-string v1, "called BackupCancle by BNR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent$1;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # invokes: Lcom/lge/bnr/framework/LGBackupAgent;->asyncBackupCancel()V
    invoke-static {v0}, Lcom/lge/bnr/framework/LGBackupAgent;->access$100(Lcom/lge/bnr/framework/LGBackupAgent;)V

    .line 106
    return-void
.end method

.method public StartBackup()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/bnr/framework/LGBackupAgent$1$1;

    invoke-direct {v1, p0}, Lcom/lge/bnr/framework/LGBackupAgent$1$1;-><init>(Lcom/lge/bnr/framework/LGBackupAgent$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    return-void
.end method
