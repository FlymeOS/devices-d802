.class Lcom/android/server/power/LPWGController$2;
.super Landroid/content/BroadcastReceiver;
.source "LPWGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LPWGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LPWGController;


# direct methods
.method constructor <init>(Lcom/android/server/power/LPWGController;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/server/power/LPWGController$2;->this$0:Lcom/android/server/power/LPWGController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 328
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/android/server/power/LPWGController$2;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;
    invoke-static {v2}, Lcom/android/server/power/LPWGController;->access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/power/LPWGController$LPWGHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 332
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/power/LPWGController$2;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;
    invoke-static {v2}, Lcom/android/server/power/LPWGController;->access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/power/LPWGController$LPWGHandler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
