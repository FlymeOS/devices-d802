.class Lcom/android/internal/telephony/LGSprintReassemblySms$2;
.super Landroid/content/BroadcastReceiver;
.source "LGSprintReassemblySms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/LGSprintReassemblySms;->regReassemblyBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGSprintReassemblySms;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LGSprintReassemblySms;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/internal/telephony/LGSprintReassemblySms$2;->this$0:Lcom/android/internal/telephony/LGSprintReassemblySms;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 589
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/LGSprintReassemblySms$2;->this$0:Lcom/android/internal/telephony/LGSprintReassemblySms;

    # invokes: Lcom/android/internal/telephony/LGSprintReassemblySms;->trySegmentExpirationAfterBootUp()V
    invoke-static {v0}, Lcom/android/internal/telephony/LGSprintReassemblySms;->access$100(Lcom/android/internal/telephony/LGSprintReassemblySms;)V

    .line 592
    :cond_0
    return-void
.end method
