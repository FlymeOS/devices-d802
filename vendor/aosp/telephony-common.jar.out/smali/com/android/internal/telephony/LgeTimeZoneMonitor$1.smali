.class Lcom/android/internal/telephony/LgeTimeZoneMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "LgeTimeZoneMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeTimeZoneMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$1;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$1;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent received : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$1;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    # invokes: Lcom/android/internal/telephony/LgeTimeZoneMonitor;->receivedNetworkSetting()V
    invoke-static {v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->access$000(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$1;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent received : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$1;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    # invokes: Lcom/android/internal/telephony/LgeTimeZoneMonitor;->receivedNetworkSetting()V
    invoke-static {v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->access$000(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V

    goto :goto_0
.end method
