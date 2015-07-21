.class Lcom/android/internal/telephony/SMSDispatcherEx$1;
.super Ljava/lang/Object;
.source "SMSDispatcherEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcherEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcherEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcherEx;)V
    .locals 0

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/SMSDispatcherEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1448
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1449
    const-string v0, "isCdmaMo(), [SMS.MO.RETRY] click YES to resend sms"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1450
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/SMSDispatcherEx;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/SMSDispatcherEx;

    const/16 v2, 0x12e

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessage(Landroid/os/Message;)Z

    .line 1455
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 1452
    const-string v0, "isCdmaMo(), [SMS.MO.RETRY] click NO to stop resending"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1453
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/SMSDispatcherEx;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/SMSDispatcherEx;

    const/16 v2, 0x12f

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SMSDispatcherEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcherEx;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
