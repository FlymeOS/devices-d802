.class final Lcom/lge/systemservice/service/SmartCoverService$LGMiniViewReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/service/SmartCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGMiniViewReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/service/SmartCoverService;


# direct methods
.method private constructor <init>(Lcom/lge/systemservice/service/SmartCoverService;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/lge/systemservice/service/SmartCoverService$LGMiniViewReceiver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/systemservice/service/SmartCoverService;Lcom/lge/systemservice/service/SmartCoverService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p2, "x1"    # Lcom/lge/systemservice/service/SmartCoverService$1;

    .prologue
    .line 985
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService$LGMiniViewReceiver;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 988
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.lge.android.intent.action.MINIVIEW_SETTINGS_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 989
    const-string v3, "com.lge.intent.extra.MINIVIEW_ALIVE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 990
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService$LGMiniViewReceiver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    const-string v4, "com.lge.intent.extra.MINIVIEW_ALIVE"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mMiniviewAlive:Z
    invoke-static {v3, v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$802(Lcom/lge/systemservice/service/SmartCoverService;Z)Z

    .line 991
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService$LGMiniViewReceiver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    const-string v4, "/sys/class/switch/smartcover/state"

    # invokes: Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I
    invoke-static {v3, v4, v1}, Lcom/lge/systemservice/service/SmartCoverService;->access$3200(Lcom/lge/systemservice/service/SmartCoverService;Ljava/lang/String;I)I

    move-result v0

    .line 992
    .local v0, "realState":I
    if-ne v0, v2, :cond_0

    .line 993
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService$LGMiniViewReceiver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v4, p0, Lcom/lge/systemservice/service/SmartCoverService$LGMiniViewReceiver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mMiniviewAlive:Z
    invoke-static {v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$800(Lcom/lge/systemservice/service/SmartCoverService;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    # invokes: Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent(I)V
    invoke-static {v3, v1}, Lcom/lge/systemservice/service/SmartCoverService;->access$200(Lcom/lge/systemservice/service/SmartCoverService;I)V

    .line 995
    :cond_0
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Miniview is Alive : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService$LGMiniViewReceiver;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mMiniviewAlive:Z
    invoke-static {v1}, Lcom/lge/systemservice/service/SmartCoverService;->access$800(Lcom/lge/systemservice/service/SmartCoverService;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "alive"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    .end local v0    # "realState":I
    :cond_1
    return-void

    .restart local v0    # "realState":I
    :cond_2
    move v1, v2

    .line 993
    goto :goto_0

    .line 995
    :cond_3
    const-string v1, "dead"

    goto :goto_1
.end method
