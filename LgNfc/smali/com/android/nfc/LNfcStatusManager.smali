.class public Lcom/android/nfc/LNfcStatusManager;
.super Ljava/lang/Object;
.source "LNfcStatusManager.java"


# static fields
.field public static LGE_NDEF_PUSH_ON_DEFAULT:Z

.field public static LGE_NFC_ON_DEFAULT:Z

.field public static NFC_CARD_ON_DEFAULT:Z

.field public static NFC_DISCOVERY_ON_DEFAULT:Z

.field public static NFC_SYSTEM_ON_DEFAULT:Z

.field public static PREF_NFC_CARD_ON:Ljava/lang/String;

.field public static PREF_NFC_DISCOVERY_ON:Ljava/lang/String;

.field public static PREF_NFC_SYSTEM_ON:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21
    const-string v0, "LNfcStatusManager"

    sput-object v0, Lcom/android/nfc/LNfcStatusManager;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "nfc_system_on"

    sput-object v0, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_SYSTEM_ON:Ljava/lang/String;

    .line 30
    sput-boolean v1, Lcom/android/nfc/LNfcStatusManager;->NFC_SYSTEM_ON_DEFAULT:Z

    .line 31
    const-string v0, "nfc_card_on"

    sput-object v0, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_CARD_ON:Ljava/lang/String;

    .line 32
    sput-boolean v1, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    .line 33
    const-string v0, "nfc_discovery_on"

    sput-object v0, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_DISCOVERY_ON:Ljava/lang/String;

    .line 34
    sput-boolean v1, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    .line 36
    sput-boolean v1, Lcom/android/nfc/LNfcStatusManager;->LGE_NFC_ON_DEFAULT:Z

    .line 37
    sput-boolean v1, Lcom/android/nfc/LNfcStatusManager;->LGE_NDEF_PUSH_ON_DEFAULT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 40
    iput-object p1, p0, Lcom/android/nfc/LNfcStatusManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 42
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-virtual {p0}, Lcom/android/nfc/LNfcStatusManager;->setDefaultPreference()V

    .line 46
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_SYSTEM_ON:Ljava/lang/String;

    sget-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_SYSTEM_ON_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_CARD_ON:Ljava/lang/String;

    sget-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_DISCOVERY_ON:Ljava/lang/String;

    sget-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcStatusManager;->saveNfcSystemOnSetting(Z)V

    .line 51
    :cond_0
    return-void
.end method

.method public static checkflag(II)Z
    .locals 1
    .param p0, "nfcstatus"    # I
    .param p1, "flag"    # I

    .prologue
    .line 93
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public allowNfcStatus(I)Z
    .locals 5
    .param p1, "nfcstatus"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getBootComplete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-static {p1, v1}, Lcom/android/nfc/LNfcStatusManager;->checkflag(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_SYSTEM_ON:Ljava/lang/String;

    sget-boolean v4, Lcom/android/nfc/LNfcStatusManager;->NFC_SYSTEM_ON_DEFAULT:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :cond_2
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/android/nfc/LNfcStatusManager;->checkflag(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_CARD_ON:Ljava/lang/String;

    sget-boolean v4, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    :cond_3
    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/android/nfc/LNfcStatusManager;->checkflag(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_DISCOVERY_ON:Ljava/lang/String;

    sget-boolean v4, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    :cond_4
    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/android/nfc/LNfcStatusManager;->checkflag(II)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "ndef_push_on"

    sget-boolean v4, Lcom/android/nfc/LNfcStatusManager;->LGE_NDEF_PUSH_ON_DEFAULT:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    .line 89
    goto :goto_0
.end method

.method public saveNfcCardOnSetting(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/nfc/LNfcStatusManager;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_CARD_ON:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    if-nez p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "nfc_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    :cond_0
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveNfcDiscoveryOnSetting(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/nfc/LNfcStatusManager;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_DISCOVERY_ON:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "nfc_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    :cond_0
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveNfcP2pOnSetting(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/nfc/LNfcStatusManager;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ndef_push_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveNfcSystemOnSetting(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/nfc/LNfcStatusManager;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_SYSTEM_ON:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 136
    sput-boolean v3, Lcom/android/nfc/LNfcStatusManager;->LGE_NFC_ON_DEFAULT:Z

    .line 137
    sput-boolean v3, Lcom/android/nfc/LNfcStatusManager;->NFC_SYSTEM_ON_DEFAULT:Z

    .line 138
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    const-string v1, "card"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 139
    sput-boolean v3, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    const-string v1, "rw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 145
    sput-boolean v3, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    .line 156
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    const-string v1, "p2p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 157
    sput-boolean v3, Lcom/android/nfc/LNfcStatusManager;->LGE_NDEF_PUSH_ON_DEFAULT:Z

    .line 161
    :goto_2
    return-void

    .line 141
    :cond_1
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    goto :goto_0

    .line 147
    :cond_2
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    goto :goto_1

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 150
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->LGE_NFC_ON_DEFAULT:Z

    .line 151
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_SYSTEM_ON_DEFAULT:Z

    .line 152
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    .line 153
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    goto :goto_1

    .line 159
    :cond_4
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->LGE_NDEF_PUSH_ON_DEFAULT:Z

    goto :goto_2
.end method
