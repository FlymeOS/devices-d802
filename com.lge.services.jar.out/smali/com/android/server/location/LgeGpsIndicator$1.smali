.class Lcom/android/server/location/LgeGpsIndicator$1;
.super Landroid/content/BroadcastReceiver;
.source "LgeGpsIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LgeGpsIndicator;


# direct methods
.method constructor <init>(Lcom/android/server/location/LgeGpsIndicator;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/location/LgeGpsIndicator$1;->this$0:Lcom/android/server/location/LgeGpsIndicator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 79
    .local v1, "isEnabled":Z
    # getter for: Lcom/android/server/location/LgeGpsIndicator;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/LgeGpsIndicator;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const-string v2, "LgeGpsIndicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recieve Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/LgeGpsIndicator$1;->this$0:Lcom/android/server/location/LgeGpsIndicator;

    # invokes: Lcom/android/server/location/LgeGpsIndicator;->setGpsIndicator(Ljava/lang/String;Z)V
    invoke-static {v2, v0, v1}, Lcom/android/server/location/LgeGpsIndicator;->access$100(Lcom/android/server/location/LgeGpsIndicator;Ljava/lang/String;Z)V

    .line 83
    return-void
.end method
