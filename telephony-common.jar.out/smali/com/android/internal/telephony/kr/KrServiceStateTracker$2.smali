.class Lcom/android/internal/telephony/kr/KrServiceStateTracker$2;
.super Ljava/util/TimerTask;
.source "KrServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/kr/KrServiceStateTracker;->faCHGReboot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPm:Landroid/os/PowerManager;

.field final synthetic this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)V
    .locals 2

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$100(Lcom/android/internal/telephony/kr/KrServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$2;->mPm:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 324
    :try_start_0
    const-string v1, "EVENT_SKT_FA_CHG_DONE Reboot :: try"

    # invokes: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$000(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrServiceStateTracker$2;->mPm:Landroid/os/PowerManager;

    const-string v2, "boot"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "EVENT_SKT_FA_CHG_DONE Reboot :: catch"

    # invokes: Lcom/android/internal/telephony/kr/KrServiceStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->access$000(Ljava/lang/String;)V

    goto :goto_0
.end method
