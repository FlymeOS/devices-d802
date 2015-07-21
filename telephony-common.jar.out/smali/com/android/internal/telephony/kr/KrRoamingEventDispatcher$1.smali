.class Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "KrRoamingEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher$1;->this$0:Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher$1;->this$0:Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;

    # invokes: Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;->setUsimMcc()V
    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;->access$000(Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;)V

    .line 111
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher$1;->this$0:Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;

    # invokes: Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;->calculatetIsroamingPersist()V
    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;->access$100(Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;)V

    .line 114
    .end local v1    # "stateExtra":Ljava/lang/String;
    :cond_0
    return-void
.end method
