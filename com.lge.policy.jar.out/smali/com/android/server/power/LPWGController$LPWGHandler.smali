.class final Lcom/android/server/power/LPWGController$LPWGHandler;
.super Landroid/os/Handler;
.source "LPWGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LPWGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LPWGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LPWGController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LPWGController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    .line 644
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 645
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 649
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 651
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/power/LPWGController;->handleLPWG(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    invoke-virtual {v0}, Lcom/android/server/power/LPWGController;->updateSettings()V

    goto :goto_0

    .line 657
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mSleeper:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$1500(Lcom/android/server/power/LPWGController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/LPWGController$LPWGHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 660
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mKnockCodeWaker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$1600(Lcom/android/server/power/LPWGController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/LPWGController$LPWGHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mKnockCodeWaker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$1600(Lcom/android/server/power/LPWGController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/LPWGController$LPWGHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 662
    iget-object v0, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mKnockCodeWaker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$1600(Lcom/android/server/power/LPWGController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/LPWGController$LPWGHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 666
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mLightChecker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$1700(Lcom/android/server/power/LPWGController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/LPWGController$LPWGHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 669
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mSleeper:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$1500(Lcom/android/server/power/LPWGController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/LPWGController$LPWGHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 672
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mLightChecker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$1700(Lcom/android/server/power/LPWGController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/LPWGController$LPWGHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 675
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/power/LPWGController$LPWGHandler;->this$0:Lcom/android/server/power/LPWGController;

    invoke-virtual {v0}, Lcom/android/server/power/LPWGController;->handleNotifyFailedFeedback()V

    goto/16 :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
