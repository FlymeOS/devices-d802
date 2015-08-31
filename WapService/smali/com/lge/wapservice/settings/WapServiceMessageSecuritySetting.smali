.class public Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;
.super Landroid/preference/PreferenceActivity;
.source "WapServiceMessageSecuritySetting.java"


# instance fields
.field private mServiceSecuritySet:Landroid/preference/Preference;

.field private mTrusted:Landroid/preference/Preference;

.field private mUntrusted:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;->setContentView(I)V

    .line 36
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;->addPreferencesFromResource(I)V

    .line 38
    const-string v0, "pref_security_setting_list"

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;->mServiceSecuritySet:Landroid/preference/Preference;

    .line 39
    const-string v0, "pref_trusted_list"

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;->mTrusted:Landroid/preference/Preference;

    .line 40
    const-string v0, "pref_untrusted_list"

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;->mUntrusted:Landroid/preference/Preference;

    .line 42
    const-string v0, "WapService"

    const-string v1, "WapServiceMessageSecuritySetting START"

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "handled":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;->mServiceSecuritySet:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 52
    const-class v2, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    const/4 v0, 0x1

    .line 66
    :cond_0
    :goto_0
    if-ne v0, v4, :cond_1

    .line 67
    invoke-virtual {p0, v1}, Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;->startActivity(Landroid/content/Intent;)V

    .line 70
    :cond_1
    return v0

    .line 55
    :cond_2
    iget-object v2, p0, Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;->mTrusted:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 56
    const-string v2, "com.lge.wapservice.action.SHOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v2, "com.lge.wapservice.listid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :cond_3
    iget-object v2, p0, Lcom/lge/wapservice/settings/WapServiceMessageSecuritySetting;->mUntrusted:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 61
    const-string v2, "com.lge.wapservice.action.SHOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v2, "com.lge.wapservice.listid"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const/4 v0, 0x1

    goto :goto_0
.end method
