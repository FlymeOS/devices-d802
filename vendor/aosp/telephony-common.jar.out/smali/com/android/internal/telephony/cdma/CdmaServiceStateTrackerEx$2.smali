.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$2;
.super Landroid/database/ContentObserver;
.source "CdmaServiceStateTrackerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    const-string v1, "CellLocation is changed"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->access$300(Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 183
    return-void
.end method
