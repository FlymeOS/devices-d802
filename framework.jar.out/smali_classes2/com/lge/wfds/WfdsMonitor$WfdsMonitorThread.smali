.class Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;
.super Ljava/lang/Object;
.source "WfdsMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfdsMonitorThread"
.end annotation


# instance fields
.field private isConnect:Z

.field final synthetic this$0:Lcom/lge/wfds/WfdsMonitor;


# direct methods
.method public constructor <init>(Lcom/lge/wfds/WfdsMonitor;)V
    .locals 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->isConnect:Z

    .line 134
    const-string v0, "WfdsMonitor"

    const-string v1, "WfdsMonitorThread create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method private getError(Ljava/lang/String;)I
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 310
    const/16 v0, 0xc

    .line 312
    .local v0, "UNKNOWN":I
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    if-ge v5, v7, :cond_1

    .line 325
    .end local v0    # "UNKNOWN":I
    :cond_0
    :goto_0
    return v0

    .line 316
    .restart local v0    # "UNKNOWN":I
    :cond_1
    aget-object v5, v4, v6

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v5, v2

    if-ne v5, v7, :cond_0

    .line 321
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .local v3, "status":I
    :goto_1
    move v0, v3

    .line 325
    goto :goto_0

    .line 322
    .end local v3    # "status":I
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x7

    .restart local v3    # "status":I
    goto :goto_1
.end method


# virtual methods
.method public connectToSupplicant()Z
    .locals 6

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "connectTries":I
    iget-boolean v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->isConnect:Z

    if-eqz v3, :cond_1

    .line 198
    iget-boolean v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->isConnect:Z

    .line 215
    :goto_0
    return v3

    .line 205
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "connectTries":I
    .local v1, "connectTries":I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 207
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 201
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsMonitor;->access$100(Lcom/lge/wfds/WfdsMonitor;)Lcom/lge/wfds/WfdsNative;

    invoke-static {}, Lcom/lge/wfds/WfdsNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->isConnect:Z

    .line 215
    :goto_2
    iget-boolean v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->isConnect:Z

    goto :goto_0

    .line 208
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "WfdsMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupted Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 210
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    goto :goto_1

    .end local v0    # "connectTries":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "connectTries":I
    :cond_2
    move v0, v1

    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    goto :goto_2
.end method

.method public declared-synchronized disconnectToSupplicant()V
    .locals 1

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v0}, Lcom/lge/wfds/WfdsMonitor;->access$100(Lcom/lge/wfds/WfdsMonitor;)Lcom/lge/wfds/WfdsNative;

    invoke-static {}, Lcom/lge/wfds/WfdsNative;->disconnectToSupplicant()V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->isConnect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method handleConnectionEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 297
    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x902014

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    if-le v2, v3, :cond_0

    .line 303
    aget-object v2, v1, v3

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 304
    .local v0, "deviceAddr":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x902015

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method handleP2pEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 283
    const-string v0, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x902007

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const-string v0, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x902012

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_2
    const-string v0, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x902010

    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->getError(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 290
    :cond_3
    const-string v0, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x902013

    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->getError(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method handleWfdsEvent(Ljava/lang/String;)V
    .locals 7
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 224
    const-string v4, "WFDS-SUPPLICANT-CONNECTED"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902001

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v4, "WFDS-DEVICE-FOUND"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    new-instance v1, Lcom/lge/wfds/WfdsDevice;

    invoke-direct {v1, p1}, Lcom/lge/wfds/WfdsDevice;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, "device":Lcom/lge/wfds/WfdsDevice;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902003

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 230
    .end local v1    # "device":Lcom/lge/wfds/WfdsDevice;
    :cond_2
    const-string v4, "WFDS-PROV-DISC-REQ"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 231
    new-instance v1, Lcom/lge/wfds/WfdsDevice;

    invoke-direct {v1, p1}, Lcom/lge/wfds/WfdsDevice;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v1    # "device":Lcom/lge/wfds/WfdsDevice;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902004

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 233
    .end local v1    # "device":Lcom/lge/wfds/WfdsDevice;
    :cond_3
    const-string v4, "WFDS-PROV-DISC-SENT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 234
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "tokens":[Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902005

    aget-object v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 236
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_4
    const-string v4, "WFDS-PROV-DISC-ACCEPT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 237
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 238
    .restart local v3    # "tokens":[Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902006

    aget-object v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 239
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_5
    const-string v4, "WFDS-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 240
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902008

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 241
    :cond_6
    const-string v4, "WFDS-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 242
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902009

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 243
    :cond_7
    const-string v4, "WFDS-PROV-DISC-DEF-PIN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 244
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x90200a

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 245
    :cond_8
    const-string v4, "WFDS-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 246
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x90200b

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 247
    :cond_9
    const-string v4, "WFDS-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 248
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x90200c

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 249
    :cond_a
    const-string v4, "WFDS-PROV-DISC-PERSISTENT-RESULT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 250
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 251
    .restart local v3    # "tokens":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_b

    .line 252
    const-string v4, "WfdsMonitor"

    const-string v5, "Invailed Arguments Length"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 255
    :cond_b
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x90200d

    aget-object v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 256
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_c
    const-string v4, "WFDS-PERSISTENT-UNKNOWN-GROUP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 257
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x90200e

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 258
    :cond_d
    const-string v4, "WFDS-GO-NEG-REQUEST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 259
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x90200f

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 261
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_e
    const-string v4, "WFDS-PROV-DISC-DEFER"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 262
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfigEx;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902011

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 264
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfigEx;
    :cond_f
    const-string v4, "WFDS-DEVICE-LOST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 266
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 267
    .restart local v3    # "tokens":[Ljava/lang/String;
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v6

    .line 268
    .local v2, "deviceAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902016

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 269
    .end local v2    # "deviceAddr":Ljava/lang/String;
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_10
    const-string v4, "WFDS-DEVICE-INFO-LOST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 271
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 272
    .restart local v3    # "tokens":[Ljava/lang/String;
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v6

    .line 273
    .restart local v2    # "deviceAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902017

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 274
    .end local v2    # "deviceAddr":Ljava/lang/String;
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_11
    const-string v4, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 277
    .restart local v3    # "tokens":[Ljava/lang/String;
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v6

    .line 278
    .restart local v2    # "deviceAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902018

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->connectToSupplicant()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    const-string v3, "WfdsMonitor"

    const-string v4, "Failed to setup control channel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v3, "WfdsMonitor"

    const-string v4, "Supplicant connection established"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x902001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 147
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_8

    .line 148
    iget-object v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsMonitor;->access$100(Lcom/lge/wfds/WfdsMonitor;)Lcom/lge/wfds/WfdsNative;

    invoke-static {}, Lcom/lge/wfds/WfdsNative;->waitForEvent()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "eventStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 153
    const-string v3, "IFNAME="

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 156
    .local v2, "space":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 161
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "iface":Ljava/lang/String;
    const-string v3, "p2p0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "p2p-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "space":I
    :cond_3
    const-string v3, "WfdsMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v3, "WFDS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->handleWfdsEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_4
    const-string v3, "P2P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 181
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->handleP2pEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 182
    :cond_5
    const-string v3, "AP-STA-CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "AP-STA-DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 184
    :cond_6
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->handleConnectionEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 185
    :cond_7
    const-string v3, "CTRL-EVENT-TERMINATING "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x902002

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 190
    .end local v0    # "eventStr":Ljava/lang/String;
    :cond_8
    const-string v3, "WfdsMonitor"

    const-string v4, "WfdsMonitorThread is received the interrupt - closing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->disconnectToSupplicant()V

    goto/16 :goto_0
.end method
