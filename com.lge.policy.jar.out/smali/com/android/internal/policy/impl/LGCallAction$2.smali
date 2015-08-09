.class Lcom/android/internal/policy/impl/LGCallAction$2;
.super Landroid/content/BroadcastReceiver;
.source "LGCallAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGCallAction;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGCallAction;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGCallAction;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGCallAction$2;->this$0:Lcom/android/internal/policy/impl/LGCallAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0xa

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/internal/policy/impl/LGCallAction;->mIsBluetoothHeadsetPlugged:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGCallAction;->access$102(Z)Z

    .line 60
    :cond_0
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
