.class final Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGWiseScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerServiceEx$1;

    .prologue
    .line 1451
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1454
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.keepscreenon.KeepScreenOnService.requestGetNextTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$3000(Lcom/android/server/power/PowerManagerServiceEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    const-string v0, "PowerManagerServiceEx"

    const-string v1, "[WiseScreen] REQUEST_NEXT_TIMEOUT received..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$3200(Lcom/android/server/power/PowerManagerServiceEx;)Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mSendNextTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerServiceEx;->access$3100(Lcom/android/server/power/PowerManagerServiceEx;)Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1458
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$3200(Lcom/android/server/power/PowerManagerServiceEx;)Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mSendNextTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerServiceEx;->access$3100(Lcom/android/server/power/PowerManagerServiceEx;)Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->post(Ljava/lang/Runnable;)Z

    .line 1461
    :cond_0
    return-void
.end method
