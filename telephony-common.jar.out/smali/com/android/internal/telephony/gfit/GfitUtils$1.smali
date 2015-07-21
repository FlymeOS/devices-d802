.class Lcom/android/internal/telephony/gfit/GfitUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "GfitUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gfit/GfitUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gfit/GfitUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "stateExtra":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive ACTION_SIM_STATE_CHANGED stateExtra = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    .line 182
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->sendQuerySystemModeAfterBoot(I)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$100(Lcom/android/internal/telephony/gfit/GfitUtils;I)V

    .line 188
    .end local v0    # "stateExtra":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 184
    .restart local v0    # "stateExtra":Ljava/lang/String;
    :cond_1
    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->sendQuerySystemModeAfterBoot(I)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$100(Lcom/android/internal/telephony/gfit/GfitUtils;I)V

    goto :goto_0
.end method
