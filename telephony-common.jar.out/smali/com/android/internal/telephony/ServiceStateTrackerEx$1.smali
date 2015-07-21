.class Lcom/android/internal/telephony/ServiceStateTrackerEx$1;
.super Landroid/database/ContentObserver;
.source "ServiceStateTrackerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTrackerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTrackerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTrackerEx;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/ServiceStateTrackerEx;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/ServiceStateTrackerEx;

    const-string v1, "Cdma APN is changed"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/ServiceStateTrackerEx;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/ServiceStateTrackerEx;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sendMessage(Landroid/os/Message;)Z

    .line 585
    return-void
.end method
