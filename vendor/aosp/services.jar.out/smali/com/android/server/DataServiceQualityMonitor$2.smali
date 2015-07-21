.class Lcom/android/server/DataServiceQualityMonitor$2;
.super Landroid/database/ContentObserver;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataServiceQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DataServiceQualityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/DataServiceQualityMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor$2;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 118
    const-string v0, "EVENT_SETTING_CHANGED_DATA_ENABLED onChanged"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$2;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    const/16 v1, 0x13c5

    invoke-virtual {v0, v1}, Lcom/android/server/DataServiceQualityMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void
.end method
