.class Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaCallTrackerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.intent.action.AOCR_RECEIVED_KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx;->mIsReceivedAocr:Z

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx;->pollCallsWhenSafe()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx;->access$000(Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx;)V

    .line 395
    :cond_0
    return-void
.end method
