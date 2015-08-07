.class final Lcom/android/server/power/PowerManagerServiceEx$MaxTimeToLockChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MaxTimeToLockChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$MaxTimeToLockChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerServiceEx$1;

    .prologue
    .line 1321
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx$MaxTimeToLockChangedReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1324
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceEx;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1328
    const-string v0, "PowerManagerServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VEL] MaxTimeToLockChangedReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.mdm.ACTION_MAMXIMUM_TIME_TOLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$MaxTimeToLockChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    const/16 v1, 0x69

    const-wide/16 v2, 0x0

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->sendMessageToHandler(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerServiceEx;->access$1900(Lcom/android/server/power/PowerManagerServiceEx;IJ)V

    goto :goto_0
.end method
