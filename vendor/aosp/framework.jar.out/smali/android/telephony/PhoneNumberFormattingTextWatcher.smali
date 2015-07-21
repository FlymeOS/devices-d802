.class public Landroid/telephony/PhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private iLGPhoneNumberFormattingTextWatcher:Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;

.field private mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

.field private mSelfChange:Z

.field private mStopFormatting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 69
    new-instance v0, Lcom/lge/telephony/LGPhoneNumberFormattingTextWatcherImpl;

    invoke-direct {v0}, Lcom/lge/telephony/LGPhoneNumberFormattingTextWatcherImpl;-><init>()V

    iput-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->iLGPhoneNumberFormattingTextWatcher:Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;

    .line 88
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->iLGPhoneNumberFormattingTextWatcher:Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;

    invoke-interface {v0, p1}, Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;->makeTextWatcherForSpecialNumberformat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    goto :goto_0
.end method

.method private getFormattedNumber(CZ)Ljava/lang/String;
    .locals 3
    .param p1, "lastNonSeparator"    # C
    .param p2, "hasCursor"    # Z

    .prologue
    .line 211
    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitAndRememberPosition(C)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "formattedNum":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "persist.env.sys.hypenenable"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .end local v0    # "formattedNum":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 211
    :cond_1
    iget-object v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasSeparator(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 226
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_1

    .line 227
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 228
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    const/4 v2, 0x1

    .line 232
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 226
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "c":C
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 185
    add-int/lit8 v1, p2, -0x1

    .line 186
    .local v1, "curIndex":I
    const/4 v2, 0x0

    .line 187
    .local v2, "formatted":Ljava/lang/String;
    iget-object v7, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 188
    const/4 v5, 0x0

    .line 189
    .local v5, "lastNonSeparator":C
    const/4 v3, 0x0

    .line 190
    .local v3, "hasCursor":Z
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 191
    .local v6, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 192
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 193
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 194
    if-eqz v5, :cond_0

    .line 195
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 196
    const/4 v3, 0x0

    .line 198
    :cond_0
    move v5, v0

    .line 200
    :cond_1
    if-ne v4, v1, :cond_2

    .line 201
    const/4 v3, 0x1

    .line 191
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "c":C
    :cond_3
    if-eqz v5, :cond_4

    .line 205
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 207
    :cond_4
    return-object v2
.end method

.method private stopFormatting()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    .line 222
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 223
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->iLGPhoneNumberFormattingTextWatcher:Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;

    invoke-interface {v2}, Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;->haveSpecialNumberformat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->iLGPhoneNumberFormattingTextWatcher:Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;

    invoke-interface {v0, p1}, Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;->afterTextChanged(Landroid/text/Editable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v2, :cond_3

    .line 145
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    .line 145
    goto :goto_1

    .line 148
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_0

    .line 155
    const/4 v3, 0x0

    .line 157
    .local v3, "formatted":Ljava/lang/String;
    :try_start_3
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 162
    :goto_2
    if-eqz v3, :cond_0

    .line 163
    :try_start_4
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getRememberedPosition()I

    move-result v7

    .line 164
    .local v7, "rememberedPos":I
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 165
    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    invoke-static {p1, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 172
    :cond_4
    invoke-static {p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->removeSlashesIfNoSlashNumberFormat(Landroid/text/Editable;)V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    goto :goto_0

    .line 158
    .end local v7    # "rememberedPos":I
    :catch_0
    move-exception v6

    .line 159
    .local v6, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v0, "PhoneNumberFormattingTextWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " StringIndexOutOfBoundsException :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 102
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->iLGPhoneNumberFormattingTextWatcher:Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;

    invoke-interface {v0}, Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;->haveSpecialNumberformat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->iLGPhoneNumberFormattingTextWatcher:Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-nez v0, :cond_0

    .line 112
    if-lez p3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 120
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->iLGPhoneNumberFormattingTextWatcher:Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;

    invoke-interface {v0}, Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;->haveSpecialNumberformat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->iLGPhoneNumberFormattingTextWatcher:Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lge/telephony/ILGPhoneNumberFormattingTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-nez v0, :cond_0

    .line 130
    if-lez p4, :cond_0

    invoke-direct {p0, p1, p2, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    goto :goto_0
.end method
