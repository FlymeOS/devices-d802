.class Lcom/android/internal/telephony/lgradio/LgeGpriParser$1;
.super Landroid/content/BroadcastReceiver;
.source "LgeGpriParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgradio/LgeGpriParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgradio/LgeGpriParser;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/lgradio/LgeGpriParser;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser$1;->this$0:Lcom/android/internal/telephony/lgradio/LgeGpriParser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "LgGpriParser"

    const-string v2, "MASTER_CLEAR start"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, "persist.radio.gpri.parser"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method
