.class Lcom/android/internal/telephony/PhoneProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0

    .prologue
    .line 2001
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2004
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2005
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.lge.intent.action.LTE_TDD_INFO_KDDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2006
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const-string v2, "tdd_info"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/internal/telephony/PhoneProxy;->mLteTddInfo:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->access$002(Lcom/android/internal/telephony/PhoneProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2008
    :cond_0
    return-void
.end method
