.class public Lcom/android/nfc/utils/LNfcPopupPreference;
.super Ljava/lang/Object;
.source "LNfcPopupPreference.java"


# static fields
.field private static DBG:Z = false

.field private static INSTANCE:Lcom/android/nfc/utils/LNfcPopupPreference; = null

.field protected static final MONTHLY_STEP_MILLSECONDS:J = 0x9a7ec800L

.field protected static final MONTHPOPUP_PREFNAME:Ljava/lang/String; = "_monthTime"

.field protected static final POPUPVERSION_PREFNAME:Ljava/lang/String; = "version"

.field protected static final POPUP_VERSION:Ljava/lang/String; = "4.4.2"

.field public static final PREF:Ljava/lang/String; = "LNfcPopupPreferencePrefs"

.field private static final TAG:Ljava/lang/String; = "LNfcPopupPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mPrefs:Landroid/content/SharedPreferences;

.field protected mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field protected mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/utils/LNfcPopupPreference;->DBG:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/nfc/utils/LNfcPopupPreference;->INSTANCE:Lcom/android/nfc/utils/LNfcPopupPreference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    .line 44
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mContext:Landroid/content/Context;

    .line 45
    const-string v0, "LNfcPopupPreferencePrefs"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 46
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupPreference;->updatePerferenceKey()V

    .line 49
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/nfc/utils/LNfcPopupPreference;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    sget-object v0, Lcom/android/nfc/utils/LNfcPopupPreference;->INSTANCE:Lcom/android/nfc/utils/LNfcPopupPreference;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 224
    new-instance v0, Lcom/android/nfc/utils/LNfcPopupPreference;

    invoke-direct {v0, p0}, Lcom/android/nfc/utils/LNfcPopupPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/nfc/utils/LNfcPopupPreference;->INSTANCE:Lcom/android/nfc/utils/LNfcPopupPreference;

    .line 227
    :cond_0
    sget-object v0, Lcom/android/nfc/utils/LNfcPopupPreference;->INSTANCE:Lcom/android/nfc/utils/LNfcPopupPreference;

    return-object v0
.end method


# virtual methods
.method public checkMonthPopupEnable(Ljava/lang/String;)Z
    .locals 10
    .param p1, "prefName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    .line 174
    iget-object v5, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v5, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v4

    .line 178
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    .local v0, "currentTime":J
    iget-object v5, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_monthTime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 181
    .local v2, "saveTime":J
    const-string v5, "LNfcPopupPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MMM dd, yyyy h:mmaa"

    invoke-static {v7, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", saveTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MMM dd, yyyy h:mmaa"

    invoke-static {v7, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    sub-long v6, v0, v2

    const-wide v8, 0x9a7ec800L

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getPopupEnable(I)Z
    .locals 5
    .param p1, "prefnumber"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 97
    const-string v1, "LNfcPopupPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPopupEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", UserId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 114
    :goto_0
    return v0

    .line 102
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 104
    :sswitch_0
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag_defaultcheckbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 106
    :sswitch_1
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handover_checkbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 108
    :sswitch_2
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popup_monthlycheck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 110
    :sswitch_3
    const-string v0, "tag_defaultcheckbox"

    invoke-virtual {p0, v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->checkMonthPopupEnable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 112
    :sswitch_4
    const-string v0, "handover_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->checkMonthPopupEnable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
    .end sparse-switch
.end method

.method public getSharedPreferencesInstance()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public removeCurrentTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "prefName"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mContext:Landroid/content/Context;

    const-string v1, "LNfcPopupPreferencePrefs"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 189
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 191
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 192
    :cond_0
    const-string v0, "LNfcPopupPreference"

    const-string v1, "removeCurrentTime : mPrefs is null"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_monthTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 197
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public resetPopupPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 163
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupPreference;->DBG:Z

    const-string v1, "LNfcPopupPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetPopupPreference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag_defaultcheckbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handover_checkbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup_monthlycheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public setCurrentTimeforMonthlyPopup(Ljava/lang/String;)V
    .locals 5
    .param p1, "prefName"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_0

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 203
    .local v0, "currentTime":J
    const-string v2, "LNfcPopupPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MMM dd, yyyy h:mmaa"

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_monthTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 205
    iget-object v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    .end local v0    # "currentTime":J
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v2, "LNfcPopupPreference"

    const-string v3, "prefsEditor is null"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPopupEnable(IZ)Z
    .locals 5
    .param p1, "prefnumber"    # I
    .param p2, "prefvalue"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 119
    const-string v2, "LNfcPopupPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPopupEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v2, :cond_0

    .line 159
    :goto_0
    return v0

    .line 124
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 126
    :sswitch_0
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag_defaultcheckbox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    :goto_1
    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 149
    :cond_1
    const-string v0, "tag_defaultcheckbox"

    invoke-virtual {p0, v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->removeCurrentTime(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 159
    goto :goto_0

    .line 130
    :sswitch_1
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handover_checkbox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 134
    :sswitch_2
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popup_monthlycheck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 138
    :sswitch_3
    const-string v0, "tag_defaultcheckbox"

    invoke-virtual {p0, v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->setCurrentTimeforMonthlyPopup(Ljava/lang/String;)V

    move v0, v1

    .line 139
    goto :goto_0

    .line 141
    :sswitch_4
    const-string v0, "handover_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->setCurrentTimeforMonthlyPopup(Ljava/lang/String;)V

    move v0, v1

    .line 142
    goto :goto_0

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
    .end sparse-switch
.end method

.method public setUserID(I)V
    .locals 0
    .param p1, "userid"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    .line 214
    return-void
.end method

.method protected updatePerferenceKey()V
    .locals 12

    .prologue
    .line 52
    iget-object v9, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "version"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "4.4.2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v9, "LNfcPopupPreference"

    const-string v10, "UpdatePerferenceKey"

    invoke-static {v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v9, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    .line 59
    .local v7, "prefsList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v9, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 60
    iget-object v9, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 63
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 64
    .local v4, "keyList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 66
    .local v3, "keyArray":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v6, :cond_9

    aget-object v2, v0, v1

    .line 67
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_3

    .line 66
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :cond_3
    const-string v9, "LNfcPopupPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Update key : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 72
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 73
    .local v5, "lastChars":[C
    array-length v9, v5

    if-lez v9, :cond_5

    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget-char v9, v5, v9

    const/16 v10, 0x30

    if-lt v9, v10, :cond_4

    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget-char v9, v5, v9

    const/16 v10, 0x39

    if-le v9, v10, :cond_5

    .line 75
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    :cond_5
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 78
    iget-object v9, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    check-cast v8, Ljava/lang/String;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-interface {v9, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 79
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v9, v8, Ljava/lang/Long;

    if-eqz v9, :cond_7

    .line 80
    iget-object v9, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    check-cast v8, Ljava/lang/Long;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v9, v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 81
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v9, v8, Ljava/lang/Boolean;

    if-eqz v9, :cond_8

    .line 82
    iget-object v9, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    check-cast v8, Ljava/lang/Boolean;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v9, v2, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 84
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_8
    const-string v9, "LNfcPopupPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown value instance : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 88
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyArray":[Ljava/lang/String;
    .end local v4    # "keyList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "lastChars":[C
    .end local v6    # "len$":I
    .end local v8    # "value":Ljava/lang/Object;
    :cond_9
    iget-object v9, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v10, "version"

    const-string v11, "4.4.2"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v9, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method
