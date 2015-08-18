.class Lcom/lge/wfds/WfdsService$3;
.super Landroid/database/ContentObserver;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsService;->registerScanModeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/WfdsService;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$3;->this$0:Lcom/lge/wfds/WfdsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "change"    # Z

    .prologue
    .line 367
    const-string v0, "WfdsService"

    const-string v1, "WifiScanAlwaysAvailable is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$3;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$1500(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsMonitor;->handleWifiScanAlwaysAvailable()V

    .line 369
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$3;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v0

    const v1, 0x90100b

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    .line 370
    return-void
.end method
