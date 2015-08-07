.class Lcom/android/server/MountServiceEx$2;
.super Landroid/content/BroadcastReceiver;
.source "MountServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/MountServiceEx;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/server/MountServiceEx$2;->this$0:Lcom/android/server/MountServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 442
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 443
    .local v2, "userId":I
    if-ne v2, v6, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    if-nez v2, :cond_2

    move v3, v4

    :goto_1
    # setter for: Lcom/android/server/MountServiceEx;->sIsOwnerUser:Z
    invoke-static {v3}, Lcom/android/server/MountServiceEx;->access$002(Z)Z

    .line 449
    # getter for: Lcom/android/server/MountServiceEx;->sIsExistSecondaryStorage:Z
    invoke-static {}, Lcom/android/server/MountServiceEx;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 456
    # getter for: Lcom/android/server/MountServiceEx;->sIsOwnerUser:Z
    invoke-static {}, Lcom/android/server/MountServiceEx;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 457
    iget-object v3, p0, Lcom/android/server/MountServiceEx$2;->this$0:Lcom/android/server/MountServiceEx;

    # getter for: Lcom/android/server/MountServiceEx;->SECONDARY_STORAGE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountServiceEx;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/MountServiceEx;->doMountVolume(Ljava/lang/String;)I

    move-result v1

    .line 458
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 459
    const-string v3, "MountServiceEx"

    const-string v6, "Secondary storage mount failed.(%d)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "rc":I
    :cond_2
    move v3, v5

    .line 447
    goto :goto_1

    .line 462
    .restart local v0    # "action":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/server/MountServiceEx$2;->this$0:Lcom/android/server/MountServiceEx;

    # getter for: Lcom/android/server/MountServiceEx;->SECONDARY_STORAGE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountServiceEx;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/MountServiceEx;->unmountVolume(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
