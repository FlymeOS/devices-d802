.class Lcom/android/internal/telephony/kr/KrPersonalLockMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "KrPersonalLockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor$1;->this$0:Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.lge.intent.action.SIM_UNLOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor$1;->this$0:Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;

    # invokes: Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->handleUsimPersonalUnlockIntent(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->access$000(Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;Landroid/content/Intent;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "stateExtra":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_SIM_STATE_CHANGED stateExtra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->access$100(Ljava/lang/String;)V

    .line 44
    const-string v2, "IMSI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/4 v2, 0x0

    const-string v3, "USIM_PERSONAL_LOCK"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor$1;->this$0:Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;

    # invokes: Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->checkUsimPersonalLock(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;->access$200(Lcom/android/internal/telephony/kr/KrPersonalLockMonitor;Landroid/content/Intent;)V

    goto :goto_0
.end method
