.class Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaLteServiceStateTrackerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.CTC_TDD_CHECK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    const-string v1, "CTC : received ACTION_CTC_TDD_CHECK"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->mTddIntent:Landroid/app/PendingIntent;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->access$002(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->displayTDDNoSVCDuring3min()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->access$100(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;)V

    .line 65
    :cond_0
    return-void
.end method
