.class Lcom/lge/bnr/framework/LGBackupAgent$4;
.super Ljava/lang/Thread;
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
    .line 192
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupAgent$4;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent$4;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # invokes: Lcom/lge/bnr/framework/LGBackupAgent;->runTask()V
    invoke-static {v0}, Lcom/lge/bnr/framework/LGBackupAgent;->access$600(Lcom/lge/bnr/framework/LGBackupAgent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent$4;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # invokes: Lcom/lge/bnr/framework/LGBackupAgent;->endTask()V
    invoke-static {v0}, Lcom/lge/bnr/framework/LGBackupAgent;->access$700(Lcom/lge/bnr/framework/LGBackupAgent;)V

    .line 200
    return-void

    .line 198
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$4;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # invokes: Lcom/lge/bnr/framework/LGBackupAgent;->endTask()V
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$700(Lcom/lge/bnr/framework/LGBackupAgent;)V

    throw v0
.end method
