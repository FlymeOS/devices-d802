.class final Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;
.super Landroid/os/Handler;
.source "SplitWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SplitWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SplitWindowManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SplitWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SplitWindowManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;->this$0:Lcom/android/server/am/SplitWindowManager;

    .line 257
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 263
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 266
    .local v0, "component":Lcom/android/server/am/ActivityRecord;
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_0

    .line 267
    .local v1, "resumed":Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;->this$0:Lcom/android/server/am/SplitWindowManager;

    # invokes: Lcom/android/server/am/SplitWindowManager;->updateActivityToSplitPolicyService(Lcom/android/server/am/ActivityRecord;Z)V
    invoke-static {v2, v0, v1}, Lcom/android/server/am/SplitWindowManager;->access$000(Lcom/android/server/am/SplitWindowManager;Lcom/android/server/am/ActivityRecord;Z)V

    goto :goto_0

    .line 266
    .end local v1    # "resumed":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 271
    .end local v0    # "component":Lcom/android/server/am/ActivityRecord;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;->this$0:Lcom/android/server/am/SplitWindowManager;

    # invokes: Lcom/android/server/am/SplitWindowManager;->realPutLogState()V
    invoke-static {v2}, Lcom/android/server/am/SplitWindowManager;->access$100(Lcom/android/server/am/SplitWindowManager;)V

    goto :goto_0

    .line 275
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;->this$0:Lcom/android/server/am/SplitWindowManager;

    # invokes: Lcom/android/server/am/SplitWindowManager;->cancelSplitWindow()V
    invoke-static {v2}, Lcom/android/server/am/SplitWindowManager;->access$200(Lcom/android/server/am/SplitWindowManager;)V

    goto :goto_0

    .line 279
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/am/SplitWindowManager$SplitWindowManagerHandler;->this$0:Lcom/android/server/am/SplitWindowManager;

    # invokes: Lcom/android/server/am/SplitWindowManager;->unsplitPreviousActivities()V
    invoke-static {v2}, Lcom/android/server/am/SplitWindowManager;->access$300(Lcom/android/server/am/SplitWindowManager;)V

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
