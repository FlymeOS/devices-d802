.class Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "KrLguRILEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBroadcastReceiver : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_LGT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->handleLGTRoamingUITest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$000(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;I)V

    .line 509
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->handleLGTRoamingUITest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$000(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;I)V

    .line 512
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_JCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    const/4 v1, 0x2

    # invokes: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->handleLGTRoamingUITest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$000(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;I)V

    .line 515
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_DCN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    const/4 v1, 0x3

    # invokes: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->handleLGTRoamingUITest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$000(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;I)V

    .line 518
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LG_NVITEM_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # invokes: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->handleNVItemReset()V
    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$100(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;)V

    .line 521
    :cond_4
    return-void
.end method
