.class public Lcom/lge/wapservice/settings/WapServiceMessageSetting;
.super Landroid/preference/PreferenceActivity;
.source "WapServiceMessageSetting.java"


# static fields
.field private static final operator:I


# instance fields
.field private ALWAYS_OPTION:Ljava/lang/String;

.field private DISABLE_OPTION:Ljava/lang/String;

.field private PROMPT_OPTION:Ljava/lang/String;

.field private bServiceLoading:Z

.field private mMessageReceive:Landroid/preference/CheckBoxPreference;

.field private mServiceLoading:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/lge/wapservice/utils/LocaleManager;->getOperator()I

    move-result v0

    sput v0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->operator:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    const-string v0, "Always"

    iput-object v0, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->ALWAYS_OPTION:Ljava/lang/String;

    .line 37
    const-string v0, "Prompt"

    iput-object v0, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->PROMPT_OPTION:Ljava/lang/String;

    .line 38
    const-string v0, "Disable"

    iput-object v0, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->DISABLE_OPTION:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->bServiceLoading:Z

    return-void
.end method

.method private getPushSLOptionSetting()I
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/wapservice/settings/SettingsResolver;->getServiceLoadingType(Landroid/content/ContentResolver;)I

    move-result v0

    return v0
.end method

.method private updatePushSLOptionSetting(Ljava/lang/String;)V
    .locals 5
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 168
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->PROMPT_OPTION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-static {v0, v3}, Lcom/lge/wapservice/settings/SettingsResolver;->setServiceLoadingType(Landroid/content/ContentResolver;I)V

    .line 170
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 184
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->DISABLE_OPTION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 173
    invoke-static {v0, v4}, Lcom/lge/wapservice/settings/SettingsResolver;->setServiceLoadingType(Landroid/content/ContentResolver;I)V

    .line 174
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {v0, v2}, Lcom/lge/wapservice/settings/SettingsResolver;->setServiceLoadingType(Landroid/content/ContentResolver;I)V

    .line 178
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v3, 0x7f03000a

    invoke-virtual {p0, v3}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->setContentView(I)V

    .line 61
    sget v3, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->operator:I

    if-ne v3, v7, :cond_3

    .line 62
    iput-boolean v6, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->bServiceLoading:Z

    .line 63
    const v3, 0x7f040004

    invoke-virtual {p0, v3}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->addPreferencesFromResource(I)V

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "mTestArray":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->ALWAYS_OPTION:Ljava/lang/String;

    .line 67
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->PROMPT_OPTION:Ljava/lang/String;

    .line 68
    const/4 v3, 0x2

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->DISABLE_OPTION:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v2    # "mTestArray":[Ljava/lang/String;
    :goto_0
    const-string v3, "pref_message_receive"

    invoke-virtual {p0, v3}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mMessageReceive:Landroid/preference/CheckBoxPreference;

    .line 82
    iget-boolean v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->bServiceLoading:Z

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "pref_service_loading"

    invoke-virtual {p0, v3}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mMessageReceive:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/wapservice/settings/SettingsResolver;->isPushReceiveEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 90
    sget v3, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->operator:I

    if-ne v3, v7, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->getPushSLOptionSetting()I

    move-result v0

    .line 92
    .local v0, "currentSLOption":I
    iget-object v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 98
    .end local v0    # "currentSLOption":I
    :cond_1
    iget-object v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    if-eqz v3, :cond_2

    .line 99
    iget-object v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mMessageReceive:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    iget-object v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 108
    :cond_2
    :goto_1
    const-string v3, "WapService"

    const-string v4, "WapServiceMessageSetting START"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "WapService"

    const-string v4, "service_loading_setting_values load error"

    invoke-static {v3, v4, v1}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iput-boolean v5, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->bServiceLoading:Z

    .line 76
    const v3, 0x7f040003

    invoke-virtual {p0, v3}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 102
    :cond_4
    iget-object v3, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mMessageReceive:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mMessageReceive:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/lge/wapservice/settings/SettingsResolver;->updatePushReceiveSetting(Landroid/content/Context;Z)V

    .line 132
    :goto_0
    const/4 v0, 0x1

    .line 136
    :cond_0
    iget-boolean v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->bServiceLoading:Z

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    if-ne p2, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->updatePushSLOptionSetting(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mMessageReceive:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 158
    :cond_2
    :goto_1
    return v0

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/lge/wapservice/settings/SettingsResolver;->updatePushReceiveSetting(Landroid/content/Context;Z)V

    goto :goto_0

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 116
    sget v0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->operator:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->mServiceLoading:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wapservice/settings/WapServiceMessageSetting;->updatePushSLOptionSetting(Ljava/lang/String;)V

    .line 120
    :cond_0
    const-string v0, "WapService"

    const-string v1, "WapServiceMessageSetting STOP"

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method
