.class Lcom/lge/bnr/framework/LGBackupAgent$2;
.super Ljava/lang/Object;
.source "LGBackupAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/bnr/framework/LGBackupAgent;->asyncBackupCancel()V
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
    .line 111
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    :try_start_0
    const-string v0, "LGBackupAgent"

    const-string v1, "asyncBackupCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->bnrapi:Lcom/lge/bnr/framework/IBNRFrameworkAPI;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$200(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/framework/IBNRFrameworkAPI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/bnr/framework/LGBackupAgent;->onBackupCancel(Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # invokes: Lcom/lge/bnr/framework/LGBackupAgent;->stopBNRService()V
    invoke-static {v0}, Lcom/lge/bnr/framework/LGBackupAgent;->access$000(Lcom/lge/bnr/framework/LGBackupAgent;)V

    .line 121
    return-void

    .line 119
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # invokes: Lcom/lge/bnr/framework/LGBackupAgent;->stopBNRService()V
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$000(Lcom/lge/bnr/framework/LGBackupAgent;)V

    throw v0
.end method
