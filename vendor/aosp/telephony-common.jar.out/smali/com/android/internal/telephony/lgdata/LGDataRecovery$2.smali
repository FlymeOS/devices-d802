.class Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;
.super Landroid/os/HandlerThread;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;-><init>(Lcom/android/internal/telephony/PhoneBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 4

    .prologue
    .line 931
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v2, "mCpResponseHandlerThread:onLooperPrepared"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 934
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2$1;

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$700(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2$1;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;Landroid/os/Looper;)V

    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$602(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :goto_0
    return-void

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t set looper.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
