.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1482
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1483
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1484
    .local v0, "newId":I
    const-string v1, "PhoneWindowManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switched : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCurrId:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCurrId:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1487
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Lcom/android/internal/policy/impl/TouchControlArea;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Lcom/android/internal/policy/impl/TouchControlArea;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCurrId:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/TouchControlArea;->stopTouchControlAsUser(I)V

    .line 1491
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCurrId:I
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$202(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;I)I

    .line 1494
    .end local v0    # "newId":I
    :cond_1
    return-void
.end method
