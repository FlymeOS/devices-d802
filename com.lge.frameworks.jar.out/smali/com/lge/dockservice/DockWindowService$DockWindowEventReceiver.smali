.class Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/dockservice/DockWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DockWindowEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/dockservice/DockWindowService;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService;)V
    .locals 0

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setActionAccessoryEvent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1848
    const-string v1, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1849
    .local v0, "state":I
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    if-nez v0, :cond_1

    .line 1851
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_ACCESSORY_STATE_FRONT_OPENED"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v2, "com.lge.coverapp"

    # invokes: Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lge/dockservice/DockWindowService;->access$2700(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    .line 1853
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    iput-boolean v4, v1, Lcom/lge/dockservice/DockWindowService;->mIsQuickCoverClosed:Z

    .line 1860
    :cond_0
    :goto_0
    return-void

    .line 1855
    :cond_1
    if-eq v0, v5, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1856
    :cond_2
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_ACCESSORY_STATE_FRONT_CLOSED || EXTRA_ACCESSORY_STATE_FRONT_HALFOPEN "

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v2, "com.lge.coverapp"

    # invokes: Lcom/lge/dockservice/DockWindowService;->enterLowProfile(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lge/dockservice/DockWindowService;->access$2600(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    .line 1858
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    iput-boolean v5, v1, Lcom/lge/dockservice/DockWindowService;->mIsQuickCoverClosed:Z

    goto :goto_0
.end method

.method private setActionPhoneStateChanged(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1800
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.action.INCOMING_FULLSCREEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1801
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Lcom/lge/dockservice/DockWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 1802
    .local v1, "isKeyguardOn":Z
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check low profile condition: isKeyguardOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    if-eqz v1, :cond_0

    .line 1804
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on enterLowProfile with INCOMING_FULLSCREEN by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->enterLowProfile(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/lge/dockservice/DockWindowService;->access$2600(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    .line 1845
    .end local v1    # "isKeyguardOn":Z
    :cond_0
    :goto_0
    return-void

    .line 1808
    :cond_1
    const-string p2, "phone"

    .line 1809
    const-string v4, "state"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1810
    .local v3, "state":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1811
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1812
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Lcom/lge/dockservice/DockWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 1813
    .restart local v1    # "isKeyguardOn":Z
    const/4 v2, 0x1

    .line 1814
    .local v2, "isKeyguardSecure":Z
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-le v4, v5, :cond_2

    .line 1816
    :try_start_0
    # getter for: Lcom/lge/dockservice/DockWindowService;->sIsKeyguardSecure:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$2800()Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v6, "keyguard"

    invoke-virtual {v4, v6}, Lcom/lge/dockservice/DockWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1817
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "success to invoke isKeyguardSecure"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1823
    :cond_2
    :goto_1
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check low profile condition: isKeyguardOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isKeyguardSecure = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    if-eqz v1, :cond_4

    .line 1825
    if-eqz v2, :cond_3

    .line 1826
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on enterLowProfile with phone state OFFHOOK by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->enterLowProfile(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/lge/dockservice/DockWindowService;->access$2600(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1818
    :catch_0
    move-exception v0

    .line 1819
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fail to invoke isKeyguardSecure"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1830
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exit low profile on STATE_OFFHOOK with non-secure keyquard"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/lge/dockservice/DockWindowService;->access$2700(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1835
    :cond_4
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exit low profile on STATE_OFFHOOK with no keyquard"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/lge/dockservice/DockWindowService;->access$2700(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1839
    .end local v1    # "isKeyguardOn":Z
    .end local v2    # "isKeyguardSecure":Z
    :cond_5
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1840
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on exitLowProfile with phone state IDLE by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/lge/dockservice/DockWindowService;->access$2700(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1723
    monitor-enter p0

    .line 1724
    :try_start_0
    const-string v5, "package"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1725
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1726
    const-string v5, "com.lge.intent.extra.package"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1728
    :cond_0
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent Action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v5}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1731
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no dock view to handle received intent"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    monitor-exit p0

    .line 1797
    :goto_0
    return-void

    .line 1735
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1736
    const-string v5, "window-remove"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1737
    .local v3, "removedWindow":Ljava/lang/String;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed Window  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    if-nez v3, :cond_2

    .line 1739
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v5}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 1740
    .local v0, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-virtual {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->moveToTop()V

    goto :goto_1

    .line 1796
    .end local v0    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "removedWindow":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1743
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "removedWindow":Ljava/lang/String;
    :cond_2
    :try_start_1
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "terminate Dock - cause of floating window removed"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v5}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 1746
    .local v4, "targetView":Lcom/lge/dockservice/DockWindowService$DockView;
    if-eqz v4, :cond_4

    .line 1747
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kill dockview for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    invoke-virtual {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->killdock()V

    .line 1750
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->removeViewInUiThread(Landroid/view/View;)V
    invoke-static {v5, v4}, Lcom/lge/dockservice/DockWindowService;->access$600(Lcom/lge/dockservice/DockWindowService;Landroid/view/View;)V

    .line 1796
    .end local v3    # "removedWindow":Ljava/lang/String;
    .end local v4    # "targetView":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_3
    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    .line 1753
    .restart local v3    # "removedWindow":Ljava/lang/String;
    .restart local v4    # "targetView":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_4
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t find dockview for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1757
    .end local v3    # "removedWindow":Ljava/lang/String;
    .end local v4    # "targetView":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1758
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 1759
    :cond_6
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "low profile intent with NULL package name is ignored"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    monitor-exit p0

    goto/16 :goto_0

    .line 1762
    :cond_7
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "on enterLowProfile by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->enterLowProfile(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/lge/dockservice/DockWindowService;->access$2600(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto :goto_2

    .line 1765
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1766
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    .line 1767
    :cond_9
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "low profile intent with NULL package name is ignored"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    monitor-exit p0

    goto/16 :goto_0

    .line 1770
    :cond_a
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "on exitLowProfile by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/lge/dockservice/DockWindowService;->access$2700(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1773
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1774
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dock ENTER_GUEST_MODE"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1776
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.lockscreen.intent.action.END_KIDSHOME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1777
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dock EXIT_GUEST_MODE"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1779
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1780
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dock LockScreen"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v6, "LOCKSCREEN"

    # invokes: Lcom/lge/dockservice/DockWindowService;->enterLowProfile(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/lge/dockservice/DockWindowService;->access$2600(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1783
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1784
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dock StandardHome"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    iget-boolean v5, v5, Lcom/lge/dockservice/DockWindowService;->mIsQuickCoverClosed:Z

    if-nez v5, :cond_3

    .line 1786
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v6, "LOCKSCREEN"

    # invokes: Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/lge/dockservice/DockWindowService;->access$2700(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1789
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1790
    invoke-direct {p0, p2}, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->setActionAccessoryEvent(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1792
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.action.INCOMING_FULLSCREEN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1794
    :cond_11
    invoke-direct {p0, p2, v2}, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->setActionPhoneStateChanged(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method
