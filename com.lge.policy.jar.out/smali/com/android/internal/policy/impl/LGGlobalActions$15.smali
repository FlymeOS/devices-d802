.class Lcom/android/internal/policy/impl/LGGlobalActions$15;
.super Landroid/os/Handler;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 0

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    .line 1534
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1537
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1700(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/media/AudioManager;

    move-result-object v2

    if-eqz v2, :cond_2

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mRingerMode:I
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1800()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 1538
    const-string v2, "LGGlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAudioManager.setRingerMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mRingerMode:I
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1800()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1700(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/media/AudioManager;

    move-result-object v2

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mRingerMode:I
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1800()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1541
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1700(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1542
    const-string v1, "vibrator"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1543
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1544
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_3

    .line 1545
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1553
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    :goto_1
    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mRingerMode:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1802(I)I

    .line 1556
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1557
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 1547
    .restart local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_3
    const-string v1, "LGGlobalActions"

    const-string v2, "Vibrator is null. Skip vibrating."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1550
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_4
    const-string v1, "LGGlobalActions"

    const-string v2, "VIBRATOR_SERVICE is not ready. Skip vibrating."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1561
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/LGGlobalActions;->refreshSilentMode()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2100(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    .line 1562
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1300(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1565
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/LGGlobalActions;->handleShow()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2200(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    goto/16 :goto_0

    .line 1568
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsRearDialog:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2300(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1569
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneAction:Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2400(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$400(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    if-ne v3, v4, :cond_5

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->setSecondState(Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 1571
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$400(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;)V

    .line 1572
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1300(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
