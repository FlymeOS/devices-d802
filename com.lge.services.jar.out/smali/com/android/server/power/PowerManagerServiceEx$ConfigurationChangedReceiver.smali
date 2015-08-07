.class final Lcom/android/server/power/PowerManagerServiceEx$ConfigurationChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfigurationChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$ConfigurationChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1341
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx$ConfigurationChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z
    invoke-static {v4}, Lcom/android/server/power/PowerManagerServiceEx;->access$1500(Lcom/android/server/power/PowerManagerServiceEx;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceEx;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1345
    const-string v4, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VEL] ConfigurationChanged : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1350
    .local v2, "now":J
    const/4 v0, 0x4

    .line 1352
    .local v0, "dirty":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 1354
    .local v1, "newOrientation":I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx$ConfigurationChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mCurrentOrientation:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerServiceEx;->access$2000(Lcom/android/server/power/PowerManagerServiceEx;)I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 1355
    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceEx;->access$500()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1356
    const-string v4, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VEL] ConfigurationChanged : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx$ConfigurationChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mCurrentOrientation:I
    invoke-static {v6}, Lcom/android/server/power/PowerManagerServiceEx;->access$2000(Lcom/android/server/power/PowerManagerServiceEx;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_3
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx$ConfigurationChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # setter for: Lcom/android/server/power/PowerManagerServiceEx;->mCurrentOrientation:I
    invoke-static {v4, v1}, Lcom/android/server/power/PowerManagerServiceEx;->access$2002(Lcom/android/server/power/PowerManagerServiceEx;I)I

    .line 1359
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx$ConfigurationChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    invoke-virtual {v4, v2, v3, v0}, Lcom/android/server/power/PowerManagerServiceEx;->updateDeviceLockStateLocked(JI)V

    goto :goto_0
.end method
