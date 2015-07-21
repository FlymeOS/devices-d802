.class Lcom/android/internal/telephony/SingleBinary$1;
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
    .line 144
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary$1;->this$0:Lcom/android/internal/telephony/SingleBinary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    const/4 v6, 0x0

    .line 148
    .local v6, "appIndex":I
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 154
    packed-switch v6, :pswitch_data_0

    .line 165
    :goto_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE][SBP] LGHOME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/SingleBinary;->isLGHomedbDeleted:Z
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", BROWSER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/SingleBinary;->isBrowserdbDeleted:Z
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TELEPHONY_PROVIDER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/SingleBinary;->isTelephonydbDeleted:Z
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$200()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    # getter for: Lcom/android/internal/telephony/SingleBinary;->isTelephonydbDeleted:Z
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/android/internal/telephony/SingleBinary;->isLGHomedbDeleted:Z
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/android/internal/telephony/SingleBinary;->isBrowserdbDeleted:Z
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary$1;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/SingleBinary;->access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary$1;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/SingleBinary;->access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 171
    :cond_0
    # setter for: Lcom/android/internal/telephony/SingleBinary;->isTelephonydbDeleted:Z
    invoke-static {v3}, Lcom/android/internal/telephony/SingleBinary;->access$202(Z)Z

    .line 172
    # setter for: Lcom/android/internal/telephony/SingleBinary;->isLGHomedbDeleted:Z
    invoke-static {v3}, Lcom/android/internal/telephony/SingleBinary;->access$002(Z)Z

    .line 173
    # setter for: Lcom/android/internal/telephony/SingleBinary;->isBrowserdbDeleted:Z
    invoke-static {v3}, Lcom/android/internal/telephony/SingleBinary;->access$102(Z)Z

    .line 174
    # getter for: Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 175
    .local v8, "pm":Landroid/os/PowerManager;
    const-string v0, "CUST Changed"

    invoke-virtual {v8, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 178
    .end local v8    # "pm":Landroid/os/PowerManager;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary$1;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/internal/telephony/SingleBinary;->access$500(Lcom/android/internal/telephony/SingleBinary;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 179
    iget-object v9, p0, Lcom/android/internal/telephony/SingleBinary$1;->this$0:Lcom/android/internal/telephony/SingleBinary;

    new-instance v0, Lcom/android/internal/telephony/SingleBinary$1$1;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SingleBinary$1$1;-><init>(Lcom/android/internal/telephony/SingleBinary$1;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/SingleBinary$1$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    # setter for: Lcom/android/internal/telephony/SingleBinary;->mCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v9, v0}, Lcom/android/internal/telephony/SingleBinary;->access$502(Lcom/android/internal/telephony/SingleBinary;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 191
    :cond_2
    :goto_1
    return-void

    .line 149
    :catch_0
    move-exception v7

    .line 150
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 156
    .end local v7    # "e":Ljava/lang/Exception;
    :pswitch_0
    # setter for: Lcom/android/internal/telephony/SingleBinary;->isLGHomedbDeleted:Z
    invoke-static {v4}, Lcom/android/internal/telephony/SingleBinary;->access$002(Z)Z

    goto/16 :goto_0

    .line 159
    :pswitch_1
    # setter for: Lcom/android/internal/telephony/SingleBinary;->isBrowserdbDeleted:Z
    invoke-static {v4}, Lcom/android/internal/telephony/SingleBinary;->access$102(Z)Z

    goto/16 :goto_0

    .line 162
    :pswitch_2
    # setter for: Lcom/android/internal/telephony/SingleBinary;->isTelephonydbDeleted:Z
    invoke-static {v4}, Lcom/android/internal/telephony/SingleBinary;->access$202(Z)Z

    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
