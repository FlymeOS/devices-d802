.class public Lcom/lge/telephony/LGPhoneNumberFormattingTextWatcherImpl;
.super Ljava/lang/Object;
.source "LGPhoneNumberFormattingTextWatcherImpl.java"

# interfaces
.implements Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;


# instance fields
.field lgePhoneNumberFormattingTextWatcher:Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;

.field private mCountryCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "KR"

    iput-object v0, p0, Lcom/lge/telephony/LGPhoneNumberFormattingTextWatcherImpl;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method private haveSpecialNumberformat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    const-string v1, "LGE_NumberFormat"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iput-object p1, p0, Lcom/lge/telephony/LGPhoneNumberFormattingTextWatcherImpl;->mCountryCode:Ljava/lang/String;

    .line 60
    const-string v0, "KR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    const-string v0, "AU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    monitor-exit p0

    return-void

    .line 44
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lge/telephony/LGPhoneNumberFormattingTextWatcherImpl;->lgePhoneNumberFormattingTextWatcher:Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->afterTextChanged(Landroid/text/Editable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 18
    const-string v0, "AU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/lge/telephony/LGPhoneNumberFormattingTextWatcherImpl;->lgePhoneNumberFormattingTextWatcher:Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method

.method public haveSpecialNumberformat()Z
    .locals 1

    .prologue
    .line 50
    const-string v0, "AU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/telephony/LGPhoneNumberFormattingTextWatcherImpl;->mCountryCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/telephony/LGPhoneNumberFormattingTextWatcherImpl;->haveSpecialNumberformat(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public makeTextWatcherForSpecialNumberformat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lge/telephony/LGPhoneNumberFormattingTextWatcherImpl;->haveSpecialNumberformat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;

    invoke-direct {v0}, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;-><init>()V

    iput-object v0, p0, Lcom/lge/telephony/LGPhoneNumberFormattingTextWatcherImpl;->lgePhoneNumberFormattingTextWatcher:Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 29
    const-string v0, "AU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/lge/telephony/LGPhoneNumberFormattingTextWatcherImpl;->lgePhoneNumberFormattingTextWatcher:Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method
