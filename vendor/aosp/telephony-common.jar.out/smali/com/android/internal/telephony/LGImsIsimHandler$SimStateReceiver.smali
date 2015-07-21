.class Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsIsimHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGImsIsimHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 190
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS-ISIM :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$000(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "iccState":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS-ISIM :: iccState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$000(Ljava/lang/String;)V

    .line 201
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    # invokes: Lcom/android/internal/telephony/LGImsIsimHandler;->handleSimReady()V
    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$100(Lcom/android/internal/telephony/LGImsIsimHandler;)V

    .line 211
    .end local v0    # "iccState":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v0    # "iccState":Ljava/lang/String;
    :cond_1
    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    # invokes: Lcom/android/internal/telephony/LGImsIsimHandler;->handleSimLoaded()V
    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Lcom/android/internal/telephony/LGImsIsimHandler;)V

    goto :goto_0

    .line 208
    .end local v0    # "iccState":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.intent.isim_refresh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    # invokes: Lcom/android/internal/telephony/LGImsIsimHandler;->handleIsimRefreshStarted()V
    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$300(Lcom/android/internal/telephony/LGImsIsimHandler;)V

    goto :goto_0
.end method
