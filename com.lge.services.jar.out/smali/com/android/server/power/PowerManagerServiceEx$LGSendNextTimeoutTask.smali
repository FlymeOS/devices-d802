.class Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerServiceEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGSendNextTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerServiceEx$1;

    .prologue
    .line 1429
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1432
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenEnable:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerServiceEx;->access$2700(Lcom/android/server/power/PowerManagerServiceEx;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.keepscreenon.KeepScreenOnService.getNextTime"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "nextTime"

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mNextTimeout:J
    invoke-static {v2}, Lcom/android/server/power/PowerManagerServiceEx;->access$2800(Lcom/android/server/power/PowerManagerServiceEx;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1435
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1436
    const-string v1, "PowerManagerServiceEx"

    const-string v2, "[WiseScreen] GET_NEXT_TIMEOUT Broadcast..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
