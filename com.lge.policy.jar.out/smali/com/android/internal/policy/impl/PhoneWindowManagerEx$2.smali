.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;
.super Ljava/lang/Object;
.source "PhoneWindowManagerEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V
    .locals 0

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 901
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 902
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 903
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 905
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 907
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "PhoneWindowManagerEx"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
