.class Lcom/android/internal/telephony/soi/SmsUsimHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsUsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/soi/SmsUsimHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/soi/SmsUsimHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/soi/SmsUsimHandler;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$1;->this$0:Lcom/android/internal/telephony/soi/SmsUsimHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string v2, "SmsUsimHandler"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$1;->this$0:Lcom/android/internal/telephony/soi/SmsUsimHandler;

    # invokes: Lcom/android/internal/telephony/soi/SmsUsimHandler;->readUsimRecord()V
    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->access$000(Lcom/android/internal/telephony/soi/SmsUsimHandler;)V

    .line 86
    .end local v1    # "stateExtra":Ljava/lang/String;
    :cond_0
    return-void
.end method
