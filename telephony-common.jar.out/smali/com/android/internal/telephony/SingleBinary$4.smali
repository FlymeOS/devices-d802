.class Lcom/android/internal/telephony/SingleBinary$4;
.super Landroid/content/BroadcastReceiver;
.source "SingleBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SingleBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SingleBinary;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SingleBinary;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 212
    const-string v4, "OPEN"

    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    const-string v4, "1"

    const-string v5, "persist.sys.clientid-changed"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 217
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "stateExtra":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v4, "LOADED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "numeric":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v1, "st":Ljava/util/StringTokenizer;
    iget-object v4, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    const-string v5, "persist.radio.sim-fixed"

    const-string v6, "yet_rev_share"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/internal/telephony/SingleBinary;->mSIMChecked:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/SingleBinary;->access$702(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mSIMChecked:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/SingleBinary;->access$700(Lcom/android/internal/telephony/SingleBinary;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yet_rev_share"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 223
    const-string v4, "ro.build.target_country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "target_country":Ljava/lang/String;
    const-string v4, "SG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 225
    iget-object v4, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    const-string v5, "persist.radio.sim-fixed"

    const-string v6, "rev_share"

    # invokes: Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/SingleBinary;->access$800(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v4, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # invokes: Lcom/android/internal/telephony/SingleBinary;->revenueShareClientID()V
    invoke-static {v4}, Lcom/android/internal/telephony/SingleBinary;->access$900(Lcom/android/internal/telephony/SingleBinary;)V

    .line 237
    .end local v0    # "numeric":Ljava/lang/String;
    .end local v1    # "st":Ljava/util/StringTokenizer;
    .end local v2    # "stateExtra":Ljava/lang/String;
    .end local v3    # "target_country":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mEnableSBP:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/SingleBinary;->access$1100(Lcom/android/internal/telephony/SingleBinary;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    # getter for: Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SingleBinary;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/SingleBinary;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/SingleBinary;->checkFlexEnableStatus()V
    invoke-static {v4}, Lcom/android/internal/telephony/SingleBinary;->access$1200(Lcom/android/internal/telephony/SingleBinary;)V

    goto/16 :goto_0

    .line 227
    .restart local v0    # "numeric":Ljava/lang/String;
    .restart local v1    # "st":Ljava/util/StringTokenizer;
    .restart local v2    # "stateExtra":Ljava/lang/String;
    .restart local v3    # "target_country":Ljava/lang/String;
    :cond_3
    const-string v4, "EU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    iget-object v4, p0, Lcom/android/internal/telephony/SingleBinary$4;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # invokes: Lcom/android/internal/telephony/SingleBinary;->setClientIDBySIM(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/internal/telephony/SingleBinary;->access$1000(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :cond_4
    const-string v4, "GSM"

    const-string v5, "[LGE][SBP] No OPEN_EU, OPEN_SG Skip the Client-ID Setting"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
