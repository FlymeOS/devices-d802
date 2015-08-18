.class Lcom/lge/wfds/SessionController$SessionReadyState;
.super Lcom/android/internal/util/State;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/SessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/SessionController;


# direct methods
.method constructor <init>(Lcom/lge/wfds/SessionController;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private disablePortIsolation(Ljava/lang/String;)V
    .locals 4
    .param p1, "service_mac"    # Ljava/lang/String;

    .prologue
    .line 605
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 606
    .local v1, "sessionList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspSession;

    .line 608
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mPortIsolation:Lcom/lge/wfds/session/PortIsolation;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$600(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/PortIsolation;

    move-result-object v2

    iget-object v3, v0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lge/wfds/session/PortIsolation;->disable(Ljava/lang/String;)V

    .line 611
    .end local v0    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_0
    return-void
.end method

.method private procAddedSession(Lcom/lge/wfds/session/AspSession;)V
    .locals 4
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    const/4 v3, 0x0

    .line 573
    if-eqz p1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v0

    iget-object v1, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v2, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->setSessionState(Ljava/lang/String;II)V

    .line 576
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendSessionStatus(Lcom/lge/wfds/session/AspSession;II)V
    invoke-static {v0, p1, v3, v3}, Lcom/lge/wfds/SessionController;->access$2200(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;II)V

    .line 578
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$2500(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpenedState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$4300(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 580
    :cond_0
    return-void
.end method

.method private procReqSessionReceived(Lcom/lge/wfds/session/AspSession;)V
    .locals 9
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    const/4 v6, 0x0

    .line 521
    if-eqz p1, :cond_3

    .line 522
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$3900(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v0

    iget v1, p1, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryStore;->getConfiguredAllAdvertise(I)Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    move-result-object v8

    .line 528
    .local v8, "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    iget-object v0, p1, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/wfds/WfdsUtility;->isMacAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iput-object v0, p1, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p1, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    # invokes: Lcom/lge/wfds/SessionController;->isKnownService(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$1600(Lcom/lge/wfds/SessionController;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 532
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wfds/session/AspSessionList;->addSession(Lcom/lge/wfds/session/AspSession;)Z

    .line 541
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    if-nez v0, :cond_1

    .line 542
    invoke-virtual {v8}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getAcceptMethod()I

    move-result v0

    if-nez v0, :cond_1

    .line 543
    const-string v0, "WfdsSession:Controller"

    const-string v1, "REQUEST_SESSION_RECEIVED : AcceptMethod[WFDS_USER_DEFERRED_ACCEPT_METHOD]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # setter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v0, p1}, Lcom/lge/wfds/SessionController;->access$302(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Lcom/lge/wfds/session/AspSession;

    .line 547
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x6

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v0, v1, p1}, Lcom/lge/wfds/SessionController;->access$2000(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$4000(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v0

    iget-object v1, p1, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsDialog;->showProvDeferUserInputDialog(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionDeferredState:Lcom/lge/wfds/SessionController$SessionDeferredState;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$3400(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionDeferredState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$4100(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 570
    .end local v8    # "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    :goto_0
    return-void

    .line 555
    .restart local v8    # "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    :cond_1
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopSessionReadyTimeouts()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$400(Lcom/lge/wfds/SessionController;)V

    .line 557
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$4200(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsEvent;

    move-result-object v0

    iget v1, p1, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    iget-object v2, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    iget-object v5, p1, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/lge/wfds/WfdsEvent;->notifySessionRequestToService(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    goto :goto_0

    .line 563
    :cond_2
    const-string v0, "WfdsSession:Controller"

    const-string v1, "REQUEST_SESSION_RECEIVED : session is Unknown Service or Unknown advertise_id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v0, "WfdsSession:Controller"

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sessionToString(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/lge/wfds/SessionController;->access$3100(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x2

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v0, v1, p1}, Lcom/lge/wfds/SessionController;->access$2000(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    goto :goto_0

    .line 568
    .end local v8    # "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    :cond_3
    const-string v0, "WfdsSession:Controller"

    const-string v1, "REQUEST_SESSION_RECEIVED : session is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private procSessionOpenFailed()V
    .locals 4

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 585
    .local v0, "sSession":Lcom/lge/wfds/session/AspSession;
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget v3, v3, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_0

    .line 588
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const v2, 0x901015

    # invokes: Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Lcom/lge/wfds/SessionController;->access$1900(Lcom/lge/wfds/SessionController;ILjava/lang/Object;)V

    .line 589
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v1

    iget-object v2, v0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v3, v0, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v1, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->removeSession(Ljava/lang/String;I)V

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v2, 0x0

    # setter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1, v2}, Lcom/lge/wfds/SessionController;->access$302(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Lcom/lge/wfds/session/AspSession;

    .line 595
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v1}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v1

    if-nez v1, :cond_1

    .line 596
    const-string v1, "WfdsSession:Controller"

    const-string v2, "Session open fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$2300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;

    move-result-object v2

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/lge/wfds/SessionController;->access$4400(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_1
    const-string v1, "WfdsSession:Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size of mSessionList is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/wfds/session/AspSessionList;->getSessionSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private procSessionReady(Landroid/os/Message;Lcom/lge/wfds/session/AspSession;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 508
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v0, v1, p2}, Lcom/lge/wfds/SessionController;->access$2000(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v0

    iget-object v1, p2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v2, p2, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->setSessionState(Ljava/lang/String;II)V

    .line 512
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendSessionStatus(Lcom/lge/wfds/session/AspSession;II)V
    invoke-static {v0, p2, v3, v3}, Lcom/lge/wfds/SessionController;->access$2200(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;II)V

    .line 514
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$2500(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpenedState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$3800(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const v1, 0x900020

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v1}, Lcom/lge/wfds/SessionController;->access$100(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    .line 518
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 299
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionReadyState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mIsCertificationMode:Z
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$1300(Lcom/lge/wfds/SessionController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const-string v2, "com.lge.wfds.session.COUNT_ZERO_TIMEOUT"

    const v3, 0xea60

    # invokes: Lcom/lge/wfds/SessionController;->startTimeout(Ljava/lang/String;I)Landroid/app/PendingIntent;
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/SessionController;->access$1500(Lcom/lge/wfds/SessionController;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    # setter for: Lcom/lge/wfds/SessionController;->mSessionCountZeroTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$1402(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 305
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 615
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionReadyState - exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v5, 0x901016

    const/4 v3, 0x1

    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 309
    const/4 v1, 0x0

    .line 311
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 504
    :goto_0
    return v2

    .line 314
    :sswitch_0
    const-string v2, "WfdsSession:Controller"

    const-string v4, "EVT_REQUEST_OPEN_SESSION"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/lge/wfds/session/AspSession;

    if-eqz v2, :cond_2

    .line 316
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopSessionReadyTimeouts()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$400(Lcom/lge/wfds/SessionController;)V

    .line 318
    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/lge/wfds/session/AspSession;

    # setter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4, v2}, Lcom/lge/wfds/SessionController;->access$302(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Lcom/lge/wfds/session/AspSession;

    .line 319
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lge/wfds/session/AspSessionList;->addSession(Lcom/lge/wfds/session/AspSession;)Z

    .line 321
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget-object v4, v4, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    # invokes: Lcom/lge/wfds/SessionController;->isKnownService(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$1600(Lcom/lge/wfds/SessionController;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpeningState:Lcom/lge/wfds/SessionController$SessionOpeningState;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$1000(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpeningState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$1700(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    move v2, v3

    .line 504
    goto :goto_0

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendRequestSession()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$1800(Lcom/lge/wfds/SessionController;)V

    goto :goto_1

    .line 327
    :cond_2
    const-string v2, "WfdsSession:Controller"

    const-string v4, "EVT_REQUEST_OPEN_SESSION : mRequestedSession is not null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const v4, 0x901015

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(ILjava/lang/Object;)V
    invoke-static {v2, v4, v5}, Lcom/lge/wfds/SessionController;->access$1900(Lcom/lge/wfds/SessionController;ILjava/lang/Object;)V

    goto :goto_1

    .line 333
    :sswitch_1
    const-string v4, "WfdsSession:Controller"

    const-string v5, "REQUEST_SESSION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-class v5, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 335
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 336
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v4, v2, v1}, Lcom/lge/wfds/SessionController;->access$2000(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    goto :goto_1

    .line 340
    :sswitch_2
    const-string v2, "WfdsSession:Controller"

    const-string v4, "ADDED_SESSION"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v4, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 342
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 344
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 346
    invoke-direct {p0, p1, v1}, Lcom/lge/wfds/SessionController$SessionReadyState;->procSessionReady(Landroid/os/Message;Lcom/lge/wfds/session/AspSession;)V

    goto :goto_1

    .line 360
    :sswitch_3
    const-string v4, "WfdsSession:Controller"

    const-string v5, "REJECT_SESSION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-class v5, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 362
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 364
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v5, 0x2

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v4, v5, v1}, Lcom/lge/wfds/SessionController;->access$2000(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    move-result v4

    if-ne v4, v3, :cond_3

    .line 365
    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v5, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v6, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    # invokes: Lcom/lge/wfds/SessionController;->removePortIsolation(Ljava/lang/String;Ljava/lang/Integer;)V
    invoke-static {v4, v5, v6}, Lcom/lge/wfds/SessionController;->access$2100(Lcom/lge/wfds/SessionController;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v4

    iget-object v5, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v6, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/wfds/session/AspSessionList;->setSessionState(Ljava/lang/String;II)V

    .line 370
    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendSessionStatus(Lcom/lge/wfds/session/AspSession;II)V
    invoke-static {v4, v1, v7, v2}, Lcom/lge/wfds/SessionController;->access$2200(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;II)V

    .line 374
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v2}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v2

    if-nez v2, :cond_4

    .line 375
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$2300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$2400(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 381
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const v4, 0x900020

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v4}, Lcom/lge/wfds/SessionController;->access$100(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 377
    :cond_4
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$2500(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpenedState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$2600(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 385
    :sswitch_4
    const-string v2, "WfdsSession:Controller"

    const-string v4, "CMD_SESSION_OPEN_FAILED_TIMEOUT"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(I)V
    invoke-static {v2, v5}, Lcom/lge/wfds/SessionController;->access$1200(Lcom/lge/wfds/SessionController;I)V

    .line 387
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionClosedState:Lcom/lge/wfds/SessionController$SessionClosedState;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$2700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionClosedState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$2800(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 391
    :sswitch_5
    const-string v2, "WfdsSession:Controller"

    const-string v4, "CMD_SESSION_COUNT_ZERO_TIMEOUT"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(I)V
    invoke-static {v2, v5}, Lcom/lge/wfds/SessionController;->access$1200(Lcom/lge/wfds/SessionController;I)V

    .line 393
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionClosedState:Lcom/lge/wfds/SessionController$SessionClosedState;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$2700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionClosedState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$2900(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 397
    :sswitch_6
    const-string v2, "WfdsSession:Controller"

    const-string v4, "GET_SESSION"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v4, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 399
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 400
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_5

    .line 401
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 402
    .local v0, "aspSession":Lcom/lge/wfds/session/AspSession;
    if-eqz v0, :cond_5

    .line 403
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const v4, 0x900028

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;ILcom/lge/wfds/session/AspSession;)V
    invoke-static {v2, p1, v4, v0}, Lcom/lge/wfds/SessionController;->access$3000(Lcom/lge/wfds/SessionController;Landroid/os/Message;ILcom/lge/wfds/session/AspSession;)V

    goto/16 :goto_1

    .line 408
    .end local v0    # "aspSession":Lcom/lge/wfds/session/AspSession;
    :cond_5
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const v4, 0x900027

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v4}, Lcom/lge/wfds/SessionController;->access$100(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 413
    :sswitch_7
    const-string v2, "WfdsSession:Controller"

    const-string v4, "REQUEST_SESSION_RECEIVED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v4, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 415
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/lge/wfds/session/AspSession;

    invoke-direct {p0, v2}, Lcom/lge/wfds/SessionController$SessionReadyState;->procReqSessionReceived(Lcom/lge/wfds/session/AspSession;)V

    goto/16 :goto_1

    .line 419
    :sswitch_8
    const-string v2, "WfdsSession:Controller"

    const-string v4, "ADDED_SESSION_RECEIVED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v4, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 421
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 423
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_0

    .line 424
    const-string v2, "WfdsSession:Controller"

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sessionToString(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/lge/wfds/SessionController;->access$3100(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 427
    .restart local v0    # "aspSession":Lcom/lge/wfds/session/AspSession;
    if-eqz v0, :cond_0

    .line 428
    iget v2, v0, Lcom/lge/wfds/session/AspSession;->state:I

    if-eqz v2, :cond_6

    .line 429
    invoke-direct {p0, v1}, Lcom/lge/wfds/SessionController$SessionReadyState;->procAddedSession(Lcom/lge/wfds/session/AspSession;)V

    goto/16 :goto_1

    .line 431
    :cond_6
    const-string v2, "WfdsSession:Controller"

    const-string v4, "ADDED_SESSION_RECEIVED : Already Opened State"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v2, "WfdsSession:Controller"

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sessionToString(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/lge/wfds/SessionController;->access$3100(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 439
    .end local v0    # "aspSession":Lcom/lge/wfds/session/AspSession;
    :sswitch_9
    const-string v4, "WfdsSession:Controller"

    const-string v5, "REJECTED_SESSION_RECEIVED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-class v5, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 441
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 443
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v5, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v6, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    # invokes: Lcom/lge/wfds/SessionController;->removePortIsolation(Ljava/lang/String;Ljava/lang/Integer;)V
    invoke-static {v4, v5, v6}, Lcom/lge/wfds/SessionController;->access$2100(Lcom/lge/wfds/SessionController;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v4

    iget-object v5, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v6, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/wfds/session/AspSessionList;->setSessionState(Ljava/lang/String;II)V

    .line 448
    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendSessionStatus(Lcom/lge/wfds/session/AspSession;II)V
    invoke-static {v4, v1, v7, v2}, Lcom/lge/wfds/SessionController;->access$2200(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;II)V

    .line 452
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v2}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v2

    if-nez v2, :cond_7

    .line 453
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$2300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$3200(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 455
    :cond_7
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$2500(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpenedState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$3300(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 460
    :sswitch_a
    const-string v2, "WfdsSession:Controller"

    const-string v4, "DEFERRED_SESSION_RECEIVED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v4, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 462
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 463
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionDeferredState:Lcom/lge/wfds/SessionController$SessionDeferredState;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$3400(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionDeferredState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$3500(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 469
    :sswitch_b
    const-string v2, "WfdsSession:Controller"

    const-string v4, "ACK_ADDED_SESSION_RECEIVED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopAspSessionRequest()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$200(Lcom/lge/wfds/SessionController;)V

    goto/16 :goto_1

    .line 474
    :sswitch_c
    const-string v2, "WfdsSession:Controller"

    const-string v4, "ASP_ACK_UNKNOWN_RECEIVED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopAspSessionRequest()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$200(Lcom/lge/wfds/SessionController;)V

    goto/16 :goto_1

    .line 479
    :sswitch_d
    const-string v2, "WfdsSession:Controller"

    const-string v4, "SESSION_OPEN_FAILED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0}, Lcom/lge/wfds/SessionController$SessionReadyState;->procSessionOpenFailed()V

    goto/16 :goto_1

    .line 484
    :sswitch_e
    const-string v2, "WfdsSession:Controller"

    const-string v4, "EVT_P2P_DISCONNECTED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/wfds/SessionController$SessionReadyState;->disablePortIsolation(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/lge/wfds/session/AspSessionList;->removeSession(Ljava/lang/String;)V

    .line 488
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v2}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionCountZeroTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$1400(Lcom/lge/wfds/SessionController;)Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$2300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$3600(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 497
    :sswitch_f
    const-string v2, "WfdsSession:Controller"

    const-string v4, "EVT_P2P_GROUP_REMOVED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionClosedState:Lcom/lge/wfds/SessionController$SessionClosedState;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$2700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionClosedState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$3700(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 311
    nop

    :sswitch_data_0
    .sparse-switch
        0x900006 -> :sswitch_2
        0x90000b -> :sswitch_3
        0x90000c -> :sswitch_6
        0x901033 -> :sswitch_1
        0x901036 -> :sswitch_4
        0x901037 -> :sswitch_5
        0x901047 -> :sswitch_0
        0x901048 -> :sswitch_f
        0x901049 -> :sswitch_e
        0x90104b -> :sswitch_f
        0x90105b -> :sswitch_d
        0x90105d -> :sswitch_7
        0x90105e -> :sswitch_8
        0x90105f -> :sswitch_9
        0x901062 -> :sswitch_a
        0x901063 -> :sswitch_b
        0x901065 -> :sswitch_c
    .end sparse-switch
.end method
