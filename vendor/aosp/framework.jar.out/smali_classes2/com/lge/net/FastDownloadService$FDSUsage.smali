.class public Lcom/lge/net/FastDownloadService$FDSUsage;
.super Ljava/lang/Object;
.source "FastDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/net/FastDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FDSUsage"
.end annotation


# instance fields
.field mAppName:Ljava/lang/String;

.field mPID:I

.field final synthetic this$0:Lcom/lge/net/FastDownloadService;


# direct methods
.method public constructor <init>(Lcom/lge/net/FastDownloadService;ILjava/lang/String;)V
    .locals 2
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$FDSUsage;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/net/FastDownloadService$FDSUsage;->mAppName:Ljava/lang/String;

    .line 1021
    iput p2, p0, Lcom/lge/net/FastDownloadService$FDSUsage;->mPID:I

    .line 1022
    iput-object p3, p0, Lcom/lge/net/FastDownloadService$FDSUsage;->mAppName:Ljava/lang/String;

    .line 1023
    sget-boolean v0, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FDSUsage created PID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", APPNAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSUsage;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1024
    :cond_0
    return-void
.end method
