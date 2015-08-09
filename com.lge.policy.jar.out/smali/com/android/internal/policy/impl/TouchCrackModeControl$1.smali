.class Lcom/android/internal/policy/impl/TouchCrackModeControl$1;
.super Landroid/content/BroadcastReceiver;
.source "TouchCrackModeControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TouchCrackModeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TouchCrackModeControl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TouchCrackModeControl;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl$1;->this$0:Lcom/android/internal/policy/impl/TouchCrackModeControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.lge.android.intent.action.TOUCHCRACK_MODE_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "TOUCHCRACK_MODE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackMode:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->access$002(I)I

    .line 142
    const-string v1, "TouchCrackModeControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent com.lge.android.intent.action.TOUCHCRACK_MODE_EVENT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackMode:I
    invoke-static {}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->access$000()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v1, "sys.lge.touchcrack_mode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackMode:I
    invoke-static {}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->access$000()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    # getter for: Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackMode:I
    invoke-static {}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->access$000()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 145
    const-string v1, "TouchCrackModeControl"

    const-string v2, "TouchCrackMode Enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl$1;->this$0:Lcom/android/internal/policy/impl/TouchCrackModeControl;

    # setter for: Lcom/android/internal/policy/impl/TouchCrackModeControl;->mHWKeyControlMode:Z
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->access$102(Lcom/android/internal/policy/impl/TouchCrackModeControl;Z)Z

    .line 149
    :cond_0
    return-void
.end method
