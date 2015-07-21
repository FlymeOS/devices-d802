.class Lcom/lge/net/FastDownloadService$FDSBandwidthTracker$1;
.super Ljava/lang/Object;
.source "FastDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;


# direct methods
.method constructor <init>(Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;)V
    .locals 0

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker$1;->this$1:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker$1;->this$1:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v0}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->updateDataActivity()V

    .line 1082
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker$1;->this$1:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    iget-object v0, v0, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$1700(Lcom/lge/net/FastDownloadService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1083
    return-void
.end method
