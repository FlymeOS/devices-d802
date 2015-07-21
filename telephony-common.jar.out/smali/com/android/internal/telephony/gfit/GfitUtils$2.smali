.class Lcom/android/internal/telephony/gfit/GfitUtils$2;
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
    .line 191
    iput-object p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const-string v1, "receive ACTION_AIRPLANE_MODE_CHANGED"

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->cancelSwitchToGlobalModePopupEvent()V
    invoke-static {v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$200(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->getNetworkMode()I
    invoke-static {v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$300(Lcom/android/internal/telephony/gfit/GfitUtils;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z
    invoke-static {v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$400(Lcom/android/internal/telephony/gfit/GfitUtils;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    # getter for: Lcom/android/internal/telephony/gfit/GfitUtils;->mPhone:Lcom/android/internal/telephony/PhoneBaseEx;
    invoke-static {v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$500(Lcom/android/internal/telephony/gfit/GfitUtils;)Lcom/android/internal/telephony/PhoneBaseEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const-string v1, "Switch to Global Mode after 30 secs"

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$602(Lcom/android/internal/telephony/gfit/GfitUtils;Z)Z

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const/16 v1, 0x67

    const/16 v2, 0x7530

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V
    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$700(Lcom/android/internal/telephony/gfit/GfitUtils;IIII)V

    .line 208
    :cond_0
    return-void
.end method
