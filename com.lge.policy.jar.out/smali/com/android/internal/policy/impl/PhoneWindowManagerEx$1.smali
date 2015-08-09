.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;
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
    .line 880
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 882
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 883
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.ltecall.vzwhold"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 884
    .local v0, "holdByPowerkey":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 885
    return-void
.end method
