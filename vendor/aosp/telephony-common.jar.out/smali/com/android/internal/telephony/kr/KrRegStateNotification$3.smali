.class Lcom/android/internal/telephony/kr/KrRegStateNotification$3;
.super Ljava/util/TimerTask;
.source "KrRegStateNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/kr/KrRegStateNotification;->reBoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pm:Landroid/os/PowerManager;

.field final synthetic this$0:Lcom/android/internal/telephony/kr/KrRegStateNotification;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/kr/KrRegStateNotification;)V
    .locals 2

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification$3;->this$0:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification$3;->this$0:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    # getter for: Lcom/android/internal/telephony/kr/KrRegStateNotification;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->access$300(Lcom/android/internal/telephony/kr/KrRegStateNotification;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification$3;->pm:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification$3;->pm:Landroid/os/PowerManager;

    const-string v2, "boot"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "reBoot() :: catch"

    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
