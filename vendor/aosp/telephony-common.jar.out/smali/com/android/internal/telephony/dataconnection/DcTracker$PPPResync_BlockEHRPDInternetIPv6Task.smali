.class Lcom/android/internal/telephony/dataconnection/DcTracker$PPPResync_BlockEHRPDInternetIPv6Task;
.super Ljava/util/TimerTask;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PPPResync_BlockEHRPDInternetIPv6Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$PPPResync_BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$PPPResync_BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "PPPResync_BlockEHRPDInternetIPv6Task ongoing..."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$PPPResync_BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$PPPResync_BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v2, 0x42820

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 431
    return-void
.end method
