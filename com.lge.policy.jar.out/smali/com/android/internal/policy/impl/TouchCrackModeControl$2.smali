.class Lcom/android/internal/policy/impl/TouchCrackModeControl$2;
.super Landroid/os/UEventObserver;
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
    .line 152
    iput-object p1, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl$2;->this$0:Lcom/android/internal/policy/impl/TouchCrackModeControl;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/4 v5, 0x1

    .line 155
    const-string v2, "CRACK"

    const-string v3, "TOUCH_WINDOW_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "TouchCrackModeControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTouchCrackModeObserver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    # getter for: Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackMode:I
    invoke-static {}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->access$000()I

    move-result v2

    if-nez v2, :cond_0

    .line 158
    const-string v2, "TouchCrackModeControl"

    const-string v3, "launch TouchCrackSettingsActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    # setter for: Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackMode:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->access$002(I)I

    .line 160
    const-string v2, "sys.lge.touchcrack_mode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl$2;->this$0:Lcom/android/internal/policy/impl/TouchCrackModeControl;

    # setter for: Lcom/android/internal/policy/impl/TouchCrackModeControl;->mHWKeyControlMode:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->access$102(Lcom/android/internal/policy/impl/TouchCrackModeControl;Z)Z

    .line 163
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v1, "startintent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.lge.TouchCrackSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v2, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl$2;->this$0:Lcom/android/internal/policy/impl/TouchCrackModeControl;

    # getter for: Lcom/android/internal/policy/impl/TouchCrackModeControl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->access$200(Lcom/android/internal/policy/impl/TouchCrackModeControl;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "startintent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "TouchCrackModeControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTouchCrackModeObserver Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
