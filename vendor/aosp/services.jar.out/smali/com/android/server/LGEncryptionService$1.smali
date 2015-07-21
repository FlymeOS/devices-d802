.class Lcom/android/server/LGEncryptionService$1;
.super Ljava/lang/Thread;
.source "LGEncryptionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LGEncryptionService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LGEncryptionService;


# direct methods
.method constructor <init>(Lcom/android/server/LGEncryptionService;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/LGEncryptionService$1;->this$0:Lcom/android/server/LGEncryptionService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/LGEncryptionService$1;->this$0:Lcom/android/server/LGEncryptionService;

    # getter for: Lcom/android/server/LGEncryptionService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/LGEncryptionService;->access$000(Lcom/android/server/LGEncryptionService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 84
    return-void
.end method
