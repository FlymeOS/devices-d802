.class Lcom/android/server/LGEncryptionService$2;
.super Landroid/os/Handler;
.source "LGEncryptionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LGEncryptionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LGEncryptionService;


# direct methods
.method constructor <init>(Lcom/android/server/LGEncryptionService;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/LGEncryptionService$2;->this$0:Lcom/android/server/LGEncryptionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    const-string v4, "LGEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage msg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v1, v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/android/server/LGEncryptionService$2;->this$0:Lcom/android/server/LGEncryptionService;

    # getter for: Lcom/android/server/LGEncryptionService;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v4}, Lcom/android/server/LGEncryptionService;->access$200(Lcom/android/server/LGEncryptionService;)Landroid/os/storage/StorageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LGEncryptionService$2;->this$0:Lcom/android/server/LGEncryptionService;

    # invokes: Lcom/android/server/LGEncryptionService;->getExternalSDCardMountPath()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/LGEncryptionService;->access$100(Lcom/android/server/LGEncryptionService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "state":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    const-string v4, "LGEncryptionService"

    const-string v5, "timeout 10"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v4, p0, Lcom/android/server/LGEncryptionService$2;->this$0:Lcom/android/server/LGEncryptionService;

    # getter for: Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/LGEncryptionService;->access$300(Lcom/android/server/LGEncryptionService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void

    .line 111
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "state":Ljava/lang/String;
    :cond_1
    const-string v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    const-string v4, "LGEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Waiting for unmounting count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
