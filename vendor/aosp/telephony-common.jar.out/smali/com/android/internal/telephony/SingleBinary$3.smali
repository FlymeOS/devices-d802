.class Lcom/android/internal/telephony/SingleBinary$3;
.super Landroid/content/BroadcastReceiver;
.source "SingleBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SingleBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SingleBinary;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SingleBinary;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary$3;->this$0:Lcom/android/internal/telephony/SingleBinary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$3;->this$0:Lcom/android/internal/telephony/SingleBinary;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SingleBinary;->deleteOthercountryApks()V

    .line 203
    const-string v1, "persist.data.sbp.update"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.action.CUST_DELETE_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "deleteCompleteIntent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 207
    return-void
.end method
