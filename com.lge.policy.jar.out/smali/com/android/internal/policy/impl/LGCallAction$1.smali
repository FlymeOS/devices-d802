.class Lcom/android/internal/policy/impl/LGCallAction$1;
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
    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGCallAction$1;->this$0:Lcom/android/internal/policy/impl/LGCallAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    # setter for: Lcom/android/internal/policy/impl/LGCallAction;->mIsHeadsetPlugged:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGCallAction;->access$002(Z)Z

    .line 49
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 47
    goto :goto_0
.end method
