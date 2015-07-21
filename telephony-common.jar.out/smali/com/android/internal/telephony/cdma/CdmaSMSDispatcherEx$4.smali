.class Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$4;
.super Landroid/content/BroadcastReceiver;
.source "CdmaSMSDispatcherEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 681
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.lge.kddi.intent.action.DAN_DELIVERED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Broadcast! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$4;->getResultCode()I

    move-result v2

    # setter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultCode:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1202(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;I)I

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Domain Notification] DAN received Status report Complete? ResultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultCode:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Domain Notification] errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 689
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultCode:I
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$1200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 690
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.kddi.intent.action.DAN_SENT_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .local v0, "mIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Domain Notification] DAN Send Success, send Broadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 692
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 695
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
