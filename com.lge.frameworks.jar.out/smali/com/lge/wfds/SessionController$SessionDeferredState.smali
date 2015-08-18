.class Lcom/lge/wfds/SessionController$SessionDeferredState;
.super Lcom/android/internal/util/State;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/SessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionDeferredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/SessionController;


# direct methods
.method constructor <init>(Lcom/lge/wfds/SessionController;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private transitionState()V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v0}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$2300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$4600(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$2500(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpenedState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$4700(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 622
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionDeferredState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopSessionReadyTimeouts()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$400(Lcom/lge/wfds/SessionController;)V

    .line 626
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    const-string v2, "com.lge.wfds.session.DEFERRED_TIMEOUT"

    const v3, 0x1d4c0

    # invokes: Lcom/lge/wfds/SessionController;->startTimeout(Ljava/lang/String;I)Landroid/app/PendingIntent;
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/SessionController;->access$1500(Lcom/lge/wfds/SessionController;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    # setter for: Lcom/lge/wfds/SessionController;->mSessionDeferredTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$4502(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 628
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 674
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionDeferredState - exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$4000(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDialog;->dismissUserInputDialog()V

    .line 676
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x0

    # setter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$302(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Lcom/lge/wfds/session/AspSession;

    .line 677
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x0

    .line 632
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 661
    :goto_0
    return v6

    .line 634
    :sswitch_0
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopDeferredTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$500(Lcom/lge/wfds/SessionController;)V

    .line 635
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$4200(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    iget v1, v1, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget v4, v4, Lcom/lge/wfds/session/AspSession;->session_id:I

    iget-object v5, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v5}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/lge/wfds/WfdsEvent;->notifySessionRequestToService(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 644
    :goto_1
    invoke-direct {p0}, Lcom/lge/wfds/SessionController$SessionDeferredState;->transitionState()V

    .line 661
    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v0, v2, v1}, Lcom/lge/wfds/SessionController;->access$2000(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    goto :goto_1

    .line 648
    :sswitch_1
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopDeferredTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$500(Lcom/lge/wfds/SessionController;)V

    .line 649
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v0, v2, v1}, Lcom/lge/wfds/SessionController;->access$2000(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    .line 650
    invoke-direct {p0}, Lcom/lge/wfds/SessionController$SessionDeferredState;->transitionState()V

    goto :goto_2

    .line 654
    :sswitch_2
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v0, v2, v1}, Lcom/lge/wfds/SessionController;->access$2000(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    .line 655
    invoke-direct {p0}, Lcom/lge/wfds/SessionController$SessionDeferredState;->transitionState()V

    goto :goto_2

    .line 632
    :sswitch_data_0
    .sparse-switch
        0x901029 -> :sswitch_0
        0x90102a -> :sswitch_1
        0x901038 -> :sswitch_2
    .end sparse-switch
.end method
