.class Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;
.super Ljava/lang/Thread;
.source "WifiHostapdMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostapdMonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;)V
    .locals 1

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;

    .line 18
    const-string v0, "HostapdMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private connectToHostapd()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 22
    const/4 v0, 0x0

    .line 27
    .local v0, "connectTries":I
    :goto_0
    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mThreadRunning:Z
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->access$000()Z

    move-result v3

    if-nez v3, :cond_1

    .line 28
    const-string v2, "WifiHostapdMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++ mThreadRunning exit!!!!! = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mThreadRunning:Z
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->access$000()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_1
    const/4 v2, 0x0

    :cond_0
    return v2

    .line 36
    :cond_1
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->connectToHostapd()Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "connectTries":I
    .local v1, "connectTries":I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 40
    # invokes: Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->nap(I)V
    invoke-static {v2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->access$100(I)V

    move v0, v1

    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    goto :goto_0

    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    :cond_2
    move v0, v1

    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    const-string v1, "WifiHostapdMonitor"

    const-string v2, "Thread started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;->connectToHostapd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->notifyConnectedToHostapd()V

    .line 57
    :goto_0
    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mThreadRunning:Z
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const-string v1, "WifiHostapdMonitor"

    const-string/jumbo v2, "waitForHostapdEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->waitForHostapdEvent()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "eventStr":Ljava/lang/String;
    const-string v1, "WifiHostapdMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitForHostapdEvent STR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-nez v0, :cond_0

    .line 62
    const-string v1, "WifiHostapdMonitor"

    const-string v2, "Null event received"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;

    # invokes: Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->handleEvent(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->access$200(Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v0    # "eventStr":Ljava/lang/String;
    :cond_1
    const-string v1, "WifiHostapdMonitor"

    const-string v2, "Cannot connect to hostapd."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    return-void
.end method
