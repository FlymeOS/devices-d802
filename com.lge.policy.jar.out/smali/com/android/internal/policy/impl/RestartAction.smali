.class Lcom/android/internal/policy/impl/RestartAction;
.super Ljava/lang/Object;
.source "RestartAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final DEBUG:Z

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RestartAction"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mCount:I

.field private mCountSpan:Landroid/text/style/ForegroundColorSpan;

.field private mCounter:Landroid/text/SpannableStringBuilder;

.field private mCounterFormat:Ljava/lang/String;

.field private mDefalutCount:I

.field private mDefalutPowerOffCount:I

.field private mDialog:Landroid/app/ProgressDialog;

.field private mEmbeddedFormat:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field final mPower8SecLongPress:Ljava/lang/Runnable;

.field private mPowerOffCount:I

.field private mPowerOffCountSpan:Landroid/text/style/ForegroundColorSpan;

.field private mPowerVolumeDownReset:Z

.field private mRestartActionConfigEnabled:Z

.field private mSpannedCount:Landroid/text/SpannableStringBuilder;

.field private mTitleFormat:Ljava/lang/String;

.field private mUsingEmbeddedBattery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    .line 29
    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutPowerOffCount:I

    .line 30
    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    .line 33
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mRestartActionConfigEnabled:Z

    .line 207
    new-instance v0, Lcom/android/internal/policy/impl/RestartAction$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/RestartAction$1;-><init>(Lcom/android/internal/policy/impl/RestartAction;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    .line 236
    new-instance v0, Lcom/android/internal/policy/impl/RestartAction$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/RestartAction$2;-><init>(Lcom/android/internal/policy/impl/RestartAction;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mPower8SecLongPress:Ljava/lang/Runnable;

    .line 49
    sput-object p1, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    .line 50
    sget-object v0, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_restart_action_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    .line 51
    sget-object v0, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_power_off_action_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutPowerOffCount:I

    .line 52
    sget-object v0, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_power_restart_action_available:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mRestartActionConfigEnabled:Z

    .line 53
    sget-object v0, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_is_using_embedded_battery:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mUsingEmbeddedBattery:Z

    .line 54
    sget-object v0, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_power_volumedown_reset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mPowerVolumeDownReset:Z

    .line 55
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    .line 56
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounter:Landroid/text/SpannableStringBuilder;

    .line 57
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#4baac8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCountSpan:Landroid/text/style/ForegroundColorSpan;

    .line 58
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#4baac8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mPowerOffCountSpan:Landroid/text/style/ForegroundColorSpan;

    .line 59
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/RestartAction;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/RestartAction;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/RestartAction;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/RestartAction;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/RestartAction;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/RestartAction;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/RestartAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/RestartAction;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->refreshRestartDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/RestartAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/RestartAction;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->handleShow()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/RestartAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/RestartAction;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->showRestartActionDialog()V

    return-void
.end method

.method private configureFormatType()V
    .locals 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mPowerVolumeDownReset:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/internal/R$string;->restart_action_press_hold_power_vol_down:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mTitleFormat:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/internal/R$string;->restart_count_down_format_power_vol_down:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounterFormat:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/internal/R$string;->restart_embedded_format_power_vol_down:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mEmbeddedFormat:Ljava/lang/String;

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/internal/R$string;->restart_action_press_hold_power:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mTitleFormat:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/internal/R$string;->restart_count_down_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounterFormat:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/internal/R$string;->restart_embedded_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mEmbeddedFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method private createDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 107
    sget-boolean v1, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "RestartAction"

    const-string v2, "createDialog()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 114
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 116
    return-object v0
.end method

.method private getCountMsg()Landroid/text/SpannableStringBuilder;
    .locals 12

    .prologue
    const/16 v9, 0x21

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 157
    sget-boolean v5, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 158
    const-string v5, "RestartAction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCountMsg() mCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPowerOffCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/RestartAction;->mPowerOffCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 162
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 164
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounter:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 165
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounter:Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 166
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounter:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/RestartAction;->mCountSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounter:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v10, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounterFormat:Ljava/lang/String;

    .line 170
    .local v0, "counterFormat":Ljava/lang/String;
    :try_start_0
    const-string v5, "%d"

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "counterFormats":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 172
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounter:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 173
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1    # "counterFormats":[Ljava/lang/String;
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mUsingEmbeddedBattery:Z

    if-eqz v5, :cond_1

    .line 180
    iget-object v3, p0, Lcom/android/internal/policy/impl/RestartAction;->mEmbeddedFormat:Ljava/lang/String;

    .line 182
    .local v3, "embeddedFormat":Ljava/lang/String;
    :try_start_1
    const-string v5, "%d"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "embeddedFormats":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 184
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 185
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounter:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 187
    const-string v5, "altev"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounter:Landroid/text/SpannableStringBuilder;

    const-string v6, "3"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 192
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounter:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/RestartAction;->mPowerOffCountSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounter:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 193
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounter:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 194
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    .end local v3    # "embeddedFormat":Ljava/lang/String;
    .end local v4    # "embeddedFormats":[Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    return-object v5

    .line 174
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 176
    const-string v5, "RestartAction"

    const-string v6, "mCounterFormat is not appropriate for the Format"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v3    # "embeddedFormat":Ljava/lang/String;
    .restart local v4    # "embeddedFormats":[Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mCounter:Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/RestartAction;->mPowerOffCount:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lcom/android/internal/policy/impl/RestartAction;->mPowerOffCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 195
    .end local v4    # "embeddedFormats":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 196
    .restart local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v5, p0, Lcom/android/internal/policy/impl/RestartAction;->mSpannedCount:Landroid/text/SpannableStringBuilder;

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/policy/impl/RestartAction;->mPowerOffCount:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lcom/android/internal/policy/impl/RestartAction;->mPowerOffCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 197
    const-string v5, "RestartAction"

    const-string v6, "mEmbeddedFormat is not appropriate for the Format"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleShow()V
    .locals 4

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->createDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    .line 95
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->prepareDialog()V

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 100
    return-void
.end method

.method private isShowing()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "RestartAction"

    const-string v1, "prepareDialog()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 127
    sget-boolean v0, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 128
    const-string v0, "RestartAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareDialog() mDefalutCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDefalutPowerOffCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutPowerOffCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    .line 132
    iget v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutPowerOffCount:I

    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mPowerOffCount:I

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RestartAction;->mTitleFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->getCountMsg()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method private refreshRestartDialog()V
    .locals 4

    .prologue
    .line 140
    sget-boolean v0, Lcom/android/internal/policy/impl/RestartAction;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "RestartAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshRestartDialog() mCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPowerOffCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/RestartAction;->mPowerOffCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    if-lez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->getCountMsg()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showRestartActionDialog()V
    .locals 2

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "RestartAction"

    const-string v1, "RestartActionDialog is showing. Ignore showRestartActionDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RestartAction;->showDialog()V

    goto :goto_0
.end method


# virtual methods
.method cancleRestartActionPending()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RestartAction;->mPower8SecLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RestartAction;->dismissDialog()V

    .line 271
    return-void
.end method

.method public dismissDialog()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 91
    return-void
.end method

.method dumpRestartAction(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 261
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    const-string v0, " mRestartActionConfigEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mRestartActionConfigEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 264
    const-string v0, "mPowerVolumeDownReset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mPowerVolumeDownReset:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 266
    return-void
.end method

.method isRestartActionConfigEnabled()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mRestartActionConfigEnabled:Z

    return v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 154
    return-void
.end method

.method runRestartAction()V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RestartAction;->mPower8SecLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    return-void
.end method

.method public showDialog()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->configureFormatType()V

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->handleShow()V

    goto :goto_0
.end method
