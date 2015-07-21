.class Lcom/android/internal/telephony/kr/KrRegStateNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "KrRegStateNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/kr/KrRegStateNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/kr/KrRegStateNotification;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/kr/KrRegStateNotification;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification$1;->this$0:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 158
    const-string v1, "com.lge.intent.action.telephony.reboot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sHasShownRebootNotiPopup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/kr/KrRegStateNotification;->sHasShownRebootNotiPopup:Z
    invoke-static {}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->log(Ljava/lang/String;)V

    .line 160
    # getter for: Lcom/android/internal/telephony/kr/KrRegStateNotification;->sHasShownRebootNotiPopup:Z
    invoke-static {}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification$1;->this$0:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    # invokes: Lcom/android/internal/telephony/kr/KrRegStateNotification;->showRebootNotiPopup()V
    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->access$100(Lcom/android/internal/telephony/kr/KrRegStateNotification;)V

    .line 162
    const/4 v1, 0x1

    # setter for: Lcom/android/internal/telephony/kr/KrRegStateNotification;->sHasShownRebootNotiPopup:Z
    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->access$002(Z)Z

    .line 165
    :cond_0
    return-void
.end method
