.class Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KrLguRILEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockOrderIntentReceiver"
.end annotation


# static fields
.field public static final INTENT_ACTION_CDMA_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.CDMA_LOCK_ORDER"

.field public static final INTENT_ACTION_CDMA_MAINT_REQ:Ljava/lang/String; = "android.intent.action.CDMA_MAINT_REQ"

.field public static final INTENT_ACTION_EHRPD_AN_LOCK:Ljava/lang/String; = "android.intent.action.EHRPD_AN_LOCK"

.field public static final INTENT_ACTION_EHRPD_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.EHRPD_LOCK_ORDER"

.field public static final INTENT_ACTION_LGT_AUTH_LOCK:Ljava/lang/String; = "android.intent.action.LGT_AUTH_LOCK"

.field public static final INTENT_ACTION_LGT_HDR_NETWORK_ERROR:Ljava/lang/String; = "android.intent.action.LGT_HDR_NETWORK_ERROR"

.field public static final INTENT_ACTION_LTE_EMM_REJECT:Ljava/lang/String; = "com.lge.intent.action.LTE_EMM_REJECT"

.field public static final INTENT_ACTION_LTE_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.LTE_LOCK_ORDER"

.field private static final TAG:Ljava/lang/String; = "LockOrderIntentReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;
    .param p2, "x1"    # Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$1;

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;-><init>(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 548
    const-string v2, "LockOrderIntentReceiver/onReceive"

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CDMA_LOCK_ORDER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.CDMA_MAINT_REQ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 552
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLGTUnregister:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$202(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Z)Z

    .line 583
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive / result, mIsLGTUnregister : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # getter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLGTUnregister:Z
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$200(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsLGTUnauthenticated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # getter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLGTUnauthenticated:Z
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$300(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsLGTHDRNetworkError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # getter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLGTHDRNetworkError:Z
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$400(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsLTEAuthError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # getter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLTEAuthError:Z
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$500(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsLTEEMMReject : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # getter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$600(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRejectNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # getter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mRejectNum:I
    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$700(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 588
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # invokes: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->setPopUp()V
    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$800(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;)V

    .line 589
    return-void

    .line 553
    :cond_2
    const-string v2, "android.intent.action.LGT_AUTH_LOCK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 554
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLGTUnauthenticated:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$302(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Z)Z

    goto :goto_0

    .line 555
    :cond_3
    const-string v2, "android.intent.action.LGT_HDR_NETWORK_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 556
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLGTHDRNetworkError:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$402(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Z)Z

    goto/16 :goto_0

    .line 558
    :cond_4
    const-string v2, "android.intent.action.EHRPD_LOCK_ORDER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.LTE_LOCK_ORDER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.EHRPD_AN_LOCK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 561
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLTEAuthError:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$502(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Z)Z

    goto/16 :goto_0

    .line 566
    :cond_6
    const-string v2, "com.lge.intent.action.LTE_EMM_REJECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 570
    const-string v2, "rejectCode"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 572
    .local v1, "rejectCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 574
    if-lez v1, :cond_7

    .line 575
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$602(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Z)Z

    .line 579
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    const-string v3, "rejectCode"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mRejectNum:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$702(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;I)I

    goto/16 :goto_0

    .line 577
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v2, v5}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$602(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Z)Z

    goto :goto_1
.end method
