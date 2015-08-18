.class Lcom/lge/wfds/SessionController$SessionOpeningState;
.super Lcom/android/internal/util/State;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/SessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionOpeningState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/SessionController;


# direct methods
.method constructor <init>(Lcom/lge/wfds/SessionController;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 683
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-nez v2, :cond_0

    .line 684
    const-string v2, "WfdsSession:Controller"

    const-string v3, "STATE : SessionOpeningState - enter - Error !! Peer Device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_0
    return-void

    .line 688
    :cond_0
    const-string v2, "WfdsSession:Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE : SessionOpeningState - enter - Peer Device Address : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget-object v4, v4, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopSessionReadyTimeouts()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$400(Lcom/lge/wfds/SessionController;)V

    .line 692
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->setP2pPowerSave(Z)V
    invoke-static {v2, v5}, Lcom/lge/wfds/SessionController;->access$4800(Lcom/lge/wfds/SessionController;Z)V

    .line 694
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$4900(Lcom/lge/wfds/SessionController;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    .line 695
    const-string v2, "WfdsSession:Controller"

    const-string v3, "SessionOpeningState - enter : WifiMulticastLock acquire"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$4900(Lcom/lge/wfds/SessionController;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 698
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$5000(Lcom/lge/wfds/SessionController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    .line 705
    const-string v2, "WfdsSession:Controller"

    const-string v3, "SessionOpeningState - enter : WakeLock acquire"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$5000(Lcom/lge/wfds/SessionController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 708
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 714
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mPortIsolation:Lcom/lge/wfds/session/PortIsolation;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$600(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/PortIsolation;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget-object v3, v3, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget v4, v4, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/session/PortIsolation;->enable(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 716
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget-object v3, v3, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget v4, v4, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    .line 717
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_3

    .line 718
    const-string v2, "WfdsSession:Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter SessionOpeningState - Peer Device IP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$900(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/UdpDataManager;

    move-result-object v2

    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lge/wfds/session/UdpDataManager;->initUdpDataSender(Ljava/lang/String;)V

    .line 720
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$900(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/UdpDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/session/UdpDataManager;->startReceiver()V

    .line 722
    :cond_3
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # setter for: Lcom/lge/wfds/SessionController;->bVersionReceived:Z
    invoke-static {v2, v5}, Lcom/lge/wfds/SessionController;->access$5102(Lcom/lge/wfds/SessionController;Z)Z

    .line 723
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # setter for: Lcom/lge/wfds/SessionController;->bVersionSent:Z
    invoke-static {v2, v5}, Lcom/lge/wfds/SessionController;->access$5202(Lcom/lge/wfds/SessionController;Z)Z

    .line 724
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    const v3, 0x901034

    invoke-virtual {v2, v3}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    goto/16 :goto_0

    .line 699
    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "WfdsSession:Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupted Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 709
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 710
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v2, "WfdsSession:Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupted Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 784
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionOpeningState - exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x1

    # invokes: Lcom/lge/wfds/SessionController;->setP2pPowerSave(Z)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$4800(Lcom/lge/wfds/SessionController;Z)V

    .line 788
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$4900(Lcom/lge/wfds/SessionController;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    const-string v0, "WfdsSession:Controller"

    const-string v1, "SessionOpeningState - exit : WifiMulticastLock release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$4900(Lcom/lge/wfds/SessionController;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$5000(Lcom/lge/wfds/SessionController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    const-string v0, "WfdsSession:Controller"

    const-string v1, "SessionOpeningState - exit : WakeLock release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$5000(Lcom/lge/wfds/SessionController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mIsCertificationMode:Z
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$1300(Lcom/lge/wfds/SessionController;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    const-string v2, "com.lge.wfds.session.OPEN_FAILED_TIMEOUT"

    const/16 v3, 0x2710

    # invokes: Lcom/lge/wfds/SessionController;->startTimeout(Ljava/lang/String;I)Landroid/app/PendingIntent;
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/SessionController;->access$1500(Lcom/lge/wfds/SessionController;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    # setter for: Lcom/lge/wfds/SessionController;->mSessionOpenFailedTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$5302(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 802
    :cond_2
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v4, 0x901035

    const/4 v1, 0x1

    .line 729
    const/4 v0, 0x0

    .line 731
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 777
    const/4 v1, 0x0

    .line 779
    :goto_0
    return v1

    .line 734
    :sswitch_0
    const-string v2, "WfdsSession:Controller"

    const-string v3, "EVT_REQUEST_OPEN_SESSION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    const v3, 0x901015

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(ILjava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/lge/wfds/SessionController;->access$1900(Lcom/lge/wfds/SessionController;ILjava/lang/Object;)V

    goto :goto_0

    .line 739
    :sswitch_1
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$700(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget-object v3, v3, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$300(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget v4, v4, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 741
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v3, 0x5

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v2, v3, v0}, Lcom/lge/wfds/SessionController;->access$2000(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    goto :goto_0

    .line 746
    :sswitch_2
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION_RECEIVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # setter for: Lcom/lge/wfds/SessionController;->bVersionReceived:Z
    invoke-static {v2, v1}, Lcom/lge/wfds/SessionController;->access$5102(Lcom/lge/wfds/SessionController;Z)Z

    .line 749
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->bVersionReceived:Z
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$5100(Lcom/lge/wfds/SessionController;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->bVersionSent:Z
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$5200(Lcom/lge/wfds/SessionController;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 750
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION exchange is completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v2, v4}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    goto :goto_0

    .line 753
    :cond_0
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION exchange is not completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 758
    :sswitch_3
    const-string v2, "WfdsSession:Controller"

    const-string v3, "ACK_VERSION_RECEIVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopAspSessionRequest()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$200(Lcom/lge/wfds/SessionController;)V

    .line 761
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # setter for: Lcom/lge/wfds/SessionController;->bVersionSent:Z
    invoke-static {v2, v1}, Lcom/lge/wfds/SessionController;->access$5202(Lcom/lge/wfds/SessionController;Z)Z

    .line 762
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->bVersionReceived:Z
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$5100(Lcom/lge/wfds/SessionController;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->bVersionSent:Z
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$5200(Lcom/lge/wfds/SessionController;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 763
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION exchange is completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v2, v4}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    goto/16 :goto_0

    .line 766
    :cond_1
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION exchange is not completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 771
    :sswitch_4
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION_EXCHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendRequestSession()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$1800(Lcom/lge/wfds/SessionController;)V

    goto/16 :goto_0

    .line 731
    nop

    :sswitch_data_0
    .sparse-switch
        0x901034 -> :sswitch_1
        0x901035 -> :sswitch_4
        0x901047 -> :sswitch_0
        0x90105c -> :sswitch_2
        0x901064 -> :sswitch_3
    .end sparse-switch
.end method
