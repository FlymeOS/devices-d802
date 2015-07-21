.class Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl$1;
.super Ljava/lang/Object;
.source "LGSmsSimUtilsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;->handleSimSmses(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;

.field final synthetic val$simSmsMessage:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl$1;->this$0:Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl$1;->val$simSmsMessage:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl$1;->this$0:Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl$1;->val$simSmsMessage:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl$1;->this$0:Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;

    iget v2, v2, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;->mSlotIdValue:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;->mSimUpdateSimMsgProvider(Ljava/util/ArrayList;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const-string v0, "handleSimSmses(), the SMS DB insertion from USIM is skiped or failed"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl$1;->this$0:Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;

    # getter for: Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;->isUSimSmsUpdateStarted:Z
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;->access$000(Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl$1;->this$0:Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;->isUSimSmsUpdateStarted:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;->access$002(Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;Z)Z

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl$1;->this$0:Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl$1;->val$simSmsMessage:Ljava/util/ArrayList;

    # invokes: Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;->updateCurrentIccSimMessageProvider(Ljava/util/ArrayList;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;->access$100(Lcom/android/internal/telephony/uicc/LGSmsSimUtilsImpl;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "handleSimSmses(), the SMS DB insertion from Sim is failed"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_2
    const-string v0, "handleSimSmses() :: already done"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0
.end method
