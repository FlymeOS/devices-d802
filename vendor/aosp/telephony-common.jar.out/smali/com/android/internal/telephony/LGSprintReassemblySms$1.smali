.class Lcom/android/internal/telephony/LGSprintReassemblySms$1;
.super Ljava/lang/Object;
.source "LGSprintReassemblySms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/LGSprintReassemblySms;->trySegmentExpirationAfterBootUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGSprintReassemblySms;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LGSprintReassemblySms;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/internal/telephony/LGSprintReassemblySms$1;->this$0:Lcom/android/internal/telephony/LGSprintReassemblySms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x493e0

    .line 478
    const-wide/32 v4, 0x493e0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v6

    .line 485
    .local v2, "expirationTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trySegmentExpirationAfterBootUp:run(), Expiration Time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "time < "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    .local v1, "where":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 490
    iget-object v4, p0, Lcom/android/internal/telephony/LGSprintReassemblySms$1;->this$0:Lcom/android/internal/telephony/LGSprintReassemblySms;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/LGSprintReassemblySms;->sendSavedPdusIndividually(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/LGSprintReassemblySms;->access$000(Lcom/android/internal/telephony/LGSprintReassemblySms;Ljava/lang/String;)V

    .line 491
    return-void

    .line 479
    .end local v1    # "where":Ljava/lang/StringBuilder;
    .end local v2    # "expirationTime":J
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "trySegmentExpirationAfterBootUp:run(), Thread Interrupted exception catch"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
